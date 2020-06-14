-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.11-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para agencia_viajes
CREATE DATABASE IF NOT EXISTS `agencia_viajes` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `agencia_viajes`;

-- Volcando estructura para tabla agencia_viajes.testimoniales
CREATE TABLE IF NOT EXISTS `testimoniales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla agencia_viajes.testimoniales: ~6 rows (aproximadamente)
DELETE FROM `testimoniales`;
/*!40000 ALTER TABLE `testimoniales` DISABLE KEYS */;
INSERT INTO `testimoniales` (`id`, `nombre`, `email`, `mensaje`) VALUES
	(1, 'Andres', 'andres_ioi@hotmail.com', 'Estuvieron chidas las vacaciones'),
	(2, 'Adolfo', 'adolfo@gmail.com', 'Estuvieron cool las vacaciones'),
	(3, 'Daniel', 'dan@hotmail.com', 'Donec fermentum ex leo, nec interdum lorem tristique quis. Phasellus quis nibh sed quam rhoncus maximus. Phasellus eget purus lobortis, tempus velit vel, rhoncus lacus. Nam scelerisque eget libero id consectetur. Proin eget lobortis orci. Nulla mollis aliquam orci at viverra. Nullam eu nulla ut leo vulputate lobortis vitae et nulla. Quisque porta tortor feugiat odio porttitor sodales. Sed tincidunt neque a sapien volutpat vestibulum. '),
	(4, 'Andres', 'adolfo@gmail.com', 'Donec fermentum ex leo, nec interdum lorem tristique quis. Phasellus quis nibh sed quam rhoncus maximus. Phasellus eget purus lobortis, tempus velit vel, rhoncus lacus. Nam scelerisque eget libero id consectetur. Proin eget lobortis orci. Nulla mollis aliquam orci at viverra. Nullam eu nulla ut leo vulputate lobortis vitae et nulla. Quisque porta tortor feugiat odio porttitor sodales. Sed tincidunt neque a sapien volutpat vestibulum. '),
	(5, 'Andres', 'dan@hotmail.com', 'asdasd'),
	(6, 'Andres', 'asdn@jasdn.vom', 'asdasdasdasd');
/*!40000 ALTER TABLE `testimoniales` ENABLE KEYS */;

-- Volcando estructura para tabla agencia_viajes.viajes
CREATE TABLE IF NOT EXISTS `viajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `fecha_ida` date NOT NULL,
  `fecha_vuelta` date NOT NULL,
  `imagen` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `disponibles` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla agencia_viajes.viajes: ~6 rows (aproximadamente)
DELETE FROM `viajes`;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` (`id`, `titulo`, `precio`, `fecha_ida`, `fecha_vuelta`, `imagen`, `descripcion`, `disponibles`) VALUES
	(1, 'Viaje a Roma, Italia Este Verano', '50000', '2019-06-24', '2019-06-30', 'roma', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', '32'),
	(2, 'Viaje a Canada ', '60000', '2019-07-19', '2019-07-19', 'canada', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', '25'),
	(3, 'Viaje a Grecia ', '40000', '2019-08-29', '2019-09-15', 'grecia', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', '18'),
	(4, 'Visita Londres Inglaterra', '8000', '2019-09-22', '2019-10-03', 'londres', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', '22'),
	(5, 'Viaje a Rio de Janeiro en Verano', '50000', '2019-04-16', '2019-04-25', 'rio', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', '23'),
	(6, 'Viaje a Paris, Francia en Primavera', '75000', '2019-04-03', '2019-04-10', 'paris', 'Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\r\n\r\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.', '14');
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
