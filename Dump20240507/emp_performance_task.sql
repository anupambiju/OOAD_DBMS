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
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(30) NOT NULL,
  `emp_no` int DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `completion_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `emp_no` (`emp_no`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'TASK74',1,'2023-05-25','2023-06-25','2023-06-19'),(2,'TASK59',2,'2023-11-25','2024-03-16','2024-01-27'),(3,'TASK14',3,'2023-10-21','2024-01-01','2023-12-17'),(4,'TASK77',4,'2024-04-16','2024-07-17','2024-06-02'),(5,'TASK39',5,'2023-12-10','2023-12-31','2023-12-23'),(6,'TASK45',6,'2023-12-25','2024-03-16','2024-02-04'),(7,'TASK71',7,'2023-10-01','2023-12-29','2023-12-26'),(8,'TASK98',8,'2023-02-17','2023-12-23','2023-06-12'),(9,'TASK91',9,'2024-01-10','2024-03-17','2024-02-01'),(10,'TASK95',10,'2023-08-16','2023-10-28','2023-09-04'),(11,'TASK71',1,'2023-08-07','2023-12-07','2023-09-06'),(12,'TASK72',2,'2023-05-01','2023-05-15','2023-05-09'),(13,'TASK51',2,'2024-01-11','2024-04-17','2024-04-13'),(14,'TASK40',4,'2023-04-21','2023-11-19','2023-07-18'),(15,'TASK45',5,'2023-06-25','2023-10-06','2023-09-19'),(16,'TASK70',5,'2023-07-07','2023-09-16','2023-09-14'),(17,'TASK63',7,'2023-09-02','2023-10-08','2023-10-01'),(18,'TASK39',8,'2023-08-21','2023-10-01','2023-09-21'),(19,'TASK63',9,'2023-05-24','2023-06-19','2023-06-16'),(20,'TASK56',7,'2023-09-03','2023-10-10','2023-09-29');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 11:51:47
