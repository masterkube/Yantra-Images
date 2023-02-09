-- MySQL dump 10.13  Distrib 5.6.51, for Linux (x86_64)
--
-- Host: localhost    Database: masterkubedb
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Table structure for table `actionsrepository`
--

DROP TABLE IF EXISTS `actionsrepository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actionsrepository` (
  `DomainName` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `IsMetric` varchar(1) NOT NULL DEFAULT '0',
  `Action` blob NOT NULL,
  `TellClientCacheDuration` bigint(20) DEFAULT NULL,
  `TellProxyCacheDuration` bigint(20) DEFAULT NULL,
  `AskClientCacheDuration` bigint(20) DEFAULT NULL,
  `AskProxyCacheDuration` bigint(20) DEFAULT NULL,
  `SequenceId` varchar(100) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DomainName`,`ActionName`),
  KEY `SequenceId` (`SequenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actionsrepository`
--

LOCK TABLES `actionsrepository` WRITE;
/*!40000 ALTER TABLE `actionsrepository` DISABLE KEYS */;
/*!40000 ALTER TABLE `actionsrepository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentsrepository`
--

DROP TABLE IF EXISTS `agentsrepository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agentsrepository` (
  `DomainName` varchar(100) NOT NULL,
  `AgentName` varchar(100) NOT NULL,
  `Agent` blob NOT NULL,
  PRIMARY KEY (`DomainName`,`AgentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentsrepository`
--

LOCK TABLES `agentsrepository` WRITE;
/*!40000 ALTER TABLE `agentsrepository` DISABLE KEYS */;
/*!40000 ALTER TABLE `agentsrepository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditmaintable`
--

DROP TABLE IF EXISTS `auditmaintable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditmaintable` (
  `AuditId` int(11) NOT NULL AUTO_INCREMENT,
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `SequenceId` varchar(100) NOT NULL,
  `ChoiceId` varchar(10) DEFAULT NULL,
  `FormatPattern` varchar(245) NOT NULL,
  `IsNameInternal` varchar(1) NOT NULL DEFAULT '0',
  `UserId` varchar(100) NOT NULL,
  `ThreadName` varchar(100) NOT NULL,
  `AuditTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AuditId`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditmaintable`
--

LOCK TABLES `auditmaintable` WRITE;
/*!40000 ALTER TABLE `auditmaintable` DISABLE KEYS */;
INSERT INTO `auditmaintable` VALUES (1,'masterkube','User','User1','GenNamesforRateContractProcess','13',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 07:58:17'),(2,'masterkube','User','User1','AddCountry','46',NULL,'{0}','0','admin','Reaction','2019-05-09 08:01:06'),(3,'masterkube','User','User1','InvokeCountry','47',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:01:08'),(4,'masterkube','Country','Country-1','GenerateNameforCountryInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:01:08'),(5,'masterkube','User','User1','AddVessel','34',NULL,'{0}','0','admin','Reaction','2019-05-09 08:01:27'),(6,'masterkube','User','User1','InvokeVesselProcessAgent','35',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:01:30'),(7,'masterkube','Vessel','Vessel-1','GenerateNameforVesselInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:01:30'),(8,'masterkube','User','User1','AddService','36',NULL,'{0}','0','admin','Reaction','2019-05-09 08:01:50'),(9,'masterkube','User','User1','InvokeService','37',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:01:53'),(10,'masterkube','Service','Service-1','GenerateNameforServiceInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:01:53'),(11,'masterkube','User','User1','AddCharge','30',NULL,'{0}','0','admin','Reaction','2019-05-09 08:02:08'),(12,'masterkube','User','User1','InvokeTaxRatetoSurchargeProcessAgent','31',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:02:10'),(13,'masterkube','Charge','Charge-1','GenerateNameforChargeInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:02:10'),(14,'masterkube','User','User1','AddContainerType','28',NULL,'{0}','0','admin','Reaction','2019-05-09 08:02:22'),(15,'masterkube','User','User1','InvokeContainerTypeProcessAgent','29',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:02:24'),(16,'masterkube','ContainerType','ContainerType-1','GenChPointerForContainerType','6',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:02:24'),(17,'masterkube','ContainerType','ContainerType-1','GenerateNameforContainerTypeInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:02:25'),(18,'masterkube','User','User1','AddTaxJurisdiction','26',NULL,'{0}','0','admin','Reaction','2019-05-09 08:03:12'),(19,'masterkube','User','User1','InvokeTaxJurisdictionProcessAgent','27',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:03:16'),(20,'masterkube','TaxJurisdiction','TaxJurisdiction-1','GenerateNameforTaxJurisdictionInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:03:16'),(21,'masterkube','User','User1','AddState','44',NULL,'{0}','0','admin','Reaction','2019-05-09 08:05:57'),(22,'masterkube','User','User1','InvokeState','45',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:06:02'),(23,'masterkube','State','State-1','GenerateNameforStateInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:02'),(24,'masterkube','TaxJurisdiction','TaxJurisdiction-1','RecordTaxJurisdictionforState','26',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:03'),(25,'masterkube','Country','Country-1','WhichCountryToLinkState','16',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:04'),(26,'masterkube','Country','Country-1','RecordStateforCountry','17',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:05'),(27,'masterkube','Country','Country-1','GenerateSendChannelToMyState','18',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:05'),(28,'masterkube','Country','Country-1','SendChannelToMyState','10',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:06'),(29,'masterkube','Country','Country-1','TriggerNextMyStates','11',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:06'),(30,'masterkube','Country','Country-1','TriggerMyStates','9',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:07'),(31,'masterkube','User','User1','AddGeoLocation','42',NULL,'{0}','0','admin','Reaction','2019-05-09 08:06:45'),(32,'masterkube','User','User1','InvokeGeoLocation','43',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:06:48'),(33,'masterkube','GeoLocation','GeoLocation-1','GenerateNameforGeoInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:48'),(34,'masterkube','State','State-1','WhichStateforGeoLocation','9',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:49'),(35,'masterkube','State','State-1','RecordGeoLocationforState','10',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:51'),(36,'masterkube','State','State-1','GenerateSendChannelToRecordGeoLocationOfThisState','11',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:06:51'),(37,'masterkube','User','User1','AddPrincipalCustomer','20',NULL,'{0}','0','admin','Reaction','2019-05-09 08:07:22'),(38,'masterkube','User','User1','InvokePrincipalCustomerProcessAgent','21',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:07:26'),(39,'masterkube','Customer','Customer-1','GenerateChPointerForPrincipalCustomer','36',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:26'),(40,'masterkube','Customer','Customer-1','GenerateNameforPrincipalCustomerInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:27'),(41,'masterkube','User','User1','AddPartner','38',NULL,'{0}','0','admin','Reaction','2019-05-09 08:07:39'),(42,'masterkube','User','User1','InvokePartner','39',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:07:42'),(43,'masterkube','Partner','Partner-1','GenerateNameforPartnerInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:42'),(44,'masterkube','Customer','Customer-1','WhichCustomerforPartner','47',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:43'),(45,'masterkube','Customer','Customer-1','RecordPartnerSpaceLinkforCustomer','48',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:45'),(46,'masterkube','Customer','Customer-1','GenerateSendChannelToRecordPartnerSpaceLinkOfThisCustomer','49',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:45'),(47,'masterkube','Customer','Customer-1','GenerateChPointerForPrincipalCustomer','57',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:46'),(48,'masterkube','Customer','Customer-1','SendChannelToRecordPartnerSpaceLinkOfThisCustomer','6',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:47'),(49,'masterkube','Customer','Customer-1','TriggerNextSendChannelToRecordPartnerSpaceLinkOfThisCustomer','7',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:48'),(50,'masterkube','Customer','Customer-1','TriggerRecordPartnerSpaceLinkforCustomerAgent','5',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:07:49'),(51,'masterkube','User','User1','AddVoyage','32',NULL,'{0}','0','admin','Reaction','2019-05-09 08:08:17'),(52,'masterkube','Voyage','Voyage-1','GenNameforGetRecordContractforVoyage','37',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:21'),(53,'masterkube','User','User1','InvokeVoyageProcessAgent','33',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-05-09 08:08:21'),(54,'masterkube','Voyage','Voyage-1','GenerateNameforVoyageInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:22'),(55,'masterkube','Voyage','Voyage-1','GenNamesforRecordContractatVoyage','24',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:22'),(56,'masterkube','Voyage','Voyage-1','GetChtoSendRecordContractforVoyage','27',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:23'),(57,'masterkube','Voyage','Voyage-1','GetRecordContractforVoyage','36',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:23'),(58,'masterkube','Voyage','Voyage-1','TriggerRecordContractforVoyageAgent','23',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:24'),(59,'masterkube','Voyage','Voyage-1','GenNamesforRecordContractatVoyage','55',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:25'),(60,'masterkube','Service','Service-1','WhichServiceforVoyage','23',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:25'),(61,'masterkube','Vessel','Vessel-1','WhichVesselforVoyage','12',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:27'),(62,'masterkube','Vessel','Vessel-1','RecordVoyageforVessel','5',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:27'),(63,'masterkube','Vessel','Vessel-1','GenerateNameforDeleteVoyageforVesselChannel','6',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:28'),(64,'masterkube','Voyage','Voyage-1','ChanneltoDeleteVoyageforVessel','35',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:29'),(65,'masterkube','Voyage','Voyage-1','AddGeoLocationOfVoyage','15',NULL,'{0}-{1}','0','admin','Reaction','2019-05-09 08:08:54'),(66,'masterkube','Voyage','Voyage-1','GenNameforRecordGeoLocationOfVoyageforVoyage','16',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:08:55'),(67,'masterkube','Voyage','Voyage-1','InvokeGeoLocationOfVoyage','17',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:00'),(68,'masterkube','GeoLocationOfVoyage','GeoLocationOfVoyage-1','GenerateNameforGeoLocationOfVoyageInformation','4',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:01'),(69,'masterkube','GeoLocation','GeoLocation-1','WhichGeoLocationforGeoLocationOfVoyage','22',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:02'),(70,'masterkube','Voyage','Voyage-1','RecordGeoLocationOfVoyageforVoyage','18',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:04'),(71,'masterkube','Voyage','Voyage-1','TriggerNextRecordGeoLocationOfVoyageforVoyage','19',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:06'),(72,'masterkube','Voyage','Voyage-1','ActivateDeleteGeoLocationOfVoyageRequest','20',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:06'),(73,'masterkube','GeoLocation','GeoLocation-1','RecordGeoLocationOfVoyageforGeoLocation','6',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:07'),(74,'masterkube','GeoLocation','GeoLocation-1','TriggerNextRecordGeoLocationOfVoyageforGeoLocationAgent','7',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:08'),(75,'masterkube','GeoLocation','GeoLocation-1','TriggerRecordGeoLocationOfVoyageforGeoLocation','5',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:08'),(76,'masterkube','GeoLocationOfVoyage','GeoLocationOfVoyage-1','AddContainerProcess','6',NULL,'{0}-{1}','0','admin','Reaction','2019-05-09 08:09:43'),(77,'masterkube','GeoLocationOfVoyage','GeoLocationOfVoyage-1','GenNameforRecordContainerProcessforGeoLocationOfVoyage','7',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:43'),(78,'masterkube','GeoLocationOfVoyage','GeoLocationOfVoyage-1','InvokeContainerProcess','8',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:46'),(79,'masterkube','ContainerProcess','ContainerProcess-1','GenerateNameforContainerProcessInformation','4',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:47'),(80,'masterkube','ContainerProcess','ContainerProcess-1','Breakforthename2','5',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:47'),(81,'masterkube','GeoLocationOfVoyage','GeoLocationOfVoyage-1','RecordContainerProcessforGeoLocationOfVoyage','9',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:47'),(82,'masterkube','GeoLocationOfVoyage','GeoLocationOfVoyage-1','TriggerNextRecordContainerProcessforGeolocationOfVoyage','10',NULL,'{0}-{1}','1','Reaction','Reaction','2019-05-09 08:09:48'),(83,'masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','5','{0}-{1}','0','admin','Reaction','2019-05-09 08:10:09'),(84,'masterkube','User','User1','AddTaxJurisdiction','66',NULL,'{0}','0','admin','Reaction','2019-10-30 09:09:33'),(85,'masterkube','User','User1','InvokeTaxJurisdictionProcessAgent','67',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-10-30 09:09:39'),(86,'masterkube','TaxJurisdiction','TaxJurisdiction-2','GenerateNameforTaxJurisdictionInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-10-30 09:09:40'),(87,'masterkube','User','User1','AddTaxJurisdiction','78',NULL,'{0}','0','0:0:0:0:0:0:0:1','Reaction','2019-10-30 09:10:33'),(88,'masterkube','User','User1','InvokeTaxJurisdictionProcessAgent','79',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-10-30 09:10:38'),(89,'masterkube','TaxJurisdiction','TaxJurisdiction-3','GenerateNameforTaxJurisdictionInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-10-30 09:10:42'),(90,'masterkube','User','User1','AddTaxJurisdiction','80',NULL,'{0}','0','127.0.0.1','Reaction','2019-10-30 09:24:49'),(91,'masterkube','User','User1','InvokeTaxJurisdictionProcessAgent','81',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-10-30 09:24:55'),(92,'masterkube','TaxJurisdiction','TaxJurisdiction-4','GenerateNameforTaxJurisdictionInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-10-30 09:24:56'),(93,'masterkube','User','User1','AddState','68',NULL,'{0}','0','0:0:0:0:0:0:0:1','Reaction','2019-11-06 03:44:29'),(94,'masterkube','User','User1','InvokeState','69',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-11-06 03:44:35'),(95,'masterkube','State','State-2','GenerateNameforStateInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:37'),(96,'masterkube','TaxJurisdiction','TaxJurisdiction-2','RecordTaxJurisdictionforState','26',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:39'),(97,'masterkube','Country','Country-1','WhichCountryToLinkState','25',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:42'),(98,'masterkube','Country','Country-1','RecordStateforCountry','26',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:45'),(99,'masterkube','Country','Country-1','GenerateSendChannelToMyState','27',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:46'),(100,'masterkube','Country','Country-1','SendChannelToMyState','30',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:48'),(101,'masterkube','Country','Country-1','TriggerNextMyStates','31',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:49'),(102,'masterkube','Country','Country-1','TriggerMyStates','29',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-06 03:44:50'),(103,'masterkube','User','User1','AddState','84',NULL,'{0}','0','0:0:0:0:0:0:0:1','Reaction','2019-11-18 04:36:12'),(104,'masterkube','User','User1','InvokeState','85',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2019-11-18 04:36:18'),(105,'masterkube','Country','Country-1','WhichCountryToLinkState','36',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:19'),(106,'masterkube','Country','Country-1','RecordStateforCountry','37',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:22'),(107,'masterkube','Country','Country-1','GenerateSendChannelToMyState','38',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:25'),(108,'masterkube','State','State-3','GenerateNameforStateInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:27'),(109,'masterkube','TaxJurisdiction','TaxJurisdiction-2','RecordTaxJurisdictionforState','36',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:29'),(110,'masterkube','Country','Country-1','SendChannelToMyState','41',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:32'),(111,'masterkube','Country','Country-1','TriggerNextMyStates','42',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:34'),(112,'masterkube','Country','Country-1','TriggerMyStates','40',NULL,'{0}-{1}','1','Reaction','Reaction','2019-11-18 04:36:35'),(113,'masterkube','User','User1','AddState','86',NULL,'{0}','0','0:0:0:0:0:0:0:1','Reaction','2020-04-23 07:26:33'),(114,'masterkube','User','User1','InvokeState','87',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2020-04-23 07:26:40'),(115,'masterkube','Country','Country-1','WhichCountryToLinkState','47',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:42'),(116,'masterkube','Country','Country-1','RecordStateforCountry','48',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:45'),(117,'masterkube','Country','Country-1','GenerateSendChannelToMyState','49',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:47'),(118,'masterkube','TaxJurisdiction','TaxJurisdiction-2','RecordTaxJurisdictionforState','41',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:50'),(119,'masterkube','State','State-4','GenerateNameforStateInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:52'),(120,'masterkube','Country','Country-1','SendChannelToMyState','52',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:55'),(121,'masterkube','Country','Country-1','TriggerNextMyStates','53',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:56'),(122,'masterkube','Country','Country-1','TriggerMyStates','51',NULL,'{0}-{1}','1','Reaction','Reaction','2020-04-23 07:26:58'),(123,'masterkube','User','User1','CreatePayment','11',NULL,'{0}','0','172.18.0.1','Reaction','2022-11-21 12:26:04'),(124,'masterkube','User','User1','InvokePayment','12',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2022-11-21 12:26:04'),(125,'masterkube','Payment','Payment-1','GenerateNameforPaymentInformation','5',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:04'),(126,'masterkube','Payment','Payment-1','GenReversalRejectedName','7',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(127,'masterkube','Customer','Customer-1','WhichCustomerforPayment','63',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(128,'masterkube','Customer','Customer-1','RecordPaymentforCustomer','64',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(129,'masterkube','Customer','Customer-1','GenerateSendChannelToRecordPaymentforCustomer','65',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(130,'masterkube','Customer','Customer-1','GenerateChPointerForPrincipalCustomer','77',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(131,'masterkube','Customer','Customer-1','SendChannelToRecordPaymentforCustomer','13',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(132,'masterkube','Customer','Customer-1','TriggerNextSendChannelToRecordPaymentforCustomer','14',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(133,'masterkube','Customer','Customer-1','TriggerSendChannelToRecordPaymentforCustomer','12',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:26:05'),(134,'masterkube','User','User1','CreatePayment','90',NULL,'{0}','0','172.18.0.1','Reaction','2022-11-21 12:27:36'),(135,'masterkube','User','User1','InvokePayment','91',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2022-11-21 12:27:37'),(136,'masterkube','Payment','Payment-2','GenerateNameforPaymentInformation','5',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:37'),(137,'masterkube','Payment','Payment-2','GenReversalRejectedName','7',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:37'),(138,'masterkube','Customer','Customer-1','WhichCustomerforPayment','83',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:37'),(139,'masterkube','Customer','Customer-1','RecordPaymentforCustomer','84',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:37'),(140,'masterkube','Customer','Customer-1','GenerateSendChannelToRecordPaymentforCustomer','85',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:38'),(141,'masterkube','Customer','Customer-1','GenerateChPointerForPrincipalCustomer','97',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:38'),(142,'masterkube','Customer','Customer-1','SendChannelToRecordPaymentforCustomer','93',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:38'),(143,'masterkube','Customer','Customer-1','TriggerNextSendChannelToRecordPaymentforCustomer','94',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:38'),(144,'masterkube','Customer','Customer-1','TriggerSendChannelToRecordPaymentforCustomer','92',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:27:38'),(145,'masterkube','User','User1','AddVessel','58',NULL,'{0}','0','172.18.0.1','Reaction','2022-11-21 12:28:58'),(146,'masterkube','User','User1','InvokeVesselProcessAgent','59',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2022-11-21 12:28:58'),(147,'masterkube','Vessel','Vessel-2','GenerateNameforVesselInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:28:59'),(148,'masterkube','User','User1','AddVoyage','76',NULL,'{0}','0','172.18.0.1','Reaction','2022-11-21 12:29:52'),(149,'masterkube','User','User1','InvokeVoyageProcessAgent','77',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2022-11-21 12:29:53'),(150,'masterkube','Voyage','Voyage-2','GenerateNameforVoyageInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:53'),(151,'masterkube','Voyage','Voyage-2','GenNameforGetRecordContractforVoyage','37',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:53'),(152,'masterkube','Voyage','Voyage-2','GenNamesforRecordContractatVoyage','24',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:53'),(153,'masterkube','Voyage','Voyage-2','GetChtoSendRecordContractforVoyage','27',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(154,'masterkube','Voyage','Voyage-2','GetRecordContractforVoyage','36',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(155,'masterkube','Voyage','Voyage-2','TriggerRecordContractforVoyageAgent','23',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(156,'masterkube','Voyage','Voyage-2','GenNamesforRecordContractatVoyage','55',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(157,'masterkube','Vessel','Vessel-1','WhichVesselforVoyage','20',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(158,'masterkube','Service','Service-1','WhichServiceforVoyage','29',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(159,'masterkube','Vessel','Vessel-1','RecordVoyageforVessel','22',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(160,'masterkube','Vessel','Vessel-1','GenerateNameforDeleteVoyageforVesselChannel','23',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:54'),(161,'masterkube','Voyage','Voyage-2','ChanneltoDeleteVoyageforVessel','35',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 12:29:55'),(162,'masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','3','{0}-{1}','0','172.18.0.1','Reaction','2022-11-21 13:15:43'),(163,'masterkube','User','User1','AddVoyage','96',NULL,'{0}','0','172.18.0.1','Reaction','2022-11-21 13:17:53'),(164,'masterkube','User','User1','InvokeVoyageProcessAgent','97',NULL,'{0}','1','DataEntryReaction','DataEntryReaction','2022-11-21 13:17:54'),(165,'masterkube','Voyage','Voyage-3','GenerateNameforVoyageInformation','3',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:54'),(166,'masterkube','Voyage','Voyage-3','GenNameforGetRecordContractforVoyage','37',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:54'),(167,'masterkube','Voyage','Voyage-3','GenNamesforRecordContractatVoyage','24',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:54'),(168,'masterkube','Voyage','Voyage-3','GetChtoSendRecordContractforVoyage','27',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(169,'masterkube','Voyage','Voyage-3','GetRecordContractforVoyage','36',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(170,'masterkube','Voyage','Voyage-3','TriggerRecordContractforVoyageAgent','23',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(171,'masterkube','Voyage','Voyage-3','GenNamesforRecordContractatVoyage','55',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(172,'masterkube','Service','Service-1','WhichServiceforVoyage','32',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(173,'masterkube','Vessel','Vessel-2','WhichVesselforVoyage','12',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(174,'masterkube','Vessel','Vessel-2','RecordVoyageforVessel','5',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(175,'masterkube','Vessel','Vessel-2','GenerateNameforDeleteVoyageforVesselChannel','6',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55'),(176,'masterkube','Voyage','Voyage-3','ChanneltoDeleteVoyageforVessel','35',NULL,'{0}-{1}','1','Reaction','Reaction','2022-11-21 13:17:55');
/*!40000 ALTER TABLE `auditmaintable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditpayloadtable`
--

DROP TABLE IF EXISTS `auditpayloadtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditpayloadtable` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `SequenceId` varchar(100) NOT NULL,
  `DataElementName` varchar(100) NOT NULL,
  `DataElementValue` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditpayloadtable`
--

LOCK TABLES `auditpayloadtable` WRITE;
/*!40000 ALTER TABLE `auditpayloadtable` DISABLE KEYS */;
INSERT INTO `auditpayloadtable` VALUES ('masterkube','User','User1','AddCountry','46','CountryName','india'),('masterkube','User','User1','AddCountry','46','CountryCode','india'),('masterkube','User','User1','AddCountry','46','Currency','INR'),('masterkube','User','User1','AddVessel','34','VesselName','VESSEL1'),('masterkube','User','User1','AddVessel','34','VesselOwner','1'),('masterkube','User','User1','AddService','36','ServiceName','SERVICE1'),('masterkube','User','User1','AddService','36','ServiceEffectiveDate','Thu May 09 00:00:00 IST 2019'),('masterkube','User','User1','AddCharge','30','ChargeName','CHARGE1'),('masterkube','User','User1','AddCharge','30','SACCode','1'),('masterkube','User','User1','AddCharge','30','TaxPercent','1'),('masterkube','User','User1','AddContainerType','28','ContainerType','CONTAINER1'),('masterkube','User','User1','AddTaxJurisdiction','26','TINNumber','18'),('masterkube','User','User1','AddTaxJurisdiction','26','TaxJurisdictionName','TAMILNADU'),('masterkube','User','User1','AddState','44','StateName','TAMILNADU'),('masterkube','User','User1','AddState','44','StateCode','1'),('masterkube','User','User1','AddState','44','StateGSTCode','1'),('masterkube','User','User1','AddState','44','WhichCountryToLinkState','Country-1'),('masterkube','User','User1','AddState','44','RecordTaxJurisdictionforState','TaxJurisdiction-1'),('masterkube','User','User1','AddGeoLocation','42','GeoLocationName','CHENNAI'),('masterkube','User','User1','AddGeoLocation','42','WhichStateforGeoLocation','State-1'),('masterkube','User','User1','AddGeoLocation','42','GeoLocationCode','1'),('masterkube','User','User1','AddGeoLocation','42','CompanyName','1'),('masterkube','User','User1','AddGeoLocation','42','Address','1'),('masterkube','User','User1','AddGeoLocation','42','ZIPCode','1'),('masterkube','User','User1','AddGeoLocation','42','CountryName','india'),('masterkube','User','User1','AddGeoLocation','42','GSTNumber','1'),('masterkube','User','User1','AddGeoLocation','42','Pan','1'),('masterkube','User','User1','AddGeoLocation','42','Cin','1'),('masterkube','User','User1','AddPrincipalCustomer','20','PrincipalCustomerName','CUSTOMER1'),('masterkube','User','User1','AddPrincipalCustomer','20','PrincipalCustomerAccountNumber','1'),('masterkube','User','User1','AddPrincipalCustomer','20','PrincipalCustomerPhoneNumber','1'),('masterkube','User','User1','AddPrincipalCustomer','20','PrincipalCustomerEmailID','1'),('masterkube','User','User1','AddPrincipalCustomer','20','PrincipalCustomerAddress','1'),('masterkube','User','User1','AddPrincipalCustomer','20','ContactPIC','1'),('masterkube','User','User1','AddPartner','38','WhichCustomerforPartner','Customer-1'),('masterkube','User','User1','AddPartner','38','PartnerName','1'),('masterkube','User','User1','AddPartner','38','Remarks','1'),('masterkube','User','User1','AddVoyage','32','VoyageUniqueNumber','VOYAGE1'),('masterkube','User','User1','AddVoyage','32','WhichServiceforVoyage','Service-1'),('masterkube','User','User1','AddVoyage','32','ExchangeRate','1'),('masterkube','User','User1','AddVoyage','32','VoyageNumber','1'),('masterkube','User','User1','AddVoyage','32','WhichVesselforVoyage','Vessel-1'),('masterkube','Voyage','Voyage-1','AddGeoLocationOfVoyage','15','GeoLocationNameforVoyage','CHENNAI'),('masterkube','Voyage','Voyage-1','AddGeoLocationOfVoyage','15','WhichGeoLocationforGeoLocationOfVoyage','GeoLocation-1'),('masterkube','GeoLocationOfVoyage','GeoLocationOfVoyage-1','AddContainerProcess','6','ContainerProcessName','container1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','TDRUniqueNumber','exporttdr1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','ContactReference','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','BillingEntityCode','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','Customer','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','ContainerNumber','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','ContainerTypeforTDR','11'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','GrossWeight','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','HazGen','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','Reefer','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','OGInfo','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','FE','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','POL','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','FPD','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','TermsPOL','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','TermsPOD','1'),('masterkube','ContainerProcess','ContainerProcess-1','AddExportTDR','19','SailingTimeforTDR','Thu May 09 00:00:00 IST 2019'),('masterkube','User','User1','AddTaxJurisdiction','66','TINNumber','33'),('masterkube','User','User1','AddTaxJurisdiction','66','TaxJurisdictionName','KERALA'),('masterkube','User','User1','AddTaxJurisdiction','78','TINNumber','35'),('masterkube','User','User1','AddTaxJurisdiction','78','TaxJurisdictionName','PONDICHERY'),('masterkube','User','User1','AddTaxJurisdiction','80','TINNumber','01'),('masterkube','User','User1','AddTaxJurisdiction','80','TaxJurisdictionName','JAMMU AND KASHMIR'),('masterkube','User','User1','AddState','68','StateName','Kerala'),('masterkube','User','User1','AddState','68','StateCode','1'),('masterkube','User','User1','AddState','68','StateGSTCode','1.0000'),('masterkube','User','User1','AddState','68','WhichCountryToLinkState','Country-1'),('masterkube','User','User1','AddState','68','RecordTaxJurisdictionforState','TaxJurisdiction-2'),('masterkube','User','User1','AddState','84','StateName','Karnataka'),('masterkube','User','User1','AddState','84','StateCode','23'),('masterkube','User','User1','AddState','84','StateGSTCode','1.0000'),('masterkube','User','User1','AddState','84','WhichCountryToLinkState','Country-1'),('masterkube','User','User1','AddState','84','RecordTaxJurisdictionforState','TaxJurisdiction-2'),('masterkube','User','User1','AddState','86','StateName','Jammu Kashmir'),('masterkube','User','User1','AddState','86','StateCode','33'),('masterkube','User','User1','AddState','86','StateGSTCode','1.0000'),('masterkube','User','User1','AddState','86','WhichCountryToLinkState','Country-1'),('masterkube','User','User1','AddState','86','RecordTaxJurisdictionforState','TaxJurisdiction-2'),('masterkube','User','User1','CreatePayment','11','ReceiptNumber','RCP0003'),('masterkube','User','User1','CreatePayment','11','WhichCustomerforPayment','Customer-1'),('masterkube','User','User1','CreatePayment','11','PaymentMethod','cash'),('masterkube','User','User1','CreatePayment','11','WhichBankforPayment','icici bank'),('masterkube','User','User1','CreatePayment','11','PaymentAmount','400'),('masterkube','User','User1','CreatePayment','11','PaymentReferenceNumber','RCP001001'),('masterkube','User','User1','CreatePayment','90','ReceiptNumber','RCP0004'),('masterkube','User','User1','CreatePayment','90','WhichCustomerforPayment','Customer-1'),('masterkube','User','User1','CreatePayment','90','PaymentMethod','DRAFT'),('masterkube','User','User1','CreatePayment','90','WhichBankforPayment','icici bank'),('masterkube','User','User1','CreatePayment','90','PaymentAmount','500'),('masterkube','User','User1','CreatePayment','90','PaymentReferenceNumber','RCP001001'),('masterkube','User','User1','AddVessel','58','VesselName','MV Britania'),('masterkube','User','User1','AddVessel','58','VesselOwner','1'),('masterkube','User','User1','AddVoyage','76','VoyageUniqueNumber','VOYAGE2'),('masterkube','User','User1','AddVoyage','76','WhichServiceforVoyage','Service-1'),('masterkube','User','User1','AddVoyage','76','ExchangeRate','1.0000'),('masterkube','User','User1','AddVoyage','76','VoyageNumber','1'),('masterkube','User','User1','AddVoyage','76','WhichVesselforVoyage','Vessel-1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','GeoLocationName','CHENNAI  PORT'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','WhichStateforGeoLocation','State-1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','GeoLocationCode','1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','CompanyName','1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','Address','1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','ZIPCode','1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','CountryName','india'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','GSTNumber','1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','Pan','1'),('masterkube','GeoLocation','GeoLocation-1','EditGeoLocation','24','Cin','1'),('masterkube','User','User1','AddVoyage','96','VoyageUniqueNumber','Voyage3'),('masterkube','User','User1','AddVoyage','96','WhichServiceforVoyage','Service-1'),('masterkube','User','User1','AddVoyage','96','ExchangeRate','1.0000'),('masterkube','User','User1','AddVoyage','96','VoyageNumber','1'),('masterkube','User','User1','AddVoyage','96','WhichVesselforVoyage','Vessel-2');
/*!40000 ALTER TABLE `auditpayloadtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatarnamestore`
--

DROP TABLE IF EXISTS `avatarnamestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatarnamestore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `AvatarName` varchar(100) NOT NULL,
  KEY `AvatarNameIndex` (`DomainName`,`ProcessName`,`ProcessId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatarnamestore`
--

LOCK TABLES `avatarnamestore` WRITE;
/*!40000 ALTER TABLE `avatarnamestore` DISABLE KEYS */;
INSERT INTO `avatarnamestore` VALUES ('masterkube','Payment','Payment-1','Payment-1'),('masterkube','Payment','Payment-2','Payment-2'),('masterkube','Voyage','Voyage-2','Voyage-2'),('masterkube','Voyage','Voyage-3','Voyage-3'),('masterkube','Vessel','Vessel-2','Vessel-2'),('masterkube','Categories','Categories-7','Categories-7'),('masterkube','Orders','Orders-1','Orders-1'),('masterkube','Categories','Categories-8','Categories-8'),('masterkube','Categories','Categories-9','Categories-9'),('masterkube','Yards','Yards-2','Yards-2'),('masterkube','Orders','Orders-2','Orders-2'),('masterkube','Categories','Categories-10','Categories-10'),('masterkube','Products','Products-1','Products-1'),('masterkube','Products','Products-3','Products-3'),('masterkube','Categories','Categories-11','Categories-11'),('masterkube','Categories','Categories-12','Categories-12'),('masterkube','Train','Train-1','Train-1'),('masterkube','Voyages','Voyages-1','Voyages-1'),('masterkube','TransportationLegs','TransportationLegs-8','TransportationLegs-8'),('masterkube','Categories','Categories-1','Categories-1'),('masterkube','Products','Products-4','Products-4'),('masterkube','Categories','Categories-2','Categories-2'),('masterkube','Truck','Truck-1','Truck-1'),('masterkube','Categories','Categories-3','Categories-3'),('masterkube','Ports','Ports-1','Ports-1'),('masterkube','Ports','Ports-2','Ports-2'),('masterkube','Yards','Yards-1','Yards-1'),('masterkube','Vessel','Vessel-3','Vessel-3'),('masterkube','Products','Products-2','Products-2'),('masterkube','Trips','Trips-2','Trips-2'),('masterkube','Trips','Trips-1','Trips-1'),('masterkube','Shipments','Shipments-1','Shipments-1'),('masterkube','Truck','Truck-2','Truck-2'),('masterkube','TransportationLegs','TransportationLegs-1','TransportationLegs-1'),('masterkube','TransportationLegs','TransportationLegs-2','TransportationLegs-2'),('masterkube','TransportationLegs','TransportationLegs-3','TransportationLegs-3'),('masterkube','Yards','Yards-3','Yards-3'),('masterkube','Shipments','Shipments-2','Shipments-2'),('masterkube','TransportationLegs','TransportationLegs-4','TransportationLegs-4'),('masterkube','Ports','Ports-3','Ports-3'),('masterkube','TransportationLegs','TransportationLegs-5','TransportationLegs-5'),('masterkube','Categories','Categories-4','Categories-4'),('masterkube','TransportationLegs','TransportationLegs-6','TransportationLegs-6'),('masterkube','Categories','Categories-5','Categories-5'),('masterkube','Journeys','Journeys-1','Journeys-1'),('masterkube','Yards','Yards-4','Yards-4'),('masterkube','Categories','Categories-6','Categories-6'),('masterkube','Shipments','Shipments-3','Shipments-3'),('masterkube','TransportationLegs','TransportationLegs-7','TransportationLegs-7');
/*!40000 ALTER TABLE `avatarnamestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credential`
--

DROP TABLE IF EXISTS `credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credential` (
  `StaffId` varchar(45) NOT NULL,
  `Q1` varchar(45) DEFAULT NULL,
  `A1` varchar(45) DEFAULT NULL,
  `Q2` varchar(45) DEFAULT NULL,
  `A2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credential`
--

LOCK TABLES `credential` WRITE;
/*!40000 ALTER TABLE `credential` DISABLE KEYS */;
/*!40000 ALTER TABLE `credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatypestore`
--

DROP TABLE IF EXISTS `datatypestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatypestore` (
  `DomainName` varchar(100) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `ValidationUrl` text,
  `ResourceUrl` text,
  `MediaType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatypestore`
--

LOCK TABLES `datatypestore` WRITE;
/*!40000 ALTER TABLE `datatypestore` DISABLE KEYS */;
INSERT INTO `datatypestore` VALUES ('masterkube','latlong','','','');
/*!40000 ALTER TABLE `datatypestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementsrepository`
--

DROP TABLE IF EXISTS `elementsrepository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementsrepository` (
  `DomainName` varchar(100) NOT NULL,
  `ElementName` varchar(100) NOT NULL,
  `ElementType` varchar(10) NOT NULL,
  `DependentElementName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DomainName`,`ElementName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementsrepository`
--

LOCK TABLES `elementsrepository` WRITE;
/*!40000 ALTER TABLE `elementsrepository` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementsrepository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalnamestore`
--

DROP TABLE IF EXISTS `externalnamestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalnamestore` (
  `DomainName` varchar(100) NOT NULL,
  `ElementName` varchar(40) NOT NULL,
  `ElementUrl` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalnamestore`
--

LOCK TABLES `externalnamestore` WRITE;
/*!40000 ALTER TABLE `externalnamestore` DISABLE KEYS */;
/*!40000 ALTER TABLE `externalnamestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interactionscounter`
--

DROP TABLE IF EXISTS `interactionscounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interactionscounter` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `InteractionCount` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactionscounter`
--

LOCK TABLES `interactionscounter` WRITE;
/*!40000 ALTER TABLE `interactionscounter` DISABLE KEYS */;
INSERT INTO `interactionscounter` VALUES ('masterkube','User','AddCountry',1),('masterkube','User','AddVessel',2),('masterkube','User','AddService',1),('masterkube','User','AddCharge',1),('masterkube','User','AddContainerType',1),('masterkube','User','AddTaxJurisdiction',4),('masterkube','User','AddState',4),('masterkube','User','AddGeoLocation',1),('masterkube','User','AddPrincipalCustomer',1),('masterkube','User','AddPartner',1),('masterkube','User','AddVoyage',3),('masterkube','Voyage','AddGeoLocationOfVoyage',1),('masterkube','GeoLocationOfVoyage','AddContainerProcess',1),('masterkube','ContainerProcess','AddExportTDR',1),('masterkube','User','CreatePayment',2),('masterkube','GeoLocation','EditGeoLocation',1);
/*!40000 ALTER TABLE `interactionscounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interactionspaceask`
--

DROP TABLE IF EXISTS `interactionspaceask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interactionspaceask` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `SequenceId` varchar(100) NOT NULL,
  `ChoiceId` varchar(10) DEFAULT NULL,
  `FormatPattern` varchar(245) NOT NULL,
  `LockFlag` varchar(1) NOT NULL DEFAULT '0',
  `NameLock` varchar(1) NOT NULL DEFAULT '0',
  `IsNameInternal` varchar(1) NOT NULL DEFAULT '0',
  `CreationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  KEY `uid` (`uid`),
  KEY `askNameIndex` (`DomainName`,`ProcessName`,`ProcessId`,`ActionName`,`SequenceId`,`CreationTime`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactionspaceask`
--

LOCK TABLES `interactionspaceask` WRITE;
/*!40000 ALTER TABLE `interactionspaceask` DISABLE KEYS */;
/*!40000 ALTER TABLE `interactionspaceask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interactionspacetell`
--

DROP TABLE IF EXISTS `interactionspacetell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interactionspacetell` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `SequenceId` varchar(100) NOT NULL,
  `ChoiceId` varchar(10) DEFAULT NULL,
  `FormatPattern` varchar(245) NOT NULL,
  `LockFlag` varchar(1) NOT NULL DEFAULT '0',
  `NameLock` varchar(1) NOT NULL DEFAULT '0',
  `IsNameInternal` varchar(1) NOT NULL DEFAULT '0',
  `CreationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  KEY `uid` (`uid`),
  KEY `tellNameIndex` (`DomainName`,`ProcessName`,`ProcessId`,`ActionName`,`SequenceId`,`CreationTime`)
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactionspacetell`
--

LOCK TABLES `interactionspacetell` WRITE;
/*!40000 ALTER TABLE `interactionspacetell` DISABLE KEYS */;
/*!40000 ALTER TABLE `interactionspacetell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interactionspacetimer`
--

DROP TABLE IF EXISTS `interactionspacetimer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interactionspacetimer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `SignalDomainName` varchar(100) NOT NULL,
  `SignalProcessName` varchar(100) NOT NULL,
  `SignalProcessId` varchar(100) NOT NULL,
  `SignalActionName` varchar(100) NOT NULL,
  `SignalSequenceId` varchar(100) NOT NULL,
  `SignalFormatPattern` varchar(245) NOT NULL,
  `SignalOperationType` varchar(1) NOT NULL,
  `LockFlag` varchar(1) NOT NULL DEFAULT '0',
  `CreationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimerName` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactionspacetimer`
--

LOCK TABLES `interactionspacetimer` WRITE;
/*!40000 ALTER TABLE `interactionspacetimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `interactionspacetimer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkprocessnamestore`
--

DROP TABLE IF EXISTS `linkprocessnamestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkprocessnamestore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `SequenceId` varchar(100) NOT NULL,
  `OperationType` varchar(1) NOT NULL,
  `LinkDomainName` varchar(100) NOT NULL,
  `LinkProcessName` varchar(100) NOT NULL,
  `LinkProcessId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkprocessnamestore`
--

LOCK TABLES `linkprocessnamestore` WRITE;
/*!40000 ALTER TABLE `linkprocessnamestore` DISABLE KEYS */;
INSERT INTO `linkprocessnamestore` VALUES ('masterkube','State','State-1','SendChannelToRecordGeoLocationOfThisState','28','1','masterkube','State','State-1'),('masterkube','State','State-1','ShutDownGeoLocationOfThisState','20','1','masterkube','GeoLocation','GeoLocation-1');
/*!40000 ALTER TABLE `linkprocessnamestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainemployee`
--

DROP TABLE IF EXISTS `mainemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainemployee` (
  `StaffID` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Salutation` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `DateOfBirth` varchar(45) NOT NULL,
  `DateOfJoining` varchar(45) NOT NULL,
  `DateOfRelieving` varchar(45) NOT NULL,
  `DoctorLicenseNumber` varchar(45) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Department` varchar(45) NOT NULL,
  `WorkStatus` varchar(45) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `ZipCode` varchar(45) NOT NULL,
  `EmailId` varchar(45) NOT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `LanlineNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`StaffID`),
  UNIQUE KEY `StaffID_UNIQUE` (`StaffID`),
  UNIQUE KEY `Password_UNIQUE` (`Password`),
  UNIQUE KEY `FirstName_UNIQUE` (`FirstName`),
  UNIQUE KEY `LastName_UNIQUE` (`LastName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainemployee`
--

LOCK TABLES `mainemployee` WRITE;
/*!40000 ALTER TABLE `mainemployee` DISABLE KEYS */;
/*!40000 ALTER TABLE `mainemployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterkubefilesequence`
--

DROP TABLE IF EXISTS `masterkubefilesequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterkubefilesequence` (
  `CurrentSequenceId` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterkubefilesequence`
--

LOCK TABLES `masterkubefilesequence` WRITE;
/*!40000 ALTER TABLE `masterkubefilesequence` DISABLE KEYS */;
INSERT INTO `masterkubefilesequence` VALUES (0);
/*!40000 ALTER TABLE `masterkubefilesequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterkubesequence`
--

DROP TABLE IF EXISTS `masterkubesequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterkubesequence` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `CurrentSequenceId` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterkubesequence`
--

LOCK TABLES `masterkubesequence` WRITE;
/*!40000 ALTER TABLE `masterkubesequence` DISABLE KEYS */;
INSERT INTO `masterkubesequence` VALUES ('masterkube','Country',1),('masterkube','Vessel',2),('masterkube','Service',1),('masterkube','Charge',1),('masterkube','ContainerType',1),('masterkube','TaxJurisdiction',4),('masterkube','State',4),('masterkube','GeoLocation',1),('masterkube','Customer',1),('masterkube','Partner',1),('masterkube','Voyage',3),('masterkube','GeoLocationOfVoyage',1),('masterkube','ContainerProcess',1),('masterkube','Payment',2);
/*!40000 ALTER TABLE `masterkubesequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namecomparatorresources`
--

DROP TABLE IF EXISTS `namecomparatorresources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namecomparatorresources` (
  `DomainName` varchar(100) NOT NULL,
  `ComparatorId` varchar(50) NOT NULL,
  `ComparatorIdentifier` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namecomparatorresources`
--

LOCK TABLES `namecomparatorresources` WRITE;
/*!40000 ALTER TABLE `namecomparatorresources` DISABLE KEYS */;
/*!40000 ALTER TABLE `namecomparatorresources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namecomparators`
--

DROP TABLE IF EXISTS `namecomparators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namecomparators` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `ComparatorId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namecomparators`
--

LOCK TABLES `namecomparators` WRITE;
/*!40000 ALTER TABLE `namecomparators` DISABLE KEYS */;
/*!40000 ALTER TABLE `namecomparators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namestore`
--

DROP TABLE IF EXISTS `namestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namestore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `Name` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namestore`
--

LOCK TABLES `namestore` WRITE;
/*!40000 ALTER TABLE `namestore` DISABLE KEYS */;
/*!40000 ALTER TABLE `namestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namevalidatorresources`
--

DROP TABLE IF EXISTS `namevalidatorresources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namevalidatorresources` (
  `DomainName` varchar(100) NOT NULL,
  `ValidatorId` varchar(50) NOT NULL,
  `ValidatorIdentifier` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namevalidatorresources`
--

LOCK TABLES `namevalidatorresources` WRITE;
/*!40000 ALTER TABLE `namevalidatorresources` DISABLE KEYS */;
/*!40000 ALTER TABLE `namevalidatorresources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namevalidators`
--

DROP TABLE IF EXISTS `namevalidators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namevalidators` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ActionName` varchar(100) NOT NULL,
  `ValidatorId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namevalidators`
--

LOCK TABLES `namevalidators` WRITE;
/*!40000 ALTER TABLE `namevalidators` DISABLE KEYS */;
/*!40000 ALTER TABLE `namevalidators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payloadbooleanstore`
--

DROP TABLE IF EXISTS `payloadbooleanstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payloadbooleanstore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `HierarchyLevel` int(11) NOT NULL,
  `InstanceId` varchar(100) NOT NULL,
  `DataElementName` varchar(100) NOT NULL,
  `DataElementValue` varchar(1) NOT NULL DEFAULT '0',
  KEY `payloadBooleanIndex` (`DomainName`,`ProcessName`,`ProcessId`,`DataElementName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payloadbooleanstore`
--

LOCK TABLES `payloadbooleanstore` WRITE;
/*!40000 ALTER TABLE `payloadbooleanstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `payloadbooleanstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payloaddatestore`
--

DROP TABLE IF EXISTS `payloaddatestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payloaddatestore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `HierarchyLevel` int(11) NOT NULL,
  `InstanceId` varchar(100) NOT NULL,
  `DataElementName` varchar(100) NOT NULL,
  `DataElementValue` datetime NOT NULL,
  KEY `payloadDateIndex` (`DomainName`,`ProcessName`,`ProcessId`,`DataElementName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payloaddatestore`
--

LOCK TABLES `payloaddatestore` WRITE;
/*!40000 ALTER TABLE `payloaddatestore` DISABLE KEYS */;
/*!40000 ALTER TABLE `payloaddatestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payloadfilestore`
--

DROP TABLE IF EXISTS `payloadfilestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payloadfilestore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `HierarchyLevel` int(11) NOT NULL,
  `InstanceId` varchar(100) NOT NULL,
  `DataElementName` varchar(100) NOT NULL,
  `DataElementValue` varchar(100) NOT NULL,
  KEY `payloadFileStoreIndex` (`DomainName`,`ProcessName`,`ProcessId`,`DataElementName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payloadfilestore`
--

LOCK TABLES `payloadfilestore` WRITE;
/*!40000 ALTER TABLE `payloadfilestore` DISABLE KEYS */;
/*!40000 ALTER TABLE `payloadfilestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payloadnumberstore`
--

DROP TABLE IF EXISTS `payloadnumberstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payloadnumberstore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `HierarchyLevel` int(11) NOT NULL,
  `InstanceId` varchar(100) NOT NULL,
  `DataElementName` varchar(100) NOT NULL,
  `DataElementValue` decimal(15,4) NOT NULL,
  KEY `payloadNumberIndex` (`DomainName`,`ProcessName`,`ProcessId`,`DataElementName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payloadnumberstore`
--

LOCK TABLES `payloadnumberstore` WRITE;
/*!40000 ALTER TABLE `payloadnumberstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `payloadnumberstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payloadsignalnamestore`
--

DROP TABLE IF EXISTS `payloadsignalnamestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payloadsignalnamestore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `HierarchyLevel` int(11) NOT NULL,
  `InstanceId` varchar(100) NOT NULL,
  `DataElementName` varchar(100) NOT NULL,
  `SignalDomainName` varchar(100) NOT NULL,
  `SignalProcessName` varchar(100) NOT NULL,
  `SignalProcessId` varchar(100) NOT NULL,
  `SignalActionName` varchar(100) NOT NULL,
  `SignalSequenceId` varchar(100) NOT NULL,
  `SignalFormatPattern` varchar(245) NOT NULL,
  `SignalOperationType` varchar(1) NOT NULL,
  KEY `payloadSignalNameIndex` (`DomainName`,`ProcessName`,`ProcessId`,`DataElementName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payloadsignalnamestore`
--

LOCK TABLES `payloadsignalnamestore` WRITE;
/*!40000 ALTER TABLE `payloadsignalnamestore` DISABLE KEYS */;
/*!40000 ALTER TABLE `payloadsignalnamestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payloadstringstore`
--

DROP TABLE IF EXISTS `payloadstringstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payloadstringstore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `HierarchyLevel` int(11) NOT NULL,
  `InstanceId` varchar(100) NOT NULL,
  `DataElementName` varchar(100) NOT NULL,
  `DataElementValue` varchar(1000) NOT NULL,
  KEY `payloadStringIndex` (`DomainName`,`ProcessName`,`ProcessId`,`DataElementName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payloadstringstore`
--

LOCK TABLES `payloadstringstore` WRITE;
/*!40000 ALTER TABLE `payloadstringstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `payloadstringstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processrepository`
--

DROP TABLE IF EXISTS `processrepository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processrepository` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `Process` blob NOT NULL,
  PRIMARY KEY (`DomainName`,`ProcessName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processrepository`
--

LOCK TABLES `processrepository` WRITE;
/*!40000 ALTER TABLE `processrepository` DISABLE KEYS */;
/*!40000 ALTER TABLE `processrepository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processstore`
--

DROP TABLE IF EXISTS `processstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processstore` (
  `DomainName` varchar(100) NOT NULL,
  `ProcessName` varchar(100) NOT NULL,
  `ProcessId` varchar(100) NOT NULL,
  `ProcessInstance` longblob NOT NULL,
  `LockFlag` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DomainName`,`ProcessName`,`ProcessId`),
  KEY `ProcessStoreIndex` (`DomainName`,`ProcessName`,`ProcessId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processstore`
--

LOCK TABLES `processstore` WRITE;
/*!40000 ALTER TABLE `processstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `processstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `DomainName` varchar(100) NOT NULL,
  `IsAdmin` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin','masterkube','1'),('User1','user1','masterkube','0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-29 21:27:16
