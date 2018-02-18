-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2018 a las 20:14:28
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personas`
--
CREATE DATABASE IF NOT EXISTS `personas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `personas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `idtrabajo` int(64) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `nombre`, `idtrabajo`, `fecha_nacimiento`) VALUES
(1, 'Nisse Marwick', 7, '1982-04-09'),
(2, 'Joseph Joestar', 1, '2018-02-14'),
(3, 'Katrina Hovy', 2, '1913-09-29'),
(4, 'Ladonna VanBrugh', 6, '1995-03-02'),
(5, 'Evie Danick', 6, '1921-04-01'),
(6, 'Jonathan Joestar', 1, '1990-09-14'),
(7, 'Frayda Burress', 6, '1977-03-22'),
(8, 'Hattie Anselmi', 6, '1946-10-15'),
(9, 'Tristan Dowsett', 6, '1991-08-07'),
(10, 'Cybill Pilmore', 5, '1969-04-17'),
(11, 'Gweneth Castelain', 4, '1926-11-21'),
(12, 'Jasmin Legier', 5, '1972-05-14'),
(13, 'Tracie Liston', 3, '2003-04-01'),
(14, 'Rachele Soall', 4, '1917-09-29'),
(15, 'Clementius Beedell', 6, '1994-05-11'),
(16, 'Sterne Mitro', 7, '2010-09-18'),
(17, 'Graig Sayer', 6, '2013-06-25'),
(20, 'Chrotoem Hackett', 2, '1950-07-08'),
(21, 'Sarette Syde', 2, '2010-04-23'),
(22, 'Elsa Goldthorp', 6, '1941-01-31'),
(23, 'Barnett Follows', 4, '1950-09-30'),
(24, 'Malchy Gubbin', 3, '1993-04-02'),
(25, 'Winslow Chalcroft', 2, '1930-06-24'),
(26, 'Janean Elgy', 5, '1968-07-25'),
(27, 'Myrtice Alven', 1, '1918-10-15'),
(28, 'Lanette Vivers', 3, '1986-11-25'),
(29, 'Elisha Tyght', 5, '1962-08-29'),
(30, 'Johnette Robottham', 2, '1948-11-05'),
(31, 'Paco Duffan', 4, '1927-11-13'),
(32, 'Colline McGilvra', 2, '1930-06-26'),
(33, 'Fanchon Heaton', 4, '2017-05-26'),
(35, 'Dugald Veque', 3, '1975-05-18'),
(36, 'Herve Simnel', 2, '1936-10-19'),
(37, 'Randell Rugiero', 4, '2010-08-09'),
(38, 'Christian Thorp', 4, '1941-12-08'),
(39, 'Sherie Mounter', 6, '2007-02-05'),
(40, 'Lacee Pude', 1, '1953-07-24'),
(41, 'Hurley Maunders', 7, '2005-12-27'),
(42, 'Flem Michelin', 1, '1983-10-01'),
(43, 'Melisandra Wenman', 7, '2014-09-28'),
(44, 'Jacintha Sugge', 1, '2018-02-16'),
(45, 'Tedra Chadburn', 1, '2018-02-19'),
(46, 'Sayre Willets', 7, '2012-08-02'),
(47, 'Cherrita Pallatina', 5, '1923-09-12'),
(48, 'Gasper Scoyne', 4, '1997-03-25'),
(49, 'Cyrille Kemmett', 2, '1938-01-21'),
(50, 'Brooks Hantusch', 6, '1924-03-08'),
(51, 'Nomi McAlroy', 3, '1995-05-27'),
(52, 'Lucia Clubb', 3, '2004-12-27'),
(53, 'dsadasda', 4, '2018-02-17'),
(54, 'Germaine Klaves', 6, '1921-12-15'),
(55, 'Antonietta Simon', 7, '1910-12-15'),
(56, 'Nikolaus Reeday', 4, '1984-05-02'),
(57, 'Jamill Criane', 6, '1974-08-23'),
(58, 'Alexei Pimbley', 2, '1950-03-08'),
(59, 'Phyllys Farquarson', 6, '1968-04-24'),
(60, 'Karita Keningley', 5, '1908-12-02'),
(61, 'Archambault Carsey', 2, '1919-08-01'),
(62, 'Christie Panter', 6, '1958-10-18'),
(63, 'Octavia Drowsfield', 6, '1937-05-15'),
(64, 'Felice Smale', 6, '1945-09-06'),
(65, 'Elbertine Briamo', 4, '1934-05-08'),
(66, 'Read McAteer', 5, '1950-01-13'),
(67, 'Doralia Jessopp', 1, '1930-11-12'),
(68, 'Jakie Shilston', 1, '1961-02-18'),
(69, 'Evyn De Brett', 3, '1901-09-22'),
(70, 'Collin Falshaw', 2, '2017-08-30'),
(71, 'Sutherlan Kalkofer', 1, '1924-10-30'),
(72, 'Verney Romaynes', 7, '1980-02-28'),
(73, 'Zaneta Acum', 6, '1989-07-19'),
(74, 'Jordana Northgraves', 3, '1910-06-06'),
(75, 'Bailey Macknish', 1, '1960-12-19'),
(76, 'Royal Nuccitelli', 3, '1963-03-10'),
(77, 'Fremont Birdfield', 3, '1965-10-21'),
(78, 'Winna Roach', 2, '1975-05-13'),
(79, 'Sisile Coll', 3, '2003-04-28'),
(81, 'Jillana Pagan', 1, '1951-08-31'),
(82, 'Charyl Connue', 2, '1965-08-28'),
(83, 'Deanna Sposito', 5, '1905-10-27'),
(84, 'Gaultiero De Mattei', 6, '1923-08-10'),
(85, 'Carley Cannan', 1, '2008-06-11'),
(86, 'Maxwell Lavery', 7, '1999-12-07'),
(87, 'Ketty Tinsey', 7, '1924-07-08'),
(88, 'Nevil Riseley', 3, '1990-11-09'),
(89, 'Loreen Melledy', 2, '1971-09-08'),
(90, 'Sandy Novak', 4, '0000-00-00'),
(91, 'Berne Posnett', 6, '1996-06-27'),
(92, 'Ethelyn Speedy', 6, '1983-01-28'),
(93, 'Gaelan Le Grove', 7, '1936-08-22'),
(94, 'Nanice Kilmartin', 3, '1988-04-02'),
(95, 'Phil Bisiker', 5, '1931-01-23'),
(96, 'Ulrick Govett', 3, '1976-12-08'),
(97, 'Nehemiah Heindrich', 4, '2001-12-10'),
(98, 'Hailee MacAne', 5, '1922-11-13'),
(99, 'Morse Verne', 4, '2006-11-03'),
(100, 'Alexio Purrington', 4, '1922-12-28'),
(101, 'Jojo Mallinson', 3, '2016-08-24'),
(102, 'Hilton Gravatt', 1, '1944-08-25'),
(103, 'Cherise Mabe', 6, '1988-03-31'),
(104, 'Lexi Rowbottom', 7, '1958-12-09'),
(105, 'Ambrosio Suddock', 6, '1986-08-15'),
(106, 'Grantley  Molan', 3, '1981-01-13'),
(107, 'Tann Holsey', 7, '1954-04-07'),
(108, 'Ariel Jeandot', 1, '1904-02-15'),
(109, 'Emiline Casiero', 7, '1986-05-15'),
(110, 'Sigismondo Heads', 6, '1990-11-29'),
(111, 'Ara Rea', 5, '1989-05-06'),
(112, 'Bryce Otter', 7, '1974-06-15'),
(113, 'Keriann Falla', 1, '1909-03-17'),
(114, 'Camellia Currie', 3, '1932-06-12'),
(115, 'Raffarty Mattiacci', 1, '2010-02-25'),
(116, 'Katha Kmicicki', 5, '1944-02-16'),
(117, 'Betta Knightsbridge', 1, '1922-03-02'),
(118, 'Vilma Comellini', 3, '1983-12-30'),
(119, 'Arron Pancost', 7, '1936-09-18'),
(120, 'Denni Marsie', 3, '1982-05-28'),
(121, 'Berni Gyrgorcewicx', 2, '1969-06-09'),
(122, 'Raimondo Ockendon', 7, '1970-10-17'),
(123, 'Rockie Wibberley', 2, '1952-12-22'),
(124, 'Konstantine Martinolli', 7, '2004-07-18'),
(125, 'Gerhardine Skakunas', 1, '1999-10-13'),
(126, 'Jerad Imason', 7, '1924-02-20'),
(127, 'Helenka Babst', 1, '1962-12-15'),
(128, 'Pacorro Annell', 7, '1974-07-22'),
(129, 'Phoebe Sigg', 7, '1963-11-04'),
(130, 'Caesar Benedicto', 4, '1910-08-27'),
(131, 'Kelbee Wolfer', 5, '1919-03-10'),
(132, 'Yorgo Huller', 4, '2015-10-31'),
(133, 'Dionysus Munks', 7, '1990-07-27'),
(134, 'Natalya Strood', 3, '1930-07-13'),
(135, 'Valeda Kenvin', 6, '1989-08-19'),
(136, 'Arleen Tschursch', 2, '1977-04-10'),
(137, 'Arlie Beever', 5, '1944-05-17'),
(138, 'Dione Aseef', 6, '1955-04-29'),
(139, 'Kellen Ahrenius', 6, '2002-12-27'),
(140, 'Myrilla Argo', 4, '1962-12-01'),
(141, 'Garnet Brunicke', 5, '1966-07-30'),
(142, 'Maddie Edmonson', 7, '1972-10-14'),
(143, 'Kattie Barkas', 7, '1949-06-06'),
(144, 'Ediva Chiles', 2, '1933-07-18'),
(145, 'Lethia Yedy', 6, '1904-08-07'),
(146, 'Tanny Onise', 7, '1941-06-07'),
(147, 'Sigrid Gethyn', 6, '1906-12-28'),
(148, 'Delbert Goulstone', 6, '1920-02-16'),
(149, 'Matias Kunneke', 2, '1937-01-18'),
(150, 'Buddy Crauford', 4, '1915-03-21'),
(151, 'Lek Piggott', 3, '1917-10-29'),
(152, 'Annalee Bellfield', 1, '1944-07-13'),
(153, 'Stevena MacCallam', 5, '1962-05-09'),
(154, 'Newton Offen', 4, '1936-08-24'),
(155, 'Flossi Perfitt', 7, '1951-08-18'),
(156, 'Ayn Devorill', 1, '1983-12-27'),
(157, 'Andrei Waterstone', 6, '1980-12-10'),
(158, 'Sherm Sorensen', 6, '1986-01-20'),
(159, 'Raviv Fittall', 6, '2004-03-24'),
(160, 'Leroi Gregg', 4, '1967-10-07'),
(161, 'Linnea Teml', 4, '1960-03-15'),
(162, 'Roslyn Boshell', 1, '2013-07-04'),
(163, 'Urbain Puve', 2, '1948-11-18'),
(164, 'Lewie Smart', 4, '2017-02-20'),
(165, 'Isiahi Nutley', 3, '1959-05-08'),
(166, 'Frederica Seagar', 5, '1944-06-23'),
(167, 'Glori Blazic', 6, '1950-01-16'),
(168, 'Shanta Tape', 1, '1921-02-11'),
(169, 'Evvy Gillbe', 3, '1921-05-09'),
(170, 'Pablo Glusby', 7, '1956-09-17'),
(171, 'Allsun Towey', 6, '1970-04-09'),
(172, 'Giorgio Paute', 3, '1978-11-21'),
(173, 'Zitella Stother', 2, '1995-09-22'),
(174, 'Ashlen Coomes', 1, '1955-02-12'),
(175, 'Deanne Brognot', 6, '1921-10-30'),
(176, 'Spenser Marlowe', 3, '1996-10-31'),
(177, 'Quentin Saffill', 3, '1919-10-28'),
(178, 'Pernell Everett', 1, '2000-02-27'),
(179, 'Ephrayim Martinat', 7, '1938-10-24'),
(180, 'El Giacoppoli', 7, '1961-04-11'),
(181, 'Darrin Brickdale', 2, '1955-07-27'),
(182, 'Olin Prebble', 3, '1900-04-30'),
(183, 'Currie Patnelli', 1, '1995-01-16'),
(184, 'Ronald Orpwood', 5, '1978-02-26'),
(185, 'Theobald Addionizio', 7, '1904-03-27'),
(186, 'Esther Leel', 6, '1988-06-23'),
(187, 'Martica Rogeron', 6, '2003-04-12'),
(188, 'Dario Westcar', 7, '1909-05-14'),
(189, 'Griselda Shinner', 3, '1940-07-30'),
(190, 'Alick Bruyntjes', 6, '1942-09-07'),
(191, 'Vyky Attwell', 6, '1915-01-08'),
(192, 'Oswald Lingner', 1, '1905-08-04'),
(193, 'Lexy Jest', 4, '2014-05-09'),
(194, 'Carmel Placide', 6, '1965-09-05'),
(195, 'Torrey Fownes', 1, '1949-02-17'),
(196, 'Thadeus McConigal', 2, '2013-01-29'),
(197, 'Shaun Viveash', 7, '2010-04-19'),
(198, 'Cyrill Schustl', 1, '1948-12-20'),
(199, 'Dora MacAllister', 7, '1934-08-13'),
(200, 'Mirabelle Weiss', 2, '1955-05-19'),
(201, 'Shaina Risen', 2, '1950-05-28'),
(202, 'Davis Arnefield', 4, '1904-11-14'),
(203, 'Pooh Amburgy', 4, '1991-04-03'),
(204, 'Maryellen Westgarth', 1, '1955-01-26'),
(205, 'Norry Roadnight', 1, '1906-02-13'),
(206, 'Gusta anson', 1, '1968-09-17'),
(207, 'Nial Barlow', 4, '1911-10-13'),
(208, 'Gilbertina Swancott', 7, '1967-07-29'),
(209, 'Latisha Ewer', 6, '1957-06-03'),
(210, 'Faunie Cocher', 2, '1984-01-07'),
(211, 'Vanni Moncreiff', 1, '1971-01-26'),
(212, 'Orbadiah Pfaff', 2, '1932-02-21'),
(213, 'Hedvig Mordey', 7, '1932-05-07'),
(214, 'Tate Jauncey', 4, '1908-09-08'),
(215, 'Blythe Dowgill', 3, '1952-01-10'),
(216, 'Oralee Dallimore', 7, '1908-11-28'),
(217, 'Allister Asty', 3, '1959-05-15'),
(218, 'Federica Littrell', 4, '1985-12-11'),
(219, 'Boigie Dumphrey', 6, '1974-03-30'),
(220, 'Maryjane Whiteson', 7, '2002-09-11'),
(221, 'Nefen Kira', 7, '1969-04-07'),
(222, 'Tiebold Eyam', 3, '1901-08-20'),
(223, 'Emilio Rate', 3, '1945-12-15'),
(224, 'Tillie Huggin', 5, '2008-04-29'),
(225, 'Bat Edmett', 3, '1972-09-18'),
(226, 'Jandy Van Salzberger', 3, '1963-10-17'),
(227, 'Marietta Ferguson', 2, '1945-05-24'),
(228, 'Alexandre Klulisek', 5, '1909-10-27'),
(229, 'Scarface Fallawe', 5, '1906-01-28'),
(230, 'Rheba Straine', 4, '1940-03-04'),
(231, 'Vickie Gorries', 3, '1974-10-06'),
(232, 'Ray Fuxman', 5, '2011-05-24'),
(233, 'Merv Cory', 3, '1918-02-28'),
(234, 'Ranice Fransseni', 1, '1937-05-22'),
(235, 'Murray Disdel', 1, '2002-09-03'),
(236, 'Hope Cousans', 4, '1954-05-30'),
(237, 'Selinda Enrich', 1, '1971-10-07'),
(238, 'Myrtie Marcham', 1, '1922-04-17'),
(239, 'Gerladina Chese', 3, '1951-03-06'),
(240, 'Lorita Tonbridge', 3, '1952-12-02'),
(241, 'Dynah Bendig', 6, '1958-04-29'),
(242, 'Gert Kirman', 5, '1936-08-18'),
(243, 'Clementius Hatch', 5, '1955-06-24'),
(244, 'Danyette Fountian', 4, '2002-06-06'),
(245, 'Frankie Gallemore', 5, '1945-06-09'),
(246, 'Sorcha Keuneke', 5, '1938-02-27'),
(247, 'Gustave Hyslop', 4, '1921-07-10'),
(248, 'Horten Petett', 7, '1986-11-27'),
(249, 'Cecile Aucutt', 2, '1913-12-16'),
(250, 'Cinderella Lugden', 4, '1928-02-26'),
(251, 'Gracie Querree', 7, '1982-12-22'),
(252, 'Ruthi Kleinlerer', 6, '1905-11-11'),
(253, 'Jordanna Shoebridge', 5, '1956-07-17'),
(254, 'Cornelle Stoller', 1, '1900-07-01'),
(255, 'Correy Andreia', 3, '1917-06-14'),
(256, 'Anet Wrotham', 5, '1987-09-10'),
(257, 'Aldo Blanchflower', 4, '1983-12-23'),
(258, 'Garik Rolfe', 1, '1916-06-03'),
(259, 'Aloin Barz', 1, '1981-06-18'),
(260, 'Celestia Valentine', 5, '1988-06-28'),
(261, 'Klarika Beresford', 5, '1928-07-12'),
(262, 'Roze Kinahan', 6, '1965-06-17'),
(263, 'Halli Mumberson', 4, '1976-04-05'),
(264, 'Felicity Ajam', 5, '1944-09-17'),
(265, 'Joanna Rabbitts', 3, '1909-02-05'),
(266, 'Clay Girodias', 1, '1953-01-06'),
(267, 'Charin Shaxby', 1, '1963-10-21'),
(268, 'Turner Barts', 4, '1964-04-11'),
(269, 'Kalina Perillo', 1, '1942-07-13'),
(270, 'Jae Brian', 6, '1990-02-09'),
(271, 'Jany Monget', 2, '1983-12-03'),
(272, 'Othella Howison', 2, '1971-10-21'),
(273, 'Auria Joburn', 7, '2002-02-28'),
(274, 'Oralie Dimmer', 1, '2002-11-25'),
(275, 'Marlow Dorrington', 7, '1935-10-05'),
(276, 'Joann Kitteridge', 7, '1927-04-03'),
(277, 'Marsha Southcoat', 2, '1968-01-21'),
(278, 'Jolyn Edmundson', 4, '1990-08-14'),
(279, 'Dolley Spowart', 6, '1938-01-30'),
(280, 'Edin Pinckstone', 2, '2010-06-03'),
(281, 'Fran Blowne', 4, '1918-03-13'),
(282, 'Sumner Buckby', 1, '1979-03-03'),
(283, 'Barret Oldam', 1, '1907-02-21'),
(284, 'Malchy Baker', 7, '2001-01-11'),
(285, 'Ezekiel Gallant', 5, '1943-06-14'),
(286, 'Melodie Burfitt', 2, '1900-08-30'),
(287, 'Tobit Lambdon', 3, '1926-10-20'),
(288, 'Aura Grabiec', 2, '1953-12-13'),
(289, 'Fifi Giraudat', 6, '1952-03-18'),
(290, 'Stacy Maffioletti', 4, '1975-11-20'),
(291, 'Carine Ducker', 6, '1911-03-26'),
(292, 'Aidan Birkett', 5, '1937-02-19'),
(293, 'Worthy Swepstone', 1, '1980-09-20'),
(294, 'Morley Paschke', 2, '1929-03-20'),
(295, 'Beret Carnihan', 5, '1936-11-28'),
(296, 'Danella Skuce', 4, '1942-10-13'),
(297, 'Ingrid Vickerman', 4, '1971-05-11'),
(298, 'Catherina Trusler', 2, '1918-04-13'),
(299, 'Harrietta Verdie', 5, '2005-02-09'),
(300, 'Chrisy Calderwood', 7, '1918-07-27'),
(308, 'rererere', 3, '2018-02-20'),
(311, 'asdasds', 2, '2018-02-27'),
(312, '', 3, '0000-00-00'),
(313, '', 3, '0000-00-00'),
(314, '', 3, '0000-00-00'),
(315, '', 3, '0000-00-00'),
(316, '', 3, '0000-00-00'),
(317, '', 3, '0000-00-00'),
(318, '', 3, '0000-00-00'),
(319, 'asdasd', 3, '2018-02-21'),
(320, '', 3, '0000-00-00'),
(321, 'antonio', 1, '2018-02-28'),
(322, '', 3, '2018-02-27'),
(323, '', 3, '0000-00-00'),
(324, 'asdsda', 3, '2018-02-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo`
--

CREATE TABLE `trabajo` (
  `idtrabajo` int(64) NOT NULL,
  `trabajo` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trabajo`
--

INSERT INTO `trabajo` (`idtrabajo`, `trabajo`) VALUES
(1, 'Developer Junior'),
(2, 'Senior Developer'),
(3, 'Assistant Professor'),
(4, 'Design Engineer'),
(5, 'Programmer Analyst III'),
(6, 'Sales Representative'),
(7, 'Geological Engineer');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `trabajo` (`idtrabajo`);

--
-- Indices de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD PRIMARY KEY (`idtrabajo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`idtrabajo`) REFERENCES `trabajo` (`idtrabajo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
