-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 10 déc. 2019 à 08:28
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `discussion`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(140) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `message`, `id_utilisateur`, `date`) VALUES
(1, 'KSJFKUAERGHOIREZH', 2, '2019-11-26 11:37:34'),
(2, '', 2, '2019-11-26 11:37:35'),
(3, 'BAERTYU', 2, '2019-11-26 11:38:31'),
(4, 'FDDHYER', 2, '2019-11-26 11:56:06'),
(5, ';kehtl', 2, '2019-11-26 12:10:20'),
(6, '', 2, '2019-11-26 12:13:53'),
(7, 'salut momo', 2, '2019-11-26 12:17:59'),
(8, 'cf;,f!kfdn:lds,gmlsetml', 2, '2019-11-26 12:18:33'),
(9, 'allez lom', 4, '2019-11-26 12:21:25'),
(10, 'ouyitiupuyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\r\n', 4, '2019-11-26 12:22:13'),
(11, 'allez lom', 4, '2019-11-26 12:26:52'),
(12, 'trutru', 4, '2019-11-26 12:27:13'),
(13, 'EFLEKAJL', 2, '2019-11-26 13:46:05'),
(14, 'SALUT', 5, '2019-11-26 14:01:59'),
(15, 'sfgh', 2, '2019-11-26 15:49:55'),
(16, 'mario c est trop bien', 2, '2019-11-26 19:15:09'),
(17, '', 2, '2019-11-26 19:18:35'),
(18, 'Salutmec', 2, '2019-11-27 09:39:04'),
(19, 'coucou antho', 2, '2019-11-27 10:41:26'),
(20, 'SALUT\r\n', 2, '2019-11-27 11:50:40'),
(21, 'CAVA', 2, '2019-11-27 11:50:47'),
(22, 'FHTRUTRJYT', 2, '2019-11-27 11:50:53'),
(23, 'LIHOIMHY', 2, '2019-11-27 14:20:15'),
(24, 'LJHLIMH', 2, '2019-11-27 14:20:30'),
(25, 'LJKLJ', 2, '2019-11-27 14:20:34'),
(26, 'JYFYFYUFUY', 2, '2019-11-27 14:20:39'),
(27, 'KJGKUGUKG', 2, '2019-11-27 14:20:43'),
(28, 'SUPER JEUX\r\n', 2, '2019-11-27 14:21:04'),
(29, 'JEUX INCROYABLE', 2, '2019-11-27 14:21:17'),
(30, 'SUPER JEUX', 2, '2019-11-27 14:21:34'),
(31, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 2, '2019-11-27 14:35:32'),
(32, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 2, '2019-11-27 14:42:41'),
(33, 'frtugj', 2, '2019-11-27 14:45:50'),
(34, 'gfdsnhety', 2, '2019-11-27 14:46:02'),
(35, '', 2, '2019-11-27 14:46:16'),
(36, 'tru-(u(', 2, '2019-11-27 14:46:21'),
(37, 'gjjtyjr-uj', 2, '2019-11-27 14:46:26'),
(38, 'tuue(-ue(Ã¨ui', 2, '2019-11-27 14:46:30'),
(39, 'thhertu(e', 2, '2019-11-27 14:46:34'),
(40, '', 2, '2019-11-27 14:46:40'),
(41, 'n,,oi', 2, '2019-11-27 15:14:26'),
(42, 'jiojoi', 2, '2019-11-27 15:14:29'),
(43, 'KJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ', 2, '2019-11-27 15:43:21'),
(44, 'LHLIIOYO8Y', 2, '2019-11-27 16:53:56'),
(45, 'SUPER JEUX MAIS UN PEU ENNUYANT', 2, '2019-11-27 16:54:51'),
(46, 'AALIYAH ET CIARA', 2, '2019-11-27 18:03:02'),
(47, 'zakhrhga', 7, '2019-11-29 09:06:01'),
(48, 'salut pascal\r\n', 8, '2019-11-29 12:18:24'),
(49, 'coucou papa et maman', 8, '2019-12-01 14:53:03'),
(50, 'salut comment sava ?', 9, '2019-12-02 16:53:06');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(1, 'thoni13', '$2y$12$eeDEwCqM49ZNHjIPMknKM.LzcxMhFTu/9OuEKkUKVVL4gXK0IJtnG'),
(2, 'GREG18', '$2y$12$FNYJDejOIclakQ32q7ipHesPqxXA1iGlsixTX/Wzh6DprD6eu1oCW'),
(3, 'gregou21', '$2y$12$gPQTTx.7diyjAObQEhCT0eDF.eGG6pZlugKhWAoz3uDsJds5HQHi.'),
(4, 'olive', '$2y$12$tGEcnT0q/Al5WI3lICrazenIxE5iJPANDJYCBD5HH4LQOTQLCdrPK'),
(5, 'greg12', '$2y$12$8bqUJ1DYBXLuFclR4Hp.4.tAqG4dlDCx/sA1XtbLavUgAbocvvt/S'),
(6, 'MONYA13', '$2y$12$pmszrOnYhfi5jO2CeI5CmewzeGU1PUfZU32mD/zc3s56vykBqRCYG'),
(7, 'GREG13', '$2y$12$OD4sl2GIEIv96ESTq6VGmeOCmb12XLyUXdo5r91Eah/.YvwFG8wjm'),
(8, 'admin', '$2y$12$k8Z55f5U2tfYnNZ6qJpdDeN9SVfgxRaNi6yu80Ohtbx0GoYeGPP6O'),
(9, 'thoni13', '$2y$12$.mq44Ly32XX.d8dDaYnMkeiJ5.KLyuEYdsiAvGN8a54zLD9mazo9m'),
(10, 'nicolas', '$2y$12$VyZpJjORW2FuIChJ13JYwu82THRO6WPMlaZZD/iAKeZ4HYgCsmJcW'),
(11, 'greg', '$2y$12$HCwL9Nnln/8k8tNi1Oj20OTosFGvoJ3YruhpEsGrvLN614LqnCGYy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
