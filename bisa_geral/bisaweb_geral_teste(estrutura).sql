/*
SQLyog Ultimate
MySQL - 5.7.44 : Database - bisaweb_geral
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `consolidacao_dados_filiadosweb` */

CREATE TABLE `consolidacao_dados_filiadosweb` (
  `Consolidacao_Cliente` varchar(50) DEFAULT NULL,
  `Consolidacao_Campo` varchar(250) DEFAULT NULL,
  `Consolidacao_Descricao` varchar(250) DEFAULT NULL,
  `Consolidacao_Quantidade` decimal(10,2) DEFAULT NULL,
  `Consolidacao_Empresa` varchar(250) DEFAULT NULL,
  `Consolidacao_Predio` varchar(250) DEFAULT NULL,
  `Consolidacao_Ano` int(4) DEFAULT NULL,
  `Consolidacao_Mes` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `log` */

CREATE TABLE `log` (
  `Log_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Usuario` int(11) DEFAULT NULL,
  `Log_Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Log_Operacao` varchar(200) DEFAULT NULL,
  `Log_IdRegistro` int(11) DEFAULT NULL,
  `Log_DadosRegistro` text,
  `Log_Cliente` varchar(25) DEFAULT NULL,
  `Log_Sistema` varchar(20) DEFAULT NULL,
  `Log_DadosAdicionais` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Log_Id`),
  KEY `fk_Log_Usuario` (`Log_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=1818187 DEFAULT CHARSET=utf8;

/*Table structure for table `log_usuarios` */

CREATE TABLE `log_usuarios` (
  `Log_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Usuario` int(11) DEFAULT NULL,
  `Log_Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Log_Operacao` varchar(200) DEFAULT NULL,
  `Log_DadosAlterados` text,
  `Log_Cliente` varchar(25) DEFAULT NULL,
  `Log_DadosAdicionais` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Log_Id`),
  KEY `fk_Log_Usuario` (`Log_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=776 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
