-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2024 a las 17:55:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpeweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiseta`
--

CREATE TABLE `camiseta` (
  `id_camiseta` int(10) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `id_equipo` int(10) NOT NULL,
  `temporada` varchar(4) NOT NULL,
  `tipo_camiseta` text NOT NULL,
  `precio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `camiseta`
--

INSERT INTO `camiseta` (`id_camiseta`, `imagen`, `id_equipo`, `temporada`, `tipo_camiseta`, `precio`) VALUES
(1, 'TitularRiver2024.png', 1, '2024', 'Titular', '80000'),
(2, 'SuplenteRiver2024.png', 1, '2024', 'Suplente', '75000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(10) NOT NULL,
  `nombre` text NOT NULL,
  `ciudad` text NOT NULL,
  `estadio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `ciudad`, `estadio`) VALUES
(1, 'River Plate', 'Buenos Aires', 'Mâs Monumental'),
(2, 'Boca Juniors', 'Buenos Aires', 'Alberto José Armando'),
(3, 'Talleres', 'Ciudad de Cordoba', 'Mario Alberto Kempes');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camiseta`
--
ALTER TABLE `camiseta`
  ADD PRIMARY KEY (`id_camiseta`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camiseta`
--
ALTER TABLE `camiseta`
  MODIFY `id_camiseta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camiseta`
--
ALTER TABLE `camiseta`
  ADD CONSTRAINT `camiseta_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;