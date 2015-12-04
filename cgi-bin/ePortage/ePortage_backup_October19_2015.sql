-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: eportage
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `Attachments`
--

DROP TABLE IF EXISTS `Attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attachments` (
  `attach_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `attachmime` varchar(30) DEFAULT NULL,
  `attachdesc` varchar(120) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `originalname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`attach_id`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attachments`
--

LOCK TABLES `Attachments` WRITE;
/*!40000 ALTER TABLE `Attachments` DISABLE KEYS */;
INSERT INTO `Attachments` VALUES (1,2,'image/png','this is a random plot!','RMS of the TDC distributions are ~1','Ht_dist.png'),(2,3,'image/png','this is a random plot!','RMS of the TDC distributions are ~1','Ht_dist.png'),(3,4,'image/png','this is a random plot!','RMS of the TDC distributions are ~1','Ht_dist.png'),(4,5,'image/png','this is a random plot!','RMS of the TDC distributions are ~1','Ht_dist.png'),(5,7,'image/png','this is a random plot!','RMS of the TDC distributions are ~1','Ht_dist.png'),(6,8,'image/png','this is a random plot!','RMS of the TDC distributions are ~1','Ht_dist.png'),(7,13,'image/png','','','TDCshift.png'),(8,14,'image/png','','','basicTimingDifference_REFminusSIG.png'),(9,15,'image/png','','','basicTimingDifference_REFminusSIG.png'),(10,16,'image/png','','','basicTimingDifference_REFminusSIG.png'),(11,17,'image/png','','','basicTimingDifference_REFminusSIG.png'),(12,18,'image/png','','','basicTimingDifference_REFminusSIG.png'),(13,19,'image/jpeg','','test34rdr','tote_look_cropped.jpg'),(34,43,'application/pdf','plot of errors versus links','','150920_144028_bit.pdf'),(35,43,'application/octet-stream','','raw data file','150920_144028_bit.root'),(36,44,'application/pdf','','plot showing cap-id rotation errors for each clock phase.  Each canvas corresponds to a different channel.','150920_165643_cid.pdf'),(37,45,'image/png','mean, rms, pedestalvschannel distributions','','150921_123125.609_ped.png'),(38,45,'application/octet-stream','data','','150921_123125.609_ped.root'),(39,47,'image/png','Image','','150923_111431_ped.png'),(40,47,'application/octet-stream','ROOT','','150923_111431_ped.root'),(41,49,'image/png','Image','','150923_205516_cid.png'),(42,49,'application/octet-stream','ROOT','','150923_205516_cid.root'),(43,50,'image/png','Image','','150923_222327_lnk.png'),(44,50,'application/octet-stream','ROOT','','150923_222327_lnk.root'),(45,50,'text/x-log','Log','','150923_222327_lnk.log'),(46,53,'image/png','Image','','at_reg.png'),(47,54,'image/png','','','150930_152731_ped.png'),(48,55,'text/x-log','','','bleafhuiehfie.log'),(49,57,'text/plain','','','bleafhuiehfie.txt'),(50,58,'image/png','','','150930_154252_cid.png'),(51,58,'application/octet-stream','','','150930_154252_cid.root'),(52,58,'text/plain','','','150930_154252_cid.txt'),(53,59,'image/png','','','150930_155110_lnk.png'),(54,59,'application/octet-stream','','','150930_155110_lnk.root'),(55,59,'text/plain','','','150930_155110_lnk.txt'),(56,60,'image/png','','','150930_160134_reg.png'),(57,60,'application/octet-stream','','','150930_160134_reg.root'),(58,60,'text/x-log','','','150930_160134_reg.log'),(59,61,'image/png','','','151001_123820_ped.png'),(60,61,'application/octet-stream','','','151001_123820_ped.root'),(61,61,'text/plain','','','151001_123820_ped.txt'),(62,62,'image/png','','','151001_123934_cid.png'),(63,62,'application/octet-stream','','','151001_123934_cid.root'),(64,62,'text/plain','','','151001_123934_cid.txt'),(65,63,'image/png','','','151001_132736_lnk.png'),(66,63,'application/octet-stream','','','151001_132736_lnk.root'),(67,63,'text/plain','','','151001_132736_lnk.txt'),(68,64,'application/pdf','','','151001_133442_reg.pdf'),(69,64,'application/octet-stream','','','151001_133442_reg.root'),(70,64,'text/plain','','','151001_133442_reg.txt'),(71,65,'image/png','','','151009_122802_ped.png'),(72,65,'application/octet-stream','','','151009_122802_ped.root'),(73,65,'text/plain','','','151009_122802_ped.txt'),(74,67,'image/png','','','151009_142848_reg.png'),(75,67,'application/octet-stream','','','151009_142848_reg.root'),(76,67,'text/plain','','','151009_142848_reg.txt'),(77,68,'image/png','','','151009_123332_lnk.png'),(78,68,'application/octet-stream','','','151009_123332_lnk.root'),(79,68,'text/plain','','','151009_123332_lnk.txt'),(80,69,'image/png','','','151009_155820_cid.png'),(81,69,'application/octet-stream','','','151009_155820_cid.root'),(82,69,'text/plain','','','151009_155820_cid.txt'),(83,74,'image/jpeg','Tote','','tote_look_cropped.jpg'),(84,84,'image/jpeg','','There\'s a tiny mark of paint on the back side of the board.\r\n','board_588.jpg'),(85,145,'image/png','summary plots','','151017_165028_ped.png'),(86,145,'application/octet-stream','histograms','','uhtr_histograms.root'),(87,145,'text/plain','test info','','151017_165028_ped.txt'),(88,150,'image/png','','','151019_142212_ped.png'),(89,150,'application/octet-stream','','','151019_142212_ped.root'),(90,150,'text/plain','','','151019_142212_ped.txt'),(91,151,'image/png','','','151019_142958_cid.png'),(92,151,'application/octet-stream','','','151019_142958_cid.root'),(93,151,'text/plain','','','151019_142958_cid.txt'),(94,152,'image/png','','','151019_144029_lnk.png'),(95,152,'application/octet-stream','','','151019_144029_lnk.root'),(96,152,'text/plain','','','151019_144029_lnk.txt');
/*!40000 ALTER TABLE `Attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card`
--

DROP TABLE IF EXISTS `Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card` (
  `sn` bigint(20) unsigned DEFAULT NULL,
  `card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `sn` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES (2,5,'cat'),(1,6,'0x9B32C370 0x67000000'),(3,7,NULL),(4,8,'0x000000 0x00004000'),(5,9,NULL),(7,10,'0x67000000 0x9b32c370'),(2147483647,11,NULL),(1234,18,NULL),(1234567890,26,NULL),(3040000000000500582,27,NULL),(3040000000000500583,28,NULL),(3040000000000500584,30,'0xe0000000 0xba2a2d70'),(3040000000000500585,31,NULL),(3040000000000500586,32,NULL),(3040000000000500587,33,NULL),(3040000000000500588,34,NULL),(3040000000000500589,35,'0x38000000 0xba058370'),(3040000000000500581,36,'0x3e000000 0xba23eb70'),(3040000000000500590,37,NULL),(3040000000000500591,38,NULL),(3040000000000500592,39,'0xb0000000 0xba28d570'),(3040000000000500593,40,'0xe2000000 0xb9ee8870'),(3040000000000500594,41,'0xcd000000 0xba010370'),(3040000000000500595,42,NULL),(3040000000000500596,43,'0xc1000000 0xb8ec1c70'),(3040000000000500597,44,'0xea000000 0xba1ca670'),(3040000000000500598,45,NULL),(3040000000000500599,46,NULL),(3040000000000500600,47,NULL),(3040000000000500601,48,'0xba14 0xc07001a5'),(3040000000000500602,49,'0xc2000000 0xba03cd70');
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_Info`
--

DROP TABLE IF EXISTS `Card_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_Info` (
  `info_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` int(11) NOT NULL,
  `info_type` int(11) NOT NULL,
  `info` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`info_id`),
  KEY `card_id` (`card_id`),
  KEY `info_type` (`info_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_Info`
--

LOCK TABLES `Card_Info` WRITE;
/*!40000 ALTER TABLE `Card_Info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Card_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_Info_Types`
--

DROP TABLE IF EXISTS `Card_Info_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_Info_Types` (
  `info_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Info_Name` varchar(30) DEFAULT NULL,
  `Info_Desc_Short` varchar(100) DEFAULT NULL,
  `Info_Desc_Long` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`info_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_Info_Types`
--

LOCK TABLES `Card_Info_Types` WRITE;
/*!40000 ALTER TABLE `Card_Info_Types` DISABLE KEYS */;
INSERT INTO `Card_Info_Types` VALUES (3,'FE crate number','','Number of FE crate that card resides in.  First digits should be the slot of the ngFEC.  The last digits should be the fiber number of the ngFEC.'),(4,'VTTX1 ID','','ID of top most VTTX module, see sticker.'),(5,'VTTX1 ID','','ID of middle` VTTX module, see sticker.'),(6,'VTTX3 ID','','ID of bottom VTTX module, see sticker.'),(7,'DC-DC 1.5 ID','','ID of the 1.5V DC-DC converter on this card.'),(8,'DC-DC 2.5 ID','','ID of the 2.5V DC-DC converter on this card.'),(9,'DC-DC 1.2 ID','','ID of the 1.2V DC-DC converter on this card.'),(10,'DC-DC 3.3 ID','','D of the 1.2V DC-DC converter on this card.'),(11,'DC-DC 5.0 ID','','ID of the 5.0V DC-DC converter on this card.');
/*!40000 ALTER TABLE `Card_Info_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card_Notes`
--

DROP TABLE IF EXISTS `Card_Notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card_Notes` (
  `sn` bigint(20) unsigned DEFAULT NULL,
  `date_time` varchar(20) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `note_id` smallint(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card_Notes`
--

LOCK TABLES `Card_Notes` WRITE;
/*!40000 ALTER TABLE `Card_Notes` DISABLE KEYS */;
INSERT INTO `Card_Notes` VALUES (5,'19/10/2015 01:57:24','test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test ',3),(5,'19/10/2015 01:57:33','test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test ',4),(5,'19/10/2015 02:01:22','\'bad data rate\'',5),(5,'19/10/2015 02:03:35','test',6),(5,'19/10/2015 02:06:51','testtest',7),(3040000000000500598,'19/10/2015 02:11:33','This card suffers from the back link issue.  We are seeing that the second link has the correct orbit rate, but always has a non-zero bad-data rate.  The align BCN was also systematically higher for this fiber, which is typical of links that suffer from this problem.   After swapping VTTx modules, the align BCN seemed to go back to the same value as the other, but still there was a non-zero bad-data rate.  After a minute or two, the align BCN went back to being about 3 higher than the other channels.',8),(3040000000000500598,'19/10/2015 02:43:25','this is a test, only a test',9);
/*!40000 ALTER TABLE `Card_Notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `People`
--

DROP TABLE IF EXISTS `People`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `People` (
  `person_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `People`
--

LOCK TABLES `People` WRITE;
/*!40000 ALTER TABLE `People` DISABLE KEYS */;
INSERT INTO `People` VALUES (1,'andrew whitbeck'),(2,'Tote Hughes'),(3,'Danny Noonan'),(4,'Yanchu Wang'),(5,'Zuhal Seyma Demiroglu'),(6,'Ufuk Guney Tok'),(7,'Semra Turkcapar'),(8,'Sevgi Tekten'),(9,'Ohannes Koseyan'),(10,'Amandeep Kalsi'),(11,'Eduardo Alves Coelho '),(12,'Ismail Okan Atakisi'),(13,'Tote'),(14,'Tote Hughes'),(15,'Fabio Alves');
/*!40000 ALTER TABLE `People` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Test`
--

DROP TABLE IF EXISTS `Test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test` (
  `test_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `successful` tinyint(1) NOT NULL,
  `comments` varchar(320) DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `card_id` (`card_id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Test`
--

LOCK TABLES `Test` WRITE;
/*!40000 ALTER TABLE `Test` DISABLE KEYS */;
INSERT INTO `Test` VALUES (9,20,5,1,'2015-04-24 16:59:49',1,'uniqueID: 0x704d28aa00000098'),(10,20,6,1,'2015-04-24 18:15:40',0,'unique ID: 0x703b04aa0000006b \r\nthis card is currently in slot 5'),(11,20,7,1,'2015-04-24 18:19:40',1,'unique ID: 0x70da24aa0000008d'),(12,20,6,1,'2015-04-24 18:20:34',1,'unique ID : 0x703b04aa0000006b\r\nslot 5'),(13,21,6,1,'2015-09-03 17:23:24',1,'blah balh ballhalha'),(14,10,6,1,'2015-09-10 21:28:15',0,';ljk;lkj'),(15,10,6,1,'2015-09-10 21:34:58',0,';ljk;lkj'),(16,10,6,1,'2015-09-10 21:35:04',0,';ljk;lkj'),(17,10,6,1,'2015-09-10 21:35:57',0,';ljk;lkj'),(18,10,6,1,'2015-09-10 21:36:54',0,';ljk;lkj'),(19,1,6,3,'2015-09-11 16:07:51',1,'test'),(20,20,6,1,'2015-09-11 16:11:46',0,'d'),(21,1,6,1,'2015-09-11 16:47:41',1,''),(22,1,6,1,'2015-09-11 16:47:59',1,''),(23,1,6,1,'2015-09-14 13:50:06',1,'r'),(43,4,6,1,'2015-09-20 14:49:11',1,'No link errors find in either the pattern test or the uhtr link test.'),(44,5,6,1,'2015-09-20 15:01:51',1,'Problem with the first clock phase for each of the channels.  However, all other clock phases are good.'),(45,1,6,5,'2015-09-21 10:55:03',0,'most cap-id look normal, but 14 channels have zero pedestal mean. Means are around 3, RMSs &lt; 1 for all other channels.'),(46,1,6,1,'2015-09-21 10:59:10',0,''),(47,1,8,2,'2015-09-24 12:05:31',0,'14 CID channels return a mean ADC of 0. The other channels look good.'),(48,20,8,2,'2015-09-24 12:06:52',1,'0x67000000 0x9B32C370'),(49,5,8,2,'2015-09-24 12:11:05',0,'Three channels (3, 9, and 10) reported error rates of 0.75, for all clock phase settings. This indicates that the CIDs were reasonable values, but not rotating.\r\n\r\n====== SUMMARY ============================\r\nTeststand: 904at\r\nQIE card: 0x67000000 0x9b32c370 (FE Crate 2, Slot 2)\r\nBXs/phase setting: 100\r\n[!!] Errors: (i'),(50,4,8,2,'2015-09-24 12:15:12',0,'Link 3 failed the pattern test and Link 0 had significant link errors.'),(51,15,8,2,'2015-09-24 12:25:22',1,'Running the ver acceptance test ...\r\n	QIE card: ID = 0x67000000 0x9b32c370 (FE Crate 2, Slot 2)\r\n	uHTR: Links = [18, 19, 20, 21, 22, 23] (BE Crate 53, Slot 1)\r\nFetching FW version information ...\r\n	[OK] QIE card: FW = [\'03.03\', \'03.03\', \'01.07.0000\']\r\n	[OK] ngCCM: FW = 02.08, ID = 0x644d 0x5520326f 0x6f6c6769'),(52,9,8,2,'2015-09-24 12:26:29',1,'Nothing out of the ordinary'),(53,3,8,1,'2015-09-24 12:28:58',0,'A number of registers reported errors:\r\n\r\nHF2-2-iTop_Uniq ...'),(54,1,10,9,'2015-09-30 13:34:49',0,'Most cap-ids look normal, but 14 channels have zero pedestal mean. Means are around 3, RMSs &lt; 1 for all other channels.'),(55,1,7,2,'2015-09-30 13:38:47',1,'Test'),(56,1,7,2,'2015-09-30 13:41:16',1,'Test'),(57,1,7,2,'2015-09-30 13:41:50',1,'test'),(58,5,10,9,'2015-09-30 14:09:48',0,'Problem at link12: QIE 3 and link 14: QIE 9, QIE 10. The remaining ones seem good.'),(59,4,10,9,'2015-09-30 14:16:18',0,'Error at link pattern test at link 14, error at uHTR link test at links 16 and 17.'),(60,3,10,9,'2015-09-30 14:32:23',1,'No errors.'),(61,1,10,9,'2015-10-01 12:51:54',0,'Most cap-ids look normal, but 14 channels have zero pedestal mean. Means are around 3, RMSs &lt; 1 for all other channels.'),(62,5,10,9,'2015-10-01 12:54:03',0,'Problem at link12: QIE 3 and link 14: QIE 9, QIE 10. The remaining ones seem good.'),(63,4,10,9,'2015-10-01 12:59:13',0,'Error at link pattern test at links 12, 13 and 14. Error at uHTR link test at links 12 and 14.'),(64,3,10,9,'2015-10-01 13:01:56',1,'No errors.'),(65,1,10,5,'2015-10-09 13:38:48',0,'Most cap-ids look normal, but 14 channels have zero pedestal mean. Means are around 3, RMSs &lt; 1 for all other channels. '),(66,3,10,5,'2015-10-09 13:40:00',0,''),(67,3,10,5,'2015-10-09 13:41:29',0,'No errors.'),(68,4,10,7,'2015-10-09 13:45:04',0,' Error at link pattern test at links 14 and 17. There were no errors in uHTR link test.'),(69,5,10,9,'2015-10-09 14:18:34',0,'Problem at link12: QIE 3 and link 14: QIE 9, QIE 10. The remaining ones seem good. '),(70,9,11,1,'2015-10-15 09:50:06',1,'board looks beautiful. \r\n\r\nTR-SMP 0024'),(71,9,28,15,'2015-10-15 11:10:03',1,'Its OK!\r\n\r\nTR-SMP  0004'),(72,9,30,15,'2015-10-15 12:29:22',1,'TR-SMP- 0005\r\n\r\nIt\'s OK!'),(73,9,27,3,'2015-10-15 12:37:56',1,'Looks amazing!'),(74,9,27,3,'2015-10-15 12:38:50',1,'Forgot the picture!'),(75,11,28,11,'2015-10-15 12:42:38',1,'    BKPLN to GND - CD,\r\n    1.5V to GND - 8.3, \r\n    2.5V to GND - 0.16,\r\n    1.2V to GND - 0.70,\r\n    3.3V to GND - 0.02, \r\n    5.0V to GND - 3.80,\r\n    1.5V to GND- 1.46\r\n    1.5V to 2.5V- 8.53\r\n    1.5V to 1.2V- 9.86\r\n    1.5V to 3.3V- 8.31\r\n    1.5V to 5.0V- 13.98\r\n    2.5V to 1.2V-1.32\r\n    2.5V to 5.0V-3.77\r\n    '),(76,9,31,15,'2015-10-15 12:42:50',1,'TR-SMP-0029\r\nThere\'s a winchester pcb connector J3 missing.\r\nIt\'s OK!'),(77,11,30,1,'2015-10-15 12:53:59',1,'(This resistance measurements was made with the DC to DC voltage regulators in!)\r\n    BKPLN to GND - 8.18,\r\n    1.5V to GND - 1.37, \r\n    2.5V to GND-0.11,\r\n    1.2V to GND-0.87,\r\n    3.3V to GND-0.02,\r\n    5.0V to GND-2.46,\r\n    1.5V to GND-1.37,\r\n    1.5V to 2.5V-0.11,\r\n    1.5V to 1.2V-4.86,\r\n    1.5V to 3.3V-4.76,\r'),(78,9,32,15,'2015-10-15 13:00:01',1,'TR-SMP-0006\r\nThere\'s missing a jumper J12\r\nIt\'s OK'),(79,11,30,11,'2015-10-15 13:01:54',1,'(Values in KOhms)\r\n    BKPLN to GND - CD\r\n    1.5V to GND - 1.51,\r\n    2.5V to GND-0.16,\r\n    1.2V to GND-1.33,\r\n    3.3V to GND-0.02,\r\n    5.0V to GND-3.59,\r\n    1.5V to GND-1.50,\r\n    1.5V to 2.5V-8.07,\r\n    1.5V to 1.2V-9.63,\r\n    1.5V to 3.3V-7.85,\r\n    1.5V to 5.0V-13.54,\r\n    2.5V to 1.2V-1.45,\r\n    2.5V to 5.0V-'),(80,9,33,15,'2015-10-15 13:13:56',0,'TR-SMP-0007\r\nThere\'s a jumper missing (J12).\r\nEverything else is OK!'),(81,11,32,11,'2015-10-15 13:14:31',1,'(Values in KOhms)\r\n    BKPLN to GND - CD,\r\n    1.5V to GND - 4.60,\r\n    2.5V to GND - 0.16,\r\n    1.2V to GND - 0.48,\r\n    3.3V to GND - 0.02,\r\n    5.0V to GND - 3.80,\r\n    1.5V to GND - 4.59,\r\n    1.5V to 2.5V - 1.61,\r\n    1.5V to 1.2V - 1.96,\r\n    1.5V to 3.3V - 1.46,\r\n    1.5V to 5.0V - 5.60,\r\n    2.5V to 1.2V - 0.64'),(82,11,33,11,'2015-10-15 13:23:52',1,'(Values in KOhms)\r\n    BKPLN to GND - CD\r\n    1.5V to GND - 4.85,\r\n    2.5V to GND - 0.16,\r\n    1.2V to GND - 0.54,\r\n    3.3V to GND - 0.02,\r\n    5.0V to GND - 3.79,\r\n    1.5V to GND - 4.78,\r\n    1.5V to 2.5V - 1.64, \r\n    1.5V to 1.2V - 2.05,\r\n    1.5V to 3.3V - 1.49,\r\n    1.5V to 5.0V - 5.63,\r\n    2.5V to 1.2V - 0.70'),(83,3,30,14,'2015-10-15 13:30:30',0,'01235456789012354567890123545678901235456789012354567890123545678901235456789012354567890123545678901235456789012354567890123545678901235456789012354567890123545678901235456789012354567890123545678901235456789012354567890123545678901235456789012354567890123545678901235456789012354567890123545678901235456789012354567890'),(84,9,34,15,'2015-10-15 13:34:05',0,'TR-SMP-0008\r\nThere\'s missing a jumper (J12).\r\nThere\'s a tiny mark of paint on the back side of the board.\r\n'),(85,9,35,15,'2015-10-15 13:43:34',0,'TR-SMP-0009,\r\nThere\'s missing a jumper (J12),\r\nEverything else is OK!\r\nNote: all of the boards have a stamp in back side.'),(86,11,34,11,'2015-10-15 13:44:18',0,'1. CD,\r\n2. 8.10,\r\n3. 0.16,\r\n4. 0.67,\r\n5. 0 (short),\r\nTest aborted'),(87,9,35,15,'2015-10-15 13:48:13',1,'I mistakenly marked the above successful test as a failure.'),(88,9,36,15,'2015-10-15 13:53:41',1,'TR-SMP-0024,\r\nThere\'s missing jumper (J12),\r\nEverything else is OK!'),(89,11,35,11,'2015-10-15 14:01:28',1,'Values in KOhms\r\n1. CD\r\n2. 8.57,\r\n3. 0.16,\r\n4. 0.51,\r\n5. 0.02,\r\n6. 3.80,\r\n7. 8.55,\r\n8. 1.65,\r\n9. 2.03,\r\n10. 1.50,\r\n11. 5.64,\r\n12. 0.67,\r\n13. 0.18,\r\n14. 3.96,\r\n15. 0.85,\r\n16. 4.63,\r\n17. 3.82,'),(90,9,37,15,'2015-10-15 14:03:12',1,'TR-SMP-0010,\r\nThere\'s a jumper missing (J12),\r\nEverything else is OK!'),(91,11,36,11,'2015-10-15 14:14:17',1,'This test was made with the DC/DC regulator. Values in KOhms  \r\n1. 8.17,\r\n2. 4.65,\r\n3. 0.11,\r\n4. 0.50,\r\n5. 0.02,\r\n6. 2.67,\r\n7. 4.65,\r\n8. 1.44,\r\n9. 1.85,\r\n10. 1.34,\r\n11. 4.19,\r\n12. 0.61,\r\n13. 0.13,\r\n14. 2.79,\r\n15. 0.82,\r\n16. 3.46,\r\n17. 2.69'),(92,9,38,1,'2015-10-15 14:17:21',1,'TR-SMP-0011,\r\nThere\'s a jumper missing (J12),\r\nEverything else is OK!'),(93,11,37,11,'2015-10-15 14:23:59',1,'Values in KOhms\r\n1. CD,\r\n2. 8.26,\r\n3. 0.16,\r\n4. 0.82,\r\n5. 0.02,\r\n6. 3.80,\r\n7. 8.23,\r\n8. 1.67,\r\n9. 2.31\r\n10. 1.50,\r\n11. 5.64,\r\n12. 0.94,\r\n13. 0.18,\r\n14. 3.96,\r\n15. 1.30,\r\n16. 5.11,\r\n17. 3.82 \r\n\r\n\r\n'),(94,9,39,15,'2015-10-15 14:25:52',1,'TR-SMP-0012,\r\nThere\'s a jumper missing (J12),\r\nEverything else is OK!'),(95,11,38,11,'2015-10-15 14:33:23',1,'Values in KOhms:\r\n1. CD\r\n2. 5.06,\r\n3. 0.16,\r\n4. 0.57,\r\n5. 0.02,\r\n6. 3.80,\r\n7. 5.05,\r\n8. 1.64,\r\n9. 2.07,\r\n10. 1.48,\r\n11. 5.62,\r\n12. 0.73,\r\n13. 0.18,\r\n14. 3.96,\r\n15. 0.99,\r\n16. 4.77,\r\n17. 3.82'),(96,9,33,15,'2015-10-15 14:34:29',1,'I forgot to mark \"Successful\".'),(97,9,34,2,'2015-10-15 14:37:55',1,'See previous entry. This board is okay.'),(98,11,39,11,'2015-10-15 14:43:43',1,'Values in KOhms\r\n\r\n1. CD,\r\n2. 7.56,\r\n3. 0.16,\r\n4. 0.56,\r\n5. 0.02,\r\n6. 3.79,\r\n7. 7.54,\r\n8. 1.64,\r\n9. 2.06,\r\n10. 1.48,\r\n11. 5.61,\r\n12. 0.71,\r\n13. 0.18,\r\n14. 3.95,\r\n15. 0.97,\r\n16. 4.74, \r\n17. 3.81\r\n'),(99,9,40,15,'2015-10-15 14:43:45',1,'TR-SMP-0013,\r\nThere\'s a jumper missing (J12),\r\nEverything else is OK!'),(100,10,27,14,'2015-10-15 14:48:52',0,'This is not a real board...'),(101,11,40,11,'2015-10-15 14:51:09',1,'Values in KOhms\r\n\r\n1. CD,\r\n2. 10.37,\r\n3. 0.16,\r\n4. 0.65,\r\n5. 0.02,\r\n6. 3.80,\r\n7. 10.34,\r\n8. 1.67,\r\n9. 2.19,\r\n10. 1.52,\r\n11. 5.67,\r\n12. 0.81,\r\n13. 0.18,\r\n14. 3.96,\r\n15. 1.12,\r\n16. 4.91,\r\n17. 3.82'),(102,9,41,15,'2015-10-15 14:54:42',1,'TR-SMP-0014,\r\nThere\'s missing a jumper (J12),\r\nEverything else is OK!'),(103,11,32,11,'2015-10-15 15:01:40',1,'This test was made with the DC/DC regulator.\r\nValues in KOhms. \r\n1. 8.17,\r\n2. 3.88,\r\n3. 0.11, \r\n4. 0.47,\r\n5. 0.02,\r\n6. 2.67,\r\n7. 3.85,\r\n8. 1.46,\r\n9. 1.84,\r\n10. 1.36,\r\n11. 4.20,\r\n12. 0.58,\r\n13. 0.13,\r\n14. 2.78,\r\n15. 0.76,\r\n16. 3.39,\r\n17. 2.68'),(104,9,42,15,'2015-10-15 15:01:41',1,'TR-SMP-0015,\r\nThere\'s a jumper missing (J12),\r\nEverything else is OK!'),(105,11,41,11,'2015-10-15 15:09:31',1,'Values in KOhms\r\n\r\n1. CD,\r\n2. 5.19,\r\n3. 0.16,\r\n4. 0.66,\r\n5. 0.02,\r\n6. 3.80,\r\n7. 5.20,\r\n8. 1.65,\r\n9. 2.17,\r\n10. 1.49,\r\n11. 5.63,\r\n12. 0.81,\r\n13. 0.18,\r\n14. 3.96,\r\n15. 1.11,\r\n16. 4.90,\r\n17. 3.82'),(106,11,28,11,'2015-10-15 15:18:41',1,'This test was made with the DC/DC regulator. Values in KOhms.\r\n\r\n1. 8.18,\r\n2. 4.08,\r\n3. 0.11,\r\n4. 0.60,\r\n5. 0.02,\r\n6. 2.66,\r\n7. 4.08,\r\n8. 1.46,\r\n9. 1.97,\r\n10. 1.36,\r\n11. 4.20,\r\n12. 0.71,\r\n13. 0.13,\r\n14. 2.78,\r\n15. 0.99,\r\n16. 3.62,\r\n17. 2.69\r\n\r\n\r\n'),(107,11,30,11,'2015-10-15 15:29:57',1,'This test was made with the DC/DC regulator. Values in KOhms.\r\n\r\n1. 8.22\r\n2. 4.90\r\n3. 0.11\r\n4. 0.69,\r\n5. 0.02,\r\n6. 2.66,\r\n7. 4.88,\r\n8. 1.51,\r\n9. 2.10,\r\n10. 1.40,\r\n11. 4.24,\r\n12. 0.79,\r\n13. 0.13,\r\n14. 2.77,\r\n15. 1.13,\r\n16. 3.76,\r\n17. 2.68\r\n'),(108,22,28,1,'2015-10-16 07:38:47',1,'After soldering on the header pin and putting a jumper between pins 1&amp;2, the IGLOO2s both programmed.  Bridge had no problem.'),(109,22,35,1,'2015-10-16 08:14:28',0,'Jumper soldered. Bridge: done; IGLOO2 (top): failed; IGLLO2 (bottom): failed.  Couldn\'t initialize programmer.'),(110,22,37,1,'2015-10-16 08:19:41',1,'jumpers soldered.  bridge: done; IGLOO2 (top): done ; IGLOO2 (bot): done'),(111,9,43,15,'2015-10-16 08:28:06',1,'TR-SMP-0030,\r\nThere\'s a jumper missing (J12),\r\nEverything else is OK!'),(112,11,43,7,'2015-10-16 08:34:22',1,'Values in KOhms\r\n1. CD,\r\n2. 1.46,\r\n3. 0.16,\r\n4. 1.48,\r\n5. 0.02,\r\n6. 3.61,\r\n7. 1.45,\r\n8. 5.41,\r\n9. 7.15, \r\n10. 5.21,\r\n11. 10.45,\r\n12. 1.61,\r\n13. 0.18,\r\n14. 3.79,\r\n15. 0.91,\r\n16. 4.5,\r\n17. 3.63'),(113,9,44,15,'2015-10-16 08:34:24',1,'TR-SMP-0031,\r\nThere\'s a jumper missing (J12),\r\nThere\'s two winchester connector missing (J2, J3),\r\nEverything else is OK!'),(114,9,43,15,'2015-10-16 08:38:58',1,'TR-SMP-0030,\r\nThere\'s a jumper missing (J12),\r\nThere are two winchester missing (J2,J3),\r\nEverything else is OK!'),(115,11,44,7,'2015-10-16 08:41:32',1,'Values in KOhms\r\n1. CD \r\n2. 1.5,\r\n3. 0.16,\r\n4. 1.46,\r\n5. 0.02,\r\n6. 3.60,\r\n7. 1.5,\r\n8. 5.40,\r\n9. 7.14,\r\n10. 5.18,\r\n11. 10.51,\r\n12. 1.63,\r\n13. 0.18,\r\n14. 3.79,\r\n15. 0.99,\r\n16. 4.56,\r\n17. 3.63'),(116,12,36,2,'2015-10-16 09:16:52',1,'Looks good.'),(117,15,36,7,'2015-10-16 09:26:34',1,'Bridge OK, igloo top ok, igloo bottom ok'),(118,12,44,7,'2015-10-16 09:38:51',1,'ok.'),(119,15,44,7,'2015-10-16 09:43:21',0,'bridge ok. igloo top failed. aborted'),(120,12,39,7,'2015-10-16 09:51:39',1,'ok.'),(121,15,39,7,'2015-10-16 09:57:02',0,'bridge ok.  igloo top failed.aborted.'),(122,22,39,7,'2015-10-16 10:01:58',0,' bridge ok. igloo top failed.aborted. '),(123,22,44,7,'2015-10-16 10:02:46',0,'bridge ok. igloo top failed. aborted '),(124,22,36,7,'2015-10-16 10:04:06',1,' Bridge OK, igloo top ok, igloo bottom ok '),(125,22,30,7,'2015-10-16 10:19:17',1,'bridge ok, igloo top ok. igloo bottom ok.'),(126,22,35,7,'2015-10-16 10:33:05',0,'bridge ok, igloo top failed.aborted'),(127,22,33,7,'2015-10-16 10:44:22',0,'bridge ok. igloo top failed.aborted '),(128,12,35,2,'2015-10-16 10:48:23',1,'1.2 V DC/DC was bad. We replaced it, and now the power is good.'),(129,22,35,7,'2015-10-16 10:50:04',1,'bridge verified. igloo top ok. igloo bottom ok.'),(130,12,39,14,'2015-10-16 12:38:59',1,'Good.'),(131,22,39,14,'2015-10-16 12:42:25',1,'bridge verified, igloo top ok, igloo bottom ok'),(132,22,43,7,'2015-10-16 12:51:14',0,'igloo top failed, aborted.'),(133,22,40,7,'2015-10-16 13:03:08',1,'bridge ok, igloo top ok, igloo bottom ok'),(134,22,41,7,'2015-10-16 13:16:17',1,'bridge verified, igloo top verified, igloo bottom verified (I think we programmed this, thinking it was \'593)'),(135,22,40,7,'2015-10-16 13:26:01',1,'bridge ok, igloo top ok, igloo bottom ok.'),(136,22,44,7,'2015-10-16 13:33:48',1,'bridge verified , igloo top ok, igloo bottom ok.'),(137,22,43,7,'2015-10-16 13:54:47',1,'bridge ok, igloo top ok, igloo bottom ok.'),(138,20,43,14,'2015-10-16 14:03:07',1,'0xc1000000 0xb8ec1c70'),(139,20,44,14,'2015-10-16 14:03:26',1,'0xea000000 0xba1ca670'),(140,12,43,14,'2015-10-16 14:04:04',1,'Okay.'),(141,10,43,14,'2015-10-16 14:04:32',1,'This looks good.'),(142,10,44,14,'2015-10-16 14:05:02',1,'This looks good. Winchesters are not plugged in because this board is for radiation testing.'),(143,15,43,14,'2015-10-16 14:06:49',1,'igloo top: 03.04, igloo bottom: 03.04, bridge: 01.10.0000'),(144,15,44,14,'2015-10-16 14:07:21',1,'igloo top: 03.04, igloo bottom: 03.04, bridge: 01.10.0000'),(145,1,35,1,'2015-10-17 14:56:07',1,'Pedestal distributions look great for this board'),(146,22,45,14,'2015-10-19 11:37:12',1,'igloo top: ok, igloo bottom: ok, bridge: ok'),(147,22,49,1,'2015-10-19 11:41:05',1,'igloo2 top: done\r\nigloo2 bot: done\r\nbridge: done'),(148,1,9,14,'2015-10-19 12:02:45',0,'\"test\" \'test\''),(149,22,48,1,'2015-10-19 12:12:59',1,'igloo2 top: done\r\nigloo2 bot: done\r\nbridge: done'),(150,1,49,9,'2015-10-19 12:28:48',1,'Seems OK.'),(151,5,49,9,'2015-10-19 12:39:32',1,'Seems OK.'),(152,4,49,9,'2015-10-19 12:49:15',1,'Link errors are caused by a known issue in the firmware.');
/*!40000 ALTER TABLE `Test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestRevoke`
--

DROP TABLE IF EXISTS `TestRevoke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TestRevoke` (
  `test_id` int(10) unsigned NOT NULL,
  `comment` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestRevoke`
--

LOCK TABLES `TestRevoke` WRITE;
/*!40000 ALTER TABLE `TestRevoke` DISABLE KEYS */;
INSERT INTO `TestRevoke` VALUES (9,'removing dummy test'),(11,'remove dummy test'),(12,'removing dummy test'),(13,'dummy test'),(19,'somuf'),(21,'dummy test'),(22,'dummy test'),(23,'f'),(55,'test'),(56,'test'),(75,'The character field was cut off. I think this is a database issue.'),(77,'The character field was cut off. I think this is a database issue.'),(79,'The character field was cut off. I think this is a database issue.'),(80,'I forgot to check \"successful\".'),(81,'The character field was cut off. I think this is a database issue.'),(83,'This is stupid.'),(84,'This stamp is okay.'),(85,'Mistake'),(109,'test redone.'),(111,'I forgot to additional comment.'),(117,'Tote gave me the wrong test title...'),(119,'Tote is an idiot.'),(120,'1.2 V DC/DC was swapped with the one in 589.'),(121,'Tote told me the wrong test name...'),(122,'Redone after DC/DC swap.'),(123,'Test redone. Maybe it was previously conducted with bkp_pwr disabled'),(126,'test redone.'),(132,'Redone. We think the bkp_pwr was disabled.'),(133,'this was actually done on  594.');
/*!40000 ALTER TABLE `TestRevoke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Test_Type`
--

DROP TABLE IF EXISTS `Test_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test_Type` (
  `test_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `required` tinyint(1) NOT NULL,
  `desc_short` varchar(50) DEFAULT NULL,
  `desc_long` varchar(250) DEFAULT NULL,
  `relative_order` int(11) NOT NULL,
  PRIMARY KEY (`test_type`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Test_Type`
--

LOCK TABLES `Test_Type` WRITE;
/*!40000 ALTER TABLE `Test_Type` DISABLE KEYS */;
INSERT INTO `Test_Type` VALUES (1,'raw ped',1,'mean/rms of raw peds','check the mean and RMS of pedestal distributions for all QIEs when no cable is plugged into the board.',1),(3,'register test',1,'check all registers','loop over all availble r/w registers on QIE card and write random bits ad readback to double check',2),(4,'link pattern',1,'','Enable link pattern readout in igloo two and check the integrity of the link',3),(5,'cap ID rotation',1,'check that cap are rotating','check that cap IDs for each group of 4 (12?) QIE are rotating correctly.  This should be checked at every clock phase possible.',4),(9,'Visual Inspection',1,'Check board for damage','Check board for damage, obvious short, or other potentially alarming features',1),(10,'Assembly check',1,'Check that all required parts are on the board.','Check that 3 VTTx modules 5 DC/DC converters are in their proper location, 2 Winchester PCB connectors, front panel, and Bridge JTAG pass-through are installed.  ',1),(11,'Ground-short test',1,'check voltage between all test points.','Check Power; using ohmmeter, check for shorts on between any of the voltage rails; there are easy to access test points for all rails; If a short is found, STOP and find the cause.  Record all voltages in comments.',1),(12,'Crate Power Test',1,'Install board into crate and check power.','Install Board into unpowered crate. Power Board, voltage should be ~8V.  Note power draw (expect ~1.6 A) in comments.  Quick check of components to verify no hot areas (should use an IR gun, if possible).\r\n',1),(15,'Check f/w versions',1,'','Using QA test suite s/w readout FPGA f/w versions.  Verify, they are as expected.  Note output in comments.',1),(20,'Board ID',1,'','Using QA test suite s/w read the RMs unique ID, scan the bar code on  the board, and note these in the comments.',1),(21,'Internal Q Inj.',1,'','Using the QA test suite s/w run the CI test.  Attach root file with comments.  ',1),(22,'Program FPGA',1,'','use JTAG programmers and Xilinx/Microsemi s/w to load f/w onto the Bridge and both IGLOO2 FPGAs. Verify programmer was successful.',1),(23,'Calibration',1,'','use external charge injection scans for measuring QIE response.  Measure range select errors.  Calibrate TDC thresholds.',1),(24,'LED test',1,'','test QIE with fast external pulses using an LED + PMT to generate signals.',1),(25,'FE crate number',1,'','Number of the frontend crate for which this card resides.  The ngFEC slot should be the first digits and the fiber number on the ngFEC should be the last digits.',1),(26,'FE crate number',1,'','Number corresponding to the FE crate this card resides in.  The first digits should correspond to the slot number of the ngFEC while the last digits should correspond to the fiber number of the ngFEC.',1);
/*!40000 ALTER TABLE `Test_Type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-19 15:06:17
