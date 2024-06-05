-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bank2
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
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `loan_id` double NOT NULL,
  `loan_amt` double DEFAULT NULL,
  `payment_period` varchar(20) DEFAULT NULL,
  `comp_period` varchar(20) DEFAULT NULL,
  `branch_no` double DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `apr` float DEFAULT NULL,
  `trans_id` double DEFAULT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `trans_id` (`trans_id`),
  KEY `branch_no` (`branch_no`),
  CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`trans_id`) REFERENCES `transaction` (`trans_id`),
  CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`branch_no`) REFERENCES `bank` (`branch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (218961,153630.52,'Monthly','Monthly',531837,'2020-06-17',NULL,849839),(539563,171548.66,'Monthly','Monthly',871772,'2021-01-30',NULL,645152),(569332,109548.97,'Monthly','Monthly',556240,'2020-08-09',NULL,600076),(598689,53797.3,'Monthly','Monthly',701300,'2021-04-29',NULL,792965),(613747,146012.38,'Monthly','Monthly',160780,'2022-03-22',NULL,642046),(641609,77658.68,'Monthly','Yearly',187541,'2020-10-09',NULL,282406),(690473,108275.11,'Monthly','Quarterly',576546,'2020-04-05',NULL,755732),(785583,189615.45,'Monthly','Yearly',653853,'2021-01-15',NULL,884493),(859014,133083.98,'Monthly','Monthly',161107,'2023-04-13',NULL,773976),(897480,105401.83,'Monthly','Monthly',788531,'2021-07-30',NULL,240089);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 15:24:38
