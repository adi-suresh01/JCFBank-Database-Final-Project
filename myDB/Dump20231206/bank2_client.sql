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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ssn` varchar(11) NOT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('261-12-1948','Nadeen','Jefferys','1992-10-02','njefferys7@creativecommons.org','706-583-5667','Mayer','Athens','Georgia'),('370-51-5387','Appolonia','Nardoni','1957-06-03','anardoni5@cnbc.com','409-247-4034','Anhalt','Beaumont','Texas'),('421-06-0674','Jacob','Reichartz','1975-08-27','jreichartz9@scribd.com','818-254-1731','Rutledge','Northridge','California'),('505-56-2364','Neall','Bowle','1996-01-03','nbowle3@squidoo.com','718-136-0002','Independence','Jamaica','New York'),('512-38-6950','Jolynn','Goodreid','1977-01-07','jgoodreid4@whitehouse.gov','561-703-6780','Sullivan','Lake Worth','Florida'),('513-20-8841','Muire','Mallinar','1993-08-19','mmallinar8@dailymail.co.uk','770-597-8398','Rowland','Lawrenceville','Georgia'),('538-64-3169','Guy','Lodevick','1954-01-03','glodevick2@mlb.com','505-820-2557','Debs','Albuquerque','New Mexico'),('740-53-1660','Elvina','Hedditeh','1953-06-07','ehedditeh0@loc.gov','309-687-4947','Clove','Bloomington','Illinois'),('864-17-2878','Melony','Goundrill','1954-08-27','mgoundrill1@free.fr','612-658-2525','Porter','Minneapolis','Minnesota'),('885-10-9066','Kiley','Zoren','1975-09-28','kzoren6@wiley.com','202-509-1532','Mitchell','Washington','District of Columbia');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 15:24:39
