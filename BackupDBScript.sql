-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2021 a las 05:13:30
-- Versión del servidor: 8.0.13-4
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `YRXNrAMZ1V`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inactivity`
--

CREATE TABLE `inactivity` (
  `id` int(11) NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inactivity`
--

INSERT INTO `inactivity` (`id`, `duration`, `date_time`, `id_user`) VALUES
(1, '00:00:44', '2021-05-12 11:06:33 PM', '6356'),
(2, '00:00:36', '2021-05-13 03:05:41 PM', '6356'),
(3, '00:00:19', '2021-05-13 03:14:10 PM', '6356'),
(4, '00:04:29', '2021-05-13 04:20:34 PM', '6356');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inactivy_allowed`
--

CREATE TABLE `inactivy_allowed` (
  `id` int(11) NOT NULL,
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inactivy_allowed`
--

INSERT INTO `inactivy_allowed` (`id`, `id_user`, `time`) VALUES
(1, '6356', '120');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `time_end`
--

CREATE TABLE `time_end` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_time_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration_time_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aux_duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `time_end`
--

INSERT INTO `time_end` (`id`, `type`, `time`, `id_user`, `id_time_start`, `duration_time_start`, `type_start`, `aux_duration`) VALUES
(1, 'Lunch End', '2021-05-12 11:53:30 PM', '6356', '2', '2021-05-12 11:51:36 PM', 'Lunch Start', '00:01:53'),
(2, 'Lunch End', '2021-05-12 12:30:01 AM', '6356', '3', '2021-05-12 11:55:16 PM', 'Lunch Start', '00:34:45'),
(3, 'Log Out', '2021-05-12 12:30:49 AM', '6356', '1', '2021-05-12 11:50:07 PM', 'Auto In', '00:40:42'),
(4, 'Meeting', '2021-05-13 02:05:51 PM', '6356', '5', '2021-05-13 01:55:33 PM', 'Meeting', '00:10:17'),
(5, 'One On One', '2021-05-13 02:11:03 PM', '6356', '6', '2021-05-13 02:07:45 PM', 'One On One', '00:03:18'),
(6, 'Extra Time', '2021-05-13 04:53:19 PM', '6356', '7', '2021-05-13 04:21:10 PM', 'Extra Time', '00:32:09'),
(7, 'Log Out', '2021-05-13 04:53:29 PM', '6356', '4', '2021-05-13 01:31:37 PM', 'Auto In', '03:21:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `time_start`
--

CREATE TABLE `time_start` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `time_start`
--

INSERT INTO `time_start` (`id`, `type`, `time`, `id_user`) VALUES
(1, 'Auto In', '2021-05-12 11:50:07 PM', '6356'),
(2, 'Lunch Start', '2021-05-12 11:51:36 PM', '6356'),
(3, 'Lunch Start', '2021-05-12 11:55:16 PM', '6356'),
(4, 'Auto In', '2021-05-13 01:31:37 PM', '6356'),
(5, 'Meeting', '2021-05-13 01:55:33 PM', '6356'),
(6, 'One On One', '2021-05-13 02:07:45 PM', '6356'),
(7, 'Extra Time', '2021-05-13 04:21:10 PM', '6356');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `second_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `code`, `first_name`, `middle_name`, `first_last_name`, `second_last_name`, `password`) VALUES
(1, '6356', 'Admin', 'Admin', 'Admin', 'Admin', 'ab');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inactivity`
--
ALTER TABLE `inactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inactivy_allowed`
--
ALTER TABLE `inactivy_allowed`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `time_end`
--
ALTER TABLE `time_end`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `time_start`
--
ALTER TABLE `time_start`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inactivity`
--
ALTER TABLE `inactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inactivy_allowed`
--
ALTER TABLE `inactivy_allowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `time_end`
--
ALTER TABLE `time_end`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `time_start`
--
ALTER TABLE `time_start`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
