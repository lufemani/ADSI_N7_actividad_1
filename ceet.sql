-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2019 a las 00:22:18
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ceet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `id_aprendiz` int(10) UNSIGNED NOT NULL,
  `nom_aprendiz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apell_aprendiz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo_aprendiz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento_aprendiz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_id_ficha` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `id_aula` int(10) UNSIGNED NOT NULL,
  `num_aula` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`id_aula`, `num_aula`, `created_at`, `updated_at`) VALUES
(1, 200, NULL, NULL),
(2, 100, NULL, NULL),
(3, 101, NULL, NULL),
(4, 102, NULL, NULL),
(5, 103, NULL, NULL),
(6, 104, NULL, NULL),
(7, 201, NULL, NULL),
(8, 202, NULL, NULL),
(9, 203, NULL, NULL),
(10, 204, NULL, NULL),
(11, 300, NULL, NULL),
(12, 301, NULL, NULL),
(13, 302, NULL, NULL),
(14, 303, NULL, NULL),
(15, 304, NULL, NULL),
(16, 400, NULL, NULL),
(17, 401, NULL, NULL),
(18, 402, NULL, NULL),
(19, 403, NULL, NULL),
(20, 404, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `id_ficha` int(10) UNSIGNED NOT NULL,
  `num_ficha` int(11) NOT NULL,
  `nom_ficha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`id_ficha`, `num_ficha`, `nom_ficha`, `created_at`, `updated_at`) VALUES
(1, 1566598, 'ANALISIS Y DESARROLLO DE SISTEMAS', NULL, NULL),
(2, 1544879, 'Multimedia', NULL, NULL),
(3, 1432565, 'Sistemas', NULL, NULL),
(4, 1644587, 'PHOTOSHOP', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `id_instructor` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`id_instructor`, `nombre`, `correo`, `created_at`, `updated_at`) VALUES
(1, 'ROBINSON ANDRES CORTES GALINDO', 'RACORTES@MISENA.EDU.CO', NULL, NULL),
(2, 'Carlos Andres Mendez', 'camendez@misena.edu.co', NULL, NULL),
(3, 'Lizeth Tatiana Flores', 'ltflorez@misena.edu.co\r\n', NULL, NULL),
(4, 'Jairo Velazques Bustos', 'jvbustos@misena.edu.co', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id_jornada` int(10) UNSIGNED NOT NULL,
  `tipo_jornada` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id_jornada`, `tipo_jornada`, `created_at`, `updated_at`) VALUES
(1, 'NOCTURNA', NULL, NULL),
(2, 'DIURNA', NULL, NULL),
(3, 'MIXTA', NULL, NULL),
(4, 'FINES DE SEMANA', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2019_08_01_002109_create_jornada_table', 1),
(23, '2019_08_01_002122_create_instructor_table', 1),
(24, '2019_08_01_002134_create_aula_table', 1),
(25, '2019_08_01_002205_create_ficha_table', 1),
(26, '2019_08_01_002217_create_aprendiz_table', 1),
(27, '2019_08_03_200458_create_registro_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_registro` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ficha` int(11) NOT NULL,
  `jornada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aula` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_registro`, `nombre`, `ficha`, `jornada`, `aula`, `cantidad`, `created_at`, `updated_at`) VALUES
(1, 'ROBINSON ANDRES CORTES GALINDO', 1566598, 'NOCTURNA', 200, 25, '2019-08-04 02:53:31', '2019-08-04 02:53:31'),
(2, 'ROBINSON ANDRES CORTES GALINDO', 1566598, 'NOCTURNA', 200, 42, '2019-08-04 02:54:29', '2019-08-04 02:54:29'),
(3, 'Carlos Andres Mendez', 1432565, 'DIURNA', 403, 10, '2019-08-04 03:12:47', '2019-08-04 03:12:47'),
(4, 'Jairo Velazques Bustos', 1432565, 'MIXTA', 101, 5, '2019-08-04 03:13:06', '2019-08-04 03:13:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `aprendiz_fk_id_ficha_foreign` (`fk_id_ficha`);

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`id_aula`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`id_ficha`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id_instructor`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id_jornada`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  MODIFY `id_aprendiz` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aula`
--
ALTER TABLE `aula`
  MODIFY `id_aula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `id_ficha` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id_instructor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id_jornada` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD CONSTRAINT `aprendiz_fk_id_ficha_foreign` FOREIGN KEY (`fk_id_ficha`) REFERENCES `ficha` (`id_ficha`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
