-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2021 a las 06:56:49
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecnicouni_variablesdisponibles`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `spNew_Variable_Disponible` (IN `monedaInsert` INT, IN `descripcionInsert` VARCHAR(75))  BEGIN
INSERT INTO `tecnicouni_variablesdisponibles`.`cat_moneda`
(`moneda`,
`descripcion`)
VALUES
(monedaInsert,
descripcionInsert);

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_moneda`
--

CREATE TABLE `cat_moneda` (
  `id` int(11) NOT NULL,
  `moneda` int(11) NOT NULL,
  `descripcion` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat_moneda`
--

INSERT INTO `cat_moneda` (`id`, `moneda`, `descripcion`) VALUES
(1, 2, 'Dólares de EE.UU.'),
(2, 4, 'Francos Belgas'),
(3, 6, 'Francos Franceses'),
(4, 8, 'Liras Italianas'),
(5, 12, 'Pesetas Españolas'),
(6, 14, 'Florines Holandeses'),
(7, 16, 'Colones Costarricenses'),
(8, 18, 'Pesos Mexicanos'),
(9, 22, 'Bolivares Venezolanos'),
(10, 24, 'Euro'),
(11, 26, 'DEG'),
(12, 28, 'Unidad de Cuenta del BID'),
(13, 30, 'Real Brasileño'),
(14, 32, 'Dólar Hong Kong'),
(15, 34, 'Yuan China'),
(16, 36, 'Rupee India'),
(17, 38, 'Peso Colombiano'),
(18, 40, 'Ringgit Malasia'),
(19, 42, 'Zloty'),
(20, 2, 'Dólares de EE.UU.'),
(21, 4, 'Francos Belgas'),
(22, 6, 'Francos Franceses'),
(23, 8, 'Liras Italianas'),
(24, 12, 'Pesetas Españolas'),
(25, 14, 'Florines Holandeses'),
(26, 16, 'Colones Costarricenses'),
(27, 18, 'Pesos Mexicanos'),
(28, 22, 'Bolivares Venezolanos'),
(29, 24, 'Euro'),
(30, 26, 'DEG'),
(31, 28, 'Unidad de Cuenta del BID'),
(32, 30, 'Real Brasileño'),
(33, 32, 'Dólar Hong Kong'),
(34, 34, 'Yuan China'),
(35, 36, 'Rupee India'),
(36, 38, 'Peso Colombiano'),
(37, 40, 'Ringgit Malasia'),
(38, 42, 'Zloty'),
(39, 2, 'Dólares de EE.UU.'),
(40, 4, 'Francos Belgas'),
(41, 6, 'Francos Franceses'),
(42, 8, 'Liras Italianas'),
(43, 12, 'Pesetas Españolas'),
(44, 14, 'Florines Holandeses'),
(45, 16, 'Colones Costarricenses'),
(46, 18, 'Pesos Mexicanos'),
(47, 22, 'Bolivares Venezolanos'),
(48, 24, 'Euro'),
(49, 26, 'DEG'),
(50, 28, 'Unidad de Cuenta del BID'),
(51, 30, 'Real Brasileño'),
(52, 32, 'Dólar Hong Kong'),
(53, 34, 'Yuan China'),
(54, 36, 'Rupee India'),
(55, 38, 'Peso Colombiano'),
(56, 40, 'Ringgit Malasia'),
(57, 42, 'Zloty');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_moneda`
--
ALTER TABLE `cat_moneda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_moneda`
--
ALTER TABLE `cat_moneda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
