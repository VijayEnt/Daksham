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
-- Table structure for table `mstparty`
--

DROP TABLE IF EXISTS `mstparty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mstparty` (
  `partyID` int(11) NOT NULL AUTO_INCREMENT,
  `partyCode` varchar(15) NOT NULL,
  `partyName` varchar(255) NOT NULL,
  `partyAddressID` int(11) NOT NULL,
  `partyType` varchar(255) NOT NULL,
  `partyAbb` varchar(255) DEFAULT NULL,
  `partyGSTCode` varchar(255) DEFAULT NULL,
  `partyContactNO1` varchar(15) NOT NULL,
  `partyContactNO2` varchar(15) DEFAULT NULL,
  `partyemail` varchar(50) DEFAULT NULL,
  `partyDOI` datetime NOT NULL,
  `partyOpenBal` int(11) DEFAULT NULL,
  `partyCloseBal` int(11) DEFAULT NULL,
  `partyMarka` varchar(50) DEFAULT NULL,
  `partyTransportID` int(11) DEFAULT NULL,
  `isEntity` varchar(5) NOT NULL DEFAULT 'N',
  `isActive` varchar(5) NOT NULL DEFAULT 'Y',
  `creationDate` datetime NOT NULL,
  `actionDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `actionUserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`partyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Party Master';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mstparty`
--

LOCK TABLES `mstparty` WRITE;
/*!40000 ALTER TABLE `mstparty` DISABLE KEYS */;
/*!40000 ALTER TABLE `mstparty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-14  7:43:05
