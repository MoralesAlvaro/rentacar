-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2019 a las 03:30:26
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rentacar`
--
CREATE DATABASE IF NOT EXISTS `rentacar` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `rentacar`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio`
--

CREATE TABLE `accesorio` (
  `id_accesorio` int(11) NOT NULL,
  `accesorio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flota`
--

CREATE TABLE `flota` (
  `id_flota` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invetarioflota`
--

CREATE TABLE `invetarioflota` (
  `id_inventario` int(11) NOT NULL,
  `año_adquisicion` date NOT NULL,
  `precio_adquisicion` float NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `modelo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `año_auto` date NOT NULL,
  `motor` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `transmision` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `pasajeros` tinyint(4) NOT NULL,
  `equipaje` tinyint(1) NOT NULL,
  `aire` tinyint(1) NOT NULL,
  `combustible` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio_alquiler` float NOT NULL,
  `color` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tamaño` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `img_ruta` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `comentario` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dui` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  `iva` varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `id_reservacion` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `motorista` tinyint(1) NOT NULL,
  `lugar_entrega` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `lugar_retorno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  `fecha_retorno` date NOT NULL,
  `hora_entrega` time NOT NULL,
  `hora_retorno` time NOT NULL,
  `precio_alquiler` float NOT NULL,
  `accesorios` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `total_accesorio` float NOT NULL,
  `total_alquiler` float NOT NULL,
  `id_acccesorio` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `calve` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_usuario` tinyint(4) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorio`
--
ALTER TABLE `accesorio`
  ADD PRIMARY KEY (`id_accesorio`);

--
-- Indices de la tabla `flota`
--
ALTER TABLE `flota`
  ADD PRIMARY KEY (`id_flota`);

--
-- Indices de la tabla `invetarioflota`
--
ALTER TABLE `invetarioflota`
  ADD PRIMARY KEY (`id_inventario`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`id_reservacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesorio`
--
ALTER TABLE `accesorio`
  MODIFY `id_accesorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `flota`
--
ALTER TABLE `flota`
  MODIFY `id_flota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invetarioflota`
--
ALTER TABLE `invetarioflota`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  MODIFY `id_reservacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
