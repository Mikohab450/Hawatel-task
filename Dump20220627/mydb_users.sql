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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` varchar(8) NOT NULL,
  `UserFName` varchar(45) NOT NULL,
  `UserLName` varchar(45) NOT NULL,
  `USER_TYPE` varchar(1) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `DateCreated` date NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('US2098','Sean','Romero','B','OUVO8V','2003-02-16'),('US2123','Georges','Bienvenu','B','LKGCKF','2016-03-21'),('US2124','Georges','Bienvenu','B','YVUOT7D','2009-11-28'),('US2193','Sell','Junk','S','pyg8p7','2013-02-18'),('US2213','Ginette','Beauregard','B','KGHCY','2012-03-02'),('US2348','Nancy','Book','B','LHSBDJ','2000-12-12'),('US2435','Daniel','Dam','B','8IVYIGV','2016-12-13'),('US2456','Elise','Fort','B','QOWUDHC','2004-02-24'),('US2498','Yung','Xi','B','Y8VP8VY','2010-10-10'),('US2654','Taylor','Swing','B','8YVIKV','2017-01-26'),('US2784','Red','Forman','B','97VIYGV','2003-12-30'),('US2874','Jack','Smith','B','LKEHDJK','2011-08-02'),('US2895','Sarah','Mansour','B','P8YVUUG','2017-07-02'),('US6283','Fun','Shop','S','LWIEYFG','2003-03-24'),('US6381','Shop','Drop','S','P8EUBW','2015-09-15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
