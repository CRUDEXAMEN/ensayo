-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2024 a las 05:41:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--
CREATE DATABASE IF NOT EXISTS `examen` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `examen`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `sp_CrearFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CrearFactura` (IN `_NOMBRE` VARCHAR(100), IN `_TOTAL` VARCHAR(100))   BEGIN

INSERT INTO FACTURA(NOMBRE, TOTAL)
VALUES(_NOMBRE, _TOTAL);

END$$

DROP PROCEDURE IF EXISTS `sp_EliminarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EliminarFactura` (IN `_ID` INT)   BEGIN

DELETE FROM FACTURA WHERE ID = _ID;

END$$

DROP PROCEDURE IF EXISTS `sp_ListarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ListarFactura` ()   BEGIN

SELECT *
FROM FACTURA;

END$$

DROP PROCEDURE IF EXISTS `sp_ModificarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ModificarFactura` (IN `_ID` INT, IN `_NOMBRE` VARCHAR(100), IN `_TOTAL` VARCHAR(100))   BEGIN

UPDATE FACTURA SET NOMBRE = _NOMBRE, TOTAL = _TOTAL
WHERE ID = _ID;

END$$

DROP PROCEDURE IF EXISTS `sp_MostrarFactura`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MostrarFactura` (IN `_ID` INT)   BEGIN

SELECT * 
FROM FACTURA WHERE ID = _ID;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `TOTAL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID`, `NOMBRE`, `TOTAL`) VALUES
(1, 'sebastian', '9000000'),
(3, 'lili', '7800'),
(4, 'vicky', '7800');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
