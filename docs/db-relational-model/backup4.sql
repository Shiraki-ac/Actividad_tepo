-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: teporingoDB
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `casa`
--

DROP TABLE IF EXISTS `casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casa` (
  `id_casas` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `casa_name` varchar(20) NOT NULL DEFAULT 'Desconocida',
  PRIMARY KEY (`id_casas`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `casa_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa`
--

LOCK TABLES `casa` WRITE;
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
INSERT INTO `casa` VALUES (51,55,'Ajolotes'),(52,56,'Teporingos'),(53,57,'Halcones'),(54,58,'Ajolotes'),(55,59,'Teporingos'),(56,60,'Halcones'),(57,61,'Ajolotes'),(58,62,'Teporingos'),(59,63,'Halcones'),(60,64,'Ajolotes'),(61,65,'Teporingos'),(62,66,'Halcones'),(63,67,'Ajolotes'),(64,68,'Teporingos'),(65,69,'Halcones'),(66,70,'Ajolotes'),(67,71,'Teporingos'),(68,72,'Halcones'),(69,73,'Ajolotes'),(70,74,'Teporingos'),(71,75,'Halcones'),(72,76,'Ajolotes'),(73,77,'Teporingos'),(74,78,'Halcones'),(75,79,'Ajolotes'),(76,80,'Teporingos'),(77,81,'Halcones'),(78,82,'Ajolotes'),(79,83,'Teporingos'),(80,84,'Halcones'),(81,85,'Ajolotes'),(82,86,'Teporingos'),(83,87,'Halcones'),(84,88,'Ajolotes'),(85,89,'Teporingos'),(86,90,'Halcones'),(87,91,'Ajolotes'),(88,92,'Teporingos'),(89,93,'Halcones'),(90,94,'Ajolotes'),(91,95,'Teporingos'),(92,96,'Halcones'),(93,97,'Ajolotes'),(94,98,'Teporingos'),(95,99,'Halcones'),(96,100,'Ajolotes'),(97,101,'Teporingos'),(98,102,'Halcones'),(99,103,'Ajolotes'),(100,104,'Teporingos'),(101,105,'Ajolotes'),(102,106,'Teporingos'),(103,107,'Halcones'),(104,108,'Ajolotes'),(105,109,'Teporingos'),(106,110,'Halcones'),(107,111,'Ajolotes'),(108,112,'Teporingos'),(109,113,'Halcones'),(110,114,'Ajolotes'),(111,115,'Teporingos'),(112,116,'Halcones'),(113,117,'Ajolotes'),(114,118,'Teporingos'),(115,119,'Halcones'),(116,120,'Ajolotes'),(117,121,'Teporingos'),(118,122,'Halcones'),(119,123,'Ajolotes'),(120,124,'Teporingos'),(121,125,'Halcones'),(122,126,'Ajolotes'),(123,127,'Teporingos'),(124,128,'Halcones'),(125,129,'Ajolotes'),(126,130,'Teporingos'),(127,131,'Halcones'),(128,132,'Ajolotes'),(129,133,'Teporingos'),(130,134,'Halcones'),(131,135,'Ajolotes'),(132,136,'Teporingos'),(133,137,'Halcones'),(134,138,'Ajolotes'),(135,139,'Teporingos'),(136,140,'Halcones'),(137,141,'Ajolotes'),(138,142,'Teporingos'),(139,143,'Halcones'),(140,144,'Ajolotes'),(141,145,'Teporingos'),(142,146,'Halcones'),(143,147,'Ajolotes'),(144,148,'Teporingos'),(145,149,'Halcones'),(146,150,'Ajolotes'),(147,151,'Teporingos'),(148,152,'Halcones'),(149,153,'Ajolotes'),(150,154,'Teporingos');
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntos`
--

DROP TABLE IF EXISTS `puntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntos` (
  `id_puntos` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `puntos` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_puntos`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `puntos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntos`
--

LOCK TABLES `puntos` WRITE;
/*!40000 ALTER TABLE `puntos` DISABLE KEYS */;
INSERT INTO `puntos` VALUES (51,55,10),(52,56,20),(53,57,30),(54,58,40),(55,59,50),(56,60,60),(57,61,70),(58,62,80),(59,63,90),(60,64,100),(61,65,110),(62,66,120),(63,67,130),(64,68,140),(65,69,150),(66,70,160),(67,71,170),(68,72,180),(69,73,190),(70,74,200),(71,75,210),(72,76,220),(73,77,230),(74,78,240),(75,79,250),(76,80,260),(77,81,270),(78,82,280),(79,83,290),(80,84,300),(81,85,310),(82,86,320),(83,87,330),(84,88,340),(85,89,350),(86,90,360),(87,91,370),(88,92,380),(89,93,390),(90,94,400),(91,95,410),(92,96,420),(93,97,430),(94,98,440),(95,99,450),(96,100,460),(97,101,470),(98,102,480),(99,103,490),(100,104,500),(101,105,10),(102,106,20),(103,107,30),(104,108,40),(105,109,50),(106,110,60),(107,111,70),(108,112,80),(109,113,90),(110,114,100),(111,115,110),(112,116,120),(113,117,130),(114,118,140),(115,119,150),(116,120,160),(117,121,170),(118,122,180),(119,123,190),(120,124,200),(121,125,210),(122,126,220),(123,127,230),(124,128,240),(125,129,250),(126,130,260),(127,131,270),(128,132,280),(129,133,290),(130,134,300),(131,135,310),(132,136,320),(133,137,330),(134,138,340),(135,139,350),(136,140,360),(137,141,370),(138,142,380),(139,143,390),(140,144,400),(141,145,410),(142,146,420),(143,147,430),(144,148,440),(145,149,450),(146,150,460),(147,151,470),(148,152,480),(149,153,490),(150,154,500);
/*!40000 ALTER TABLE `puntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_name` varchar(20) NOT NULL DEFAULT '',
  `usuario_apellido` varchar(20) NOT NULL DEFAULT '',
  `usuario_email` varchar(255) DEFAULT NULL,
  `usuario_psw` varchar(20) NOT NULL DEFAULT 'password',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (55,'Benoît','Apellido0','benoît.apellido0@gmail.com','password'),(56,'Julien','Apellido1','julien.apellido1@gmail.com','password'),(57,'Edouard','Apellido2','edouard.apellido2@gmail.com','password'),(58,'Lucie','Apellido3','lucie.apellido3@gmail.com','password'),(59,'Angélique','Apellido4','angélique.apellido4@gmail.com','password'),(60,'Anne','Apellido5','anne.apellido5@gmail.com','password'),(61,'Sofía','Apellido6','sofía.apellido6@gmail.com','password'),(62,'Evan','Apellido7','evan.apellido7@gmail.com','password'),(63,'Thibault','Apellido8','thibault.apellido8@gmail.com','password'),(64,'Raphaël','Apellido9','raphaël.apellido9@gmail.com','password'),(65,'Benjamin','Apellido10','benjamin.apellido10@gmail.com','password'),(66,'Zacharie','Apellido11','zacharie.apellido11@gmail.com','password'),(67,'Louise','Apellido12','louise.apellido12@gmail.com','password'),(68,'Christine','Apellido13','christine.apellido13@gmail.com','password'),(69,'Vincent','Apellido14','vincent.apellido14@gmail.com','password'),(70,'Quentin','Apellido15','quentin.apellido15@gmail.com','password'),(71,'Clara','Apellido16','clara.apellido16@gmail.com','password'),(72,'Antoine','Apellido17','antoine.apellido17@gmail.com','password'),(73,'Léo','Apellido18','léo.apellido18@gmail.com','password'),(74,'Marion','Apellido19','marion.apellido19@gmail.com','password'),(75,'Floriane','Apellido20','floriane.apellido20@gmail.com','password'),(76,'Gilles','Apellido21','gilles.apellido21@gmail.com','password'),(77,'Gaspard','Apellido22','gaspard.apellido22@gmail.com','password'),(78,'Angélique','Apellido23','angélique.apellido23@gmail.com','password'),(79,'Eloïse','Apellido24','eloïse.apellido24@gmail.com','password'),(80,'Aurore','Apellido25','aurore.apellido25@gmail.com','password'),(81,'Florian','Apellido26','florian.apellido26@gmail.com','password'),(82,'Justine','Apellido27','justine.apellido27@gmail.com','password'),(83,'Jacques','Apellido28','jacques.apellido28@gmail.com','password'),(84,'María','Apellido29','maría.apellido29@gmail.com','password'),(85,'Simon','Apellido30','simon.apellido30@gmail.com','password'),(86,'Caroline','Apellido31','caroline.apellido31@gmail.com','password'),(87,'Théodore','Apellido32','théodore.apellido32@gmail.com','password'),(88,'Thibault','Apellido33','thibault.apellido33@gmail.com','password'),(89,'Guillaume','Apellido34','guillaume.apellido34@gmail.com','password'),(90,'Eloïse','Apellido35','eloïse.apellido35@gmail.com','password'),(91,'Camille','Apellido36','camille.apellido36@gmail.com','password'),(92,'Alexandra','Apellido37','alexandra.apellido37@gmail.com','password'),(93,'Angélique','Apellido38','angélique.apellido38@gmail.com','password'),(94,'Grégoire','Apellido39','grégoire.apellido39@gmail.com','password'),(95,'Nadia','Apellido40','nadia.apellido40@gmail.com','password'),(96,'Marc','Apellido41','marc.apellido41@gmail.com','password'),(97,'Jacques','Apellido42','jacques.apellido42@gmail.com','password'),(98,'Denis','Apellido43','denis.apellido43@gmail.com','password'),(99,'Morgane','Apellido44','morgane.apellido44@gmail.com','password'),(100,'Baptiste','Apellido45','baptiste.apellido45@gmail.com','password'),(101,'Yann','Apellido46','yann.apellido46@gmail.com','password'),(102,'Grégoire','Apellido47','grégoire.apellido47@gmail.com','password'),(103,'Mélanie','Apellido48','mélanie.apellido48@gmail.com','password'),(104,'Elise','Apellido49','elise.apellido49@gmail.com','password'),(105,'Caroline','Apellido0','caroline.apellido0@gmail.com','password'),(106,'Hugo','Apellido1','hugo.apellido1@gmail.com','password'),(107,'Léo','Apellido2','léo.apellido2@gmail.com','password'),(108,'Geoffrey','Apellido3','geoffrey.apellido3@gmail.com','password'),(109,'Patrick','Apellido4','patrick.apellido4@gmail.com','password'),(110,'Guillaume','Apellido5','guillaume.apellido5@gmail.com','password'),(111,'Eléonore','Apellido6','eléonore.apellido6@gmail.com','password'),(112,'Théodore','Apellido7','théodore.apellido7@gmail.com','password'),(113,'Marie','Apellido8','marie.apellido8@gmail.com','password'),(114,'Charles','Apellido9','charles.apellido9@gmail.com','password'),(115,'Léo','Apellido10','léo.apellido10@gmail.com','password'),(116,'Anne','Apellido11','anne.apellido11@gmail.com','password'),(117,'Alexandre','Apellido12','alexandre.apellido12@gmail.com','password'),(118,'Elise','Apellido13','elise.apellido13@gmail.com','password'),(119,'Paul','Apellido14','paul.apellido14@gmail.com','password'),(120,'Yves','Apellido15','yves.apellido15@gmail.com','password'),(121,'Laura','Apellido16','laura.apellido16@gmail.com','password'),(122,'Mathieu','Apellido17','mathieu.apellido17@gmail.com','password'),(123,'Evan','Apellido18','evan.apellido18@gmail.com','password'),(124,'Julien','Apellido19','julien.apellido19@gmail.com','password'),(125,'Diego','Apellido20','diego.apellido20@gmail.com','password'),(126,'Sofía','Apellido21','sofía.apellido21@gmail.com','password'),(127,'Laura','Apellido22','laura.apellido22@gmail.com','password'),(128,'Léa','Apellido23','léa.apellido23@gmail.com','password'),(129,'Gaspard','Apellido24','gaspard.apellido24@gmail.com','password'),(130,'Sofía','Apellido25','sofía.apellido25@gmail.com','password'),(131,'Yannick','Apellido26','yannick.apellido26@gmail.com','password'),(132,'Diego','Apellido27','diego.apellido27@gmail.com','password'),(133,'Juan','Apellido28','juan.apellido28@gmail.com','password'),(134,'Elise','Apellido29','elise.apellido29@gmail.com','password'),(135,'María','Apellido30','maría.apellido30@gmail.com','password'),(136,'Pascal','Apellido31','pascal.apellido31@gmail.com','password'),(137,'Laëtitia','Apellido32','laëtitia.apellido32@gmail.com','password'),(138,'Axel','Apellido33','axel.apellido33@gmail.com','password'),(139,'Jonathan','Apellido34','jonathan.apellido34@gmail.com','password'),(140,'Laurent','Apellido35','laurent.apellido35@gmail.com','password'),(141,'Théodore','Apellido36','théodore.apellido36@gmail.com','password'),(142,'Benoît','Apellido37','benoît.apellido37@gmail.com','password'),(143,'Florent','Apellido38','florent.apellido38@gmail.com','password'),(144,'Eva','Apellido39','eva.apellido39@gmail.com','password'),(145,'Caroline','Apellido40','caroline.apellido40@gmail.com','password'),(146,'Auguste','Apellido41','auguste.apellido41@gmail.com','password'),(147,'Stéphane','Apellido42','stéphane.apellido42@gmail.com','password'),(148,'Philippe','Apellido43','philippe.apellido43@gmail.com','password'),(149,'Germain','Apellido44','germain.apellido44@gmail.com','password'),(150,'Angélique','Apellido45','angélique.apellido45@gmail.com','password'),(151,'Alice','Apellido46','alice.apellido46@gmail.com','password'),(152,'Eléonore','Apellido47','eléonore.apellido47@gmail.com','password'),(153,'Marine','Apellido48','marine.apellido48@gmail.com','password'),(154,'Simon','Apellido49','simon.apellido49@gmail.com','password');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 22:04:18
