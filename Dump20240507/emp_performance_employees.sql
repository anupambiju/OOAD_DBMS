CREATE DATABASE  IF NOT EXISTS `emp_performance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `emp_performance`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: emp_performance
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_no` int NOT NULL AUTO_INCREMENT,
  `birth_date` date NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `sex` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL,
  `created_by` int NOT NULL,
  `created_date` date NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'1998-07-14','Sibilla','Berkelay','F','2014-08-20',1,'2023-08-21',1,'2023-08-21'),(2,'1999-05-11','Rusty','Child','M','2019-06-04',1,'2023-02-06',1,'2023-02-06'),(3,'1999-04-26','Mattias','Goulstone','M','2014-12-09',4,'2023-09-13',4,'2023-09-13'),(4,'1991-09-03','Cristen','Kleynen','F','2018-10-01',3,'2023-08-03',3,'2023-08-03'),(5,'1994-08-30','Vernor','Croke','F','2014-12-07',2,'2023-02-18',2,'2023-02-18'),(6,'1996-01-09','Valeda','Osment','F','2014-06-25',5,'2023-04-10',5,'2023-04-10'),(7,'1999-11-26','Flo','Fillimore','F','2016-09-09',3,'2023-11-04',3,'2023-11-04'),(8,'1995-01-02','Warden','Pandya','M','2020-09-10',3,'2023-05-02',3,'2023-05-02'),(9,'1990-01-27','Ramsay','Ales','M','2019-01-22',4,'2023-04-18',4,'2023-04-18'),(10,'1994-06-07','Benjamin','Fackrell','M','2017-11-02',2,'2023-02-22',2,'2023-02-22');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 11:51:46
