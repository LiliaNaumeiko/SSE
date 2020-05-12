CREATE DATABASE  IF NOT EXISTS `studentdb1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studentdb1`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: studentdb1
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int NOT NULL,
  `fees` tinyint(1) NOT NULL DEFAULT '0',
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`,`student_id`),
  KEY `fk_account_student1_idx` (`student_id`),
  CONSTRAINT `fk_account_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('19602512','$2y$12$oXl8a/eBpwlGlLWivRNnl.tEu7PV08YGul68PMwkZbuh9S5IivwEK',13,1,13),('19602513','$2y$12$zEvKInxe24Tsjrh6CwfxeuXABOl6rcwm8f.BA8j/lsUKJf0G618eq',14,1,14),('19602514','$2y$12$XF3nYVTW/EH4pQ51s210JOlNYu64HyOJ.Z8UHQegsAovV0gU8N85K',15,0,15),('19602515','$2y$12$ErZATdpLU7D8eSKmH/jRy.TksZ5ST0NROfhMdqlEcBImY.ItFNele',16,0,16),('19602516','$2y$12$2Pm68vPqYCZ84ke/pYntr.WAJ9yPp4mpy6L2nT3WZPKJ9OT484bTq',17,0,17),('19602517','$2y$12$IGYjg24Af66I89JybbfNjOq0l05INYecaca1GVPjO3b2qEnJkCDtK',18,0,18),('19602518','$2y$12$tTO3tTC8CYtB.EAc6ms8ueCeH2kgpC1xiNhioN6UASvD35oqk2LTu',19,1,19),('19602519','$2y$12$roe9iH9cvwOhONNcyLDNYudG/N8Wtnqp8O1UYKLk.hfDu6nkMELfK',20,0,20),('19602520','$2y$12$CQ.LKdsuQJmmoX78wjIccuqhA7nY.hA5Ne9XLeXumh.d8ZH9cz2Xy',21,1,21),('19602521','$2y$12$y12bGOkeiqrQqbd5qlQ2XeJAOKDvGx.J.jWpdPD4OmnzlbFtc0/S2',22,1,22),('19602522','$2y$12$kAgJYnhbK1v1PIsmEw82OuHkuCAiXkyxXSoJAQwGfNRWvEqzOdFUe',23,0,23),('19602523','$2y$12$r60Bz9dq1Df8sfTMo6IRvOUiEj4oT2XzKKwT74SMd9mruw.3KPsXi',24,0,24),('19602524','$2y$12$oAJw/jyeAQiTgzorm6ovquTLK90/BlBeW4g25BlLsHG9J91PQlvNW',25,0,25),('19602525','$2y$12$ozdqeQMAk4FZoK4jBSZ0NuzkxmgTRVVGdMaPq1g1F.soNc/uMLdOW',26,1,26),('19602526','$2y$12$4kATyjEyrv0s93F8FVKJIOVP2LMhryEb5yNJcbJEYOMySEcfnfcUm',27,1,27),('19602527','$2y$12$XlqFxvc9f0Y9B.qK1MAEMu3/oHMQws/qeCA/17GD.VET6kBVzXGfa',28,0,28),('19602528','$2y$12$Xjeb.0RaZ/4mMDvrW6f8C.LWtGL/GTWZL1kUadz2S1K4MTCARAPta',29,1,29),('19602529','$2y$12$HM6JWWUVDANpcAOeGacc2eFgsmPQ2ZHLuKteR20AgNu5QsQBAc8jW',30,0,30),('19602530','$2y$12$8Ai6qaTEfzJCUWEKn6EanO4WFaibH/ObntDDjgtXPhT27QyNJ/3cW',31,1,31),('19000700','$2y$12$DojbIHRty3iE6iMYXjFwFerbW68FgBbUZPo8T5SDHrHM/Qo8CcS/a',32,1,32),('19000701','$2y$12$yVVJ8FyUKLgy6B1FR7h8u.AjUUFZV9SQ5crpAWRCbXGTUHXIgXGcG',33,1,33),('19000702','$2y$12$NDgVeHZ/62vXg3R0.AfleOj6V3usGRdxzjVoO7Izi3GfF4K4QZ7bu',34,1,34),('19000703','$2y$12$vjxZV.Eq3q9wJjEIhVQhJ..ZRkW7XsY7FRGmNpHrK15uRPK/qr4Fa',35,0,35),('19000704','$2y$12$vEEL6iLUjM0SW.Zvj7ww/Or9KPrkwQc1qdVLkNP8E.8Lw9hMLih5K',36,0,36),('19000705','$2y$12$ZZoS.sSioSmaWpVJ6ab8P.xD/Lmv.kbq.A2.33HCrrZLN2UDku9.K',37,0,37),('19000706','$2y$12$QRVgpQCfa8S4JL.bvelC/.OoM5QUIXDHxpLEJ6ZwRcVpHEIz1EWoi',38,1,38),('19000707','$2y$12$JQmhorWZvEzFbl5JTYsmNuBHmDH3HYeiFcyMpzdZ9QMA1fekUVHyi',39,0,39),('19000708','$2y$12$vSBbb.vdd2rV3MJ2S5Zd8uLR5ByK/pFSyfmxr.72dsBaYI7z3D9We',40,0,40),('19000709','$2y$12$sM1673gpK/R30/.1RkStUuwE5Ak51qUecTRGmNjCB/doD9IkaE4Cu',41,1,41),('19000710','$2y$12$u9Fghx4R8DjgjxHc3VuOm.JjkR2csJKrrrtzNWjnXC2gHWC3l5GVm',42,0,42),('19000711','$2y$12$9VOChNDJH9ZqWsF5KgT9eul3VNJ4c2OIvGkbJXeKjztKdKqiaswPC',43,1,43),('19000712','$2y$12$g6j30cpuKQi4IWnFt068aeUnOkYZVMFmwpylNjhOw9IjvBjOjRipC',44,0,44),('19000713','$2y$12$4pUagSAyzG8NOpPZpkjC7Odv5y3Pka3x1UuCpDTfB5Lk01tWRbf3W',45,1,45),('19000714','$2y$12$0oa.z5d9QL3biVfWXxeyw..v9Yh8uBR7YhFSVGyYpCAPJqxnto.I.',46,1,46),('19000715','$2y$12$a4HIYmj9D2OYbSuMhqBOcuDUcwoM75HQUChXlWbWzlx0w1QU/tUY6',47,0,47),('19000716','$2y$12$AYLEl6oE.DyVDtqIG9dneuFT7JPr4f0ti.ByUHAnyriAMxfzObQPS',48,0,48),('19000717','$2y$12$NWqOoKSF4akOATF9jDEdZOr66xqT8fT0JIAIRU7OvqRb8YuRsfmQq',49,0,49),('19000718','$2y$12$Nd/Slb9fAKf91IQ7kCneUu5WzKMRn5WRMyRGj6c1bpeYaZXZ2zC8e',50,0,50),('19000719','$2y$12$te5DdpP1cqlpjSCF9HPmTu8lg9JD8LtsJgIS4.rDDbc2vT7VVHzye',51,1,51),('19000720','$2y$12$3O3v.U7l5MSWT0KO/HSWvORzhWaq4ls6zMFwHe5Sy8BY1Yt.8U/oy',52,0,52);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1),(1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `credit` varchar(45) NOT NULL,
  `professor_id` int NOT NULL,
  `enrolled_stud` int NOT NULL,
  `max_places` int NOT NULL,
  `school` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_module_professor_idx` (`professor_id`),
  CONSTRAINT `fk_module_professor` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'Evolution of Animals','5',1,45,50,'School of Biology'),(2,'Cell and Plant Biology','5',2,49,50,'School of Biology'),(3,'Life on Earth','10',2,12,25,'School of Biology'),(4,'Climate Change','5',1,10,50,'School of Biology'),(5,'Plant Diseases','5',1,5,50,'School of Biology'),(6,'Data Structures','5',3,10,25,'Computer Science'),(7,'Computer Networks','5',4,15,30,'Computer Science'),(8,'Web Technology','5',3,5,25,'Computer Science'),(9,'Algorithms','5',5,20,50,'Computer Science'),(10,'Programming Languages','10',4,5,20,'Computer Science'),(11,'Database Systems','5',3,25,50,'Computer Science'),(12,'Machine Learning/Artificial Intelligence','5',5,15,25,'Computer Science'),(13,'Internet Security','10',6,5,20,'Computer Science');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Matthew','Shaw','School of Biology'),(2,'Mark','Maxwell','School of Biology'),(3,'Derek','Mulqueeny','Computer Science'),(4,'Nisse','Poynor','Computer Science'),(5,'Jack','Sprowles','Computer Science'),(6,'Jason','Beney','Computer Science');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Joseph    ','Freeman     ','2000/07/05','English','male'),(2,'Genette','Rennell','2000/07/22','Native American','female'),(3,'Delilah','Strange','1998/05/02','Native American','female'),(4,'Ron','Causey','1998/06/03','Native American','male'),(5,'Kevin','Kendal','1996/12/19','France','male'),(6,'Leola','Boone','1995/03/01','Native American','female'),(7,'Wisdom','Bates','2001/09/21','African','male'),(8,'Raymond','Durand','2000/08/08','France','male'),(9,'Braylon','Garbutt','2000/07/11','English','male'),(10,'Benjamin','Auteberry','2002/04/10','English','male'),(11,'Kate','Lindsey','1995/05/08','English ','female'),(12,'Oira','Plank','1998/12/28','African','female'),(13,'Tamma','Courtenay','1995/02/21','Canada','female'),(14,'Israel','Laughtisse','1996/03/06','Native American','male'),(15,'Howie','MacNair','1997/08/18','Native American','male'),(16,'Kiah','Iwanicki','2000/01/07','Canada','male'),(17,'Seana','Shakelady','2000/11/17','France','female'),(18,'Mile','Aspall','20001/05/06','Canada','male'),(19,'Dulcie','Pakes','1998/09/13','African','male'),(20,'Harmon','Borley','1999/01/11','African','male'),(21,'Karen','Scruton','1999/05/22','Canada','female'),(22,'Glennie','Pecha','1996/03/27','Canada','female'),(23,'Cariotta','Choldcroft','1996/04/27','Italian','female'),(24,'Mona','Avison','1994/02/18','English','female'),(25,'Cobby','Minchella','2000/08/04','China','male'),(26,'Yoko','Simmank','1995/12/16','China','male'),(27,'Porter ','Laver','1999/02/11','Native American','male'),(28,'Anderson','Duthie','1998/02/04','Poland','male'),(29,'Aldon','Yendall','1999/01/08','China','male'),(30,'Kimberley','Budd','1990/04/29','China','male'),(31,'Rodger','Lummus','1999/08/24','Canada','male'),(32,'Antone','Montford','1999/05/16','Canada','male'),(33,'Chloe','Bercher','1997/09/15','Poland','female'),(34,'Jesse','Batcock','1999/11/16','Poland','female'),(35,'Nicoline','McAdam','1998/12/01','Native American','female'),(36,'Aubry','Malan','2001/06/19','African','female'),(37,'Kassia','Oliphard','2002/02/25','China','female'),(38,'Stacy','Verbeek','1997/02/26','France','female'),(39,'Teresita','Foden','1990/07/28','Native American','female'),(40,'Clayton','Beretta','1992/05/18','Native American','male'),(41,'Bo','Ind','2000/02/23','China','male'),(42,'Gabey','Howlings','1999/08/09','English','female'),(43,'Salomone','Bellwood','1999/07/04','Italian','male'),(44,'Vivianne','Scamerdine','1999/01/26','Italian','female'),(45,'Teodorico','Dedden','1999/06/29','France','male'),(46,'Gustavus','Pass','1999/05/06','France','male'),(47,'Reggy','McLernon','1998/03/13','Native American','male'),(48,'Obadias','Razzell','1996/06/15','Italian','male'),(49,'Godart','Nolli','1997/05/09','China','male'),(50,'Nisse','Fattori','1996/03/30','Italian','female'),(51,'Danni','Wickett','1996/10/02','Canada','male'),(52,'Crin','Friese','1999/10/24','Canada','male');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_has_module`
--

DROP TABLE IF EXISTS `student_has_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_has_module` (
  `student_id` int NOT NULL,
  `module_id` int NOT NULL,
  `grade` int DEFAULT NULL,
  PRIMARY KEY (`student_id`,`module_id`),
  KEY `fk_student_has_module_module1_idx` (`module_id`),
  KEY `fk_student_has_module_student1_idx` (`student_id`),
  CONSTRAINT `fk_student_has_module_module1` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`),
  CONSTRAINT `fk_student_has_module_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_has_module`
--

LOCK TABLES `student_has_module` WRITE;
/*!40000 ALTER TABLE `student_has_module` DISABLE KEYS */;
INSERT INTO `student_has_module` VALUES (1,1,0),(1,2,0),(1,3,0),(2,2,0),(2,3,0),(3,4,0),(8,4,0),(10,1,0),(10,5,0),(11,1,0),(11,2,0),(12,7,0),(12,8,0),(12,9,0),(14,10,0),(15,8,0),(16,11,0),(16,12,0),(18,10,0),(19,6,0),(19,10,0),(19,11,0),(20,6,0),(21,2,0),(25,3,0),(25,4,0),(26,1,0),(28,11,0),(28,12,0),(29,8,0),(30,7,0),(30,8,0),(30,12,0),(31,1,0),(32,2,0),(32,3,0),(32,5,0),(35,9,0),(36,10,0),(38,1,0),(39,4,0),(40,4,0),(41,12,0),(42,6,0),(42,7,0),(42,10,0),(43,1,0),(45,3,0),(45,4,0),(49,8,0),(50,9,0),(50,10,0),(52,12,0);
/*!40000 ALTER TABLE `student_has_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `idtopics` int NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `grade_distribution` int DEFAULT NULL,
  `module_id` int NOT NULL,
  PRIMARY KEY (`idtopics`),
  KEY `fk_topics_module_idx` (`module_id`),
  CONSTRAINT `fk_topics_module` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'Distinguish between and explain the diversity within the major groups of animals.',1,1),(2,'Describe the basic physiological processes in animals.',1,1),(3,'Understand the key principles of plants’ interactions with biotic components of ecosystems.',1,2),(4,'Link structure (cell, organ) to function and identify major tissues in plants using light microscopy.',1,2),(5,'Use a dichotomous key to identify an unknown organism.',0,3),(6,'Lab Report: Reports for in-laboratory practical exercise in recognising mechanisms of adaptation.',1,3),(7,'Handle, dissect and make accurate drawings of biological specimens.',0,3),(8,'Diagnose and identify the principal causes of crop diseases using macroscopic, microscopic and molecular techniques.',0,5),(9,'Explain how plant pathogens build up to cause epidemics on field crops.',0,5),(10,'Multiple Choice Questionnaire: different plant diseases.',1,5),(11,'Tutorial topic: rebuttal of misconceptions on climate change',0,4),(12,'Tutorial topic:  rural farm system.',0,4),(13,'Tutorial topic: vegetarianism.',0,4),(14,'Tutorial topic:  carbon navigator.',0,4),(15,'Assignment: Individual two page referenced write up of one of the topics.',0,4),(16,'Information storage:project',1,5),(17,'Wireshark: laboratory',0,6),(18,'TCP/UDP',0,6),(19,'Creating first web project',1,7),(20,'Java Script advanced: additional',0,7),(21,'Algorithmical structures',0,8),(22,'Discrete systems',1,8),(23,'Visual C++ project',1,9),(24,'Introduction to programmimg languages',0,9),(25,'My SQL introduction',0,10),(26,'Individual assignment ',0,10),(27,'Prediction systems',1,11),(28,'Semantics:testing',1,11),(29,'Cryptography',0,12),(30,'Ethical hacking',1,12);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'studentdb1'
--

--
-- Dumping routines for database 'studentdb1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13  0:17:09
