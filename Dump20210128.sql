CREATE DATABASE  IF NOT EXISTS `recode` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recode`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: recode
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro` (
  `idCadastro` int NOT NULL AUTO_INCREMENT,
  `senha` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `idLogin` int DEFAULT NULL,
  PRIMARY KEY (`idCadastro`),
  KEY `idLogin` (`idLogin`),
  CONSTRAINT `cadastro_ibfk_1` FOREIGN KEY (`idLogin`) REFERENCES `login` (`idLogin`),
  CONSTRAINT `cadastro_ibfk_2` FOREIGN KEY (`idLogin`) REFERENCES `login` (`idLogin`),
  CONSTRAINT `cadastro_ibfk_3` FOREIGN KEY (`idLogin`) REFERENCES `login` (`idLogin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `idcomentario` int NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `telefone` varchar(12) DEFAULT NULL,
  `comentario` varchar(200) NOT NULL,
  `idLogin` int DEFAULT NULL,
  PRIMARY KEY (`idcomentario`),
  KEY `idLogin` (`idLogin`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idLogin`) REFERENCES `login` (`idLogin`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idLogin`) REFERENCES `login` (`idLogin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `controle`
--

DROP TABLE IF EXISTS `controle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controle` (
  `idcontrole` int NOT NULL AUTO_INCREMENT,
  `idade` date DEFAULT NULL,
  `comportamentoNatureza` varchar(8) DEFAULT NULL,
  `custosCondominio` varchar(8) DEFAULT NULL,
  `descarteLixo` varchar(8) DEFAULT NULL,
  `mudancaComunidade` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`idcontrole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `idLogin` int NOT NULL AUTO_INCREMENT,
  `senha` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `idPesquisa` int DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idLogin`),
  KEY `idPesquisa` (`idPesquisa`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`idPesquisa`) REFERENCES `login` (`idLogin`),
  CONSTRAINT `login_ibfk_2` FOREIGN KEY (`idPesquisa`) REFERENCES `login` (`idLogin`),
  CONSTRAINT `login_ibfk_3` FOREIGN KEY (`idPesquisa`) REFERENCES `login` (`idLogin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pesquisa`
--

DROP TABLE IF EXISTS `pesquisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesquisa` (
  `idPesquisa` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPesquisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 12:00:32
