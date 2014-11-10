-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sistemanf
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cUF` varchar(100) DEFAULT NULL,
  `cNF` varchar(100) DEFAULT NULL,
  `natOp` varchar(100) DEFAULT NULL,
  `indPag` varchar(100) DEFAULT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `nNF` varchar(100) DEFAULT NULL,
  `dEmi` varchar(100) DEFAULT NULL,
  `tpNF` varchar(100) DEFAULT NULL,
  `cMunFG` varchar(100) DEFAULT NULL,
  `tpImp` varchar(100) DEFAULT NULL,
  `tpEmis` varchar(100) DEFAULT NULL,
  `cDV` varchar(100) DEFAULT NULL,
  `tpAmb` varchar(100) DEFAULT NULL,
  `finNFe` varchar(100) DEFAULT NULL,
  `procEmi` varchar(100) DEFAULT NULL,
  `verProc` varchar(100) DEFAULT NULL,
  `CNPJ` varchar(100) DEFAULT NULL,
  `xNomeCliente` varchar(100) DEFAULT NULL,
  `enderEmit` varchar(100) DEFAULT NULL,
  `IE` varchar(100) DEFAULT NULL,
  `IM` varchar(100) DEFAULT NULL,
  `CNAE` varchar(100) DEFAULT NULL,
  `CRT` varchar(100) DEFAULT NULL,
  `CPF` varchar(100) DEFAULT NULL,
  `xNome` varchar(100) DEFAULT NULL,
  `enderDest` varchar(100) DEFAULT NULL,
  `IE2` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `prod` varchar(100) DEFAULT NULL,
  `imposto` varchar(100) DEFAULT NULL,
  `ICMSTot` varchar(100) DEFAULT NULL,
  `modFrete` varchar(100) DEFAULT NULL,
  `transporta` varchar(100) DEFAULT NULL,
  `vol` varchar(100) DEFAULT NULL,
  `infCpl` varchar(100) DEFAULT NULL,
  `modInfo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (1,'teste',NULL,'2014-11-08 20:35:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'teste','35140602009721000198550010000523051136272364-nfe.xml','2014-11-09 19:56:20','35','00094306','Venda','0','1','4472','2014-06-02','1','3550308','1','1','6','1','1','3','2.2.24','68417542000106','ONLINE COMERCIO E SERVI?OS DE PERSIANAS E BRINQUEDOS LTDA.','','ISENTO','20940840','0475899','1','41454081287','Celio Barbosa de Almeida','','113528950115','brassendako@hotmail.com','','','','0','','','Pedido N? 9654 - \"Documento emitido por EPP ou ME, optante pelo simples nacional, n?o gera direito a','55');
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-10  9:36:10
