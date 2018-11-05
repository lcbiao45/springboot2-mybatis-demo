-- MySQL dump 10.13  Distrib 5.7.20, for osx10.11 (x86_64)
--
-- Host: localhost    Database: mytest
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `chapter`
--
DROP Database IF EXISTS `idiom`;
CREATE Database `idiom`;
use `idiom`;

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(64) NOT NULL DEFAULT '""' COMMENT '关卡名',
  `owner_id` varchar(64) NOT NULL DEFAULT '""' COMMENT '上传者ID',
  `owner_name` varchar(11) NOT NULL DEFAULT '""' COMMENT '上传者名',
  `password` varchar(32) NOT NULL DEFAULT '""' COMMENT '关卡密码',
  `desc` varchar(128) NOT NULL DEFAULT '""' COMMENT '关卡描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter_idiom`
--

DROP TABLE IF EXISTS `chapter_idiom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter_idiom` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idiom_id` varchar(64) NOT NULL DEFAULT '""' COMMENT '成语ID',
  `chapter_id` varchar(64) NOT NULL DEFAULT '""' COMMENT '关卡ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter_idiom`
--

LOCK TABLES `chapter_idiom` WRITE;
/*!40000 ALTER TABLE `chapter_idiom` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter_idiom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiom`
--

DROP TABLE IF EXISTS `idiom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idiom` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(256) NOT NULL DEFAULT '""' COMMENT '成语描述',
  `name` varchar(32) NOT NULL DEFAULT '""' COMMENT '成语',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiom`
--

LOCK TABLES `idiom` WRITE;
/*!40000 ALTER TABLE `idiom` DISABLE KEYS */;
/*!40000 ALTER TABLE `idiom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(64) NOT NULL DEFAULT '""',
  `password` varchar(64) NOT NULL DEFAULT '""',
  `phone` varchar(32) NOT NULL DEFAULT '""',
  `weixin_id` varchar(64) NOT NULL DEFAULT '""',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-05  9:55:15
