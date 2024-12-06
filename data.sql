/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for osx10.19 (x86_64)
--
-- Host: localhost    Database: words4DB
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `who` varchar(50) NOT NULL,
  `sourceword` varchar(50) NOT NULL,
  `matches` text NOT NULL,
  `win_fail` enum('Win','Fail') DEFAULT 'Fail',
  `time_taken` decimal(5,2) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES
(8,'2024-12-05 15:54:22','jim','clubland','club land band bland dull dual luna','Win',143.33,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(9,'2024-12-05 15:55:37','bob','downfield','down field wind fold idle wolf find','Win',66.37,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(10,'2024-12-05 15:56:32','bill','societarians','societarian star','Fail',37.99,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(11,'2024-12-05 16:03:10','jill','ratooning','rat','Fail',8.68,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(12,'2024-12-05 16:07:41','jenny','glossolalist','solo sass glass loss lost list gloss','Win',92.80,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(13,'2024-12-05 16:15:45','jenny','glossolalist','solo sass glass loss lost list gloss','Win',92.80,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(14,'2024-12-05 18:39:47','martin','Francesville\'s','france ville ole lives nails rise serve canes','Fail',69.36,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(15,'2024-12-05 18:44:39','mark','brightening','bright','Fail',19.86,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15'),
(16,'2024-12-05 18:55:21','frank','conserved','served','Fail',43.06,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0'),
(17,'2024-12-05 19:00:26','sally','backstair','back stair stack rack','Fail',56.99,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topten`
--

DROP TABLE IF EXISTS `topten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topten` (
  `position` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `who` varchar(50) DEFAULT NULL,
  `sourceword` varchar(50) DEFAULT NULL,
  `matches` varchar(100) DEFAULT NULL,
  `win_fail` varchar(4) DEFAULT 'Fail',
  `time_taken` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topten`
--

LOCK TABLES `topten` WRITE;
/*!40000 ALTER TABLE `topten` DISABLE KEYS */;
INSERT INTO `topten` VALUES
(4,NULL,'jim','clubland','club land band bland dull dual luna','Win',143.33),
(1,NULL,'bob','downfield','down field wind fold idle wolf find','Win',66.37),
(2,NULL,'jenny','glossolalist','solo sass glass loss lost list gloss','Win',92.80),
(3,NULL,'jenny','glossolalist','solo sass glass loss lost list gloss','Win',92.80);
/*!40000 ALTER TABLE `topten` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-12-06  9:03:19
