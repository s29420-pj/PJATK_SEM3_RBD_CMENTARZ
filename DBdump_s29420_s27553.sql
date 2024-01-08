-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: s29420
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
INSERT INTO `GROB` VALUES (1,'A/1/001'),(2,'A/1/002'),(3,'B/2/003'),(4,'B/2/004'),(5,'C/3/005'),(6,'C/3/006'),(7,'D/4/007'),(8,'D/4/008'),(9,'E/5/009'),(10,'E/5/010'),(11,'F/6/011'),(12,'F/6/012'),(13,'G/7/013'),(14,'G/7/014'),(15,'H/8/015'),(16,'H/8/016'),(17,'I/9/017'),(18,'I/9/018'),(19,'J/10/019'),(20,'J/10/020');
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

--
-- Table structure for table `NIEBOSZCZYK`
--

DROP TABLE IF EXISTS `NIEBOSZCZYK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NIEBOSZCZYK` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `data_smierci` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NIEBOSZCZYK`
--

LOCK TABLES `NIEBOSZCZYK` WRITE;
/*!40000 ALTER TABLE `NIEBOSZCZYK` DISABLE KEYS */;
INSERT INTO `NIEBOSZCZYK` VALUES (1,'Anna','Kowalska','1980-05-15','2022-01-10'),(2,'Jan','Nowak','1975-12-20','2021-08-05'),(3,'Maria','Wójcik','1950-03-10','2019-11-25'),(4,'Piotr','Lis','1990-08-08','2023-04-02'),(5,'Ewa','Zielińska','1988-06-18','2020-09-15'),(6,'Michał','Kaczmarek','1965-02-28','2022-07-14'),(7,'Aleksandra','Witkowska','1978-09-12','2020-04-30'),(8,'Tomasz','Szymański','1982-11-03','2021-12-05'),(9,'Katarzyna','Piotrowska','1970-07-19','2019-10-22'),(10,'Robert','Nowicki','1995-04-08','2023-01-18'),(11,'Agnieszka','Dąbrowska','1968-12-03','2022-05-17'),(12,'Paweł','Jankowski','1987-06-24','2021-08-30'),(13,'Monika','Michalska','1973-10-11','2020-11-12'),(14,'Marcin','Kowalczyk','1992-02-15','2023-03-05'),(15,'Karolina','Wójcik','1980-09-08','2019-06-19'),(16,'Artur','Kowalski','1978-04-21','2022-09-14'),(17,'Kamila','Zając','1985-11-07','2021-07-01'),(18,'Łukasz','Piotrowski','1990-03-18','2020-12-23'),(19,'Magdalena','Nowak','1971-08-29','2023-02-10'),(20,'Grzegorz','Wójcik','1983-06-12','2019-04-06');
/*!40000 ALTER TABLE `NIEBOSZCZYK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `N_G`
--

DROP TABLE IF EXISTS `N_G`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `N_G` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grob_id` int(11) DEFAULT NULL,
  `nieboszczyk_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grob_id` (`grob_id`),
  KEY `nieboszczyk_id` (`nieboszczyk_id`),
  CONSTRAINT `N_G_ibfk_1` FOREIGN KEY (`grob_id`) REFERENCES `GROB` (`id`),
  CONSTRAINT `N_G_ibfk_2` FOREIGN KEY (`nieboszczyk_id`) REFERENCES `NIEBOSZCZYK` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `N_G`
--

LOCK TABLES `N_G` WRITE;
/*!40000 ALTER TABLE `N_G` DISABLE KEYS */;
INSERT INTO `N_G` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `N_G` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OPLATY_CMENTARNE`
--

