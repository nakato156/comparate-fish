-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2020 a las 04:49:54
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_comp`
--

CREATE TABLE `db_comp` (
  `id` int(11) NOT NULL,
  `Status` varchar(155) NOT NULL,
  `Situacion` varchar(255) NOT NULL,
  `fecha_de_pedido` text NOT NULL,
  `nombre` varchar(155) NOT NULL,
  `DNI` int(8) NOT NULL,
  `Nombre_de_empresa` varchar(400) NOT NULL,
  `posicion` varchar(255) NOT NULL,
  `rotacion` varchar(255) NOT NULL,
  `turno` varchar(255) NOT NULL,
  `celula_trabajo` varchar(255) NOT NULL,
  `fecha_subida` text NOT NULL,
  `fecha_bajada` text NOT NULL,
  `telefono` int(11) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `provincia` varchar(255) NOT NULL,
  `distrito` varchar(255) NOT NULL,
  `direccion_dom` varchar(255) NOT NULL,
  `es_pers_comunidad` varchar(2) NOT NULL,
  `vicepresidencia` varchar(155) NOT NULL,
  `gerencia` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `subarea` varchar(255) NOT NULL,
  `asistente_resp` varchar(255) NOT NULL,
  `laboratorio` varchar(155) NOT NULL,
  `fecha_hisopado_pcr` text NOT NULL,
  `fecha_env_lab` text NOT NULL,
  `fecha_ent_lab` text NOT NULL,
  `fecha_ent_result` text NOT NULL,
  `dias_proceso` int(255) NOT NULL,
  `dias_tot_hisopado` int(155) NOT NULL,
  `resultado_pcr` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(11) NOT NULL,
  `dni` int(9) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `celular` int(12) NOT NULL,
  `obs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg`
--

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `edad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reg`
--

INSERT INTO `reg` (`id`, `nombres`, `apellidos`, `edad`) VALUES
(1, 'christian', 'borasino', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `db_comp`
--
ALTER TABLE `db_comp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `db_comp`
--
ALTER TABLE `db_comp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
