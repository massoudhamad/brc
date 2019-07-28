CREATE DATABASE  IF NOT EXISTS `brc_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `brc_database`;
-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: brc_database
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brcx_applicant`
--

DROP TABLE IF EXISTS `brcx_applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brcx_applicant` (
  `Applicant_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `middle_ name` varchar(200) NOT NULL,
  `last _name` varchar(200) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `id_number` int(11) NOT NULL,
  `type_code` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `physical_address` varchar(45) NOT NULL,
  `island_code` int(11) NOT NULL,
  `region_code` int(11) NOT NULL,
  `statuts` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `createdBy` int(11) NOT NULL,
  PRIMARY KEY (`Applicant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brcx_applicant`
--

LOCK TABLES `brcx_applicant` WRITE;
/*!40000 ALTER TABLE `brcx_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `brcx_applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brcx_id types`
--

DROP TABLE IF EXISTS `brcx_id types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brcx_id types` (
  `type_code` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created date` datetime NOT NULL,
  `modified date` datetime NOT NULL,
  `createdBy` int(11) NOT NULL,
  PRIMARY KEY (`type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brcx_id types`
--

LOCK TABLES `brcx_id types` WRITE;
/*!40000 ALTER TABLE `brcx_id types` DISABLE KEYS */;
/*!40000 ALTER TABLE `brcx_id types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brcx_island`
--

DROP TABLE IF EXISTS `brcx_island`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brcx_island` (
  `island_code` int(11) NOT NULL,
  `island_name` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `createdBy` int(11) NOT NULL,
  PRIMARY KEY (`island_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brcx_island`
--

LOCK TABLES `brcx_island` WRITE;
/*!40000 ALTER TABLE `brcx_island` DISABLE KEYS */;
/*!40000 ALTER TABLE `brcx_island` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brcx_region`
--

DROP TABLE IF EXISTS `brcx_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brcx_region` (
  `region_code` int(11) NOT NULL,
  `island_code` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `createdBy` int(11) NOT NULL,
  `region_name` varchar(45) NOT NULL,
  PRIMARY KEY (`region_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brcx_region`
--

LOCK TABLES `brcx_region` WRITE;
/*!40000 ALTER TABLE `brcx_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `brcx_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brcx_role`
--

DROP TABLE IF EXISTS `brcx_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brcx_role` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(45) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brcx_role`
--

LOCK TABLES `brcx_role` WRITE;
/*!40000 ALTER TABLE `brcx_role` DISABLE KEYS */;
INSERT INTO `brcx_role` VALUES (1,'Administrator',1),(2,'Manager',1),(3,'Applicant',1),(4,'Officer',1);
/*!40000 ALTER TABLE `brcx_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brcx_user`
--

DROP TABLE IF EXISTS `brcx_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brcx_user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(145) DEFAULT NULL,
  `roleID` varchar(45) DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `createdBy` int(11) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brcx_user`
--

LOCK TABLES `brcx_user` WRITE;
/*!40000 ALTER TABLE `brcx_user` DISABLE KEYS */;
INSERT INTO `brcx_user` VALUES (1,'Ali','Omar','Ali.Omar','12345678','ali.omar@sumait.com','1',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `brcx_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-28 15:26:11