DROP TABLE IF EXISTS `OPLATY_CMENTARNE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPLATY_CMENTARNE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_transakcji` date DEFAULT NULL,
  `kwota` float DEFAULT NULL,
  `rodzaj_oplaty` varchar(20) DEFAULT NULL,
  `grob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grob_id` (`grob_id`),
  CONSTRAINT `OPLATY_CMENTARNE_ibfk_1` FOREIGN KEY (`grob_id`) REFERENCES `GROB` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPLATY_CMENTARNE`
--

LOCK TABLES `OPLATY_CMENTARNE` WRITE;
/*!40000 ALTER TABLE `OPLATY_CMENTARNE` DISABLE KEYS */;
INSERT INTO `OPLATY_CMENTARNE` VALUES (11,'2023-01-05',150.5,'Konserwacja',3),(12,'2023-02-12',200,'Ogrodnik',7),(13,'2023-03-20',120.75,'Renowacja',5),(14,'2023-04-15',80.3,'Koszenie',10),(15,'2023-05-28',300,'Pochówek',12),(16,'2023-06-10',180.25,'Konserwacja',4),(17,'2023-07-22',250.5,'Ogrodnik',8),(18,'2023-08-18',140.8,'Renowacja',11),(19,'2023-09-05',95,'Koszenie',15),(20,'2023-10-12',320,'Pochówek',18),(21,'2023-11-15',200.75,'Konserwacja',6),(22,'2023-12-03',180,'Ogrodnik',9),(23,'2024-01-08',120.5,'Renowacja',13),(24,'2024-02-20',85.2,'Koszenie',16),(25,'2024-03-15',310,'Pochówek',20),(26,'2024-04-10',220.3,'Konserwacja',2),(27,'2024-05-22',270.5,'Ogrodnik',5),(28,'2024-06-18',160.8,'Renowacja',14),(29,'2024-07-05',105,'Koszenie',17),(30,'2024-08-12',330,'Pochówek',19);
/*!40000 ALTER TABLE `OPLATY_CMENTARNE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRACOWNICY`
--

DROP TABLE IF EXISTS `PRACOWNICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRACOWNICY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `stanowisko` varchar(30) DEFAULT NULL,
  `numer_tel` char(9) DEFAULT NULL,
  `adres_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRACOWNICY`
--

LOCK TABLES `PRACOWNICY` WRITE;
/*!40000 ALTER TABLE `PRACOWNICY` DISABLE KEYS */;
INSERT INTO `PRACOWNICY` VALUES (1,'Adam','Nowak','Opiekun grobów','111222333','adam.nowak@example.com'),(2,'Ewa','Kowalska','Ogrodnik','444555666','ewa.kowalska@example.com'),(3,'Janusz','Wiśniewski','Administrator cmentarza','777888999','janusz.wisniewski@example.com'),(4,'Magdalena','Lis','Księgowa','123456789','magdalena.lis@example.com'),(5,'Krzysztof','Zieliński','Pracownik administracyjny','987654321','krzysztof.zielinski@example.com'),(6,'Alicja','Kaczmarek','Opiekun grobów','111111111','alicja.kaczmarek@example.com'),(7,'Tomasz','Kowal','Ogrodnik','222222222','tomasz.kowal@example.com'),(8,'Monika','Szymańska','Administrator cmentarza','333333333','monika.szymanska@example.com'),(9,'Robert','Nowicki','Księgowy','444444444','robert.nowicki@example.com'),(10,'Natalia','Wójcik','Pracownik administracyjny','555555555','natalia.wojcik@example.com'),(11,'Michał','Lewandowski','Opiekun grobów','666666666','michal.lewandowski@example.com'),(12,'Karolina','Jankowska','Ogrodnik','777777777','karolina.jankowska@example.com'),(13,'Paweł','Witkowski','Administrator cmentarza','888888888','pawel.witkowski@example.com'),(14,'Agnieszka','Duda','Księgowa','999999999','agnieszka.duda@example.com'),(15,'Kamil','Adamczyk','Pracownik administracyjny','123123123','kamil.adamczyk@example.com'),(16,'Patrycja','Pawlak','Opiekun grobów','555111222','patrycja.pawlak@example.com'),(17,'Bartłomiej','Kamiński','Ogrodnik','123456789','bartlomiej.kaminski@example.com'),(18,'Dominika','Czarnecka','Administrator cmentarza','987654321','dominika.czarnecka@example.com'),(19,'Grzegorz','Kowalczyk','Księgowa','555555555','grzegorz.kowalczyk@example.com'),(20,'Klaudia','Nowakowska','Pracownik administracyjny','111223344','klaudia.nowakowska@example.com');
/*!40000 ALTER TABLE `PRACOWNICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `P_G`
--

DROP TABLE IF EXISTS `P_G`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `P_G` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pracownik_id` int(11) DEFAULT NULL,
  `grob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pracownik_id` (`pracownik_id`),
  KEY `grob_id` (`grob_id`),
  CONSTRAINT `P_G_ibfk_1` FOREIGN KEY (`pracownik_id`) REFERENCES `PRACOWNICY` (`id`),
  CONSTRAINT `P_G_ibfk_2` FOREIGN KEY (`grob_id`) REFERENCES `GROB` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `P_G`
--

LOCK TABLES `P_G` WRITE;
/*!40000 ALTER TABLE `P_G` DISABLE KEYS */;
INSERT INTO `P_G` VALUES (1,1,1),(2,2,3),(3,3,5),(4,4,7),(5,5,9),(6,6,12),(7,7,15),(8,8,18),(9,9,20),(10,10,2),(11,11,4),(12,12,6),(13,13,8),(14,14,10),(15,15,14),(16,16,16),(17,17,19),(18,18,1),(19,19,3),(20,20,5);
/*!40000 ALTER TABLE `P_G` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-07 14:39:25
