-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-08-2022 a las 22:07:02
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Colegio`
--

CREATE TABLE `Colegio` (
  `IdColegio` int(11) NOT NULL,
  `NombreColegio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Programa`
--

CREATE TABLE `Programa` (
  `IdPrograma` int(11) NOT NULL,
  `NombrePrograma` varchar(100) NOT NULL,
  `Colegio` int(11) NOT NULL,
  `CodigoMitus` int(11) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `DatosUtiles` varchar(60) NOT NULL,
  `ListaEquipos` varchar(60) NOT NULL,
  `FormasPago` varchar(60) NOT NULL,
  `Itinerario` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Colegio`
--
ALTER TABLE `Colegio`
  ADD PRIMARY KEY (`IdColegio`);

--
-- Indices de la tabla `Programa`
--
ALTER TABLE `Programa`
  ADD PRIMARY KEY (`IdPrograma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Colegio`
--
ALTER TABLE `Colegio`
  MODIFY `IdColegio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Programa`
--
ALTER TABLE `Programa`
  MODIFY `IdPrograma` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
