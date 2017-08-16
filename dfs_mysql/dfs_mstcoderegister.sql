CREATE DATABASE  IF NOT EXISTS `dfs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dfs`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dfs
-- ------------------------------------------------------
-- Server version	5.6.36-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mstcoderegister`
--

DROP TABLE IF EXISTS `mstcoderegister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mstcoderegister` (
  `recid` int(11) NOT NULL AUTO_INCREMENT,
  `codename` varchar(255) NOT NULL,
  `codeid` varchar(100) NOT NULL,
  `codekey` varchar(100) NOT NULL,
  `codevalue` varchar(255) NOT NULL,
  `codeseqno` int(11) NOT NULL,
  `creationDate` datetime NOT NULL,
  `actionDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `actionUserID` int(11) NOT NULL,
  PRIMARY KEY (`recid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstcoderegister`
--

LOCK TABLES `mstcoderegister` WRITE;
/*!40000 ALTER TABLE `mstcoderegister` DISABLE KEYS */;
INSERT INTO `mstcoderegister` (`recid`, `codename`, `codeid`, `codekey`, `codevalue`, `codeseqno`, `creationDate`, `actionDate`, `actionUserID`) VALUES (1,'add_type','Address Type','add_type_home','Home',1,'2017-08-14 06:33:38','2017-08-14 06:33:38',1),(2,'add_type','Address Type','add_type_off','Office',2,'2017-08-14 06:45:21','2017-08-14 06:45:21',1);
/*!40000 ALTER TABLE `mstcoderegister` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-14  7:43:06