-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2023 a las 21:32:55
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alm_system`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `name`, `department_id`, `status`, `created_at`, `updated_at`) VALUES
(7, 'SERVICIOS ESCOLARES', 5, 1, '2023-09-01 01:04:49', '2023-10-04 00:26:04'),
(8, 'SERVICIOS ESCOLARES', 6, 1, '2023-09-01 01:05:16', '2023-09-01 01:05:16'),
(9, 'COORDINACION', 7, 1, '2023-09-01 01:05:43', '2023-09-01 01:05:43'),
(10, 'PREFECTURA', 7, 1, '2023-09-01 01:06:06', '2023-09-01 01:06:06'),
(11, 'COORDINACION', 8, 1, '2023-09-01 01:06:46', '2023-09-01 01:06:46'),
(12, 'PREFECTURA', 8, 1, '2023-09-01 01:07:27', '2023-09-01 01:07:27'),
(13, 'SERVICIOS ESCOLARES', 8, 1, '2023-09-01 01:07:47', '2023-09-01 01:07:47'),
(14, 'COORDINACION', 9, 1, '2023-09-01 01:08:32', '2023-09-01 01:08:32'),
(15, 'PREFECTURA', 9, 1, '2023-09-01 01:08:55', '2023-09-01 01:08:55'),
(16, 'SERVICIOS ESCOLARES', 9, 1, '2023-09-01 01:09:19', '2023-09-01 01:09:19'),
(17, 'ALMACEN', 10, 1, '2023-09-01 01:09:58', '2023-09-01 01:09:58'),
(18, 'ANALISTA DE ALMACEN', 10, 1, '2023-09-01 01:15:31', '2023-09-01 01:15:31'),
(19, 'CAPITAL HUMANO', 10, 1, '2023-09-01 01:16:00', '2023-09-01 01:16:00'),
(20, 'COMPRAS', 10, 1, '2023-09-01 01:16:14', '2023-09-01 01:16:14'),
(21, 'COORDINACION DE COMUNICACION INSTITUCIONAL', 10, 1, '2023-09-01 01:16:55', '2023-09-01 01:16:55'),
(22, 'COORDINACION DE FINANZAS', 10, 1, '2023-09-01 01:17:38', '2023-09-01 01:17:38'),
(23, 'COORDINACION DISEÑO E IMAGEN INSTITUCIONAL', 10, 1, '2023-09-01 01:18:21', '2023-09-01 01:18:21'),
(24, 'DIRECCION DE CONTABILIDAD Y FINANZAS', 10, 1, '2023-09-01 01:19:05', '2023-09-01 01:19:05'),
(25, 'INTENDENCIA', 10, 1, '2023-09-01 01:19:27', '2023-09-01 01:19:27'),
(26, 'MANTENIMIENTO', 10, 1, '2023-09-01 01:19:42', '2023-09-01 01:19:42'),
(27, 'VICERECTORIA ADMINISTRATIVA', 10, 1, '2023-09-01 01:20:13', '2023-09-01 01:20:13'),
(28, 'ARCHIVO', 11, 1, '2023-09-01 01:20:51', '2023-09-01 01:20:51'),
(29, 'BIBLIOTECA', 11, 1, '2023-09-01 01:21:13', '2023-09-01 01:21:13'),
(30, 'CAJA', 11, 1, '2023-09-01 01:21:30', '2023-09-01 01:21:30'),
(31, 'CALIDAD', 11, 1, '2023-09-01 01:21:46', '2023-09-01 01:21:46'),
(32, 'COORDINACION ACADEMICA', 11, 1, '2023-09-01 01:22:08', '2023-09-01 01:22:08'),
(33, 'COORDINACION SERVICION ESCOLARES', 11, 1, '2023-09-01 01:22:35', '2023-09-01 01:22:35'),
(34, 'CREDENCIALIZACION', 11, 1, '2023-09-01 01:23:26', '2023-09-01 01:23:26'),
(35, 'DIRECCION ACADEMICA', 11, 1, '2023-09-01 01:23:55', '2023-09-01 01:23:55'),
(36, 'DIRECCION SERVICIOS ESCOLARES', 11, 1, '2023-09-01 01:24:19', '2023-09-01 01:24:19'),
(37, 'DIRECCION VINCULACION', 11, 1, '2023-09-01 01:24:44', '2023-09-01 01:24:44'),
(38, 'INTELIGENCIA COMERCIAL', 11, 1, '2023-09-01 01:25:11', '2023-09-01 01:25:11'),
(39, 'INTENDENCIA', 11, 1, '2023-09-01 01:25:26', '2023-09-01 01:25:26'),
(40, 'ISG SUPERVISOR', 11, 1, '2023-09-01 01:25:48', '2023-09-01 01:25:48'),
(41, 'ITT', 11, 1, '2023-09-01 01:26:09', '2023-09-01 01:26:09'),
(42, 'MANTENIMIENTO', 11, 1, '2023-09-01 01:26:42', '2023-09-01 01:26:42'),
(43, 'PREFECTURA', 11, 1, '2023-09-01 01:27:04', '2023-09-01 01:27:04'),
(44, 'R.R.P.P. PROTOCOLO', 11, 1, '2023-09-01 01:27:35', '2023-09-01 01:27:35'),
(45, 'RECTORIA', 11, 1, '2023-09-01 01:28:00', '2023-09-01 01:28:00'),
(46, 'SEGURIDAD INSTITUCIONAL', 11, 1, '2023-09-01 01:28:20', '2023-09-01 01:28:20'),
(47, 'TITULACION', 11, 1, '2023-09-01 01:28:41', '2023-09-01 01:28:41'),
(48, 'VICERECTORIA ACADEMICA', 11, 1, '2023-09-01 01:29:05', '2023-09-01 01:29:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `measurement_units_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `code`, `name`, `quantity`, `measurement_units_id`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AO0001', 'AGENDA COMERCIAL', '1', 1, 25, 1, '2023-08-03 09:27:20', '2023-10-04 00:55:51'),
(2, 'AO0002', 'BATERIA ALCALINA AA', '1', 1, 0, 1, '2023-08-03 10:15:48', '2023-08-03 11:56:17'),
(3, 'AO0018', 'BORRADOR BLANCO', '1', 1, 1, 1, '2023-08-03 10:16:29', '2023-10-04 00:46:19'),
(4, 'AO0022', 'BROCHE BACO', '10', 7, 0, 1, '2023-08-03 10:46:40', '2023-08-11 21:51:39'),
(5, 'AO0003', 'BATERIA ALCALINA AAA', '2', 1, 6, 1, '2023-09-01 01:36:14', '2023-10-04 00:46:19'),
(6, 'AO0093', 'HOJA BLANCA T/ OFICIO', '100', 1, 1, 1, '2023-09-01 01:38:47', '2023-10-04 00:46:19'),
(7, 'L500', 'ESCOBAS ROSAS', '1', 1, 50, 1, '2023-10-04 00:57:24', '2023-10-04 00:57:24'),
(8, 'L200', 'ESCOBAS VERDES', '1', 1, 45, 1, '2023-10-04 00:59:27', '2023-10-04 00:59:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department`
--

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  `updated_at` varchar(45) DEFAULT 'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `department`
--

INSERT INTO `department` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(5, 'ADMINISTRACION ESTRATEGICA DE LOS NEGOCIOS', 1, '2023-08-31 18:52:39', '2023-08-31 18:53:22'),
(6, 'ADMON EMPRESAS', 1, '2023-08-31 18:54:13', '2023-08-31 18:54:13'),
(7, 'AREA ECON. ADMON', 1, '2023-08-31 18:54:43', '2023-08-31 18:54:43'),
(8, 'ARQUITECTURA', 1, '2023-08-31 18:55:26', '2023-08-31 18:55:26'),
(9, 'BACHILLERATO', 1, '2023-08-31 18:55:55', '2023-08-31 18:55:55'),
(10, 'CASA IVEDL', 1, '2023-08-31 18:56:07', '2023-08-31 18:56:07'),
(11, 'CENTRO', 1, '2023-08-31 18:56:18', '2023-08-31 18:56:18'),
(12, 'CIENCIAS DE LA COMUNICACION', 1, '2023-08-31 18:56:56', '2023-08-31 18:56:56'),
(13, 'CONTADURIA PUBLICA', 1, '2023-08-31 18:57:24', '2023-08-31 18:57:24'),
(14, 'CONTADURIA Y AUDITORIA', 1, '2023-08-31 18:57:45', '2023-08-31 18:57:45'),
(15, 'DERECHO', 1, '2023-08-31 18:58:04', '2023-08-31 18:58:04'),
(16, 'DISEÑO GRAFICO Y DIGITAL', 1, '2023-08-31 18:58:30', '2023-08-31 18:58:30'),
(17, 'DISEÑO PARA LA COMUNICACION GRAFICA', 1, '2023-08-31 18:58:54', '2023-08-31 18:58:54'),
(18, 'GASTRONOMIA', 1, '2023-08-31 18:59:06', '2023-08-31 18:59:06'),
(19, 'GASTRONOMIA Y TURISMO', 1, '2023-08-31 18:59:35', '2023-08-31 18:59:35'),
(20, 'ING. EN SOFTWARE', 1, '2023-08-31 19:00:07', '2023-08-31 19:00:07'),
(21, 'MERCADOTECNIA ESTRATEGICA', 1, '2023-08-31 19:00:46', '2023-08-31 19:00:46'),
(22, 'NEGOCIOS INTERNACIONALES', 1, '2023-08-31 19:01:06', '2023-08-31 19:01:06'),
(23, 'NUTRICION', 1, '2023-08-31 19:01:20', '2023-08-31 19:01:20'),
(24, 'PSICOLOGIA', 1, '2023-08-31 19:01:33', '2023-08-31 19:01:33'),
(25, 'SERVICIOS A LA COMUNIDAD', 1, '2023-08-31 19:02:21', '2023-08-31 19:02:21'),
(26, 'TURISMO', 1, '2023-08-31 19:02:39', '2023-08-31 19:02:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `measurement_units`
--

CREATE TABLE `measurement_units` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `symbol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `measurement_units`
--

INSERT INTO `measurement_units` (`id`, `name`, `symbol`) VALUES
(1, 'PIEZA', 'pzas'),
(2, 'GRAMOS', 'g'),
(3, 'KILOGRAMOS', 'kg'),
(4, 'MILILITROS', 'ml'),
(5, 'LITROS', 'L'),
(6, 'METROS', 'm'),
(7, 'CENTIMETROS', 'cm'),
(8, 'MEGABYTES', 'MG'),
(9, 'GIGABYTE', 'GB'),
(10, 'TERABYTE', 'TB'),
(11, 'VATIOS', 'W'),
(12, 'PULGADAS', 'in');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `petitions`
--

CREATE TABLE `petitions` (
  `id` bigint(20) NOT NULL,
  `articles_id` bigint(20) NOT NULL,
  `ordered_articles` int(11) NOT NULL,
  `delivered_articles` int(11) NOT NULL DEFAULT 0,
  `remaining_articles` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `petition_status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `petitions`
--

INSERT INTO `petitions` (`id`, `articles_id`, `ordered_articles`, `delivered_articles`, `remaining_articles`, `user_id`, `department_id`, `area_id`, `delivered_at`, `petition_status_id`, `created_at`, `updated_at`) VALUES
(34, 6, 5, 5, 0, 9, 8, 13, '2023-09-01 01:41:45', 3, '2023-08-31 07:40:18', '2023-08-31 07:48:45'),
(35, 1, 1, 1, 0, 9, 8, 13, '2023-09-01 01:51:47', 3, '2023-09-01 01:51:20', '2023-09-01 01:51:47'),
(36, 5, 4, 2, 2, 9, 8, 13, NULL, 4, '2023-09-01 01:57:06', '2023-09-01 02:00:36'),
(37, 4, 50, 0, 50, 10, 10, 27, '2023-09-01 02:05:54', 5, '2023-09-01 02:04:37', '2023-09-01 02:05:54'),
(38, 1, 1000, 0, 1000, 11, 11, 29, NULL, 2, '2023-09-01 06:26:24', '2023-09-01 06:26:24'),
(39, 2, 1, 0, 1, 11, 11, 29, NULL, 2, '2023-09-01 06:26:24', '2023-09-01 06:26:24'),
(40, 4, 1, 0, 1, 11, 11, 29, NULL, 4, '2023-09-01 06:26:24', '2023-09-01 06:29:30'),
(41, 6, 200, 200, 0, 9, 8, 13, '2023-09-01 06:54:11', 3, '2023-09-01 06:48:59', '2023-09-01 06:54:11'),
(42, 6, 5, 5, 0, 9, 8, 13, '2023-10-04 00:54:29', 3, '2023-10-04 00:33:32', '2023-10-04 00:54:29'),
(43, 5, 5, 5, 0, 9, 8, 13, '2023-10-04 00:48:10', 3, '2023-10-04 00:46:19', '2023-10-04 00:48:10'),
(44, 3, 1, 1, 0, 9, 8, 13, '2023-10-04 00:47:37', 3, '2023-10-04 00:46:19', '2023-10-04 00:47:37'),
(45, 6, 4, 4, 0, 9, 8, 13, '2023-10-04 00:47:02', 3, '2023-10-04 00:46:19', '2023-10-04 00:47:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `petitions_history`
--

CREATE TABLE `petitions_history` (
  `id` bigint(20) NOT NULL,
  `petition_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` text NOT NULL,
  `article` tinyint(4) NOT NULL DEFAULT 0,
  `delivered_articles` int(11) NOT NULL DEFAULT 0,
  `previous_status_id` int(11) NOT NULL,
  `next_status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `petitions_history`
--

INSERT INTO `petitions_history` (`id`, `petition_id`, `user_id`, `comment`, `article`, `delivered_articles`, `previous_status_id`, `next_status_id`, `created_at`, `updated_at`) VALUES
(34, 19, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:45:05', '2023-08-03 11:45:05'),
(35, 20, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:45:05', '2023-08-03 11:45:05'),
(36, 21, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:53:54', '2023-08-03 11:53:54'),
(37, 22, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:53:54', '2023-08-03 11:53:54'),
(38, 23, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:54:59', '2023-08-03 11:54:59'),
(39, 24, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:54:59', '2023-08-03 11:54:59'),
(40, 25, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:56:17', '2023-08-03 11:56:17'),
(41, 26, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 11:56:17', '2023-08-03 11:56:17'),
(42, 26, 1, 'Se entregan 30 productos por lo pronto', 1, 30, 2, 4, '2023-08-03 12:11:35', '2023-08-03 12:11:35'),
(43, 26, 1, 'Se va cancelar :3', 0, 0, 4, 5, '2023-08-03 12:14:03', '2023-08-03 12:14:03'),
(44, 25, 1, 'Se entrego los productos exitosamente', 1, 50, 2, 3, '2023-08-03 12:14:44', '2023-08-03 12:14:44'),
(45, 27, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 12:17:01', '2023-08-03 12:17:01'),
(46, 28, 1, 'Petición de producto!', 0, 0, 7, 2, '2023-08-03 12:17:01', '2023-08-03 12:17:01'),
(47, 29, 4, 'Petición de producto!', 0, 0, 7, 2, '2023-08-11 21:51:39', '2023-08-11 21:51:39'),
(48, 30, 4, 'Petición de producto!', 0, 0, 7, 2, '2023-08-11 21:51:39', '2023-08-11 21:51:39'),
(49, 31, 4, 'Petición de producto!', 0, 0, 7, 2, '2023-08-11 21:51:39', '2023-08-11 21:51:39'),
(50, 32, 4, 'Petición de producto!', 0, 0, 7, 2, '2023-08-22 09:05:12', '2023-08-22 09:05:12'),
(51, 33, 7, 'Petición de producto!', 0, 0, 7, 2, '2023-08-22 10:07:43', '2023-08-22 10:07:43'),
(52, 33, 4, 'producto descotinuado', 0, 0, 2, 5, '2023-08-26 15:05:39', '2023-08-26 15:05:39'),
(53, 32, 4, 'Solo se encontraron 10 articulos', 1, 10, 2, 4, '2023-08-26 15:13:17', '2023-08-26 15:13:17'),
(54, 34, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 01:40:18', '2023-09-01 01:40:18'),
(55, 34, 4, 'SE ENVIARON LOS 5 PAQUETES DE HOJAS BLANCAS T/OFICIO', 1, 5, 2, 3, '2023-09-01 01:41:45', '2023-09-01 01:41:45'),
(56, 35, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 01:51:20', '2023-09-01 01:51:20'),
(57, 35, 4, 'ENTREGA COMPLETA', 1, 1, 2, 3, '2023-09-01 01:51:47', '2023-09-01 01:51:47'),
(58, 36, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 01:57:06', '2023-09-01 01:57:06'),
(59, 36, 4, 'Se enviará dos paquetes de pila y en cuando compras me vuelva a surtir se le enviará el resto, gracias por la comprensión', 1, 2, 2, 4, '2023-09-01 02:00:36', '2023-09-01 02:00:36'),
(60, 37, 10, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 02:04:37', '2023-09-01 02:04:37'),
(61, 37, 4, 'el producto dejo existir en este momento lo daremos de baja una disculpa de antemano', 0, 0, 2, 5, '2023-09-01 02:05:54', '2023-09-01 02:05:54'),
(62, 38, 11, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 06:26:24', '2023-09-01 06:26:24'),
(63, 39, 11, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 06:26:24', '2023-09-01 06:26:24'),
(64, 40, 11, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 06:26:24', '2023-09-01 06:26:24'),
(65, 40, 4, 'No se encuentra los productos en el almacen', 1, 0, 2, 4, '2023-09-01 06:29:30', '2023-09-01 06:29:30'),
(66, 41, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-09-01 06:48:59', '2023-09-01 06:48:59'),
(67, 41, 4, 'Se entregaran solamemnte los articulos existentes', 1, 195, 2, 4, '2023-09-01 06:51:57', '2023-09-01 06:51:57'),
(68, 41, 4, 'Se entregaran solo 2 articulos mas', 1, 2, 4, 4, '2023-09-01 06:53:23', '2023-09-01 06:53:23'),
(69, 41, 4, 'Entrega completa', 1, 3, 4, 3, '2023-09-01 06:54:11', '2023-09-01 06:54:11'),
(70, 42, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-10-04 00:33:33', '2023-10-04 00:33:33'),
(71, 42, 4, 'Resto en 3 dias', 1, 3, 2, 4, '2023-10-04 00:35:24', '2023-10-04 00:35:24'),
(72, 43, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-10-04 00:46:19', '2023-10-04 00:46:19'),
(73, 44, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-10-04 00:46:19', '2023-10-04 00:46:19'),
(74, 45, 9, 'Petición de producto!', 0, 0, 7, 2, '2023-10-04 00:46:19', '2023-10-04 00:46:19'),
(75, 45, 4, 'Completo', 1, 4, 2, 3, '2023-10-04 00:47:02', '2023-10-04 00:47:02'),
(76, 44, 4, 'Completo', 1, 1, 2, 3, '2023-10-04 00:47:37', '2023-10-04 00:47:37'),
(77, 43, 4, 'Completo', 1, 5, 2, 3, '2023-10-04 00:48:10', '2023-10-04 00:48:10'),
(78, 42, 4, 'COMPLETO', 1, 2, 4, 3, '2023-10-04 00:54:29', '2023-10-04 00:54:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `petition_status`
--

CREATE TABLE `petition_status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `petition_status`
--

INSERT INTO `petition_status` (`id`, `name`, `value`, `flag`) VALUES
(2, 'Pendiente', 2000, 0),
(3, 'Entregado', 3000, 1),
(4, 'Problemas de inventario', 4000, 0),
(5, 'Cancelado', 5000, 1),
(7, 'Nuevo', 100, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user_type_id`, `email`, `email_verified_at`, `password`, `department_id`, `area_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Miguel Angel Gómez Castellanos', 1, 'comprasuno@unedl.edu.mx', NULL, '$2y$10$zrlkEyo8qfsXFm87RNzvVOt9TbM6Hn6LdG8Ti2Lo992RxRGIxgnje', 10, 17, 1, NULL, '2023-08-04 08:54:53', '2023-09-01 01:10:27'),
(9, 'Pedro Rafael Montoya Leon', 2, 'pedro_13@gmail.com', NULL, '$2y$10$g4xlof1R1tirVxlj4F/W7ehSUY1ldwHV7PpsA/cohzCWeL2HvOdUq', 8, 13, 1, NULL, '2023-09-01 01:31:06', '2023-09-01 01:31:06'),
(10, 'Esbaide Yaziel Hernandez', 2, 'esbaide_hdez097@hotmail.com', NULL, '$2y$10$XyTJ9sknqOnl4zl/cy18Du..MLMC4RwkuG4jMH0shEztvldg/QSae', 10, 27, 1, NULL, '2023-09-01 02:03:17', '2023-09-01 02:03:17'),
(11, 'Roberto Estrada', 2, 'estrada@unedl.com.mx', NULL, '$2y$10$BEg5emfk4zY1MAnaOk5Mm.tjxE7IUId3CC4wWB/IwZNc5OIoTBsaa', 11, 29, 1, NULL, '2023-09-01 06:23:24', '2023-09-01 06:37:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_type`
--

CREATE TABLE `users_type` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users_type`
--

INSERT INTO `users_type` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `measurement_units`
--
ALTER TABLE `measurement_units`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `petitions`
--
ALTER TABLE `petitions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `petitions_history`
--
ALTER TABLE `petitions_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `petition_status`
--
ALTER TABLE `petition_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `users_type`
--
ALTER TABLE `users_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `measurement_units`
--
ALTER TABLE `measurement_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `petitions`
--
ALTER TABLE `petitions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `petitions_history`
--
ALTER TABLE `petitions_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `petition_status`
--
ALTER TABLE `petition_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users_type`
--
ALTER TABLE `users_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
