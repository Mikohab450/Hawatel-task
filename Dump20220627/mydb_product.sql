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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` varchar(8) NOT NULL,
  `DepartmentID` varchar(8) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `IDSKU` varchar(8) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPrice` decimal(10,0) NOT NULL,
  `Ranking` int DEFAULT NULL,
  `ProductDesc` text,
  `UnitsInStock` int DEFAULT NULL,
  `UnitsInOrder` int DEFAULT NULL,
  `Picture` blob,
  `UnitPriceUSD` decimal(15,2) DEFAULT NULL,
  `UnitPriceEuro` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('PR4192','D1183','Makeup','SKU9763','Maybelline New York Super Stay',1,10,88,'Matte ink lip color',438,300,_binary 'maybellinenylip.jpg',44.66,47.09),('PR4298','D1183','Beauty appliances','SKU76G2','T3 Featherweight',1,247,5,'Hair dryer with 2 speed settings, 3 heat settings and a 2-year warranty',87,20,_binary 'T3hairdryerwhite.png',1103.00,1163.22),('PR4394','D1145','Sneakers','SKU8723','Under Armour Micro G running shoes',1,67,12,'Black running shoes with rubber sole & breathable mesh',566,66,_binary 'underarmourblack.jpg',299.20,315.53),('PR4467','D1178','Adaptor','SKUGNXW','Poweradd power converter',1,30,701,'2-outlet universal travel adapter',5000,20,_binary 'poweraddconverter.png',133.97,141.28),('PR4689','D1145','Jewelery','SKU7263','10k Rose Gold plated white Gold Diamond ring',1,538,83766,'0.75cttw, I-J Color, I2-I3 Clarity',30,4,_binary 'diamondring.png',2402.49,2533.66),('PR4769','D1178','Tablet','SKU6789','Kindle Paperwhite',1,140,767,'Tablet with 6\" high-resolution display with builtin light',3987,200,_binary 'kindle.jpg',625.18,659.32),('PR4789','D1178','Laptop','SKUB00V','ASUS Chromebook C201',1,270,18,'11.6 inch latop, navy blue',4534,445,_binary 'asuschromebook.png',1205.71,1271.54);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
