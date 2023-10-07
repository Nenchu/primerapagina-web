-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 05:32:31
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rivero_nancy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'socio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `password`, `perfil_id`, `baja`) VALUES
(1, 'Nancy', 'Rivero', 'nenchu', 'nancyrivero2020@gmail.com', '$2y$10$fdNgoPjc7uoO1zrvSBmtS.sisCNLjZImu/9k.tdLg.VwnCMO29I06', 2, 'No'),
(2, 'Rafael ', 'Esteche', 'rafiña', 'rafaelesteche@gmail.com', '$2y$10$sQsRsqI8o4ccuUGvn6oBveTjhbl49UQB1c.K3JFXFWHlAIDs2vvRG', 2, 'No'),
(3, 'Graciela', 'Gomez', 'GraGomez', 'gracielagomez@gmail.com', '$2y$10$z5wtKauPsKSi3b.vl49WCevWQ2jremCN71qi5HOFig1WUYEkszOQW', 2, 'No'),
(4, 'Agostina', 'Barrios', 'Marita', 'mariaagostinab@gmail.com', '$2y$10$Lfe0o0AE.eV2AgM3uY49bu.OBLtRwK8jwwh2NYQ/Md975nk6K7ZQ.', 2, 'No'),
(5, 'Carlos', 'Acosta', 'carlosacosta', 'carlosacosta@gmail.com', '$2y$10$IjNWd78joURB9ajFlJnJGOgLUbtKLYAVWeDmBYMuUl3OS64BzOUFK', 2, 'No'),
(6, 'Susana', 'cardozo', 'sucardozo', 'sucardozo@hotmail.com', '$2y$10$vBiJS7F.BP6OE7NS9sJzSeePRDe14p4eTnWUzIn09OPMKVGMrMeh6', 1, 'No'),
(7, 'andrea', 'rodeles', 'andrerodeles', 'andrearodeles@gmail.com', '$2y$10$eJVCVbsRNCqJDO1HWdPZbOmk5c6jpu9aKvD7EabenW4wfOoK4vV82', 2, 'No');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
