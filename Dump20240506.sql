CREATE DATABASE  IF NOT EXISTS `review_sql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `review_sql`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: review_sql
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_name` varchar(45) NOT NULL,
  `biography` text,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Stefanie','Stable burst fracture of fourth lumbar vertebra, init'),(2,'Bruno','Unsp physl fx upper end of l femur, subs for fx w routn heal'),(3,'Dorisa','Unsp open wound of right thumb w/o damage to nail, sequela'),(4,'Wainwright','Person outside bus inj in nonclsn trnsp acc nontraf, sequela'),(5,'Pieter','Oth sleep disord not due to a sub or known physiol cond'),(6,'Danie','Oth fx low end unsp tibia, 7thJ'),(7,'Beverly','Disp fx of 2nd metatarsal bone, l ft, subs for fx w malunion'),(8,'Christine','Pnctr w/o fb of left thumb w/o damage to nail, subs'),(9,'Delphine','Poisoning by cannabis (derivatives), accidental, subs'),(10,'Johannah','Twin pregnancy, monochorionic/diamniotic'),(11,'Kerwinn','War operations involving oth firearms discharge, milt, subs'),(12,'Tomasine','Twin preg, unable to dtrm num plcnta & amnio sacs, first tri'),(13,'Rosco','Displaced transverse fracture of unspecified acetabulum'),(14,'Broderick','Burn of second degree of unspecified toe(s) (nail)'),(15,'Genvieve','Postproc hemor of skin, subcu fol a dermatologic procedure'),(16,'Tye','Burn unsp deg of unsp site unsp lower limb, ex ank/ft, sqla'),(17,'Eimile','Disp fx of low epiphy (separation) of l femr, 7thE'),(18,'Sherline','Oth viral infect with skin and mucous membrane lesions, NEC'),(19,'Rourke','Lacerat msl/tnd lng extn msl toe at ank/ft lev, l foot, init'),(20,'Corry','Pasngr in hv veh injured in nonclsn trnsp acc in traf, init');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `price` decimal(2,0) unsigned DEFAULT NULL,
  `author_id` int unsigned NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `book_author_fk_idx` (`author_id`),
  CONSTRAINT `book_author_fk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Echo',28,9),(2,'Waves',4,10),(3,'Siren',23,9),(4,'Embers',3,9),(5,'Whisper',35,5),(6,'Blaze',61,3),(7,'Frost',84,8),(8,'Shadow',47,6),(9,'Ripple',26,3),(10,'Glimmer',14,8),(11,'Storm',55,8),(12,'Bloom',94,3),(13,'Drift',33,2),(14,'Quake',79,8),(15,'Dusk',23,4),(16,'Mist',51,9),(17,'Glow',85,5),(18,'Tide',58,10),(19,'Shiver',14,7),(20,'Chaos',73,10);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `reviewer_name` varchar(45) NOT NULL,
  `review` text NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `review_book_fk_idx` (`book_id`),
  CONSTRAINT `review_book_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Clarine','Nondisp fx of lateral condyle of l humer, 7thK',7),(2,'Lorry','Nondisp fx of greater trochanter of unsp femr, 7thD',7),(3,'Ulla','Sltr-haris Type II physl fx low end r femr, 7thD',10),(4,'Sandor','Complete traum amp at level betw knee and ankl, unsp low leg',6),(5,'Merrick','Genetic susceptibility to malignant neoplasm of prostate',2),(6,'Rockwell','Toxic effect of ethanol, accidental (unintentional), sequela',1),(7,'Bail','Disp fx of l radial styloid pro, subs for clos fx w nonunion',9),(8,'Gay','Acute dacryoadenitis, left lacrimal gland',10),(9,'Rubin','Jump/div into swim pool strk bottom causing oth injury, init',4),(10,'Markos','Nondisp suprcndl fx w/o intrcndl extn lower end l femr, init',2),(11,'Joscelin','Sltr-haris Type I physl fx upr end humer, unsp arm, 7thD',9),(12,'Fidelity','Direct infect of joint in infec/parastc dis classd elswhr',9),(13,'Godard','Unsp fracture of third metacarpal bone, left hand, sequela',3),(14,'Fionna','Anterior spinal artery comprsn syndromes, cervicothor region',10),(15,'Stefa','Abrasion of abdominal wall, initial encounter',1),(16,'Zeke','Fall same lev from slip/trip w strike against oth object',3),(17,'Ninette','Car driver injured in clsn w pick-up truck in traf, init',10),(18,'Elizabeth','Cysticercosis',6),(19,'Janessa','Displacement of int fix of right femur, init',6),(20,'Kathi','Obstructed labor due to incomplete rotation of fetal head',2);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06 17:36:41
