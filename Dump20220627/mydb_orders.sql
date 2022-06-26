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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` varchar(8) NOT NULL,
  `UserID` varchar(8) NOT NULL,
  `ShipperID` varchar(8) NOT NULL,
  `OrderDate` date NOT NULL,
  `RequiredDate` date NOT NULL,
  `Freight` decimal(10,0) NOT NULL,
  `SalesTax` decimal(10,0) NOT NULL,
  `TimeStamp` timestamp NOT NULL,
  `TransactStatus` varchar(25) NOT NULL,
  `InvoiceAmount` int NOT NULL,
  `PaymentDate` date NOT NULL,
  `ItemQuantity` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `UserID_idx` (`UserID`),
  KEY `ShipperID_idx` (`ShipperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('OR6018','US2654','SH17648','2017-06-27','2017-07-05',13,6,'2017-02-26 15:30:36','complete',59,'2017-06-27',2),('OR6091','US2435','SH17626','2017-06-26','2017-07-05',4,5,'2017-02-27 15:30:35','complete',90,'2017-06-26',3),('OR6182','US2124','SH17648','2017-02-22','2017-03-06',25,25,'2017-02-26 15:30:33','complete',326,'2017-02-27',4),('OR6534','US2123','SH17648','2017-02-22','2017-03-04',0,4,'2017-02-26 15:30:31','complete',36,'2017-02-27',2),('OR6676','US2498','SH17526','2017-02-24','2017-03-05',25,25,'2017-02-26 15:30:32','complete',235,'2017-02-27',1),('OR6906','US2098','SH17648','2017-06-28','2017-07-05',21,11,'2017-02-27 15:30:37','complete',124,'2017-06-28',6),('OR6986','US2895','SH17526','2017-06-25','2017-07-05',99,6,'2017-02-27 15:30:34','complete',746,'2017-06-27',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-27  0:02:06
