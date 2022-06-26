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
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyers` (
  `BuyerID` varchar(8) NOT NULL,
  `UserID` varchar(8) NOT NULL,
  `USER_TYPE` varchar(1) NOT NULL,
  `MembershipID` varchar(8) DEFAULT NULL,
  `FName` varchar(45) NOT NULL,
  `LName` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) NOT NULL DEFAULT 'xxx-xxx-xxxx',
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`UserID`,`USER_TYPE`),
  CONSTRAINT `buyers_chk_1` CHECK ((`USER_TYPE` = _utf8mb4'B'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES ('B3656','US2098','B',NULL,'Sean','Romero','519-556-9422','sean.rom@other.com'),('B3465','US2123','B','M1458','Georges','Bienvenu','555-098-7638','gbienvenu@email.com'),('B3680','US2213','B','M1178','Ginette','Beauregard','514-098-8334','beauregard.ginette@other.com'),('B3326','US2348','B','M1318','Nancy','Book','555-868-8379','booknancy@other.com'),('B3342','US2435','B',NULL,'Daniel','Dam','074-515-5458','ddam@email.com'),('B3432','US2456','B','M1968','Elise','Fort','919-887-0965','elise.f@email.com'),('B3442','US2498','B',NULL,'Yung','Xi','250-753-0094','xi.yung@email.com'),('B3765','US2654','B','M1867','Taylor','Swing','012-3370697','swing@email.com'),('B3998','US2784','B','M1957','Red','Forman','972-670-3345','redismad@email.com'),('B3568','US2874','B','M1568','Jack','Smith','676-876-0094','js@email.com'),('B3235','US2895','B','M1642','Sarah','Mansour','037-146-2742','sarahsarah@other.com');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-27  0:02:04
