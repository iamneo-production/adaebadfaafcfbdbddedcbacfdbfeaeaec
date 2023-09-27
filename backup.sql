-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: appdb
-- ------------------------------------------------------
-- Server version	5.6.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `appdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `appdb`;

--
-- Table structure for table `cartmodels`
--

DROP TABLE IF EXISTS `cartmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartmodels` (
  `cartId` varchar(255) NOT NULL DEFAULT '',
  `productName` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartmodels`
--

LOCK TABLES `cartmodels` WRITE;
/*!40000 ALTER TABLE `cartmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordermodels`
--

DROP TABLE IF EXISTS `ordermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordermodels` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordermodels`
--

LOCK TABLES `ordermodels` WRITE;
/*!40000 ALTER TABLE `ordermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productmodels`
--

DROP TABLE IF EXISTS `productmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productmodels` (
  `productId` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `productName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productmodels`
--

LOCK TABLES `productmodels` WRITE;
/*!40000 ALTER TABLE `productmodels` DISABLE KEYS */;
INSERT INTO `productmodels` VALUES ('15904edc-c140-4ddd-b944-81f4bb338232','book','test book','120','abcd','10','2023-09-27 13:14:02','2023-09-27 13:14:02'),('1b3d9973-ef28-4da2-b5e2-f83002ff02d0','book','test book','120','abcd','10','2023-09-27 13:17:09','2023-09-27 13:17:09'),('2d47908b-f1be-4760-9bd2-cc1cf7a4c4a5','book','test book','120','abcd','10','2023-09-27 13:11:08','2023-09-27 13:11:08'),('4956dbaa-37f5-4e8b-89ec-34fd6c703727','book','test book','120','abcd','10','2023-09-27 13:05:48','2023-09-27 13:05:48'),('552346fa-cbfa-4dbe-aed2-bc52c9aad784','book','test book','120','abcd','10','2023-09-27 13:07:00','2023-09-27 13:07:00'),('773e75b7-9940-43eb-97ba-dc2c46b0a987','book','test book','120','abcd','10','2023-09-27 13:08:18','2023-09-27 13:08:18'),('a048144c-a687-42f8-bfa4-b2c045313e28','book','test book','120','abcd','10','2023-09-27 13:12:06','2023-09-27 13:12:06'),('b65d8d21-eb6e-4de8-95c6-b153a73d2185','book','test book','120','abcd','10','2023-09-27 13:12:16','2023-09-27 13:12:16'),('c24cf103-2af5-48c7-bcb3-3ac8ee0d5e3b','book','test book','120','abcd','10','2023-09-27 13:17:38','2023-09-27 13:17:38'),('f83c13ee-8d69-43d9-932b-a64cb65d2028','book','test book','120','abcd','10','2023-09-27 13:10:42','2023-09-27 13:10:42'),('ff852d03-323e-4ec7-aeac-a48a822d4e5a','book','test book','120','abcd','10','2023-09-27 13:05:34','2023-09-27 13:05:34');
/*!40000 ALTER TABLE `productmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermodels`
--

DROP TABLE IF EXISTS `usermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermodels` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermodels`
--

LOCK TABLES `usermodels` WRITE;
/*!40000 ALTER TABLE `usermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `usermodels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 13:20:51
