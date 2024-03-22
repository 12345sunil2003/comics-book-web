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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add comic_content',7,'add_comic_content'),(26,'Can change comic_content',7,'change_comic_content'),(27,'Can delete comic_content',7,'delete_comic_content'),(28,'Can view comic_content',7,'view_comic_content'),(29,'Can add payment',8,'add_payment'),(30,'Can change payment',8,'change_payment'),(31,'Can delete payment',8,'delete_payment'),(32,'Can view payment',8,'view_payment'),(33,'Can add comic_payment',9,'add_comic_payment'),(34,'Can change comic_payment',9,'change_comic_payment'),(35,'Can delete comic_payment',9,'delete_comic_payment'),(36,'Can view comic_payment',9,'view_comic_payment'),(37,'Can add test_comic_content',10,'add_test_comic_content'),(38,'Can change test_comic_content',10,'change_test_comic_content'),(39,'Can delete test_comic_content',10,'delete_test_comic_content'),(40,'Can view test_comic_content',10,'view_test_comic_content'),(41,'Can add image model',11,'add_imagemodel'),(42,'Can change image model',11,'change_imagemodel'),(43,'Can delete image model',11,'delete_imagemodel'),(44,'Can view image model',11,'view_imagemodel'),(45,'Can add your image model',12,'add_yourimagemodel'),(46,'Can change your image model',12,'change_yourimagemodel'),(47,'Can delete your image model',12,'delete_yourimagemodel'),(48,'Can view your image model',12,'view_yourimagemodel'),(49,'Can add add image',13,'add_addimage'),(50,'Can change add image',13,'change_addimage'),(51,'Can delete add image',13,'delete_addimage'),(52,'Can view add image',13,'view_addimage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$T8sqF3Mcf5QkBzcJ1w1QcS$wAHOToNyMXN08Kj7AGovsJEJWtiKp6kgnR5FQyzMYH4=','2024-03-22 06:01:33.179496',0,'sunil','','','sunilrameshsunil80@gmail.com',0,1,'2023-09-19 10:35:12.390783'),(2,'pbkdf2_sha256$600000$ZT3lyNYEa8NcaiH68hlOOC$Vjm0/IfmiLR8jEYe/8prD/KT0ErcVSJUCNGt6eUm0Zc=','2023-09-19 10:40:40.764877',1,'ss','','','ss@gmail.com',1,1,'2023-09-19 10:39:06.981447'),(8,'pbkdf2_sha256$600000$GYmF7EYvZMpzx6sm6I5NjS$dFR0qKgb5CIIe+zyEmTbNc+BWfzp1GGZkBixeWvGch4=','2023-11-22 04:34:26.503142',0,'venkat','','','venkat@gmail.com',0,1,'2023-11-22 04:34:25.477524'),(9,'pbkdf2_sha256$600000$RfmVHvrXPd6fCXLkEHfx1g$ll2F8oAre6GqoyaxUTxG/EArDhulZwXR72mocQCT3Ms=','2023-11-22 04:35:59.800394',0,'boxer','','','boxer@gmail.com',0,1,'2023-11-22 04:35:40.605566'),(10,'pbkdf2_sha256$600000$BKx931mrD3ouhmVDLux4YJ$q4k2fJMPxvvtfKTOfHiGDcpSDGh0WAU2jRn86D06XKM=','2023-12-13 06:53:19.582153',0,'kathiravan','','','kathiravan@gmail.com',0,1,'2023-12-13 06:50:32.382069');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comicsapp_addimage`
--

DROP TABLE IF EXISTS `comicsapp_addimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comicsapp_addimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `fav` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comicsapp_addimage`
--

