-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2020 a las 19:21:01
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `puertos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `port` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `service` text DEFAULT NULL,
  `IP` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`port`, `state`, `service`, `IP`) VALUES
('22/tcp', 'open', 'ssh\n', '200.33.171.11'),
('80/tcp', 'open', 'http\n', '200.33.171.11'),
('113/tcp', 'closed', 'ident\n', '200.33.171.11'),
('443/tcp', 'open', 'https\n', '200.33.171.11'),
('5060/tcp', 'open', 'sip\n', '200.33.171.11'),
('21/tcp', 'open', 'ftp\n', '200.33.171.66'),
('22/tcp', 'open', 'ssh\n', '200.33.171.66'),
('25/tcp', 'open', 'smtp\n', '200.33.171.66'),
('80/tcp', 'open', 'http\n', '200.33.171.66'),
('110/tcp', 'open', 'pop3\n', '200.33.171.66'),
('113/tcp', 'closed', 'ident\n', '200.33.171.66'),
('119/tcp', 'open', 'nntp\n', '200.33.171.66'),
('143/tcp', 'open', 'imap\n', '200.33.171.66'),
('443/tcp', 'open', 'https\n', '200.33.171.66');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
