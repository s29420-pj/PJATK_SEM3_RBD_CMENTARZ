-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: s27553
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-0+deb11u2

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
-- Table structure for table `GROB`
--

DROP TABLE IF EXISTS `GROB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROB` (
  `id` int(11) NOT NULL,
  `numer_grobu` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROB`
--

LOCK TABLES `GROB` WRITE;
/*!40000 ALTER TABLE `GROB` DISABLE KEYS */;
INSERT INTO `GROB` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'11'),(12,'12'),(13,'13'),(14,'14'),(15,'15'),(16,'16'),(17,'17'),(18,'18'),(19,'19'),(20,'20');
/*!40000 ALTER TABLE `GROB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HISTORIA_GROBU`
--

DROP TABLE IF EXISTS `HISTORIA_GROBU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HISTORIA_GROBU` (
  `id` int(11) NOT NULL,
  `opis` varchar(100) DEFAULT NULL,
  `data_zdarzenia` date DEFAULT NULL,
  `grob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grob_id` (`grob_id`),
  CONSTRAINT `HISTORIA_GROBU_ibfk_1` FOREIGN KEY (`grob_id`) REFERENCES `GROB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HISTORIA_GROBU`
--

LOCK TABLES `HISTORIA_GROBU` WRITE;
/*!40000 ALTER TABLE `HISTORIA_GROBU` DISABLE KEYS */;
INSERT INTO `HISTORIA_GROBU` VALUES (1,'konserwacja nagrobku','2023-11-21',1),(2,'oczyszczanie z chwastów','2023-05-16',3),(3,'naprawa po upadku drzewa','2023-02-05',2),(4,'przycinanie galęzi krzewów','2023-04-18',4),(5,'przycinanie galęzi krzewów','2023-04-08',7),(6,'sadzenie roślin wokół grobów','2023-06-13',5),(7,'koszenie trawy','2023-07-10',6),(8,'koszenie trawy','2023-05-06',10),(9,'koszenie trawy','2023-02-28',9),(10,'koszenie trawy','2023-09-05',12),(11,'koszenie trawy','2023-03-01',15),(12,'koszenie trawy','2023-08-14',11),(13,'poprawianie i uzupełnianie oznaczeń na grobie','2023-10-07',13),(14,'poprawianie i uzupełnianie oznaczeń na grobie','2023-02-18',20),(15,'poprawianie i uzupełnianie oznaczeń na grobie','2023-03-17',18),(16,'poprawianie i uzupełnianie oznaczeń na grobie','2023-08-21',14),(17,'koszenie trawy','2023-09-23',16),(18,'koszenie trawy','2023-10-23',17),(19,'koszenie trawy','2023-01-12',20),(20,'sadzenie roślin wokół grobów','2023-11-20',8);
/*!40000 ALTER TABLE `HISTORIA_GROBU` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-24 13:22:30
