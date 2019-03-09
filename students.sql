CREATE DATABASE  IF NOT EXISTS `test3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `test3`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: test3
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL DEFAULT 'Dhaka',
  `state` char(2) NOT NULL DEFAULT 'PA',
  `zip` mediumint(8) unsigned NOT NULL DEFAULT '1000',
  `phone` varchar(20) NOT NULL DEFAULT '0000',
  `birth_date` date NOT NULL DEFAULT '2019-12-05',
  `sex` enum('M','F') NOT NULL DEFAULT 'M',
  `date_entered` timestamp NULL DEFAULT NULL,
  `lunch_cost` float DEFAULT NULL,
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('Ridwan','Chowdhury','ridwan@gmail.com','dhaka','al-amin road','DH',3500,'01703845771','1994-05-04','M','2019-01-17 10:20:55',3.5,1),('Phil','jones','ridwan@gmail.com','dhaka','al-amin road','DH',3500,'01703845771','1994-05-04','M','2019-01-17 10:24:22',3.5,2),('Victor','Lindelof','ridwan@gmail.com','Sweden','al-amin road','DH',3500,'01703845771','1994-05-04','M','2019-01-17 10:25:38',3.5,3),('Eric','Bailly','ridwan@gmail.com','Ivory coast','al-amin road','DH',3500,'01703845771','1994-05-04','M','2019-01-17 10:26:22',3.5,4),('Cris','Smalling','ridwan@gmail.com','England','al-amin road','DH',3500,'01703845771','1994-05-04','M','2019-01-17 10:27:10',3.5,5),('Marcus','Rojo','ridwan@gmail.com','Argentina','al-amin road','DH',3500,'01703845771','1994-05-04','M','2019-01-17 10:29:33',3.5,6),('Matteo','Darmian','ridwan@gmail.com','Italy','al-amin road','DH',3500,'01703845771','1994-05-04','M','2019-01-17 10:30:14',3.5,7),('Dale','Cooper','dcooper@aol.com','123 Main St','Yakima','WA',98901,'792-223-8901','1959-02-22','M','2019-01-24 18:19:21',3.5,8),('Harry','Truman','htruman@aol.com','202 South St','Vancouver','WA',98660,'792-223-9810','1946-01-24','M','2019-01-24 18:19:35',3.5,9),('Shelly','Johnson','sjohnson@aol.com','9 Pond Rd','Sparks','NV',89431,'792-223-6734','1970-12-12','F','2019-01-24 18:19:47',3.5,10),('Bobby','Briggs','bbriggs@aol.com','14 12th St','San Diego','CA',92101,'792-223-6178','1967-05-24','M','2019-01-24 18:20:02',3.5,11),('Donna','Hayward','dhayward@aol.com','120 16th St','Davenport','IA',52801,'792-223-2001','1970-03-24','F','2019-01-24 18:20:15',3.5,12),('Audrey','Horne','ahorne@aol.com','342 19th St','Detroit','MI',48222,'792-223-2001','1965-02-01','F','2019-01-24 18:20:25',3.5,13),('James','Hurley','jhurley@aol.com','2578 Cliff St','Queens','NY',11427,'792-223-1890','1967-01-02','M','2019-01-24 18:20:38',3.5,14),('Lucy','Moran','lmoran@aol.com','178 Dover St','Hollywood','CA',90078,'792-223-9678','1954-11-27','F','2019-01-24 18:20:50',3.5,15),('Tommy','Hill','thill@aol.com','672 High Plains','Tucson','AZ',85701,'792-223-1115','1951-12-21','M','2019-01-24 18:21:05',3.5,16),('Andy','Brennan','abrennan@aol.com','281 4th St','Jacksonville','NC',28540,'792-223-8902','1960-12-27','M','2019-01-24 18:21:24',3.5,17),('Diego','Dalot',NULL,'Portugal','Dhaka','PA',1000,'0000','2019-12-05','M',NULL,NULL,18),('Tabith','Chong',NULL,'Netherlands','Dhaka','PA',1000,'0000','2019-12-05','M',NULL,NULL,19),('Mason','Greenwood',NULL,'England','Dhaka','PA',1000,'0000','2019-12-05','M',NULL,NULL,20),('Angel','Gomes',NULL,'England','Dhaka','PA',1000,'0000','2019-12-05','M',NULL,NULL,21),('James','Garner',NULL,'England','Dhaka','PA',1000,'0000','2019-12-05','M',NULL,NULL,22),('David','de Gea',NULL,'Spain','Dhaka','PA',1000,'0000','2019-12-05','M',NULL,NULL,23);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-09  5:34:31
