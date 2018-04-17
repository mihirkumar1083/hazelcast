package com.demo.hazelcast.distributed;

import java.io.FileNotFoundException;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.logging.Logger;

import com.hazelcast.config.Config;
import com.hazelcast.config.FileSystemXmlConfig;
import com.hazelcast.core.Hazelcast;
import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.core.HazelcastInstanceAware;
import com.hazelcast.core.IExecutorService;

// Lets execute the 

public class HazelCastDistributedRunnerMain {

	private static Logger logger = Logger.getLogger("HazelCastRunnerMain");

	public static void main(String args[]) {
		try {
			// lets initialize the first hcast instance on first 5701 port
			Config config = new FileSystemXmlConfig("src/main/resources/hazelcast-first.xml");
			HazelcastInstance hcast = Hazelcast.newHazelcastInstance(config);

			// lets initialize the first hcast instance on first 5701 port
			config = new FileSystemXmlConfig("src/main/resources/hazelcast-second.xml");

			HazelcastInstance hcast2 = Hazelcast.newHazelcastInstance(config);

			// This will act as a JOB tracker and Lets chunk the data here But
			// Job tracker can be run anywhere
			// http://docs.hazelcast.org/docs/3.9/javadoc/com/hazelcast/mapreduce/JobTracker.html

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = null;
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sourcedb", "clouduser", "password");

			// Lets get the total size of the data.
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery("select count(*) from item_info");

			rs.next();

			int data = rs.getInt(1);

			// Lets hard code chunk size to 100

			int chunks = (int) Math.ceil(data / 100);

			// Lets pass primitive only to this OBJECT will require
			// serialization and networking over heads always try to pass offest
			// of data here
			Integer i = 0;

			List<Future<Integer>> sumOfaChunk = new ArrayList<Future<Integer>>();
			int finalSum = 0;
			IExecutorService executorService = null;
			for (Integer j = 0; j < chunks;) {

				MySQLChunkRunner mySqlRunner = new MySQLChunkRunner(i, (j + 1) * 100, "Chunk " + i);

				executorService = hcast.getExecutorService("executormysql");

				Future<Integer> future = executorService.submit(mySqlRunner);
				sumOfaChunk.add(future);

				j++;

				i = j * 100;
			}
			// Data can be operated in distributed mode if required.
			for (Future<Integer> futureObj : sumOfaChunk) {
				finalSum += futureObj.get();
			}
			
			executorService.destroy();
			hcast.shutdown();
			hcast2.shutdown();
			System.out.println("Final Sum got " + finalSum);

		} catch (FileNotFoundException fe) {
			logger.info("Error occured while reading the file");
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("Error occured while processing " + e);
		}
	}

}

class MySQLChunkRunner implements HazelcastInstanceAware, Serializable, Callable<Integer> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	transient HazelcastInstance localInstance;

	Integer start = 0;
	Integer end = 0;
	String name;

	public void setHazelcastInstance(com.hazelcast.core.HazelcastInstance hazelcastInstance) {
		this.localInstance = hazelcastInstance;
	}

	MySQLChunkRunner(Integer start, Integer end, String name) {
		this.start = start;
		this.end = end;
		this.name = name;
	}

	public Integer call() {
		try {

			// System.out.println("Running task for "+this.localInstance+ "
			// chunk start "+start+ " chunk end "+end);
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = null;
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sourcedb", "clouduser", "password");

			// Lets get the total size of the data.
			Statement statement = conn.createStatement();

			// System.out.println("query => "+"select item_type,item_price from
			// item_info limit " + start + "," + end);
			ResultSet rs = statement.executeQuery(
					"select item_type,item_price from item_info order by item_type desc LIMIT 100 OFFSET " + start);
			int sum = 0;

			while (rs.next()) {
				int data = rs.getInt(2);

				sum += data;
			}

			System.out.println(
					"Task for " + this.localInstance + " chunk start " + start + " chunk end " + end + " Sum " + sum);

			return sum;

		} catch (Exception e) {
			System.out.println("error occured while processing " + e);
		}

		return 0;

	}
}
