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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-19 10:33:15.865756'),(2,'auth','0001_initial','2023-09-19 10:33:16.199565'),(3,'admin','0001_initial','2023-09-19 10:33:16.296870'),(4,'admin','0002_logentry_remove_auto_add','2023-09-19 10:33:16.304884'),(5,'admin','0003_logentry_add_action_flag_choices','2023-09-19 10:33:16.310735'),(6,'contenttypes','0002_remove_content_type_name','2023-09-19 10:33:16.358165'),(7,'auth','0002_alter_permission_name_max_length','2023-09-19 10:33:16.389537'),(8,'auth','0003_alter_user_email_max_length','2023-09-19 10:33:16.411191'),(9,'auth','0004_alter_user_username_opts','2023-09-19 10:33:16.419248'),(10,'auth','0005_alter_user_last_login_null','2023-09-19 10:33:16.464907'),(11,'auth','0006_require_contenttypes_0002','2023-09-19 10:33:16.469976'),(12,'auth','0007_alter_validators_add_error_messages','2023-09-19 10:33:16.479080'),(13,'auth','0008_alter_user_username_max_length','2023-09-19 10:33:16.525726'),(14,'auth','0009_alter_user_last_name_max_length','2023-09-19 10:33:16.566243'),(15,'auth','0010_alter_group_name_max_length','2023-09-19 10:33:16.581941'),(16,'auth','0011_update_proxy_permissions','2023-09-19 10:33:16.590905'),(17,'auth','0012_alter_user_first_name_max_length','2023-09-19 10:33:16.624991'),(18,'sessions','0001_initial','2023-09-19 10:33:16.654299'),(19,'comicsapp','0001_initial','2023-09-24 04:36:43.308125'),(20,'comicsapp','0002_alter_comic_content_description','2023-09-24 06:06:37.575838'),(21,'comicsapp','0003_delete_comic_content','2023-09-24 06:12:19.092433'),(22,'comicsapp','0004_initial','2023-09-24 06:12:29.104688'),(23,'comicsapp','0005_comic_content_category','2023-09-25 06:12:51.636288'),(24,'comicsapp','0006_comic_content_image1_comic_content_image2_and_more','2023-09-29 08:28:37.492069'),(25,'comicsapp','0007_alter_comic_content_image1_and_more','2023-09-29 09:12:25.428793'),(26,'comicsapp','0008_remove_comic_content_image1_and_more','2023-10-04 04:56:49.097798'),(27,'comicsapp','0009_comic_content_image1_comic_content_image2_and_more','2023-10-04 05:04:02.006594');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06  8:15:38
