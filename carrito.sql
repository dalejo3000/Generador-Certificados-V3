-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2021 a las 02:20:57
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`) VALUES
(208, 'Bono de desarrollo', 'Curso 1', 123, '1616374850.jpg', 30, 1),
(209, 'Reasentamiento', 'Curso 2 ', 115, '1616139059.png', 30, 2),
(210, 'Plan Nacional', 'Curso 3', 133, '1616352742.jpg', 30, 1),
(213, 'Desarrollo', 'Curso 4', 123, '1616138928.jpg', 30, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `cedula` char(10) NOT NULL,
  `fecha` date NOT NULL,
  `curso` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`, `cedula`, `fecha`, `curso`) VALUES
(2, 'David Romero', '+593998004766', 'dalejo3000@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'david.jpg', 'admin', '1122334455', '1991-03-10', ''),
(44, 'Hugo Galvez', '0998004766', 'hugogalvez@ute.edu.ec', '7c222fb2927d828af22f592134e8932480637c0d', 'default.jpg', 'cliente', '2233445566', '1991-11-09', ''),
(48, 'Ale Alejandro', '047588304', 'alejo@prueba.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente', '1234557654', '2021-03-17', 'frio'),
(49, 'Ricardo Palacios', '123456789', 'rpalacios@prueba.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente', '1122334455', '1972-03-09', 'prueba'),
(53, 'Nombre1 Nombre2 Apellido1 Apellido 2', '8740599237', 'email@prueba.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente', '9876543212', '1998-03-08', 'prueba'),
(55, 'Noche NOCHE', '94578539', 'noche@prueba.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente', '123456789', '2021-03-11', 'casa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
