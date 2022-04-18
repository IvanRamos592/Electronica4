-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2017 a las 20:39:54
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `casabeto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresoproductos`
--

CREATE TABLE IF NOT EXISTS `ingresoproductos` (
  `cod_producto` varchar(40) NOT NULL,
  `cantidad` int(40) NOT NULL,
  `precio_entrada` int(11) NOT NULL,
  `precio_salida` int(11) NOT NULL,
  `ganancia` int(11) NOT NULL,
  `cod_prove` varchar(40) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresoproductos`
--

INSERT INTO `ingresoproductos` (`cod_producto`, `cantidad`, `precio_entrada`, `precio_salida`, `ganancia`, `cod_prove`, `fecha`) VALUES
('TV32J400', 10, 1900, 2000, 100, '989787UJJ', '2017-10-15 22:27:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroproductos`
--

CREATE TABLE IF NOT EXISTS `registroproductos` (
  `cod_producto` varchar(30) NOT NULL,
  `nombre_producto` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registroproductos`
--

INSERT INTO `registroproductos` (`cod_producto`, `nombre_producto`, `descripcion`, `fecha`) VALUES
('TV32J400', 'SONY BRAVIA 42 PULGADAS', 'TELEVISOR', '2017-10-14 20:47:51'),
('TV32J410', 'SAMSUNG DE 18 PULGADAS', 'TELEVISOR LED', '2017-10-14 21:39:33'),
('TV32J420', 'SONY BRAVIA 14 PULGADAS', 'TELEVISOR', '2017-10-14 20:59:32'),
('TV32J421', 'SONY 32 PULGADAS', 'TELEVISOR LED', '2017-10-14 21:38:16'),
('TV32J426', 'SONY 52 PULGADAS', 'TELEVISOR', '2017-10-14 21:34:28'),
('TV32J430', 'SAMSUNG DE 60 PULGADAS', 'TELEVISOR LED', '2017-10-14 21:35:09'),
('TV32J4300', 'SONY BRAVIA 32 PULGADAS', 'TELEVISOR LED', '2017-10-14 20:58:44'),
('TV32J4500', 'SAMSUNG DE 20 PULGADAS', 'TELEVISOR LED', '2017-10-14 21:33:43'),
('TV32J460', 'SAMSUNG DE 45 PULGADAS', 'TELEVISOR LCD', '2017-10-14 21:32:10'),
('TVJ54000', 'SONY 24 PULGADAS', 'TELEVISOR LCD', '2017-10-14 21:31:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroprovedor`
--

CREATE TABLE IF NOT EXISTS `registroprovedor` (
  `cod_prove` varchar(40) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `nit` varchar(40) NOT NULL,
  `celular` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registroprovedor`
--

INSERT INTO `registroprovedor` (`cod_prove`, `nombre`, `nit`, `celular`) VALUES
('000-01', 'GRISELDRGEG', '34248867', '72687832'),
('989787UJJ', 'ORLANDO', '9873592', '91284'),
('fwegwv', 'ANABEL', '20709', '889668');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `contra` varchar(40) NOT NULL,
  `usuario` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `contra`, `usuario`) VALUES
(3, 'CATALINA', 'CHOQUE', '202020', 'CATITA'),
(4, 'NATALY', 'CARVAJAL CHOQUE', '73724587', 'CHINOS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registroproductos`
--
ALTER TABLE `registroproductos`
 ADD PRIMARY KEY (`cod_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
