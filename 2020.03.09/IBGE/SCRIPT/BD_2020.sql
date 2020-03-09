-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.13 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para ibge
CREATE DATABASE IF NOT EXISTS `ibge` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ibge`;


-- Copiando estrutura para tabela ibge.cidade
CREATE TABLE IF NOT EXISTS `cidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL DEFAULT '0',
  `id_uf` int(11) NOT NULL DEFAULT '0',
  `numeroHab` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cidade_id_uf` (`id_uf`),
  CONSTRAINT `FK_cidade_id_uf` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela ibge.cidade: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`id`, `nome`, `id_uf`, `numeroHab`) VALUES
	(1, 'Lins', 1, 2000),
	(2, 'Cafelandia', 1, 30000),
	(3, 'Bauru', 1, 1542000),
	(4, 'Toranto', 7, 15254000),
	(5, 'Hamilton', 7, 15240000),
	(6, 'London', 7, 14582000),
	(7, 'Vancouver', 8, 1547000),
	(8, 'Victoria', 8, 1572000),
	(9, 'Delta', 8, 830000),
	(10, 'Brooks', 5, 1555000),
	(11, 'Banff', 5, 12550000),
	(12, 'Calgary', 5, 154780000),
	(13, 'Rio de Janeiro', 2, 14524000),
	(14, 'Angra', 2, 15422000),
	(15, 'Parati', 2, 15245000),
	(16, 'Curitiba', 3, 250000),
	(17, 'Londrina', 3, 35200),
	(18, 'Maringa', 3, 456000),
	(19, 'Nova York', 4, 65000),
	(20, 'Buffalo', 4, 154000),
	(21, 'Albany', 4, 365000),
	(22, 'Boston', 5, 65000000),
	(23, 'Newton', 5, 1054500),
	(24, 'Cambridge', 5, 154800),
	(25, 'Los Angeles', 9, 51541500),
	(26, 'São Francisco', 9, 45215500),
	(27, 'San Diego', 9, 1571200);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;


-- Copiando estrutura para tabela ibge.país
CREATE TABLE IF NOT EXISTS `país` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela ibge.país: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `país` DISABLE KEYS */;
INSERT INTO `país` (`id`, `nome`) VALUES
	(1, 'Brasil'),
	(2, 'Estados Unidos'),
	(3, 'Canada');
/*!40000 ALTER TABLE `país` ENABLE KEYS */;


-- Copiando estrutura para tabela ibge.uf
CREATE TABLE IF NOT EXISTS `uf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL DEFAULT '0',
  `id_pais` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_uf_id_pais` (`id_pais`),
  CONSTRAINT `FK_uf_id_pais` FOREIGN KEY (`id_pais`) REFERENCES `país` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela ibge.uf: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` (`id`, `nome`, `id_pais`) VALUES
	(1, 'São Paulo', 1),
	(2, 'Rio de Janeiro\r\n', 1),
	(3, 'Parana', 1),
	(4, 'Nova York', 2),
	(5, 'Boston', 2),
	(6, 'California', 2),
	(7, 'Ontario', 3),
	(8, 'Columbia Britanica', 3),
	(9, 'Alberta', 3);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
