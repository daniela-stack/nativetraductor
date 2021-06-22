-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2021 a las 19:48:20
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `traductor3_3`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_algo` ()  BEGIN

    SELECT palabra FROM tb_palabras
    UNION All
    SELECt idioma FROM tb_idiomas;

END$$

--
-- Funciones
--
CREATE DEFINER=`root`@`localhost` FUNCTION `algo` () RETURNS INT(11) BEGIN 
	
    SELECT COUNT( * ) INTO @conteo FROM tb_palabras;
    
	return @conteo;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_idiomas`
--

CREATE TABLE `tb_idiomas` (
  `id_idioma` int(11) NOT NULL,
  `idioma` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_idiomas`
--

INSERT INTO `tb_idiomas` (`id_idioma`, `idioma`) VALUES
(1, 'TUCANO'),
(2, 'ESPAÑOL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_log`
--

CREATE TABLE `tb_log` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_log`
--

INSERT INTO `tb_log` (`id`, `descripcion`, `fecha_registro`) VALUES
(1, 'Se borró un registro', '2021-05-13 18:58:35'),
(2, 'Se borró un registro', '2021-05-14 09:00:39'),
(3, 'Se borró un registro', '2021-05-19 10:13:38'),
(4, 'Se borró un registro', '2021-05-19 10:37:04'),
(5, 'Se borró un registro', '2021-05-19 10:43:30'),
(6, 'Se borró un registro', '2021-05-19 12:29:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_palabras`
--

CREATE TABLE `tb_palabras` (
  `id_palabra` int(11) NOT NULL,
  `palabra` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_palabras`
--

INSERT INTO `tb_palabras` (`id_palabra`, `palabra`) VALUES
(1, 'c[~a]r[~í]'),
(2, 'wa\''),
(3, 'd[´i]á'),
(4, 'wéé\'e'),
(5, 'ní\'c[~a]c[~a]'),
(6, 'ní-w[~u]'),
(7, 'wa\'íc[~u]r[~a]'),
(8, 'dic[~ú]r[~a]'),
(9, 'wa\'agú'),
(10, 'petápu'),
(11, 'ní-á-su'),
(12, '-A-mo'),
(13, 'Yu\'ú ( tiempo presente)'),
(14, '¡Né!'),
(15, 'Bucú'),
(16, 'Pacú'),
(17, 'Ñámá'),
(18, 'Nímá'),
(19, 'Ojó'),
(20, 'Diáyi'),
(23, 'dormir'),
(24, 'fue'),
(25, 'puerto'),
(26, 'hoy'),
(27, 'estuvo'),
(28, 'animales'),
(29, 'Cuántos'),
(30, 'voy'),
(31, 'hacia'),
(32, 'yo estuve ahí'),
(33, 'Ella'),
(34, 'Yo (tiempo presente)'),
(35, '¡Hola!'),
(36, 'Viejo'),
(37, 'Papá'),
(38, 'Venado'),
(39, 'Veneno'),
(40, 'Banano'),
(41, 'rio'),
(42, 'perro'),
(43, 'VERDAD'),
(44, 'HOLA'),
(45, 'NE[~e]'),
(46, 'NEE'),
(47, 'yo voy'),
(48, 'Yu\'ú wa\\\'agú'),
(49, 'Ní-\\\'i'),
(50, 'yo estoy'),
(51, 'Ní'),
(52, 'estar (singular)'),
(53, 'usted está (singular)'),
(54, 'Ní-mi'),
(55, 'él está'),
(56, 'Ní-mo'),
(57, 'ella está'),
(58, 'está '),
(59, 'nosotros estamos'),
(60, 'ustedes están'),
(61, 'están'),
(62, 'a-pu (tiempo pasado)'),
(63, 'yo '),
(64, 'usted '),
(65, 'una cosa'),
(66, 'nosotros '),
(67, 'ustedes'),
(68, 'unas cosas'),
(69, 'a-mi (tiempo pasado)'),
(70, 'él'),
(71, 'nosotros estuvimos'),
(72, 'una cosa estuvo'),
(73, 'ní-w[~i]'),
(74, 'él estuvo'),
(75, 'ní-w[~o]'),
(76, 'ella estuvo'),
(77, 'ní-w[~a]'),
(78, 'ellos estuvieron'),
(79, 'ellas estuvieron'),
(80, 'ní-ti (interrogativa presente)'),
(81, '¿estoy yo?\r\n'),
(82, '¿está usted?\r\n'),
(83, '¿está cosa?\r\n'),
(84, '¿estamos nosotros?\r\n'),
(85, '¿están ustedes?\r\n'),
(86, '¿está él?\r\n'),
(87, '¿está ella?\r\n'),
(88, '¿están ellos?\r\n'),
(89, '¿están ellas?\r\n'),
(90, '¿están unas cosas?'),
(91, '[á~]gara'),
(92, 'ángel'),
(93, '[~ú]ba\'a'),
(94, 'no se'),
(95, '¿verdad?'),
(96, '¿nir[~ó]ta?'),
(97, 'huevos'),
(98, 'dierí'),
(99, 'flores'),
(100, 'o\'óri'),
(101, 'casa'),
(102, 'wi\'í'),
(103, 'gente'),
(104, 'màsá');

--
-- Disparadores `tb_palabras`
--
DELIMITER $$
CREATE TRIGGER `proceso` AFTER DELETE ON `tb_palabras` FOR EACH ROW INSERT INTO tb_log ( id, descripcion, fecha_registro ) 
VALUES( null, 'Se borró un registro', NOW() )
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_palabras_idiomas`
--

CREATE TABLE `tb_palabras_idiomas` (
  `id` int(11) NOT NULL,
  `id_palabra` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tb_palabras_idiomas`
--

INSERT INTO `tb_palabras_idiomas` (`id`, `id_palabra`, `id_idioma`) VALUES
(2, 20, 1),
(3, 42, 2),
(4, 11, 1),
(5, 32, 2),
(6, 12, 1),
(7, 33, 2),
(8, 28, 2),
(9, 7, 1),
(10, 40, 2),
(11, 19, 1),
(12, 15, 1),
(13, 36, 2),
(14, 29, 2),
(15, 8, 1),
(16, 1, 1),
(17, 23, 2),
(18, 3, 1),
(19, 41, 2),
(20, 27, 2),
(21, 6, 1),
(22, 24, 2),
(23, 2, 1),
(24, 31, 2),
(25, 10, 1),
(26, 44, 2),
(27, 45, 1),
(28, 26, 2),
(29, 5, 1),
(30, 46, 1),
(31, 43, 2),
(32, 4, 1),
(33, 25, 2),
(34, 9, 1),
(35, 30, 2),
(36, 13, 1),
(37, 34, 2),
(38, 14, 1),
(39, 35, 2),
(40, 16, 1),
(41, 37, 2),
(42, 17, 1),
(43, 38, 2),
(44, 18, 1),
(45, 39, 2),
(48, 47, 2),
(49, 48, 1),
(50, 49, 1),
(51, 50, 2),
(52, 51, 1),
(53, 52, 2),
(54, 53, 2),
(55, 54, 1),
(56, 55, 2),
(57, 56, 1),
(58, 55, 2),
(59, 57, 2),
(60, 59, 2),
(61, 60, 2),
(62, 61, 2),
(63, 58, 2),
(64, 62, 1),
(65, 63, 2),
(66, 64, 2),
(67, 65, 2),
(68, 66, 2),
(69, 67, 2),
(70, 68, 2),
(71, 69, 1),
(72, 70, 2),
(73, 71, 2),
(74, 72, 2),
(75, 73, 1),
(76, 74, 2),
(77, 75, 1),
(78, 76, 2),
(79, 77, 1),
(80, 78, 2),
(81, 79, 2),
(82, 80, 1),
(83, 81, 2),
(84, 82, 2),
(85, 83, 2),
(86, 84, 2),
(87, 85, 2),
(88, 86, 2),
(89, 87, 2),
(90, 88, 2),
(91, 89, 2),
(92, 90, 2),
(93, 91, 1),
(94, 93, 1),
(95, 92, 2),
(96, 94, 2),
(97, 95, 2),
(98, 96, 1),
(99, 97, 2),
(100, 98, 1),
(101, 99, 2),
(102, 100, 1),
(103, 101, 2),
(104, 102, 1),
(105, 103, 2),
(106, 104, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_traduccion`
--

CREATE TABLE `tb_traduccion` (
  `id` int(11) NOT NULL,
  `palabra_1` bigint(20) NOT NULL,
  `palabra_2` varchar(20) NOT NULL,
  `id_palabra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_traduccion`
--

INSERT INTO `tb_traduccion` (`id`, `palabra_1`, `palabra_2`, `id_palabra`) VALUES
(1, 1, '20', 20),
(2, 1, '42', 42),
(3, 2, '40', 40),
(4, 2, '19', 19),
(5, 3, '39', 39),
(6, 3, '18', 18),
(7, 4, '38', 38),
(8, 4, '17', 17),
(9, 5, '37', 37),
(10, 5, '16', 16),
(11, 6, '15', 15),
(12, 6, '36', 36),
(13, 7, '44', 44),
(14, 7, '45', 45),
(15, 8, '34', 34),
(16, 8, '13', 13),
(17, 9, '33', 33),
(18, 9, '12', 12),
(19, 10, '32', 32),
(20, 10, '11', 11),
(21, 11, '31', 31),
(22, 11, '10', 10),
(23, 12, '30', 30),
(24, 12, '9', 9),
(25, 13, '29', 29),
(26, 13, '8', 8),
(27, 14, '28', 28),
(28, 14, '7', 7),
(29, 15, '27', 27),
(30, 15, '6', 6),
(31, 16, '26', 26),
(32, 16, '5', 5),
(33, 17, '25', 25),
(34, 17, '4', 4),
(35, 18, '41', 41),
(36, 18, '3', 3),
(37, 19, '24', 24),
(38, 19, '2', 2),
(39, 20, '23', 23),
(40, 20, '1', 1),
(41, 21, '47', 47),
(42, 21, '48', 48),
(43, 22, '49', 49),
(44, 22, '50', 50),
(45, 23, '51', 51),
(46, 23, '52', 52),
(47, 7, '43', 43),
(48, 7, '43', 43),
(51, 24, '56', 56),
(52, 24, '57', 57),
(53, 25, '54', 54),
(54, 25, '55', 55),
(55, 26, '49', 49),
(56, 26, '53', 53),
(57, 22, '59', 59),
(58, 22, '60', 60),
(59, 22, '61', 61),
(60, 22, '58', 58),
(61, 27, '62', 62),
(62, 27, '63', 63),
(63, 27, '64', 64),
(64, 27, '65', 65),
(65, 27, '66', 66),
(66, 27, '67', 67),
(67, 27, '68', 68),
(68, 28, '69', 69),
(69, 28, '70', 70),
(70, 29, '14', 14),
(71, 29, '35', 35),
(75, 30, '71', 71),
(76, 30, '72', 72),
(77, 30, '6', 6),
(78, 31, '73', 73),
(79, 31, '74', 74),
(80, 32, '75', 75),
(81, 32, '76', 76),
(82, 33, '77', 77),
(83, 33, '78', 78),
(84, 33, '79', 79),
(85, 34, '80', 80),
(86, 34, '81', 81),
(87, 34, '82', 82),
(88, 34, '83', 83),
(89, 34, '84', 84),
(90, 34, '85', 85),
(91, 34, '86', 86),
(92, 34, '87', 87),
(93, 34, '88', 88),
(94, 34, '89', 89),
(95, 34, '90', 90),
(96, 35, '91', 91),
(97, 35, '92', 92),
(98, 36, '93', 93),
(99, 36, '94', 94),
(100, 37, '95', 95),
(101, 37, '96', 96),
(102, 38, '97', 97),
(103, 38, '98', 98),
(104, 39, '99', 99),
(105, 39, '100', 100),
(106, 40, '101', 101),
(107, 40, '102', 102),
(108, 41, '103', 103),
(109, 41, '104', 104);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_traductor`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_traductor` (
`conteo` bigint(21)
,`id_idioma` int(11)
,`id_palabra` int(11)
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_traductor`
--
DROP TABLE IF EXISTS `vista_traductor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_traductor`  AS SELECT count(0) AS `conteo`, `t1`.`id_idioma` AS `id_idioma`, `t2`.`id_palabra` AS `id_palabra`, `t3`.`id` AS `id` FROM ((`tb_idiomas` `t1` join `tb_palabras` `t2`) join `tb_palabras_idiomas` `t3`) WHERE `t1`.`id_idioma` = `t3`.`id_idioma` AND `t2`.`id_palabra` = `t3`.`id_palabra` GROUP BY `t1`.`id_idioma`, `t2`.`id_palabra`, `t3`.`id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_idiomas`
--
ALTER TABLE `tb_idiomas`
  ADD PRIMARY KEY (`id_idioma`);

--
-- Indices de la tabla `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_palabras`
--
ALTER TABLE `tb_palabras`
  ADD PRIMARY KEY (`id_palabra`);

--
-- Indices de la tabla `tb_palabras_idiomas`
--
ALTER TABLE `tb_palabras_idiomas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_palabras` (`id_palabra`),
  ADD KEY `idx_idiomas` (`id_idioma`);

--
-- Indices de la tabla `tb_traduccion`
--
ALTER TABLE `tb_traduccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_palabra_traduccion` (`id_palabra`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_idiomas`
--
ALTER TABLE `tb_idiomas`
  MODIFY `id_idioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_palabras`
--
ALTER TABLE `tb_palabras`
  MODIFY `id_palabra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=820;

--
-- AUTO_INCREMENT de la tabla `tb_palabras_idiomas`
--
ALTER TABLE `tb_palabras_idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `tb_traduccion`
--
ALTER TABLE `tb_traduccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_palabras_idiomas`
--
ALTER TABLE `tb_palabras_idiomas`
  ADD CONSTRAINT `fk_idiomas_palabras_idiomas` FOREIGN KEY (`id_idioma`) REFERENCES `tb_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_palabras_palabras_idiomas` FOREIGN KEY (`id_palabra`) REFERENCES `tb_palabras` (`id_palabra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_traduccion`
--
ALTER TABLE `tb_traduccion`
  ADD CONSTRAINT `fk_traduccion_palabra` FOREIGN KEY (`id_palabra`) REFERENCES `tb_palabras` (`id_palabra`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
