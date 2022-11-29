-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 29 nov. 2022 à 10:48
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddgrpahique`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `numEmp` int NOT NULL,
  `ageEmp` int NOT NULL,
  `salaireEmp` double NOT NULL,
  `sexe` varchar(10) NOT NULL,
  PRIMARY KEY (`numEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`numEmp`, `ageEmp`, `salaireEmp`, `sexe`) VALUES
(1, 37, 849, 'Homme'),
(2, 18, 972, 'Homme'),
(3, 51, 1871, 'Homme'),
(4, 30, 1488, 'Homme'),
(5, 37, 879, 'Homme'),
(6, 36, 2357, 'Homme'),
(7, 53, 2332, 'Femme'),
(8, 56, 2249, 'Homme'),
(9, 42, 2162, 'Homme'),
(10, 20, 852, 'Femme'),
(11, 50, 1243, 'Femme'),
(12, 59, 546, 'Homme'),
(13, 54, 2124, 'Homme'),
(14, 18, 715, 'Femme'),
(15, 19, 1687, 'Homme'),
(16, 32, 1527, 'Homme'),
(17, 41, 889, 'Homme'),
(18, 51, 595, 'Femme'),
(19, 53, 1212, 'Homme'),
(20, 50, 668, 'Homme'),
(21, 29, 1419, 'Homme'),
(22, 34, 1570, 'Femme'),
(23, 35, 2320, 'Homme'),
(24, 39, 1096, 'Femme'),
(25, 52, 2236, 'Femme'),
(26, 27, 894, 'Femme'),
(27, 39, 1078, 'Femme'),
(28, 57, 1900, 'Femme'),
(29, 52, 1742, 'Femme'),
(30, 32, 1342, 'Femme'),
(31, 20, 615, 'Homme'),
(32, 47, 1508, 'Homme'),
(33, 60, 1187, 'Femme'),
(34, 57, 937, 'Femme'),
(35, 56, 758, 'Homme'),
(36, 36, 892, 'Homme'),
(37, 51, 2473, 'Homme'),
(38, 42, 701, 'Homme'),
(39, 21, 951, 'Femme'),
(40, 18, 1557, 'Homme'),
(41, 22, 1000, 'Femme'),
(42, 36, 790, 'Homme'),
(43, 44, 1935, 'Homme'),
(44, 18, 2273, 'Femme'),
(45, 55, 2201, 'Femme'),
(46, 19, 2447, 'Homme'),
(47, 50, 1525, 'Homme'),
(48, 50, 1247, 'Femme'),
(49, 42, 2099, 'Femme'),
(50, 29, 1002, 'Homme'),
(51, 32, 1004, 'Homme'),
(52, 34, 1357, 'Homme'),
(53, 44, 899, 'Femme'),
(54, 52, 2049, 'Femme'),
(55, 37, 744, 'Homme'),
(56, 23, 1255, 'Femme'),
(57, 53, 711, 'Homme'),
(58, 51, 1756, 'Homme'),
(59, 24, 2470, 'Femme'),
(60, 27, 2284, 'Homme'),
(61, 34, 1661, 'Femme'),
(62, 49, 1559, 'Homme'),
(63, 29, 523, 'Homme'),
(64, 55, 1121, 'Femme'),
(65, 27, 913, 'Homme'),
(66, 40, 1944, 'Homme'),
(67, 51, 944, 'Homme'),
(68, 57, 2040, 'Femme'),
(69, 20, 1432, 'Femme'),
(70, 32, 2323, 'Femme'),
(71, 39, 1059, 'Femme'),
(72, 27, 993, 'Homme'),
(73, 46, 2449, 'Homme'),
(74, 39, 717, 'Homme'),
(75, 21, 662, 'Homme'),
(76, 36, 1841, 'Homme'),
(77, 49, 1209, 'Homme'),
(78, 39, 1187, 'Homme'),
(79, 22, 2116, 'Homme'),
(80, 51, 2006, 'Homme'),
(81, 34, 1520, 'Femme'),
(82, 57, 858, 'Homme'),
(83, 26, 998, 'Homme'),
(84, 35, 1852, 'Homme'),
(85, 29, 1928, 'Homme'),
(86, 21, 1855, 'Homme'),
(87, 32, 1681, 'Homme'),
(88, 25, 588, 'Homme'),
(89, 51, 2263, 'Homme'),
(90, 28, 1208, 'Homme'),
(91, 45, 2136, 'Homme'),
(92, 29, 1021, 'Homme'),
(93, 59, 1298, 'Femme'),
(94, 47, 1090, 'Homme'),
(95, 43, 918, 'Femme'),
(96, 54, 579, 'Femme'),
(97, 39, 2020, 'Femme'),
(98, 42, 1243, 'Femme'),
(99, 55, 500, 'Homme'),
(100, 45, 1115, 'Femme'),
(101, 49, 2145, 'Homme'),
(102, 28, 973, 'Femme'),
(103, 50, 1650, 'Femme'),
(104, 44, 715, 'Femme'),
(105, 21, 1998, 'Femme'),
(106, 30, 1869, 'Femme'),
(107, 32, 1105, 'Femme'),
(108, 44, 1219, 'Homme'),
(109, 37, 2212, 'Homme'),
(110, 28, 2054, 'Homme'),
(111, 42, 1109, 'Homme'),
(112, 21, 2420, 'Homme'),
(113, 54, 1362, 'Homme'),
(114, 60, 1748, 'Femme'),
(115, 40, 1858, 'Femme'),
(116, 38, 1438, 'Femme'),
(117, 34, 2385, 'Femme'),
(118, 19, 519, 'Femme'),
(119, 33, 2281, 'Femme'),
(120, 46, 1055, 'Homme'),
(121, 24, 2443, 'Homme'),
(122, 56, 633, 'Homme'),
(123, 33, 1739, 'Homme'),
(124, 25, 980, 'Femme'),
(125, 44, 1670, 'Femme'),
(126, 38, 1953, 'Homme'),
(127, 25, 1792, 'Femme'),
(128, 41, 829, 'Femme'),
(129, 46, 2186, 'Homme'),
(130, 39, 2296, 'Femme'),
(131, 56, 2194, 'Femme'),
(132, 52, 2329, 'Homme'),
(133, 54, 1116, 'Femme'),
(134, 25, 2489, 'Homme'),
(135, 43, 1498, 'Homme'),
(136, 33, 2493, 'Femme'),
(137, 19, 1524, 'Homme'),
(138, 49, 977, 'Homme'),
(139, 29, 1013, 'Femme'),
(140, 31, 1587, 'Homme'),
(141, 47, 1269, 'Femme'),
(142, 32, 1688, 'Homme'),
(143, 51, 2300, 'Femme'),
(144, 39, 1370, 'Homme'),
(145, 41, 1857, 'Femme'),
(146, 34, 1511, 'Femme'),
(147, 51, 1508, 'Homme'),
(148, 46, 1428, 'Femme'),
(149, 24, 1789, 'Femme'),
(150, 42, 780, 'Femme'),
(151, 21, 2076, 'Homme'),
(152, 46, 753, 'Femme'),
(153, 35, 1964, 'Homme'),
(154, 53, 968, 'Homme'),
(155, 54, 1848, 'Femme'),
(156, 59, 1221, 'Femme'),
(157, 34, 1692, 'Homme'),
(158, 59, 1869, 'Femme'),
(159, 48, 1419, 'Femme'),
(160, 18, 575, 'Homme'),
(161, 31, 1129, 'Homme'),
(162, 50, 2295, 'Femme'),
(163, 23, 854, 'Homme'),
(164, 54, 2457, 'Femme'),
(165, 19, 2288, 'Homme'),
(166, 50, 1875, 'Homme'),
(167, 23, 2084, 'Femme'),
(168, 32, 1963, 'Homme'),
(169, 48, 762, 'Femme'),
(170, 47, 2466, 'Homme'),
(171, 36, 1073, 'Homme'),
(172, 21, 1658, 'Femme'),
(173, 33, 2379, 'Femme'),
(174, 52, 1973, 'Femme'),
(175, 51, 1342, 'Homme'),
(176, 36, 2041, 'Femme'),
(177, 32, 639, 'Homme'),
(178, 55, 2076, 'Femme'),
(179, 38, 977, 'Femme'),
(180, 26, 2141, 'Femme'),
(181, 36, 2046, 'Femme'),
(182, 44, 2409, 'Femme'),
(183, 47, 590, 'Homme'),
(184, 48, 1372, 'Femme'),
(185, 30, 637, 'Femme'),
(186, 24, 1841, 'Homme'),
(187, 26, 2475, 'Femme'),
(188, 41, 2066, 'Femme'),
(189, 35, 943, 'Homme'),
(190, 55, 2376, 'Femme'),
(191, 24, 1077, 'Femme'),
(192, 36, 602, 'Homme'),
(193, 38, 2265, 'Femme'),
(194, 60, 1204, 'Femme'),
(195, 51, 623, 'Homme'),
(196, 46, 1353, 'Femme'),
(197, 22, 2032, 'Homme'),
(198, 28, 2383, 'Homme'),
(199, 43, 1879, 'Homme'),
(200, 25, 2488, 'Femme');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `pourcentagefemme`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `pourcentagefemme`;
CREATE TABLE IF NOT EXISTS `pourcentagefemme` (
`COUNT(numEmp)/200*100` decimal(27,4)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `pourcentagefemme2`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `pourcentagefemme2`;
CREATE TABLE IF NOT EXISTS `pourcentagefemme2` (
`pourcentage` decimal(27,4)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `pourcentagehomme`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `pourcentagehomme`;
CREATE TABLE IF NOT EXISTS `pourcentagehomme` (
`COUNT(numEmp)/200*100` decimal(27,4)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `pourcentagehomme2`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `pourcentagehomme2`;
CREATE TABLE IF NOT EXISTS `pourcentagehomme2` (
`pourcentage` decimal(27,4)
);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `idVente` int NOT NULL,
  `nomSemestre` varchar(20) NOT NULL,
  `nomMagasin` varchar(20) NOT NULL,
  `montant` int NOT NULL,
  PRIMARY KEY (`idVente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`idVente`, `nomSemestre`, `nomMagasin`, `montant`) VALUES
(1, 'Semestre 1', 'Magasin 1', 5746),
(2, 'Semestre 1', 'Magasin 2', 9838),
(3, 'Semestre 1', 'Magasin 3', 10241),
(4, 'Semestre 1', 'Magasin 4', 4913),
(5, 'Semestre 1', 'Magasin 5', 1482),
(6, 'Semestre 1', 'Magasin 6', 6253),
(7, 'Semestre 1', 'Magasin 7', 4145),
(8, 'Semestre 1', 'Magasin 8', 8801),
(9, 'Semestre 2', 'Magasin 1', 7886),
(10, 'Semestre 2', 'Magasin 2', 3706),
(11, 'Semestre 2', 'Magasin 3', 6632),
(12, 'Semestre 2', 'Magasin 4', 5591),
(13, 'Semestre 2', 'Magasin 5', 10310),
(14, 'Semestre 2', 'Magasin 6', 4186),
(15, 'Semestre 2', 'Magasin 7', 4342),
(16, 'Semestre 2', 'Magasin 8', 6665),
(17, 'Semestre 3', 'Magasin 1', 9938),
(18, 'Semestre 3', 'Magasin 2', 6662),
(19, 'Semestre 3', 'Magasin 3', 8535),
(20, 'Semestre 3', 'Magasin 4', 2680),
(21, 'Semestre 3', 'Magasin 5', 5111),
(22, 'Semestre 3', 'Magasin 6', 6413),
(23, 'Semestre 3', 'Magasin 7', 7463),
(24, 'Semestre 3', 'Magasin 8', 9799),
(25, 'Semestre 4', 'Magasin 1', 2485),
(26, 'Semestre 4', 'Magasin 2', 10904),
(27, 'Semestre 4', 'Magasin 3', 11000),
(28, 'Semestre 4', 'Magasin 4', 11828),
(29, 'Semestre 4', 'Magasin 5', 3481),
(30, 'Semestre 4', 'Magasin 6', 1458),
(31, 'Semestre 4', 'Magasin 7', 3214),
(32, 'Semestre 4', 'Magasin 8', 9131);

-- --------------------------------------------------------

--
-- Structure de la vue `pourcentagefemme`
--
DROP TABLE IF EXISTS `pourcentagefemme`;

DROP VIEW IF EXISTS `pourcentagefemme`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pourcentagefemme`  AS SELECT ((count(`employe`.`numEmp`) / 200) * 100) AS `COUNT(numEmp)/200*100` FROM `employe` WHERE (`employe`.`sexe` = 'Femme') ;

-- --------------------------------------------------------

--
-- Structure de la vue `pourcentagefemme2`
--
DROP TABLE IF EXISTS `pourcentagefemme2`;

DROP VIEW IF EXISTS `pourcentagefemme2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pourcentagefemme2`  AS SELECT ((count(`employe`.`numEmp`) / 200) * 100) AS `pourcentage` FROM `employe` WHERE (`employe`.`sexe` = 'Femme') ;

-- --------------------------------------------------------

--
-- Structure de la vue `pourcentagehomme`
--
DROP TABLE IF EXISTS `pourcentagehomme`;

DROP VIEW IF EXISTS `pourcentagehomme`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pourcentagehomme`  AS SELECT ((count(`employe`.`numEmp`) / 200) * 100) AS `COUNT(numEmp)/200*100` FROM `employe` WHERE (`employe`.`sexe` = 'Homme') ;

-- --------------------------------------------------------

--
-- Structure de la vue `pourcentagehomme2`
--
DROP TABLE IF EXISTS `pourcentagehomme2`;

DROP VIEW IF EXISTS `pourcentagehomme2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pourcentagehomme2`  AS SELECT ((count(`employe`.`numEmp`) / 200) * 100) AS `pourcentage` FROM `employe` WHERE (`employe`.`sexe` = 'Homme') ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
