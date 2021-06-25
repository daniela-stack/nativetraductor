-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2021 a las 19:37:53
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
(6, 'Se borró un registro', '2021-05-19 12:29:03'),
(7, 'Se borró un registro', '2021-06-25 11:50:33'),
(8, 'Se borró un registro', '2021-06-25 11:50:36'),
(9, 'Se borró un registro', '2021-06-25 12:23:01');

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
(104, 'màsá'),
(105, 'wa\'í ba\'ano\'w[~u] '),
(106, 'el pescado fue comido'),
(107, 'Ná wa\'íre ba\'áw[~a]'),
(108, 'ellos comieron pescado'),
(109, 'Diáyi páá-no-a-mi c[~u] wiór[~a]r[~e]'),
(110, 'El perro fue castigado por sus dueños'),
(111, '¿we-tí-bo-sa-ri?'),
(112, '¿probablemente no pueda hacerlo?'),
(113, '[~i]\'ós[~i]\'r[~i]-ti-c[~u]-po'),
(114, 'ella no quería mostrar'),
(115, '¿Yuú wa\'a-tí-c[~a]-bo-a?'),
(116, '¿Casi que no voy?'),
(117, 'c[~ú] tojo ni[~á] yu\'ú añú\'u ní ejérip[~o]\'r[~a]tiapu'),
(118, 'cuando él dijo eso, yo me sentí muy contento'),
(119, '¿Cuánto vale?'),
(120, '¿No\'ó c[~ó]r[~o] wapatíti?'),
(121, 'probablemente no tengo'),
(122, 'móó-sa-á'),
(123, 'esposo'),
(124, 'mar[~a]pú'),
(125, 'nombre'),
(126, 'wamé'),
(127, 'no tengo'),
(128, 'móó-\'o'),
(129, 'completar'),
(130, 'pe\'ó'),
(131, 'saber'),
(132, 'mas[~í]'),
(133, 'nemó'),
(134, 'hacer más'),
(135, 'pe\'tí'),
(136, 'terminar'),
(137, 'empezar'),
(138, 'nu\'c[~á]'),
(139, 'contestar'),
(140, 'yu\'tí'),
(141, 'acabar'),
(142, 'hablar'),
(143, 'uc[~ú]'),
(144, 'dutí'),
(145, 'ordenar'),
(146, 'mandar'),
(147, 'hombre'),
(148, 'umú'),
(149, 'wéré'),
(150, 'contar'),
(151, 'avisar'),
(152, 'perezoso'),
(153, 'w[~u]r[~u]'),
(154, 'hacer harto'),
(155, 'pánumu'),
(156, 'hermano'),
(157, 'caliente'),
(158, 'así'),
(159, 'p[~ú]r[~o]'),
(160, 'muy'),
(161, 'añur[~ó]'),
(162, 'bien'),
(163, 'numíe'),
(164, 'mujer'),
(165, 'no lo volvere a hacer'),
(166, 'mar[~í]-c[~a]\'sa-mi'),
(167, 'Pe\'tiwú'),
(168, 'se termino'),
(169, 'fue acabado'),
(170, 'mi'),
(171, 'yá'),
(172, 'mis'),
(173, 'yé'),
(174, 'mi casa'),
(175, 'yá wi\'i'),
(176, 'mu\'u yá wi\'i'),
(177, 'su casa'),
(178, 'c[~u] yá wi\'i (se refiere a la casa del hombre)'),
(179, 'co yá wi\'i (se refiere a la casa de la mujer)'),
(180, 'mis casas'),
(181, 'buenas'),
(182, 'yé wi\'seri'),
(183, 'nuestras casas'),
(184, '[~u}s[~a] yé wi\'séri (no incluye su propiedad)'),
(185, 'már[~í] yé wi\'séri (incluye su propiedad)'),
(186, 'ba\' a-cú-pa (masculino)'),
(187, 'no coma'),
(188, 'ba\' a-có-pa (fem.)'),
(189, 'no coman'),
(190, 'ba\'a-cár[~a]pa'),
(191, 'wak[~a]tí'),
(192, 'hola'),
(193, 'wak[~a]tí mus[~a] (formal al dirigirse a mucha gente)'),
(194, 'pacó'),
(195, 'mamá'),
(196, 'personas'),
(197, 'mas[~á]'),
(198, 'persona'),
(199, 'añur[~á] (cualidad)'),
(200, 'níma'),
(201, 'son ellos'),
(202, 'malo'),
(203, 'ña\'ag[~ú]'),
(204, 'numu'),
(205, 'días'),
(206, 'a\'yú (se refiere a situación sorprendente)'),
(207, 'ohhh'),
(208, 'agú (expresión de dolor)'),
(209, 'ay'),
(210, 'abú (expresión de miedo)'),
(211, 'que susto'),
(212, 'acó'),
(213, 'agua'),
(214, 'ña\'á'),
(215, 'mucho'),
(216, 'asé (expresión de sorpresa cuando ve mucha gente o muchas cosa, etc.)'),
(217, 'añusé'),
(218, 'buena'),
(219, 'noá'),
(220, '¿quién?'),
(221, 'de´ró'),
(222, '¿cómo?'),
(223, 'dicó'),
(224, '¿cual?'),
(225, 'mar[~í]sari'),
(226, '¿no hay?'),
(227, 'wiógu (persona que esta la mando de la comunidad)'),
(228, 'capitán'),
(229, 'lider'),
(230, 'jefe'),
(231, 'ropa'),
(232, 'su\'tí'),
(233, 'té'),
(234, 'esa'),
(235, '[~a]\'r[~a]'),
(236, 'estas'),
(237, 'ése'),
(238, 's[~i]\'í'),
(239, 'apér[~a] (plurar)'),
(240, 'jugar'),
(241, 'mu\'ú (tiempo presente)'),
(242, 'usted');

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
(106, 104, 1),
(107, 106, 2),
(108, 110, 2),
(109, 109, 1),
(110, 107, 1),
(111, 108, 2),
(112, 105, 1),
(113, 111, 1),
(114, 112, 2),
(115, 114, 2),
(116, 118, 2),
(117, 117, 1),
(118, 113, 1),
(119, 115, 1),
(120, 116, 2),
(121, 119, 2),
(122, 120, 1),
(123, 121, 2),
(124, 122, 1),
(125, 123, 2),
(126, 124, 1),
(127, 125, 2),
(128, 126, 1),
(129, 127, 2),
(130, 128, 1),
(141, 129, 2),
(142, 130, 1),
(143, 131, 2),
(144, 132, 1),
(145, 133, 1),
(146, 134, 2),
(147, 135, 1),
(148, 136, 2),
(149, 137, 2),
(150, 138, 1),
(151, 139, 2),
(152, 140, 1),
(153, 141, 2),
(154, 142, 2),
(155, 143, 1),
(156, 144, 1),
(157, 145, 2),
(158, 146, 2),
(159, 147, 2),
(160, 148, 1),
(161, 149, 1),
(162, 150, 2),
(163, 151, 2),
(164, 152, 2),
(165, 153, 1),
(166, 154, 2),
(167, 155, 1),
(168, 156, 2),
(169, 157, 2),
(170, 158, 1),
(171, 159, 1),
(172, 160, 2),
(173, 161, 1),
(174, 162, 2),
(175, 163, 1),
(176, 164, 2),
(177, 165, 2),
(178, 166, 1),
(179, 167, 1),
(180, 168, 2),
(181, 169, 2),
(182, 170, 2),
(183, 171, 1),
(184, 172, 2),
(185, 173, 1),
(186, 174, 2),
(187, 175, 1),
(188, 176, 1),
(189, 177, 2),
(190, 178, 1),
(191, 179, 1),
(192, 180, 2),
(193, 182, 1),
(194, 183, 2),
(195, 184, 1),
(196, 185, 1),
(205, 186, 1),
(206, 187, 2),
(207, 188, 1),
(208, 189, 2),
(209, 190, 1),
(210, 192, 2),
(211, 193, 1),
(212, 194, 1),
(213, 195, 2),
(214, 191, 1),
(215, 196, 2),
(216, 197, 1),
(217, 198, 2),
(218, 181, 2),
(219, 199, 1),
(220, 200, 1),
(221, 201, 2),
(222, 202, 2),
(223, 203, 1),
(224, 204, 1),
(225, 205, 2),
(226, 206, 1),
(227, 207, 2),
(228, 208, 1),
(229, 209, 2),
(230, 210, 1),
(231, 211, 2),
(234, 214, 1),
(235, 215, 2),
(236, 216, 1),
(237, 212, 1),
(238, 213, 2),
(239, 217, 1),
(240, 218, 2),
(245, 219, 1),
(246, 220, 2),
(247, 221, 1),
(248, 222, 2),
(249, 223, 1),
(250, 224, 2),
(252, 225, 1),
(253, 226, 2),
(254, 227, 1),
(255, 228, 2),
(257, 230, 2),
(258, 231, 2),
(259, 232, 1),
(260, 229, 2),
(261, 233, 1),
(262, 234, 2),
(263, 235, 1),
(264, 236, 2),
(265, 237, 2),
(266, 238, 1),
(267, 239, 1),
(268, 240, 2),
(269, 241, 1),
(270, 242, 2);

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
(109, 41, '104', 104),
(110, 42, '106', 106),
(111, 42, '105', 105),
(112, 43, '109', 109),
(113, 43, '110', 110),
(114, 44, '107', 107),
(115, 44, '108', 108),
(116, 45, '112', 112),
(117, 45, '111', 111),
(118, 46, '114', 114),
(119, 46, '113', 113),
(120, 47, '117', 117),
(121, 47, '118', 118),
(122, 48, '115', 115),
(123, 48, '116', 116),
(124, 49, '119', 119),
(125, 49, '120', 120),
(126, 50, '121', 121),
(127, 50, '122', 122),
(128, 51, '123', 123),
(129, 51, '124', 124),
(130, 52, '125', 125),
(131, 52, '126', 126),
(132, 53, '127', 127),
(133, 53, '128', 128),
(134, 54, '129', 129),
(135, 54, '130', 130),
(136, 55, '131', 131),
(137, 55, '132', 132),
(138, 56, '133', 133),
(139, 56, '134', 134),
(140, 57, '135', 135),
(141, 57, '136', 136),
(142, 58, '137', 137),
(143, 58, '138', 138),
(144, 59, '139', 139),
(145, 59, '140', 140),
(146, 54, '141', 141),
(147, 60, '142', 142),
(148, 60, '143', 143),
(149, 61, '144', 144),
(150, 61, '145', 145),
(151, 61, '146', 146),
(152, 62, '147', 147),
(153, 62, '148', 148),
(154, 63, '149', 149),
(155, 63, '150', 150),
(156, 63, '151', 151),
(157, 64, '152', 152),
(158, 64, '153', 153),
(159, 56, '154', 154),
(170, 65, '155', 155),
(171, 65, '156', 156),
(172, 66, '157', 157),
(173, 66, '158', 158),
(174, 67, '159', 159),
(175, 67, '160', 160),
(176, 68, '161', 161),
(177, 68, '162', 162),
(178, 69, '163', 163),
(179, 69, '164', 164),
(180, 70, '165', 165),
(181, 70, '166', 166),
(182, 71, '167', 167),
(183, 71, '168', 168),
(184, 71, '169', 169),
(185, 72, '170', 170),
(186, 72, '171', 171),
(187, 73, '172', 172),
(188, 73, '173', 173),
(189, 74, '174', 174),
(190, 74, '175', 175),
(191, 75, '176', 176),
(192, 75, '177', 177),
(193, 75, '178', 178),
(194, 75, '179', 179),
(198, 76, '182', 182),
(199, 77, '183', 183),
(200, 76, '180', 180),
(201, 77, '184', 184),
(202, 77, '185', 185),
(207, 78, '186', 186),
(208, 78, '187', 187),
(209, 78, '188', 188),
(210, 79, '189', 189),
(211, 79, '190', 190),
(212, 80, '191', 191),
(213, 80, '192', 192),
(214, 80, '193', 193),
(215, 81, '194', 194),
(216, 81, '195', 195),
(220, 82, '196', 196),
(221, 82, '197', 197),
(222, 82, '198', 198),
(223, 83, '181', 181),
(224, 83, '199', 199),
(225, 84, '200', 200),
(226, 84, '201', 201),
(227, 85, '202', 202),
(228, 85, '203', 203),
(229, 86, '204', 204),
(230, 86, '205', 205),
(232, 85, '214', 214),
(233, 87, '206', 206),
(234, 87, '207', 207),
(235, 88, '208', 208),
(236, 88, '209', 209),
(237, 89, '210', 210),
(238, 89, '211', 211),
(241, 90, '215', 215),
(242, 90, '216', 216),
(243, 91, '212', 212),
(244, 91, '213', 213),
(245, 92, '217', 217),
(246, 92, '218', 218),
(249, 93, '219', 219),
(250, 93, '220', 220),
(251, 94, '221', 221),
(252, 94, '222', 222),
(253, 95, '223', 223),
(254, 95, '224', 224),
(255, 96, '225', 225),
(256, 96, '226', 226),
(257, 97, '227', 227),
(258, 97, '228', 228),
(260, 97, '230', 230),
(261, 98, '231', 231),
(262, 98, '232', 232),
(263, 97, '229', 229),
(264, 99, '233', 233),
(265, 99, '234', 234),
(266, 100, '235', 235),
(267, 100, '236', 236),
(272, 101, '237', 237),
(273, 101, '238', 238),
(274, 102, '239', 239),
(275, 102, '240', 240),
(276, 103, '241', 241),
(277, 103, '242', 242);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tb_palabras`
--
ALTER TABLE `tb_palabras`
  MODIFY `id_palabra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=820;

--
-- AUTO_INCREMENT de la tabla `tb_palabras_idiomas`
--
ALTER TABLE `tb_palabras_idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT de la tabla `tb_traduccion`
--
ALTER TABLE `tb_traduccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

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
