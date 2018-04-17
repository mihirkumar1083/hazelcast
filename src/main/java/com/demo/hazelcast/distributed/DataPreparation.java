package com.demo.hazelcast.distributed;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Logger;

public class DataPreparation {

	static Logger logger = Logger.getLogger("logger");

	public static void main(String args[]) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = null;
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sourcedb", "clouduser", "password");

			// Lets get the total size of the data.
			for (int i = 0; i < 1000; i++) {
				Statement statement = conn.createStatement();
				
				String sql = "insert into item_info values ('item-" + i + "','"+ (int) Math.random()+"'";
				
				System.out.println(sql);
				
				Random r = new Random();
				int Low = 10;
				int High = 100;
				int result = r.nextInt(High-Low) + Low;
						
			    statement.execute("insert into item_info values ('item-" + i + "','"+ result+"')");
			    statement.close();
			}

		} catch (Exception e) {
			logger.info("error occured while processing" + e);
		}
	}

}
