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
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit` (
  `card_no` varchar(25) NOT NULL,
  `card_rate` float DEFAULT NULL,
  `pay_deadline` date DEFAULT NULL,
  `fine_due` float DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `cvv` int DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`card_no`),
  CONSTRAINT `credit_ibfk_1` FOREIGN KEY (`card_no`) REFERENCES `card` (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit`
--

LOCK TABLES `credit` WRITE;
/*!40000 ALTER TABLE `credit` DISABLE KEYS */;
INSERT INTO `credit` VALUES ('4733-9321-1638-4993',0.2,'2023-03-03',92.07,'2030-12-25',132,'Melony','Goundrill'),('6313-3116-7374-3312',0.2,'2023-05-11',80.68,'2028-01-04',790,'Kiley','Zoren'),('7489-9263-4709-3996',0.2,'2023-06-21',50.95,'2028-12-27',808,'Neall','Bowle'),('7499-5616-1056-2989',0.2,'2023-07-24',24.76,'2026-11-23',581,'Guy','Lodevick'),('8127-3941-3167-6525',0.2,'2023-05-22',67.98,'2027-04-11',659,'Jolynn','Goodreid'),('8144-2513-4025-0907',0.2,'2023-04-20',98.82,'2025-06-10',558,'Elvina','Hedditeh'),('9740-3911-8216-0193',0.2,'2023-09-10',68.13,'2031-02-28',710,'Appolonia','Nardoni');
/*!40000 ALTER TABLE `credit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 15:24:41
