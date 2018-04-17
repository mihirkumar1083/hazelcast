-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sourcedb
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `sourcedb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sourcedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sourcedb`;

--
-- Table structure for table `bmt_prog_tracking_details`
--

DROP TABLE IF EXISTS `bmt_prog_tracking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bmt_prog_tracking_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `finalStatus` varchar(255) DEFAULT NULL,
  `insertedDate` varchar(255) DEFAULT NULL,
  `netchangeProgress` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `sourceName` varchar(255) DEFAULT NULL,
  `uploadProgress` varchar(255) DEFAULT NULL,
  `uploadedBy` varchar(255) DEFAULT NULL,
  `final_status` varchar(255) DEFAULT NULL,
  `inserted_date` varchar(255) DEFAULT NULL,
  `netchange_progress` varchar(255) DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `upload_progress` varchar(255) DEFAULT NULL,
  `uploaded_by` varchar(255) DEFAULT NULL,
  `hdfs_writer_progress` varchar(255) DEFAULT NULL,
  `net_change_filename` varchar(255) DEFAULT NULL,
  `hdfsWriterProgress` varchar(255) DEFAULT NULL,
  `netChangeFilename` varchar(255) DEFAULT NULL,
  `previousFilename` varchar(255) DEFAULT NULL,
  `updatedDate` varchar(255) DEFAULT NULL,
  `currentNetChangeViewFile` varchar(255) DEFAULT NULL,
  `currentNetChangeFile` varchar(255) DEFAULT NULL,
  `finalNetChangeFile` varchar(255) DEFAULT NULL,
  `rawFilename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bmt_prog_tracking_details`
--

LOCK TABLES `bmt_prog_tracking_details` WRITE;
/*!40000 ALTER TABLE `bmt_prog_tracking_details` DISABLE KEYS */;
INSERT INTO `bmt_prog_tracking_details` VALUES (76,'EMEA_RVC_comments.txt','Completed','31-05-2017 18:24:48','Completed',NULL,'emea_rvc_comments','Completed','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EMEA_RVC_comments_1496235288971-NETCHANGE-31052017062448.txt',NULL,'05/31/2017 06:24',NULL,'EMEA_RVC_comments_1496235288971-CURRNETCHANGE-31052017062448.txt','EMEA_RVC_comments-FINALNETCHANGE-31052017062454.txt',NULL),(77,'EMEA_RVC_comments_modified.txt','NotStarted','31-05-2017 18:31:02','Failed',NULL,'emea_rvc_comments','Completed','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'05/31/2017 06:31',NULL,NULL,NULL,NULL),(78,'EMEA_RVC_comments_modified.txt','NotStarted','31-05-2017 18:32:43','Failed',NULL,'emea_rvc_comments','Completed','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'05/31/2017 06:32',NULL,NULL,NULL,NULL),(79,'EMEA_RVC_comments_modified.txt','NotStarted','13-06-2017 14:53:56','Failed',NULL,'emea_rvc_comments','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'06/13/2017 02:53',NULL,NULL,NULL,'EMEA_RVC_comments_modified_1497345837264.txt'),(80,'EMEA_RVC_comments.txt','NotStarted','13-06-2017 14:54:20','Completed',NULL,'emea_rvc_comments','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EMEA_RVC_comments-NETCHANGE-13062017025421.txt','EMEA_RVC_comments_1496235288971.txt','06/13/2017 02:54',NULL,'EMEA_RVC_comments-CURRNETCHANGE-13062017025421.txt',NULL,'EMEA_RVC_comments_1497345860976.txt'),(81,'Master_BMT_List_1491559808067.csv','Completed','15-06-2017 17:14:06','Completed',NULL,'ww_hold_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497527056025-NETCHANGE-15062017051416.csv',NULL,'06/15/2017 05:14',NULL,'Master_BMT_List_1491559808067_1497527056025-CURRNETCHANGE-15062017051416.csv','Master_BMT_List_1491559808067-FINALNETCHANGE-15062017051438.csv','Master_BMT_List_1491559808067_1497527056025.csv'),(82,'Master_BMT_List_1491559808067.csv','NotStarted','15-06-2017 17:15:06','Failed',NULL,'ww_hold_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'06/15/2017 05:15',NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497527110731.csv'),(83,'Master_BMT_List_1491559808067.csv','NotStarted','15-06-2017 17:15:26','Failed',NULL,'ww_hold_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'06/15/2017 05:15',NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497527147990.csv'),(84,'Master_BMT_List_1491559808067.csv','NotStarted','15-06-2017 18:44:22','Failed',NULL,'ww_geo_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497532484380-NETCHANGE-15062017064444.csv',NULL,'15-06-2017 18:44:22',NULL,'Master_BMT_List_1491559808067_1497532484380-CURRNETCHANGE-15062017064444.csv',NULL,'Master_BMT_List_1491559808067_1497532484380.csv'),(85,'Master_BMT_List_1491559808067.csv','NotStarted','15-06-2017 18:47:14','Failed',NULL,'ww_geo_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497532640912-NETCHANGE-15062017064720.csv',NULL,'15-06-2017 18:47:14',NULL,'Master_BMT_List_1491559808067_1497532640912-CURRNETCHANGE-15062017064720.csv',NULL,'Master_BMT_List_1491559808067_1497532640912.csv'),(86,'Master_BMT_List_1491559808067.csv','NotStarted','15-06-2017 18:48:31','Failed',NULL,'ww_geo_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497532719049-NETCHANGE-15062017064839.csv',NULL,'15-06-2017 18:48:31',NULL,'Master_BMT_List_1491559808067_1497532719049-CURRNETCHANGE-15062017064839.csv',NULL,'Master_BMT_List_1491559808067_1497532719049.csv'),(87,'Master_BMT_List_1491559808067.csv','NotStarted','15-06-2017 19:02:18','Completed',NULL,'ww_geo_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497533539950-NETCHANGE-15062017070219.csv',NULL,'15-06-2017 19:02:18',NULL,'Master_BMT_List_1491559808067_1497533539950-CURRNETCHANGE-15062017070219.csv',NULL,'Master_BMT_List_1491559808067_1497533539950.csv'),(88,'Master_BMT_List_1491559808067.csv','NotStarted','15-06-2017 19:31:20','Completed',NULL,'ww_cutoff_mapping','Completed','kanaiyal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master_BMT_List_1491559808067_1497535284891-NETCHANGE-15062017073126.csv',NULL,'15-06-2017 19:31:20',NULL,'Master_BMT_List_1491559808067_1497535284891-CURRNETCHANGE-15062017073126.csv',NULL,'Master_BMT_List_1491559808067_1497535284891.csv');
/*!40000 ALTER TABLE `bmt_prog_tracking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `item_type` varchar(10) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
INSERT INTO `item_info` VALUES ('item-0',33),('item-1',77),('item-2',45),('item-3',49),('item-4',76),('item-5',93),('item-6',78),('item-7',17),('item-8',35),('item-9',50),('item-10',66),('item-11',76),('item-12',44),('item-13',70),('item-14',75),('item-15',10),('item-16',30),('item-17',80),('item-18',34),('item-19',96),('item-20',42),('item-21',99),('item-22',55),('item-23',33),('item-24',71),('item-25',14),('item-26',68),('item-27',81),('item-28',62),('item-29',49),('item-30',99),('item-31',80),('item-32',31),('item-33',69),('item-34',71),('item-35',28),('item-36',77),('item-37',59),('item-38',94),('item-39',35),('item-40',26),('item-41',77),('item-42',98),('item-43',25),('item-44',73),('item-45',16),('item-46',12),('item-47',57),('item-48',79),('item-49',74),('item-50',99),('item-51',60),('item-52',76),('item-53',96),('item-54',78),('item-55',47),('item-56',32),('item-57',27),('item-58',45),('item-59',30),('item-60',89),('item-61',53),('item-62',27),('item-63',29),('item-64',19),('item-65',25),('item-66',64),('item-67',44),('item-68',17),('item-69',62),('item-70',60),('item-71',61),('item-72',62),('item-73',83),('item-74',92),('item-75',64),('item-76',28),('item-77',35),('item-78',13),('item-79',95),('item-80',88),('item-81',96),('item-82',66),('item-83',99),('item-84',80),('item-85',77),('item-86',67),('item-87',82),('item-88',77),('item-89',88),('item-90',16),('item-91',32),('item-92',80),('item-93',69),('item-94',53),('item-95',48),('item-96',77),('item-97',93),('item-98',78),('item-99',68),('item-100',70),('item-101',16),('item-102',68),('item-103',76),('item-104',13),('item-105',95),('item-106',95),('item-107',75),('item-108',12),('item-109',94),('item-110',88),('item-111',72),('item-112',50),('item-113',23),('item-114',84),('item-115',18),('item-116',82),('item-117',78),('item-118',95),('item-119',11),('item-120',37),('item-121',62),('item-122',50),('item-123',22),('item-124',18),('item-125',85),('item-126',68),('item-127',27),('item-128',38),('item-129',30),('item-130',31),('item-131',50),('item-132',68),('item-133',94),('item-134',90),('item-135',62),('item-136',94),('item-137',81),('item-138',77),('item-139',77),('item-140',35),('item-141',66),('item-142',27),('item-143',65),('item-144',34),('item-145',13),('item-146',84),('item-147',84),('item-148',21),('item-149',71),('item-150',13),('item-151',48),('item-152',18),('item-153',44),('item-154',18),('item-155',14),('item-156',66),('item-157',94),('item-158',89),('item-159',74),('item-160',43),('item-161',35),('item-162',89),('item-163',77),('item-164',82),('item-165',13),('item-166',34),('item-167',51),('item-168',43),('item-169',96),('item-170',23),('item-171',80),('item-172',72),('item-173',82),('item-174',19),('item-175',26),('item-176',79),('item-177',84),('item-178',29),('item-179',83),('item-180',97),('item-181',90),('item-182',64),('item-183',83),('item-184',76),('item-185',68),('item-186',11),('item-187',74),('item-188',80),('item-189',56),('item-190',16),('item-191',32),('item-192',44),('item-193',17),('item-194',57),('item-195',74),('item-196',95),('item-197',36),('item-198',62),('item-199',71),('item-200',17),('item-201',10),('item-202',64),('item-203',88),('item-204',43),('item-205',31),('item-206',81),('item-207',38),('item-208',82),('item-209',32),('item-210',89),('item-211',14),('item-212',91),('item-213',86),('item-214',45),('item-215',53),('item-216',28),('item-217',64),('item-218',51),('item-219',41),('item-220',26),('item-221',77),('item-222',86),('item-223',50),('item-224',29),('item-225',33),('item-226',51),('item-227',34),('item-228',65),('item-229',77),('item-230',53),('item-231',77),('item-232',53),('item-233',24),('item-234',88),('item-235',71),('item-236',13),('item-237',39),('item-238',75),('item-239',72),('item-240',55),('item-241',22),('item-242',63),('item-243',44),('item-244',71),('item-245',46),('item-246',77),('item-247',92),('item-248',76),('item-249',79),('item-250',76),('item-251',62),('item-252',35),('item-253',90),('item-254',93),('item-255',32),('item-256',28),('item-257',63),('item-258',62),('item-259',19),('item-260',69),('item-261',65),('item-262',62),('item-263',32),('item-264',36),('item-265',45),('item-266',46),('item-267',70),('item-268',12),('item-269',74),('item-270',53),('item-271',74),('item-272',37),('item-273',16),('item-274',73),('item-275',85),('item-276',82),('item-277',64),('item-278',65),('item-279',24),('item-280',57),('item-281',46),('item-282',64),('item-283',60),('item-284',60),('item-285',36),('item-286',58),('item-287',35),('item-288',68),('item-289',81),('item-290',98),('item-291',80),('item-292',70),('item-293',50),('item-294',54),('item-295',33),('item-296',12),('item-297',42),('item-298',44),('item-299',50),('item-300',70),('item-301',66),('item-302',15),('item-303',85),('item-304',44),('item-305',88),('item-306',59),('item-307',60),('item-308',22),('item-309',25),('item-310',99),('item-311',28),('item-312',23),('item-313',43),('item-314',73),('item-315',59),('item-316',26),('item-317',53),('item-318',92),('item-319',72),('item-320',31),('item-321',61),('item-322',86),('item-323',65),('item-324',17),('item-325',16),('item-326',96),('item-327',31),('item-328',48),('item-329',92),('item-330',72),('item-331',16),('item-332',76),('item-333',33),('item-334',10),('item-335',98),('item-336',59),('item-337',19),('item-338',81),('item-339',76),('item-340',33),('item-341',47),('item-342',17),('item-343',77),('item-344',17),('item-345',29),('item-346',29),('item-347',92),('item-348',30),('item-349',37),('item-350',11),('item-351',34),('item-352',69),('item-353',64),('item-354',20),('item-355',42),('item-356',78),('item-357',86),('item-358',11),('item-359',62),('item-360',31),('item-361',38),('item-362',22),('item-363',16),('item-364',55),('item-365',55),('item-366',78),('item-367',24),('item-368',35),('item-369',50),('item-370',85),('item-371',85),('item-372',40),('item-373',22),('item-374',25),('item-375',11),('item-376',68),('item-377',72),('item-378',72),('item-379',99),('item-380',93),('item-381',19),('item-382',73),('item-383',32),('item-384',27),('item-385',58),('item-386',45),('item-387',41),('item-388',25),('item-389',47),('item-390',14),('item-391',42),('item-392',14),('item-393',32),('item-394',98),('item-395',50),('item-396',64),('item-397',43),('item-398',45),('item-399',27),('item-400',16),('item-401',56),('item-402',83),('item-403',52),('item-404',79),('item-405',31),('item-406',75),('item-407',50),('item-408',78),('item-409',46),('item-410',59),('item-411',43),('item-412',96),('item-413',19),('item-414',71),('item-415',88),('item-416',25),('item-417',15),('item-418',52),('item-419',38),('item-420',52),('item-421',29),('item-422',83),('item-423',23),('item-424',40),('item-425',93),('item-426',46),('item-427',49),('item-428',91),('item-429',23),('item-430',77),('item-431',90),('item-432',88),('item-433',53),('item-434',96),('item-435',80),('item-436',12),('item-437',39),('item-438',35),('item-439',62),('item-440',14),('item-441',59),('item-442',37),('item-443',33),('item-444',65),('item-445',71),('item-446',32),('item-447',82),('item-448',51),('item-449',44),('item-450',57),('item-451',47),('item-452',75),('item-453',56),('item-454',59),('item-455',73),('item-456',35),('item-457',63),('item-458',83),('item-459',86),('item-460',47),('item-461',28),('item-462',39),('item-463',81),('item-464',63),('item-465',86),('item-466',45),('item-467',67),('item-468',87),('item-469',56),('item-470',56),('item-471',41),('item-472',44),('item-473',92),('item-474',36),('item-475',29),('item-476',55),('item-477',78),('item-478',14),('item-479',51),('item-480',55),('item-481',34),('item-482',46),('item-483',72),('item-484',44),('item-485',74),('item-486',88),('item-487',72),('item-488',54),('item-489',64),('item-490',84),('item-491',95),('item-492',42),('item-493',41),('item-494',87),('item-495',18),('item-496',64),('item-497',39),('item-498',95),('item-499',93),('item-500',15),('item-501',69),('item-502',25),('item-503',35),('item-504',38),('item-505',74),('item-506',68),('item-507',13),('item-508',46),('item-509',40),('item-510',48),('item-511',74),('item-512',39),('item-513',37),('item-514',50),('item-515',56),('item-516',32),('item-517',12),('item-518',81),('item-519',56),('item-520',44),('item-521',47),('item-522',41),('item-523',79),('item-524',80),('item-525',31),('item-526',69),('item-527',84),('item-528',85),('item-529',23),('item-530',64),('item-531',51),('item-532',32),('item-533',70),('item-534',68),('item-535',34),('item-536',39),('item-537',41),('item-538',26),('item-539',17),('item-540',45),('item-541',14),('item-542',21),('item-543',45),('item-544',77),('item-545',53),('item-546',55),('item-547',50),('item-548',43),('item-549',70),('item-550',68),('item-551',27),('item-552',62),('item-553',59),('item-554',78),('item-555',53),('item-556',81),('item-557',44),('item-558',15),('item-559',77),('item-560',55),('item-561',36),('item-562',91),('item-563',68),('item-564',91),('item-565',52),('item-566',59),('item-567',66),('item-568',63),('item-569',78),('item-570',94),('item-571',90),('item-572',89),('item-573',18),('item-574',28),('item-575',66),('item-576',40),('item-577',97),('item-578',43),('item-579',55),('item-580',51),('item-581',80),('item-582',53),('item-583',99),('item-584',90),('item-585',34),('item-586',10),('item-587',49),('item-588',43),('item-589',57),('item-590',53),('item-591',22),('item-592',50),('item-593',71),('item-594',29),('item-595',25),('item-596',66),('item-597',51),('item-598',12),('item-599',26),('item-600',13),('item-601',92),('item-602',14),('item-603',27),('item-604',39),('item-605',98),('item-606',60),('item-607',31),('item-608',20),('item-609',20),('item-610',40),('item-611',20),('item-612',29),('item-613',79),('item-614',84),('item-615',42),('item-616',49),('item-617',59),('item-618',68),('item-619',94),('item-620',85),('item-621',70),('item-622',94),('item-623',29),('item-624',39),('item-625',56),('item-626',83),('item-627',67),('item-628',92),('item-629',79),('item-630',66),('item-631',76),('item-632',33),('item-633',37),('item-634',81),('item-635',92),('item-636',41),('item-637',40),('item-638',93),('item-639',16),('item-640',29),('item-641',89),('item-642',99),('item-643',17),('item-644',25),('item-645',53),('item-646',84),('item-647',14),('item-648',25),('item-649',87),('item-650',28),('item-651',66),('item-652',89),('item-653',43),('item-654',73),('item-655',40),('item-656',87),('item-657',56),('item-658',33),('item-659',26),('item-660',73),('item-661',56),('item-662',34),('item-663',71),('item-664',52),('item-665',38),('item-666',62),('item-667',25),('item-668',83),('item-669',93),('item-670',59),('item-671',17),('item-672',12),('item-673',79),('item-674',97),('item-675',98),('item-676',83),('item-677',54),('item-678',55),('item-679',82),('item-680',58),('item-681',45),('item-682',65),('item-683',92),('item-684',40),('item-685',88),('item-686',59),('item-687',28),('item-688',17),('item-689',45),('item-690',65),('item-691',93),('item-692',87),('item-693',76),('item-694',85),('item-695',48),('item-696',76),('item-697',39),('item-698',10),('item-699',85),('item-700',73),('item-701',94),('item-702',20),('item-703',25),('item-704',23),('item-705',56),('item-706',65),('item-707',67),('item-708',44),('item-709',58),('item-710',55),('item-711',47),('item-712',37),('item-713',14),('item-714',11),('item-715',71),('item-716',84),('item-717',83),('item-718',17),('item-719',83),('item-720',43),('item-721',48),('item-722',62),('item-723',70),('item-724',14),('item-725',31),('item-726',84),('item-727',47),('item-728',24),('item-729',49),('item-730',11),('item-731',67),('item-732',44),('item-733',76),('item-734',17),('item-735',48),('item-736',27),('item-737',69),('item-738',57),('item-739',23),('item-740',63),('item-741',18),('item-742',17),('item-743',66),('item-744',43),('item-745',91),('item-746',94),('item-747',89),('item-748',27),('item-749',12),('item-750',93),('item-751',34),('item-752',88),('item-753',13),('item-754',72),('item-755',80),('item-756',61),('item-757',73),('item-758',59),('item-759',99),('item-760',50),('item-761',86),('item-762',70),('item-763',42),('item-764',28),('item-765',31),('item-766',38),('item-767',25),('item-768',67),('item-769',54),('item-770',29),('item-771',11),('item-772',47),('item-773',94),('item-774',35),('item-775',90),('item-776',22),('item-777',73),('item-778',82),('item-779',89),('item-780',51),('item-781',65),('item-782',29),('item-783',62),('item-784',39),('item-785',37),('item-786',50),('item-787',35),('item-788',41),('item-789',22),('item-790',93),('item-791',73),('item-792',56),('item-793',10),('item-794',54),('item-795',52),('item-796',33),('item-797',99),('item-798',48),('item-799',62),('item-800',40),('item-801',23),('item-802',44),('item-803',70),('item-804',74),('item-805',30),('item-806',93),('item-807',97),('item-808',11),('item-809',53),('item-810',74),('item-811',32),('item-812',37),('item-813',58),('item-814',11),('item-815',57),('item-816',27),('item-817',50),('item-818',23),('item-819',77),('item-820',74),('item-821',94),('item-822',18),('item-823',99),('item-824',55),('item-825',42),('item-826',55),('item-827',15),('item-828',73),('item-829',82),('item-830',41),('item-831',96),('item-832',70),('item-833',83),('item-834',78),('item-835',69),('item-836',23),('item-837',24),('item-838',88),('item-839',26),('item-840',98),('item-841',66),('item-842',86),('item-843',58),('item-844',86),('item-845',68),('item-846',88),('item-847',10),('item-848',29),('item-849',66),('item-850',58),('item-851',38),('item-852',19),('item-853',17),('item-854',23),('item-855',23),('item-856',83),('item-857',42),('item-858',83),('item-859',76),('item-860',61),('item-861',69),('item-862',78),('item-863',19),('item-864',34),('item-865',70),('item-866',71),('item-867',85),('item-868',53),('item-869',23),('item-870',17),('item-871',93),('item-872',77),('item-873',47),('item-874',32),('item-875',33),('item-876',37),('item-877',46),('item-878',43),('item-879',22),('item-880',74),('item-881',69),('item-882',19),('item-883',66),('item-884',83),('item-885',75),('item-886',18),('item-887',84),('item-888',77),('item-889',18),('item-890',53),('item-891',94),('item-892',80),('item-893',59),('item-894',79),('item-895',81),('item-896',57),('item-897',47),('item-898',13),('item-899',43),('item-900',46),('item-901',16),('item-902',87),('item-903',88),('item-904',57),('item-905',49),('item-906',15),('item-907',42),('item-908',22),('item-909',58),('item-910',47),('item-911',42),('item-912',71),('item-913',45),('item-914',16),('item-915',63),('item-916',80),('item-917',81),('item-918',35),('item-919',77),('item-920',84),('item-921',85),('item-922',19),('item-923',74),('item-924',13),('item-925',26),('item-926',89),('item-927',39),('item-928',42),('item-929',47),('item-930',38),('item-931',86),('item-932',66),('item-933',81),('item-934',98),('item-935',76),('item-936',33),('item-937',60),('item-938',72),('item-939',96),('item-940',36),('item-941',87),('item-942',83),('item-943',21),('item-944',73),('item-945',89),('item-946',25),('item-947',81),('item-948',72),('item-949',48),('item-950',94),('item-951',90),('item-952',26),('item-953',17),('item-954',19),('item-955',57),('item-956',48),('item-957',42),('item-958',21),('item-959',88),('item-960',62),('item-961',85),('item-962',92),('item-963',88),('item-964',23),('item-965',66),('item-966',82),('item-967',59),('item-968',34),('item-969',69),('item-970',64),('item-971',61),('item-972',46),('item-973',64),('item-974',83),('item-975',54),('item-976',34),('item-977',95),('item-978',27),('item-979',27),('item-980',15),('item-981',63),('item-982',46),('item-983',13),('item-984',68),('item-985',15),('item-986',15),('item-987',19),('item-988',84),('item-989',10),('item-990',87),('item-991',94),('item-992',18),('item-993',31),('item-994',41),('item-995',85),('item-996',89),('item-997',43),('item-998',23),('item-999',25);
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_details`
--

DROP TABLE IF EXISTS `source_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `HOST` varchar(255) DEFAULT NULL,
  `INCLUDE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `RECURSIVE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_details`
--

LOCK TABLES `source_details` WRITE;
/*!40000 ALTER TABLE `source_details` DISABLE KEYS */;
INSERT INTO `source_details` VALUES (1,NULL,NULL,'PCA',NULL,NULL,NULL,NULL),(2,NULL,NULL,'Chassis',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `source_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_details`
--

DROP TABLE IF EXISTS `tracking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(255) DEFAULT NULL,
  `insertedDate` varchar(255) DEFAULT NULL,
  `sourceFilePath` varchar(255) DEFAULT NULL,
  `sourceName` varchar(255) DEFAULT NULL,
  `updatedDate` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `inserted_date` varchar(255) DEFAULT NULL,
  `source_file_path` varchar(255) DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_details`
--

LOCK TABLES `tracking_details` WRITE;
/*!40000 ALTER TABLE `tracking_details` DISABLE KEYS */;
INSERT INTO `tracking_details` VALUES (25,'EMEA_RVC_comments_1496235288971.txt','31-05-2017 182449','API','emea_rvc_comments','05/31/2017 06:24',NULL,NULL,NULL,NULL,NULL,NULL),(26,'Master_BMT_List_1491559808067_1497527056025.csv','15-06-2017 171444',NULL,'ww_hold_mapping',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tracking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ASSIGNED_ROLES` varchar(255) DEFAULT NULL,
  `USER_EMAIL` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATE` varchar(255) DEFAULT NULL,
  `LAST_UPDATE_DATE` varchar(255) DEFAULT NULL,
  `priviledge` varchar(100) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (100,'Admin','mihirkumar.kanaiyalal-joshi@hpe.com','kanaiyal','kanaiyal','2017-03-06','2018-03-07',NULL,NULL,NULL),(102,'Admin','suryanarayana.raju-vegiraju@hpe.com','rajuvegi','Raju','2018-04-04',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ASSIGNED_BMTS` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATE` varchar(255) DEFAULT NULL,
  `LAST_UPDATE_DATE` varchar(255) DEFAULT NULL,
  `ROLE_DESC` varchar(255) DEFAULT NULL,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  `ASSIGNED_ROLES` varchar(255) DEFAULT NULL,
  `USER_EMAIL` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `PRIVILEDGE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (100,NULL,NULL,NULL,NULL,'Admin','Admin',NULL,NULL,NULL,NULL),(101,'','Raju','2018-03-07',NULL,'readwrite','readwrite',NULL,NULL,NULL,NULL),(102,'','Raju','2018-03-07',NULL,'readonly','readonly',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-17 15:41:43
