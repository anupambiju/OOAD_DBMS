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
-- Table structure for table `performance_rating`
--

DROP TABLE IF EXISTS `performance_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int DEFAULT NULL,
  `emp_no` int DEFAULT NULL,
  `evaluator_id` int DEFAULT NULL,
  `rating` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `emp_no` (`emp_no`),
  KEY `evaluator_id` (`evaluator_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `performance_rating_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`),
  CONSTRAINT `performance_rating_ibfk_2` FOREIGN KEY (`evaluator_id`) REFERENCES `employees` (`emp_no`),
  CONSTRAINT `performance_rating_ibfk_3` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_rating`
--

LOCK TABLES `performance_rating` WRITE;
/*!40000 ALTER TABLE `performance_rating` DISABLE KEYS */;
INSERT INTO `performance_rating` VALUES (1,1,1,3,7),(2,2,2,1,8),(3,3,3,2,5),(4,4,4,1,4),(5,5,5,1,9),(6,6,6,4,8),(7,7,7,3,3.5),(8,8,8,2,9),(9,9,9,4,9.5),(10,10,10,5,3),(11,11,1,2,6),(12,12,2,1,2),(13,13,2,3,7),(14,14,4,2,6),(15,15,5,9,5),(16,16,5,8,6.5),(17,17,7,1,4),(18,18,8,3,9),(19,19,9,4,6),(20,20,7,5,3);
/*!40000 ALTER TABLE `performance_rating` ENABLE KEYS */;
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
