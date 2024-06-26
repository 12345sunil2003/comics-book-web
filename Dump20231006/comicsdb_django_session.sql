-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: comicsdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1gfdoqk3h06bhcfn0zi8cvpjdku08g8z','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1qm3nw:bn3ilCEHRjbCMh5IpF9GLym9zRLpaHe13R2K5mq4FiQ','2023-10-13 03:04:36.008475'),('blcf5tnjcmiesvjydevwjm69vgr7b216','.eJxVjE0OwiAYBe_C2hCg0KJL9z0D-f6QqqFJaVfGu2uTLnT7Zua9VIJtLWlrsqSJ1UVZdfrdEOghdQd8h3qbNc11XSbUu6IP2vQ4szyvh_t3UKCVb02ZOXYuexdMBG8IDAT0QgMHAQDjkTrA_uzEEKK14onYh8H2MTOxen8AEWk5Wg:1qkbcE:EvPxrs3_hdgtLhPRn_qLsr1OpTMl2Pmn8FgZupSeAUs','2023-10-09 02:46:30.525477'),('nt9bqncp4kf2z64w9biwrz00ibj2reza','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1qnshp:q2GewwZZ3dFh5fTC3foVx60ZYo32-t9OJLFDIlpz6lo','2023-10-18 03:37:49.263803'),('s8qij1d758litwfpwyat9wakrqqwx4jn','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1qoERr:1vTDk5QotPjlKYaCCIGD3R341GBcYA-e5JsCfqsyNBI','2023-10-19 02:50:47.073818');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06  8:15:36