LOCK TABLES `comicsapp_addimage` WRITE;
/*!40000 ALTER TABLE `comicsapp_addimage` DISABLE KEYS */;
INSERT INTO `comicsapp_addimage` VALUES (1,'comic_images/evat_2soYwzF.jpg','Evangelion','Neon Genesis Evangelion  Shin  lit. New Century Evangelion commonly referred to as Evangelion, is a Japanese anime series, created by Gainax, that began in October 1995. The anime was written and directed by Hideak Anno, and co-produced by TV Tokyo and Nihon Ad Systems (NAS). It gained international renown and won several animation awards, and was the start of the Neon Genesis Evangelion series.',0,'2024-01-22 11:35:38.722944','action','paid','199'),(2,'comic_images/zero4.jpg','Re-zero: Seco..','Re:Zero kara Hajimeru Isekai Seikatsu  Re: Life in a Different World from Zero) is a Japanese light novel series written by Nagatsuki Tappei and illustrated by Shin\'ichirō Ōtsuka. The series has been published by MF Bunko J since January 2014, and also has a sub series known as Re:Zero kara Hajimeru Isekai Seikatsu Ex, lit. Re: Life in a Different World from Zero Ex), which covers the past before the series started.',1,'2024-01-22 11:51:17.475778','action','free','free'),(3,'comic_images/Jojos_Bizarre.jpg','Jojo\'s Bizarre','Crazy Diamond’s Demonic Heartbreak was originally announced sans its title in August, when it was revealed that the new series would be penned by Kohei Kadano, the creator of the acclaimed horror series Boogiepop and others. The spinoff will feature art by Tasuka Kurasama, the artist behind the No Guns Life manga.',1,'2024-01-22 12:11:13.021993','action','free','free'),(4,'comic_images/boroto.jpg','Boruto','Welcome to the Komi cant communicate, a Wiki dedicated to everything about the manga Komi-san Wa Komyushu Desu that anyone can edit. Please help us by creating or editing any of our articles! To edit articles, you must login or register through Fandom.',0,'2024-01-22 12:22:31.221911','action','paid','250'),(5,'comic_images/Kaguya-sama.jpg','Kaguya-sama: Love is war','Kaguya-sama: Love is War started out as a manga with a specific premise: two high school geniuses, Shirogane and Kaguya, can’t admit they’re in love, so each tries to win a confession of affection from the other. This results in increasingly ridiculous mind games in which they end up outsmarting themselves. Think Bugs Bunny and Daffy Duck cartoons, but about high school relationships.',0,'2024-01-23 02:59:47.196192','romance','paid','250'),(6,'comic_images/Komi_san_Cant_Communicate.jpg','Komi san Cant Communicate',' Hepburn: Komi-san wa, Komyushou desu. is a Japanese manga series written and illustrated by Tomohito Oda. The manga was first published in Shogakukan’s Weekly Shōnen Sunday as a one-shot chapter in September 2015, while the regular series started in May 2016.',0,'2024-01-23 03:20:15.505410','romance','free','free'),(7,'comic_images/like_us.jpg','Like Us','There was a time, not so long ago when comic book publishers favored a genre no longer as common today: romance comics. Back in the 1940s, and well into the early 1970s, all the major publishers were churning out romantic comic books, and they were popular among male and female readers. Eventually, the majority of romance comics went away as superheroes became popular once more, but for a long time, they dominated the industry. Despite this you will find such titles as Saga and Bryan Lee O\'Mally\'s Scott Pilgrim on here as examples of more modern romantic comics and graphic novels.',0,'2024-01-23 03:38:04.345908','romance','paid','199'),(8,'comic_images/prince.jpg','The prince','Gemini was his Batman Joker mashed up inspired character in the Batdance music video. Prince has been in a few comics. Most notably was Rock N\' Roll Comics  which serves as a bio book. The other two key appearances were the two Piranha Press books: Prince - Alter Ego and Prince and The New Power Generation - Three Chains of Gold.\r\n',0,'2024-01-23 03:49:30.963498','romance','free','free'),(9,'comic_images/Raina_Telgemeier.jpg','Raina Telgemeier','Drama is a graphic novel written by American cartoonist which centers on the story of Callie, a student and lover who works in her school\'s drama production crew. While navigating seventh grade, Callie deals with hardship, including confusing crushes, budding friendships, and middle school drama. It is a that explores themes of friendship.',0,'2024-01-23 04:01:06.636670','drama','free','free'),(10,'comic_images/Focus_on_drama.jpg','Focus on drama','The genre of drama is known for tragic heroes like Oedipus, Hamlet, and Willie Loman, but comic drama has always existed alongside the serious and tragic, lampooning modern life and those in power. Create an account Table of Contents Comedy and Drama Classical Satire Renaissance Romantic Comedy Comedy of Manners Theatre of the Absurd',0,'2024-01-23 04:11:01.619179','drama','free','free'),(11,'comic_images/Shadows_of_the_Heart.jpg','Shadows of the Heart','Shadow Hearts is a series of PS2 JRPGs set in an alternate history with cosmic terror that follows the 1999 PlayStation 1 forerunner Koudelka. The games, which draw their inspiration from H.P. Lovecraft and Devilman, follow various characters. As they cope with paranormal incidents connected to real-world historical figures and events.',0,'2024-01-23 04:41:48.158931','drama','paid','250'),(12,'comic_images/Fading_Echoes.jpg','Fading Echoes','These notes are brief, noting major events and minor events in Fading Echoes that will be of consequence later. They are intended to be used as a reference for those looking for specific events for re-reading and the book discussions. Breezepelt and Hawkfrost are training in the Dark Forest.',0,'2024-01-23 04:55:02.196423','drama','paid','199'),(13,'comic_images/Deadpool_to_One-Punch_Man.jpg','Deadpool to One-Punch Man','Over the last 10 years, many changes have happened within the world of comics. \r\nUpdates in technology have allowed people increasing access to the Internet at all hours \r\nof the day. As a result, webcomics and independent publishers have had more and more chance to shine, giving us daily doses \r\nof weird, risky humor that mainstream publishers might not have taken chances on.',0,'2024-01-23 05:10:18.300421','comedy','paid','250'),(14,'comic_images/A_Comedy_Extravaganza.jpg','A Comedy Extravaganza','Like Elizabeth Bennet, I too dearly love a laugh. My novel reading can be rather bleak and heavy. I’m attracted to doom and gloom, but sometimes the slog of melancholy can feel a bit harrowing, and can lead to reading slumps. When I’m feeling this way, I tend to need a jolt of humor to counteract the doldrums.\r\n\r\nComics and graphic novels are the perfect antidote. They’re short, have pictures, and can be really funny. You can also read a whole bunch in a short amount of time, which is a huge boon to your yearly reading goals.',0,'2024-01-23 05:30:13.831371','comedy','paid','199'),(15,'comic_images/Hilarious_Journey.jpg','Hilarious Journey into Comedy','After a few years, the jokes no longer land and the references are outdated. Characters that were funny to one generation are cringy to the next. However, there are nevertheless some comedies that defy this trend. They remain hilarious and engaging years - or even decades - after their release.\r\n',0,'2024-01-23 05:58:49.134230','comedy','free','free'),(16,'comic_images/superman.jpeg','super man','The last survivor of the doomed planet Krypton, raised in the quiet heartland of Smallville, Kansas, Superman is as much a legend as he is a man: the gold standard of heroism, compassion and responsibility. Though his powers make him god-like next to his human compatriots, Superman\'s story is not one of greed or conquest.',0,'2024-01-23 06:47:33.315857','comedy','free','free'),(17,'comic_images/Black-and-white.jpg','Black-and-white','Since an issue of The Crypt of Terror had already been produced, it was published as the final issue of Tales from the Crypt, February/March, 1955. Tales from the Crypt has been reprinted on numerous occasions. Ballantine Books reprinted selected Crypt stories in a series of paperback EC anthologies in 1964-66',0,'2024-01-23 07:02:24.714404','horror','paid','199'),(18,'comic_images/Nightmare_Chronicles.jpg','Nightmare Chronicles','For hundreds of years, Nightmares have ruled the world. Descended from the Seven Deadly Sins, these supernatural creatures have enslaved and tortured the human race. I have lived my entire life fighting back against the monsters that have plagued this world. A deadly assassin and a member of the resistance, I only have one motto: kill or be killed.',0,'2024-01-23 07:34:53.499943','horror','paid','250'),(19,'comic_images/Terrors_in_the_Dark.jpg','Terrors in the Dark','As first announced at ComicsPRO, horror is invading the DC Universe this summer with the publishing event, Knight Terrors. The next Dawn of DC milestone event takes place in July and August and will feature a host of two-issue miniseries, each spotlighting a DC Super Hero or Super-Villain confronting their worst nightmares in a “Nightmare Realm',0,'2024-01-23 07:47:48.149479','horror','free','free'),(20,'comic_images/Chills_in_the_Shadows.jpg','Chills in the Shadows','The term “chills” refers to a feeling of being cold without an apparent cause. You get this feeling when your muscles repeatedly expand and contract and the vessels in your skin constrict. Chills can occur with a fever and cause shivering or shaking. Your body chills can be constant. Each episode can last for as long as an hour.\r\n',0,'2024-01-23 08:32:36.085495','horror','free','free'),(21,'comic_images/thriller1.jpeg','A Midnight Clear','Other entertaining comedic thrillers include Fletch, Kiss Kiss Bang Bang, and Grosse Point Blank. Do you have a favorite comedic thriller? Vote them up and vote down any you wish you\'d never seen.',0,'2024-01-23 09:00:49.379109','thriller','free','free'),(22,'comic_images/Chills_in_the_Shadows_ovYzOIi.jpg','Deadpool to One-Punch Man','Action Comics is the second longest running comic book series of all time, with only having been published longer. In 2018, it became only the second American comic book in history (after the 1930s-1960s Dell Comics title Four Color) to publish a 1,000th issue.',0,'2024-01-27 05:04:57.362597','comedy','paid','paid'),(23,'comic_images/thriller1_A1LrXCT.jpeg','Jojo\'s Bizarre','this for demo',0,'2024-02-03 05:10:37.729086','thriller','free','free'),(24,'comic_images/Terrors_in_the_Dark_Pvos5WW.jpg','Tobaku Mokushiroku ','it is for demo',1,'2024-02-27 03:14:30.407318','thriller','paid','199'),(25,'comic_images/zero4_yHjfUuu.jpg','Boruto','it is for demo',0,'2024-03-13 06:04:44.219448','thriller','free','-');
/*!40000 ALTER TABLE `comicsapp_addimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comicsapp_addimage_comicimages`
--

DROP TABLE IF EXISTS `comicsapp_addimage_comicimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comicsapp_addimage_comicimages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addimage_id` bigint NOT NULL,
  `yourimagemodel_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comicsapp_addimage_comic_addimage_id_yourimagemod_a5c5b2e9_uniq` (`addimage_id`,`yourimagemodel_id`),
  KEY `comicsapp_addimage_c_yourimagemodel_id_3a5cb742_fk_comicsapp` (`yourimagemodel_id`),
  CONSTRAINT `comicsapp_addimage_c_addimage_id_68a8736c_fk_comicsapp` FOREIGN KEY (`addimage_id`) REFERENCES `comicsapp_addimage` (`id`),
  CONSTRAINT `comicsapp_addimage_c_yourimagemodel_id_3a5cb742_fk_comicsapp` FOREIGN KEY (`yourimagemodel_id`) REFERENCES `comicsapp_yourimagemodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comicsapp_addimage_comicimages`
--

LOCK TABLES `comicsapp_addimage_comicimages` WRITE;
/*!40000 ALTER TABLE `comicsapp_addimage_comicimages` DISABLE KEYS */;
INSERT INTO `comicsapp_addimage_comicimages` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,3,20),(21,3,21),(22,3,22),(23,3,23),(24,3,24),(25,3,25),(26,3,26),(27,3,27),(28,3,28),(29,4,29),(30,4,30),(31,4,31),(32,4,32),(33,4,33),(34,5,34),(35,5,35),(36,5,36),(37,5,37),(38,5,38),(39,5,39),(40,5,40),(41,5,41),(42,5,42),(43,5,43),(44,5,44),(45,5,45),(46,6,46),(47,6,47),(48,6,48),(49,6,49),(50,6,50),(51,6,51),(52,6,52),(53,6,53),(54,6,54),(55,6,55),(56,7,56),(57,7,57),(58,7,58),(59,7,59),(60,7,60),(61,7,61),(62,7,62),(63,7,63),(64,7,64),(65,7,65),(66,8,66),(67,8,67),(68,8,68),(69,8,69),(70,8,70),(71,8,71),(72,8,72),(73,8,73),(74,9,74),(75,9,75),(76,9,76),(77,9,77),(78,9,78),(79,9,79),(80,9,80),(81,9,81),(82,9,82),(83,9,83),(84,9,84),(85,9,85),(86,10,86),(87,10,87),(88,10,88),(89,10,89),(90,10,90),(91,10,91),(92,10,92),(93,10,93),(94,10,94),(95,11,95),(96,11,96),(97,11,97),(98,11,98),(99,11,99),(100,11,100),(101,11,101),(102,11,102),(103,12,103),(104,12,104),(105,12,105),(106,12,106),(107,12,107),(108,12,108),(109,12,109),(110,12,110),(111,12,111),(112,12,112),(113,12,113),(114,12,114),(115,13,115),(116,13,116),(117,13,117),(118,13,118),(119,13,119),(120,13,120),(121,13,121),(122,14,122),(123,14,123),(124,14,124),(125,14,125),(126,14,126),(127,14,127),(128,14,128),(129,14,129),(130,15,130),(131,15,131),(132,15,132),(133,15,133),(134,15,134),(135,15,135),(136,15,136),(137,15,137),(138,16,138),(139,16,139),(140,16,140),(141,16,141),(142,16,142),(143,16,143),(144,16,144),(145,16,145),(146,16,146),(147,17,147),(148,17,148),(149,17,149),(150,17,150),(151,17,151),(152,17,152),(153,17,153),(154,18,154),(155,18,155),(156,18,156),(157,18,157),(158,18,158),(159,18,159),(160,18,160),(161,18,161),(162,18,162),(163,18,163),(164,18,164),(165,18,165),(166,19,166),(167,19,167),(168,19,168),(169,19,169),(170,19,170),(171,19,171),(172,19,172),(173,19,173),(174,19,174),(175,19,175),(176,20,176),(177,20,177),(178,20,178),(179,20,179),(180,20,180),(181,20,181),(182,20,182),(183,20,183),(184,20,184),(185,20,185),(186,20,186),(187,21,187),(188,21,188),(189,21,189),(190,21,190),(191,21,191),(192,21,192),(193,21,193),(194,21,194),(195,21,195),(196,22,196),(197,22,197),(198,22,198),(199,22,199),(200,22,200),(201,22,201),(202,22,202),(203,23,203),(204,23,204),(205,23,205),(206,23,206),(207,23,207),(208,23,208),(209,23,209),(210,23,210),(211,24,211),(212,24,212),(213,24,213),(214,24,214),(215,24,215),(216,24,216),(217,24,217),(218,24,218),(219,24,219),(220,24,220),(221,25,221),(222,25,222),(223,25,223),(224,25,224),(225,25,225),(226,25,226),(227,25,227),(228,25,228),(229,25,229);
/*!40000 ALTER TABLE `comicsapp_addimage_comicimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comicsapp_comic_content`
--

DROP TABLE IF EXISTS `comicsapp_comic_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comicsapp_comic_content` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `fav` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comicsapp_comic_content`
--

LOCK TABLES `comicsapp_comic_content` WRITE;
/*!40000 ALTER TABLE `comicsapp_comic_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `comicsapp_comic_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comicsapp_comic_payment`
--

DROP TABLE IF EXISTS `comicsapp_comic_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comicsapp_comic_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comicsapp_comic_payment`
--

LOCK TABLES `comicsapp_comic_payment` WRITE;
/*!40000 ALTER TABLE `comicsapp_comic_payment` DISABLE KEYS */;
INSERT INTO `comicsapp_comic_payment` VALUES (1,'1','','19900','1','completed'),(2,'1','','19900','17','completed'),(3,'1','','25000','4','completed'),(4,'1','','25000','5','completed'),(5,'1','','25000','11','completed'),(6,'1','','19900','7','completed'),(7,'1','','19900','24','completed'),(8,'1','','19900','24','completed');
/*!40000 ALTER TABLE `comicsapp_comic_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comicsapp_yourimagemodel`
--

DROP TABLE IF EXISTS `comicsapp_yourimagemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comicsapp_yourimagemodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comicsapp_yourimagemodel`
--

LOCK TABLES `comicsapp_yourimagemodel` WRITE;
/*!40000 ALTER TABLE `comicsapp_yourimagemodel` DISABLE KEYS */;
INSERT INTO `comicsapp_yourimagemodel` VALUES (1,'comic_images/WhatsApp_Image_2024-01-22_at_5.01.46_PM_1.jpeg'),(2,'comic_images/WhatsApp_Image_2024-01-22_at_5.01.46_PM.jpeg'),(3,'comic_images/WhatsApp_Image_2024-01-22_at_5.01.45_PM_1.jpeg'),(4,'comic_images/WhatsApp_Image_2024-01-22_at_5.01.45_PM.jpeg'),(5,'comic_images/WhatsApp_Image_2024-01-22_at_2.37.15_PM_lMYJVH3.jpeg'),(6,'comic_images/WhatsApp_Image_2024-01-22_at_2.37.14_PM_5MU5UhD.jpeg'),(7,'comic_images/WhatsApp_Image_2024-01-22_at_2.37.13_PM_d2MP9I1.jpeg'),(8,'comic_images/WhatsApp_Image_2024-01-22_at_2.37.12_PM_JG2ftev.jpeg'),(9,'comic_images/WhatsApp_Image_2024-01-22_at_2.37.11_PM_VW66dWB.jpeg'),(10,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.50_PM_1.jpeg'),(11,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.50_PM.jpeg'),(12,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.49_PM_1.jpeg'),(13,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.49_PM.jpeg'),(14,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.48_PM_1.jpeg'),(15,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.48_PM.jpeg'),(16,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.47_PM.jpeg'),(17,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.46_PM_1.jpeg'),(18,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.46_PM.jpeg'),(19,'comic_images/WhatsApp_Image_2024-01-22_at_5.16.45_PM.jpeg'),(20,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.32_PM_1.jpeg'),(21,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.32_PM.jpeg'),(22,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.31_PM_2.jpeg'),(23,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.31_PM_1.jpeg'),(24,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.31_PM.jpeg'),(25,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.30_PM_2.jpeg'),(26,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.30_PM_1.jpeg'),(27,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.30_PM.jpeg'),(28,'comic_images/WhatsApp_Image_2024-01-22_at_5.39.29_PM.jpeg'),(29,'comic_images/WhatsApp_Image_2024-01-22_at_5.49.57_PM_2.jpeg'),(30,'comic_images/WhatsApp_Image_2024-01-22_at_5.49.57_PM_1.jpeg'),(31,'comic_images/WhatsApp_Image_2024-01-22_at_5.49.57_PM.jpeg'),(32,'comic_images/WhatsApp_Image_2024-01-22_at_5.49.56_PM_1.jpeg'),(33,'comic_images/WhatsApp_Image_2024-01-22_at_5.49.56_PM.jpeg'),(34,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.11_AM_1.jpeg'),(35,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.11_AM.jpeg'),(36,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.10_AM_2.jpeg'),(37,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.10_AM_1.jpeg'),(38,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.10_AM.jpeg'),(39,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.09_AM_1.jpeg'),(40,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.09_AM.jpeg'),(41,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.08_AM_1.jpeg'),(42,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.08_AM.jpeg'),(43,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.07_AM_1.jpeg'),(44,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.07_AM.jpeg'),(45,'comic_images/WhatsApp_Image_2024-01-23_at_8.25.06_AM.jpeg'),(46,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.26_AM_1.jpeg'),(47,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.26_AM.jpeg'),(48,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.25_AM_1.jpeg'),(49,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.25_AM.jpeg'),(50,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.24_AM.jpeg'),(51,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.23_AM_1.jpeg'),(52,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.23_AM.jpeg'),(53,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.22_AM_1.jpeg'),(54,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.22_AM.jpeg'),(55,'comic_images/WhatsApp_Image_2024-01-23_at_8.46.19_AM.jpeg'),(56,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.57_AM.jpeg'),(57,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.56_AM_2.jpeg'),(58,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.56_AM_1.jpeg'),(59,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.56_AM.jpeg'),(60,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.55_AM_2.jpeg'),(61,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.55_AM_1.jpeg'),(62,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.55_AM.jpeg'),(63,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.54_AM.jpeg'),(64,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.53_AM_1.jpeg'),(65,'comic_images/WhatsApp_Image_2024-01-23_at_9.02.53_AM.jpeg'),(66,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.52_AM_1.jpeg'),(67,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.52_AM.jpeg'),(68,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.51_AM_1.jpeg'),(69,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.51_AM.jpeg'),(70,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.50_AM_1.jpeg'),(71,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.50_AM.jpeg'),(72,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.49_AM_1.jpeg'),(73,'comic_images/WhatsApp_Image_2024-01-23_at_9.13.49_AM.jpeg'),(74,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.07_AM.jpeg'),(75,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.06_AM_2.jpeg'),(76,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.06_AM_1.jpeg'),(77,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.06_AM.jpeg'),(78,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.05_AM.jpeg'),(79,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.04_AM_1.jpeg'),(80,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.04_AM.jpeg'),(81,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.03_AM.jpeg'),(82,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.02_AM_1.jpeg'),(83,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.02_AM.jpeg'),(84,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.01_AM.jpeg'),(85,'comic_images/WhatsApp_Image_2024-01-23_at_9.28.00_AM.jpeg'),(86,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.38_AM.jpeg'),(87,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.37_AM_2.jpeg'),(88,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.37_AM_1.jpeg'),(89,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.37_AM.jpeg'),(90,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.36_AM_2.jpeg'),(91,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.36_AM_1.jpeg'),(92,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.36_AM.jpeg'),(93,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.35_AM.jpeg'),(94,'comic_images/WhatsApp_Image_2024-01-23_at_9.37.33_AM.jpeg'),(95,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.55_AM_1.jpeg'),(96,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.55_AM.jpeg'),(97,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.54_AM.jpeg'),(98,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.51_AM.jpeg'),(99,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.47_AM_1.jpeg'),(100,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.47_AM.jpeg'),(101,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.46_AM.jpeg'),(102,'comic_images/WhatsApp_Image_2024-01-23_at_10.06.45_AM.jpeg'),(103,'comic_images/WhatsApp_Image_2024-01-23_at_10.21.05_AM_1.jpeg'),(104,'comic_images/WhatsApp_Image_2024-01-23_at_10.21.05_AM.jpeg'),(105,'comic_images/WhatsApp_Image_2024-01-23_at_10.21.04_AM.jpeg'),(106,'comic_images/WhatsApp_Image_2024-01-23_at_10.21.02_AM.jpeg'),(107,'comic_images/WhatsApp_Image_2024-01-23_at_10.21.01_AM.jpeg'),(108,'comic_images/WhatsApp_Image_2024-01-23_at_10.21.00_AM.jpeg'),(109,'comic_images/WhatsApp_Image_2024-01-23_at_10.20.59_AM_1.jpeg'),(110,'comic_images/WhatsApp_Image_2024-01-23_at_10.20.59_AM.jpeg'),(111,'comic_images/WhatsApp_Image_2024-01-23_at_10.20.56_AM.jpeg'),(112,'comic_images/WhatsApp_Image_2024-01-23_at_10.20.51_AM.jpeg'),(113,'comic_images/WhatsApp_Image_2024-01-23_at_10.20.50_AM.jpeg'),(114,'comic_images/WhatsApp_Image_2024-01-23_at_10.20.49_AM.jpeg'),(115,'comic_images/WhatsApp_Image_2024-01-23_at_10.37.35_AM.jpeg'),(116,'comic_images/WhatsApp_Image_2024-01-23_at_10.37.34_AM.jpeg'),(117,'comic_images/WhatsApp_Image_2024-01-23_at_10.37.32_AM_1.jpeg'),(118,'comic_images/WhatsApp_Image_2024-01-23_at_10.37.32_AM.jpeg'),(119,'comic_images/WhatsApp_Image_2024-01-23_at_10.37.31_AM.jpeg'),(120,'comic_images/WhatsApp_Image_2024-01-23_at_10.37.30_AM_1.jpeg'),(121,'comic_images/WhatsApp_Image_2024-01-23_at_10.37.30_AM.jpeg'),(122,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.53_AM.jpeg'),(123,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.52_AM.jpeg'),(124,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.51_AM_1.jpeg'),(125,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.51_AM.jpeg'),(126,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.50_AM.jpeg'),(127,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.49_AM_1.jpeg'),(128,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.49_AM.jpeg'),(129,'comic_images/WhatsApp_Image_2024-01-23_at_10.53.46_AM.jpeg'),(130,'comic_images/jo9.jpg'),(131,'comic_images/j08.jpg'),(132,'comic_images/jo6.jpg'),(133,'comic_images/j05.jpg'),(134,'comic_images/jo4.jpg'),(135,'comic_images/jo3.jpg'),(136,'comic_images/jo2.jpg'),(137,'comic_images/jo1.jpg'),(138,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.14_PM_1.jpeg'),(139,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.14_PM.jpeg'),(140,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.13_PM_1.jpeg'),(141,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.13_PM.jpeg'),(142,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.12_PM_2.jpeg'),(143,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.12_PM_1.jpeg'),(144,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.12_PM.jpeg'),(145,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.11_PM.jpeg'),(146,'comic_images/WhatsApp_Image_2024-01-23_at_12.11.09_PM.jpeg'),(147,'comic_images/WhatsApp_Image_2024-01-23_at_12.26.51_PM_1.jpeg'),(148,'comic_images/WhatsApp_Image_2024-01-23_at_12.26.51_PM.jpeg'),(149,'comic_images/WhatsApp_Image_2024-01-23_at_12.26.50_PM.jpeg'),(150,'comic_images/WhatsApp_Image_2024-01-23_at_12.26.49_PM_1.jpeg'),(151,'comic_images/WhatsApp_Image_2024-01-23_at_12.26.49_PM.jpeg'),(152,'comic_images/WhatsApp_Image_2024-01-23_at_12.26.48_PM_1.jpeg'),(153,'comic_images/WhatsApp_Image_2024-01-23_at_12.26.48_PM.jpeg'),(154,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.28_PM_1.jpeg'),(155,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.28_PM.jpeg'),(156,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.27_PM_1.jpeg'),(157,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.27_PM.jpeg'),(158,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.26_PM.jpeg'),(159,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.24_PM_1.jpeg'),(160,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.24_PM.jpeg'),(161,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.23_PM_1.jpeg'),(162,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.23_PM.jpeg'),(163,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.21_PM.jpeg'),(164,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.10_PM_1.jpeg'),(165,'comic_images/WhatsApp_Image_2024-01-23_at_12.57.10_PM.jpeg'),(166,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.40_PM_2.jpeg'),(167,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.40_PM_1.jpeg'),(168,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.40_PM.jpeg'),(169,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.39_PM_1.jpeg'),(170,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.39_PM.jpeg'),(171,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.38_PM_1.jpeg'),(172,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.38_PM.jpeg'),(173,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.37_PM_1.jpeg'),(174,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.37_PM.jpeg'),(175,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.36_PM.jpeg'),(176,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.18_PM.jpeg'),(177,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.16_PM.jpeg'),(178,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.14_PM.jpeg'),(179,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.12_PM_1.jpeg'),(180,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.12_PM.jpeg'),(181,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.11_PM.jpeg'),(182,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.09_PM_1.jpeg'),(183,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.09_PM.jpeg'),(184,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.08_PM.jpeg'),(185,'comic_images/WhatsApp_Image_2024-01-23_at_1.58.07_PM.jpeg'),(186,'comic_images/WhatsApp_Image_2024-01-23_at_1.55.17_PM.jpeg'),(187,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.33_PM.jpeg'),(188,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.30_PM.jpeg'),(189,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.26_PM.jpeg'),(190,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.23_PM.jpeg'),(191,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.19_PM.jpeg'),(192,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.17_PM.jpeg'),(193,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.15_PM.jpeg'),(194,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.14_PM.jpeg'),(195,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.13_PM.jpeg'),(196,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.26_PM_AMhS232.jpeg'),(197,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.23_PM_P7Vj5gs.jpeg'),(198,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.19_PM_YhTkIvu.jpeg'),(199,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.17_PM_aIUdanY.jpeg'),(200,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.15_PM_7VYFHYg.jpeg'),(201,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.14_PM_mOOuTCQ.jpeg'),(202,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.13_PM_yAwebOF.jpeg'),(203,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.30_PM_vh7fnS8.jpeg'),(204,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.26_PM_mwkY7aP.jpeg'),(205,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.23_PM_Yd5sN1S.jpeg'),(206,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.19_PM_5TlryJk.jpeg'),(207,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.17_PM_S0U3V3B.jpeg'),(208,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.15_PM_qtlHKiN.jpeg'),(209,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.14_PM_Kv4KNlQ.jpeg'),(210,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.13_PM_x0IWt47.jpeg'),(211,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.40_PM_2_skEOsnS.jpeg'),(212,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.40_PM_1_gU2Gc55.jpeg'),(213,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.40_PM_QHIGTgo.jpeg'),(214,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.39_PM_1_nM2rKmG.jpeg'),(215,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.39_PM_A3UKrg3.jpeg'),(216,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.38_PM_1_yMYLwuv.jpeg'),(217,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.38_PM_kkA29Q9.jpeg'),(218,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.37_PM_1_SHxOPtg.jpeg'),(219,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.37_PM_pfjuhOl.jpeg'),(220,'comic_images/WhatsApp_Image_2024-01-23_at_1.13.36_PM_zivbKpL.jpeg'),(221,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.33_PM_50ZSstX.jpeg'),(222,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.30_PM_nU8qX9T.jpeg'),(223,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.26_PM_NN39aaT.jpeg'),(224,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.23_PM_cNYK1qk.jpeg'),(225,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.19_PM_hPrBqdh.jpeg'),(226,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.17_PM_xrd9DXK.jpeg'),(227,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.15_PM_3NMWp3G.jpeg'),(228,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.14_PM_oAtWyl1.jpeg'),(229,'comic_images/WhatsApp_Image_2024-01-23_at_2.25.13_PM_iPl9k4j.jpeg');
/*!40000 ALTER TABLE `comicsapp_yourimagemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'comicsapp','addimage'),(7,'comicsapp','comic_content'),(9,'comicsapp','comic_payment'),(11,'comicsapp','imagemodel'),(8,'comicsapp','payment'),(10,'comicsapp','test_comic_content'),(12,'comicsapp','yourimagemodel'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-19 10:33:15.865756'),(2,'auth','0001_initial','2023-09-19 10:33:16.199565'),(3,'admin','0001_initial','2023-09-19 10:33:16.296870'),(4,'admin','0002_logentry_remove_auto_add','2023-09-19 10:33:16.304884'),(5,'admin','0003_logentry_add_action_flag_choices','2023-09-19 10:33:16.310735'),(6,'contenttypes','0002_remove_content_type_name','2023-09-19 10:33:16.358165'),(7,'auth','0002_alter_permission_name_max_length','2023-09-19 10:33:16.389537'),(8,'auth','0003_alter_user_email_max_length','2023-09-19 10:33:16.411191'),(9,'auth','0004_alter_user_username_opts','2023-09-19 10:33:16.419248'),(10,'auth','0005_alter_user_last_login_null','2023-09-19 10:33:16.464907'),(11,'auth','0006_require_contenttypes_0002','2023-09-19 10:33:16.469976'),(12,'auth','0007_alter_validators_add_error_messages','2023-09-19 10:33:16.479080'),(13,'auth','0008_alter_user_username_max_length','2023-09-19 10:33:16.525726'),(14,'auth','0009_alter_user_last_name_max_length','2023-09-19 10:33:16.566243'),(15,'auth','0010_alter_group_name_max_length','2023-09-19 10:33:16.581941'),(16,'auth','0011_update_proxy_permissions','2023-09-19 10:33:16.590905'),(17,'auth','0012_alter_user_first_name_max_length','2023-09-19 10:33:16.624991'),(18,'sessions','0001_initial','2023-09-19 10:33:16.654299'),(19,'comicsapp','0001_initial','2023-09-24 04:36:43.308125'),(20,'comicsapp','0002_alter_comic_content_description','2023-09-24 06:06:37.575838'),(21,'comicsapp','0003_delete_comic_content','2023-09-24 06:12:19.092433'),(22,'comicsapp','0004_initial','2023-09-24 06:12:29.104688'),(23,'comicsapp','0005_comic_content_category','2023-09-25 06:12:51.636288'),(24,'comicsapp','0006_comic_content_image1_comic_content_image2_and_more','2023-09-29 08:28:37.492069'),(25,'comicsapp','0007_alter_comic_content_image1_and_more','2023-09-29 09:12:25.428793'),(26,'comicsapp','0008_remove_comic_content_image1_and_more','2023-10-04 04:56:49.097798'),(27,'comicsapp','0009_comic_content_image1_comic_content_image2_and_more','2023-10-04 05:04:02.006594'),(28,'comicsapp','0010_comic_content_status','2023-10-27 03:11:38.300624'),(29,'comicsapp','0011_comic_content_price','2023-10-27 03:13:25.218589'),(30,'comicsapp','0012_payment','2023-10-27 07:51:35.962627'),(31,'comicsapp','0013_payment_book_id','2023-11-02 02:45:13.089235'),(32,'comicsapp','0014_delete_payment','2023-11-02 03:06:44.066920'),(33,'comicsapp','0015_comic_payment','2023-11-02 03:06:59.254362'),(34,'comicsapp','0016_test_comic_content','2024-01-11 03:26:51.699619'),(35,'comicsapp','0017_delete_test_comic_content','2024-01-11 05:16:09.853045'),(36,'comicsapp','0018_imagemodel_test_comic_content','2024-01-11 05:17:31.448725'),(37,'comicsapp','0019_rename_image_test_comic_content_logo_and_more','2024-01-11 06:30:01.503004'),(38,'comicsapp','0020_yourimagemodel_addimage','2024-01-22 02:53:56.799126'),(39,'comicsapp','0021_remove_test_comic_content_images_delete_addimage_and_more','2024-01-22 03:22:08.309658'),(40,'comicsapp','0022_yourimagemodel_addimage','2024-01-22 03:23:14.948979'),(41,'comicsapp','0023_delete_imagemodel','2024-01-22 03:30:46.270468'),(42,'comicsapp','0024_delete_addimage','2024-01-22 03:43:00.345870'),(43,'comicsapp','0025_addimage','2024-01-22 04:13:16.190623'),(44,'comicsapp','0026_remove_yourimagemodel_category_and_more','2024-01-22 04:48:55.267592'),(45,'comicsapp','0027_delete_addimage_delete_yourimagemodel','2024-01-22 04:50:49.868501'),(46,'comicsapp','0028_yourimagemodel_addimage','2024-01-22 04:51:01.675831'),(47,'comicsapp','0029_remove_addimage_comicimages_delete_comic_content_and_more','2024-01-22 09:20:15.869791'),(48,'comicsapp','0030_initial','2024-01-22 09:20:27.799114');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `django_session` VALUES ('1gfdoqk3h06bhcfn0zi8cvpjdku08g8z','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1qm3nw:bn3ilCEHRjbCMh5IpF9GLym9zRLpaHe13R2K5mq4FiQ','2023-10-13 03:04:36.008475'),('2kmvpja4aajhbfu7odyqp1mpztjyygr2','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1qxcSs:KZufe0irmjYcABR_g42NflX_SeuRiUJRnDQUlEZmjEY','2023-11-14 00:18:38.921721'),('4tdxmugipshhy1lsqf9rkwa2u91l8yaq','.eJxVjMEOwiAQBf-FsyEsUigevfcbGpYFQRualHIy_rs06UGvM-_Nm82u7WluNWxzJnZjwC6_DJ1_hXIIerryWLlfy75l5MeEn7byaaWw3M_tXyC5mvrbkISBUBFKxDEY5SxYr0MHSkeNY3SGRogYvScAQQIHEQxFLayQV9WjR66Xait5YZ8vgts9kA:1rnXy9:rfPRZfeI5yB7mjivv17plHbHQnuhH0v6qW5D1E4TiOM','2024-04-05 06:01:33.243529'),('asr9p9z3g6hh121ykpb6tkxt3p1aodyk','.eJxVjMsOwiAQRf-FtSFS5FGX7v0GMsOAoA1NSlkZ_11IutDtPeeeN3PQ9uRaDZvLxK5MsNPvhuBfoQxATyiPlfu17FtGPhR-0MrvK4Xldrh_gQQ19TdYCwKk8iTCPIGSQQAaArTn6KPUxlupyJOOaBQqQxc0dp5QayNBBNujI9dLtZW8sM8Xe689cQ:1ri8ox:3OH8HFByu6IZp8jRmYJDDrfHjUWGVuqyZFVrHgucejg','2024-03-21 08:09:43.185064'),('blcf5tnjcmiesvjydevwjm69vgr7b216','.eJxVjE0OwiAYBe_C2hCg0KJL9z0D-f6QqqFJaVfGu2uTLnT7Zua9VIJtLWlrsqSJ1UVZdfrdEOghdQd8h3qbNc11XSbUu6IP2vQ4szyvh_t3UKCVb02ZOXYuexdMBG8IDAT0QgMHAQDjkTrA_uzEEKK14onYh8H2MTOxen8AEWk5Wg:1qkbcE:EvPxrs3_hdgtLhPRn_qLsr1OpTMl2Pmn8FgZupSeAUs','2023-10-09 02:46:30.525477'),('c2u4f9k47liw0wzd1clmyt6u8umsi593','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1qvZyb:o6cE3Nw4KI8H3_ETVhdH9k87S3Lbam4B8FPqz5N-vPI','2023-11-08 09:14:57.498513'),('dzr28w6ornxzqgwfd2faozn4p8q4brvo','.eJxVjDEOwjAMRe-SGUV1iJOUkZ0zVLZj0UKVSqSdEHenkTrA-t_7720G2tZx2Kq-himbiwFz-t2Y5Kmlgfygcl-sLGV9TWybYg9a7W3JOl8P9y8wUh3bOyX0fc8a1bkMHqOXkOiMASUSJEBIir6DkIlFggaIzkHHnoEFdY-23F6qW5lm8_kCIrk8FA:1ri8sg:RLT82SMIvEvEsiRGyAYK7sAkj4XwcbGt64kEP9bSG5Y','2024-03-21 08:13:34.089616'),('nt9bqncp4kf2z64w9biwrz00ibj2reza','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1qnshp:q2GewwZZ3dFh5fTC3foVx60ZYo32-t9OJLFDIlpz6lo','2023-10-18 03:37:49.263803'),('y2hh81t465eqzb27t859r0a88xzk4ie2','.eJxVjE0OgyAYBe_CuiGgoLTL7j2D-f4stgYTkVXTu1cSF-32zbx5qxHKHseSZRtnVjdl1eV3Q6CXpAr4CemxalrTvs2oq6JPmvWwsiz30_0LRMjxeNPEHNpmco03AZwhMODRCfXsBQCMQ2oBu2sjhhCtFUfEzve2CxNTjdbcUcolzYv6fAGQyT4y:1rNmXL:nmSQU7v_RH9GjSaDJnZyt03VMHHEZesms2aUC4ymrdw','2024-01-25 04:19:23.866585');
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

-- Dump completed on 2024-03-22 11:45:09
