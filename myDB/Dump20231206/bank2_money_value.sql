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
-- Table structure for table `money_value`
--

DROP TABLE IF EXISTS `money_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_value` (
  `mv_id` double NOT NULL,
  `inflation` float DEFAULT NULL,
  `tax_rate` float DEFAULT NULL,
  `ssn` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`mv_id`),
  KEY `ssn` (`ssn`),
  CONSTRAINT `money_value_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `client` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_value`
--

LOCK TABLES `money_value` WRITE;
/*!40000 ALTER TABLE `money_value` DISABLE KEYS */;
INSERT INTO `money_value` VALUES (1,0.02,0.06,'740-53-1660'),(2,0.02,0.07,'864-17-2878'),(3,0.02,0.05,'538-64-3169'),(4,0.02,0.04,'505-56-2364'),(5,0.02,0.06,'512-38-6950'),(6,0.02,0.06,'370-51-5387'),(7,0.02,0.06,'885-10-9066'),(8,0.02,0.04,'261-12-1948'),(9,0.02,0.04,'513-20-8841'),(10,0.02,0.06,'421-06-0674');
/*!40000 ALTER TABLE `money_value` ENABLE KEYS */;
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
