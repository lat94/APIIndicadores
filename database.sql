-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.15-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for baseindicadores
CREATE DATABASE IF NOT EXISTS `baseindicadores` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `baseindicadores`;

-- Dumping structure for table baseindicadores.indicadores
CREATE TABLE IF NOT EXISTS `indicadores` (
  `Sigla` varchar(10) NOT NULL,
  `NomeIndicador` varchar(60) NOT NULL,
  `UltimaAtualizacao` datetime NOT NULL,
  `Valor` decimal(18,4) NOT NULL,
  PRIMARY KEY (`Sigla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table baseindicadores.indicadores: ~3 rows (approximately)
DELETE FROM `indicadores`;
/*!40000 ALTER TABLE `indicadores` DISABLE KEYS */;
INSERT INTO `indicadores` (`Sigla`, `NomeIndicador`, `UltimaAtualizacao`, `Valor`) VALUES
	('IPCA', 'Indice Nacional de Precos ao Consumidor Amplo', '2017-04-30 00:00:00', 0.0014),
	('SALARIO', 'Salario minimo', '2017-01-01 00:00:00', 937.0000),
	('SELIC', 'Taxa Referencial - Sistema de Liquidacao e Custodia', '2017-04-12 00:00:00', 0.1125);
/*!40000 ALTER TABLE `indicadores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
