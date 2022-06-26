-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `payment_creditcard`
--

DROP TABLE IF EXISTS `payment_creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_creditcard` (
  `CreditCardID` varchar(8) NOT NULL,
  `PaymentID` varchar(8) NOT NULL,
  `CreditCardNum` varchar(20) NOT NULL,
  `CardExpM` int NOT NULL,
  `CardExpY` int NOT NULL,
  `CardSecurityNumber` varchar(45) NOT NULL,
  `CardAddress` varchar(45) NOT NULL,
  `CardCity` varchar(45) NOT NULL,
  `CardPostalCode` varchar(45) NOT NULL,
  PRIMARY KEY (`CreditCardID`),
  KEY `PaymentID_idx` (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_creditcard`
--

LOCK TABLES `payment_creditcard` WRITE;
/*!40000 ALTER TABLE `payment_creditcard` DISABLE KEYS */;
INSERT INTO `payment_creditcard` VALUES ('CC4586','P7565','4510655885838439',9,2019,'238','123 TREE STREET','SPRINGFIELD','S7F 2V8'),('CC4791','P7768','4510934832848328',10,2018,'345','876 RUE BEAUBIEN','MONTREAL','H7F 6V2'),('CC4897','P7853','5590649276962332',3,2020,'456','387 PAPINEAU DRIVE','VANCOUVER','D8V 0D2'),('CC5434','P7865','5590778844927402',3,2022,'866','143 OAKLAND ROAD','QUEBEC','F7B 3V9'),('CC5967','P7332','8930384039459342',6,2018,'285','5119 ARCHER BLVD','MEMPHIS','G9V 2B7');
/*!40000 ALTER TABLE `payment_creditcard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-27  0:02:05
