-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: patientdischarge_db
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `followup_plan`
--

DROP TABLE IF EXISTS `followup_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followup_plan` (
  `patient_id` int(111) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `adate` date NOT NULL,
  `place` varchar(35) NOT NULL,
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `followup_plan_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `identification` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup_plan`
--

LOCK TABLES `followup_plan` WRITE;
/*!40000 ALTER TABLE `followup_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `followup_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hispathology`
--

DROP TABLE IF EXISTS `hispathology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hispathology` (
  `patient_id` int(111) DEFAULT NULL,
  `hispath_report` varchar(65) DEFAULT NULL,
  KEY `hispathology_ibfk_1_idx` (`patient_id`),
  CONSTRAINT `hispathology_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `identification` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hispathology`
--

LOCK TABLES `hispathology` WRITE;
/*!40000 ALTER TABLE `hispathology` DISABLE KEYS */;
/*!40000 ALTER TABLE `hispathology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identification`
--

DROP TABLE IF EXISTS `identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identification` (
  `patient_id` int(111) NOT NULL,
  `rgt_no` char(10) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(16) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `allergy` varchar(40) NOT NULL,
  `rank` varchar(30) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `place` varchar(25) NOT NULL,
  `doa` date NOT NULL,
  `dod` date NOT NULL,
  `discharge_dx` varchar(120) NOT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  KEY `identification_ibfk_1_idx` (`rgt_no`),
  CONSTRAINT `identification_ibfk_1` FOREIGN KEY (`rgt_no`) REFERENCES `patient` (`rgt_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identification`
--

LOCK TABLES `identification` WRITE;
/*!40000 ALTER TABLE `identification` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imaging`
--

DROP TABLE IF EXISTS `imaging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imaging` (
  `patient_id` int(111) DEFAULT NULL,
  `liver` varchar(60) DEFAULT NULL,
  `gb` varchar(30) DEFAULT NULL,
  `biliary_tree` varchar(30) DEFAULT NULL,
  `pancreas` varchar(30) DEFAULT NULL,
  `portal_vein` varchar(30) DEFAULT NULL,
  `kidneys` varchar(60) DEFAULT NULL,
  `urinary_bladder` varchar(30) DEFAULT NULL,
  `others` varchar(60) DEFAULT NULL,
  `dx` varchar(50) DEFAULT NULL,
  `ct(chest)` varchar(60) DEFAULT NULL,
  `mri/mrcp` varchar(60) DEFAULT NULL,
  KEY `imaging_ibfk_1_idx` (`patient_id`),
  CONSTRAINT `imaging_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `identification` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imaging`
--

LOCK TABLES `imaging` WRITE;
/*!40000 ALTER TABLE `imaging` DISABLE KEYS */;
/*!40000 ALTER TABLE `imaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_investigation`
--

DROP TABLE IF EXISTS `lab_investigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_investigation` (
  `lab_date` date NOT NULL,
  `patient_id` int(111) DEFAULT NULL,
  `bilirubin(total)` varchar(12) DEFAULT NULL,
  `bilirubin(direct)` varchar(12) DEFAULT NULL,
  `alt/sgpt` varchar(12) DEFAULT NULL,
  `ast/sgot` varchar(12) DEFAULT NULL,
  `alp` varchar(12) DEFAULT NULL,
  `ggt` varchar(12) DEFAULT NULL,
  `total_protein` varchar(12) DEFAULT NULL,
  `albumin` varchar(12) DEFAULT NULL,
  `globulin` varchar(12) DEFAULT NULL,
  `urea` varchar(12) DEFAULT NULL,
  `creatinine` varchar(12) DEFAULT NULL,
  `sodium` varchar(12) DEFAULT NULL,
  `potassium` varchar(12) DEFAULT NULL,
  `chloride` varchar(12) DEFAULT NULL,
  `bicarbonate` varchar(12) DEFAULT NULL,
  `glucose` varchar(12) DEFAULT NULL,
  `hb_alc` varchar(4) DEFAULT NULL,
  `hb` varchar(12) DEFAULT NULL,
  `wbc` varchar(12) DEFAULT NULL,
  `plt` varchar(5) DEFAULT NULL,
  `esr` varchar(12) DEFAULT NULL,
  `pt` varchar(12) DEFAULT NULL,
  `inr` varchar(12) DEFAULT NULL,
  `hbs_ag` varchar(10) DEFAULT NULL,
  `hbv_dna` varchar(5) DEFAULT NULL,
  `anti-hcv` varchar(10) DEFAULT NULL,
  `hcv_rna` varchar(7) DEFAULT NULL,
  `retroviral` varchar(10) DEFAULT NULL,
  `others` varchar(65) DEFAULT NULL,
  `stool` varchar(75) DEFAULT NULL,
  `urine` varchar(75) DEFAULT NULL,
  `fit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`lab_date`),
  KEY `lab_investigation_ibfk_1_idx` (`patient_id`),
  CONSTRAINT `lab_investigation_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `identification` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_investigation`
--

LOCK TABLES `lab_investigation` WRITE;
/*!40000 ALTER TABLE `lab_investigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_investigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `rgt_no` char(10) NOT NULL,
  `patient_id` int(111) DEFAULT NULL,
  PRIMARY KEY (`rgt_no`),
  KEY `patient_ibfk_1_idx` (`patient_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `identification` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedure`
--

DROP TABLE IF EXISTS `procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedure` (
  `patient_id` int(111) DEFAULT NULL,
  `ogd` varchar(35) DEFAULT NULL,
  `colonoscopy` varchar(35) DEFAULT NULL,
  `ercp` varchar(35) DEFAULT NULL,
  `eus` varchar(35) DEFAULT NULL,
  KEY `procedure_ibfk_1_idx` (`patient_id`),
  CONSTRAINT `procedure_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `identification` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedure`
--

LOCK TABLES `procedure` WRITE;
/*!40000 ALTER TABLE `procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
  `patient_id` int(111) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `speacialist` varchar(12) NOT NULL,
  `treatment` varchar(150) NOT NULL,
  KEY `treatment_ibfk_1_idx` (`patient_id`),
  CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `identification` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2019-10-11 16:10:49
