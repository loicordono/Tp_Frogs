-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2023 at 09:56 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id_collection` int(11) NOT NULL,
  `nom_collection` varchar(50) DEFAULT NULL,
  `description_collection` varchar(150) DEFAULT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id_collection`, `nom_collection`, `description_collection`, `id_utilisateur`) VALUES
(1, 'collection test', 'une collection de test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enregistrement_collection`
--

CREATE TABLE `enregistrement_collection` (
  `id_grenouille` int(11) NOT NULL,
  `id_collection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `famille`
--

CREATE TABLE `famille` (
  `id_famille` int(11) NOT NULL,
  `nom_famille` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `famille`
--

INSERT INTO `famille` (`id_famille`, `nom_famille`) VALUES
(1, 'Ceratobatrachidae'),
(2, 'Ranidae'),
(3, 'Hylidae'),
(4, 'Rhacophoridae'),
(5, 'Arthroleptidae'),
(6, 'Rhinodermatidae'),
(7, 'Phyllomedusidae'),
(8, 'Conrauidae'),
(9, 'Hemiphractidae'),
(10, 'Microhylidae');

-- --------------------------------------------------------

--
-- Table structure for table `grenouille`
--

CREATE TABLE `grenouille` (
  `id_grenouille` int(11) NOT NULL,
  `nom_scientifique` varchar(50) DEFAULT NULL,
  `taille` decimal(3,1) DEFAULT NULL,
  `altitude` decimal(6,2) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `id_famille` int(11) NOT NULL,
  `id_statut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grenouille`
--

INSERT INTO `grenouille` (`id_grenouille`, `nom_scientifique`, `taille`, `altitude`, `image`, `id_famille`, `id_statut`) VALUES
(1, 'Cornufer guentheri', '5.6', '700.00', 'lien image', 1, 1),
(2, 'Platymantis taylori', '27.6', '400.00', 'lien image', 1, 6),
(3, 'Pelophylax perezi', '8.5', '2380.00', 'lien image', 2, 1),
(4, 'Pelophelax ridibundus', '13.5', '800.00', 'lien', 2, 1),
(5, 'Pelophylax kl. grafi', '0.0', '800.00', 'lien', 2, 7),
(6, ' Rana dalmatina', '52.5', '500.00', 'lien', 2, 1),
(7, 'Conraua goliath', '30.0', '1000.00', 'lien', 8, 5),
(8, 'Rana Aurora', '25.0', '1000.00', 'lien', 2, 1),
(9, 'Rana graeca', '75.0', '300.00', 'lien', 2, 1),
(10, 'Rana iberica', '30.0', '2425.00', 'lien', 2, 7),
(11, 'Rana italica', '40.0', '1667.00', 'lien', 2, 1),
(12, 'Pelophylax cerigensis', '53.5', '10.00', 'lien', 2, 4),
(13, 'Rana latastei', '53.5', '500.00', 'lien', 2, 6),
(14, 'Pelophylax lessonae', '64.5', '500.00', 'lien', 2, 1),
(15, 'Lithobates pipiens', '10.0', '2500.00', 'lien', 2, 1),
(16, 'Amnirana albolabris', '8.5', '1000.00', 'lien', 2, 1),
(17, 'Lithobates palustris', '8.7', '282.50', 'lien', 2, 1),
(18, 'Rana luteiventris', '10.0', '3000.00', 'lien', 2, 1),
(19, 'Rana pretiosa', '10.0', '795.00', 'lien', 2, 6),
(20, 'Gastrotheca', '16.0', '1000.00', 'lien', 9, 8),
(21, 'Hypopachus variolosus', '4.5', '2100.00', 'lien', 10, 1),
(22, 'Lithobates catesbeianus', '15.0', '1600.00', 'lien', 2, 1),
(23, 'Lithobates septentrionalis', '6.2', '3000.00', 'lien', 2, 1),
(24, 'Rana arvalis', '7.5', '1500.00', 'lien', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hybridation`
--

CREATE TABLE `hybridation` (
  `id_hybridation` int(11) NOT NULL,
  `id_grenouille_resultat` int(11) NOT NULL,
  `id_grenouille_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hybridation`
--

INSERT INTO `hybridation` (`id_hybridation`, `id_grenouille_resultat`, `id_grenouille_parent`) VALUES
(1, 5, 3),
(2, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `noms_vernaculaire`
--

CREATE TABLE `noms_vernaculaire` (
  `id_nom` int(11) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `id_grenouille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `noms_vernaculaire`
--

INSERT INTO `noms_vernaculaire` (`id_nom`, `designation`, `id_grenouille`) VALUES
(1, 'Grenouille agile', 6),
(2, 'Grenouille d\'Albanie', 0),
(3, 'Grenouille arboricole', 0),
(4, 'Grenouille arboricole d\'Afrique', 0),
(5, 'Grenouille des Balkans', 0),
(6, 'Grenouille de Berger', 0),
(7, 'Grenouille des bois', 0),
(8, 'Grenouille des champs', 0),
(9, 'Grenouille des montagnes à pattes jaunes', 0),
(10, 'Grenouille du ciel', 0),
(11, 'Grenouille cornue', 0),
(12, 'Grenouille cornue des Salomon', 1),
(13, 'Grenouille de Crète', 0),
(14, 'Grenouilles-criquet', 0),
(15, 'Grenouille de Darwin', 0),
(16, 'Grenouille épirote', 0),
(17, 'Grenouille-feuille', 0),
(18, 'Grenouille fouisseuse', 0),
(19, 'Grenouille géante', 7),
(20, 'Grenouille géante du lac Titicaca', 8),
(21, 'Grenouille Goliath', 7),
(22, 'Grenouille de Graf', 5),
(23, 'Grenouille grecque', 9),
(24, 'Grenouille ibérique', 10),
(25, 'Grenouille italienne', 11),
(26, 'Grenouille de Karpathos', 12),
(27, 'Grenouille de Lataste', 13),
(28, 'Grenouille de Lesson', 14),
(29, 'Grenouille de Lessona', 14),
(30, 'Grenouille léopard', 15),
(31, 'Grenouille à lèvres blanches', 16),
(32, 'Grenouille des marais', 13),
(33, 'Grenouille maculée de Columbia', 18),
(34, 'Grenouille maculée de l\'Orégon', 19),
(35, 'Grenouille marsupiale', 20),
(36, 'Grenouille-mouton', 21),
(37, 'Grenouille mugissante', 22),
(38, 'Grenouille du Nord', 23),
(39, 'Grenouille oxyrhine', 24),
(40, 'Grenouille de Pérez', 3),
(41, 'Grenouille pisseuse', 0),
(42, 'Grenouille des Pyrénées', 0),
(43, 'Grenouille-à-queue côtière', 0),
(44, 'Grenouille-à-queue des Rocheuses', 0),
(45, 'Grenouille rieuse', 4),
(46, 'Grenouille rousse', 0),
(47, 'Grenouille des Seychelles', 0),
(48, 'Grenouille-taureau', 0),
(49, 'Grenouille-taureau américaine', 0),
(50, 'Grenouille-taureau d\'Amérique du Nord', 0),
(51, 'Grenouille-taureau d\'Afrique australe', 0),
(52, 'Grenouille-tigre', 0),
(53, 'Grenouille-tomate', 0),
(54, 'Grenouille d\'Uzzell', 0),
(55, 'Grenouille verte', 0),
(56, 'Grenouille vivipare de Porto Rico', 0),
(57, 'Grenouille volante', 0),
(58, 'Petite grenouille verte', 0);

-- --------------------------------------------------------

--
-- Table structure for table `statut_conservation_uicn`
--

CREATE TABLE `statut_conservation_uicn` (
  `id_statut` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `icone` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statut_conservation_uicn`
--

INSERT INTO `statut_conservation_uicn` (`id_statut`, `code`, `statut`, `icone`, `description`) VALUES
(1, 'LC', 'Préocuppation mineure', 'icon/jpg', 'Ne remplit pas les critères d\'une catégorie en danger.Les animaux répandus et abondant appartiennent à cette catégorie.'),
(2, 'EX', 'Eteint', 'icones eteint', 'Aucun individu survivant connu.'),
(3, 'EW', 'Eteint à l\'état sauvage', 'icone eteint sauvage', 'Survivants connus uniquement en captivité ou en dehors de leur habitat d\'origine.'),
(4, 'CR', 'En danger critique', 'danger critique', 'Risque d\'extinction dans la nature extrêmement élevé.'),
(5, 'EN', 'En danger', 'danger', 'Haut risque d\'extinction dans la nature.'),
(6, 'VU', 'Vulnérable', 'vulnerable', 'Haut risque de mise en danger.\r\n'),
(7, 'NT', 'Quasi menacé', 'quasi menace', 'Probabilité d\'être en danger dans un futur proche.\r\n'),
(8, 'DD', 'Données insuffisantes', 'pas de données', 'Pas assez de données pour évaluer le risque d\'extinction.\r\n'),
(9, 'NE', 'Non evalué', 'pas evalue', 'N\'a pas encore été évaluée');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `mail` varchar(80) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `pseudo`, `mail`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id_collection`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Indexes for table `enregistrement_collection`
--
ALTER TABLE `enregistrement_collection`
  ADD PRIMARY KEY (`id_grenouille`,`id_collection`),
  ADD KEY `id_collection` (`id_collection`);

--
-- Indexes for table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`id_famille`);

--
-- Indexes for table `grenouille`
--
ALTER TABLE `grenouille`
  ADD PRIMARY KEY (`id_grenouille`),
  ADD KEY `id_famille` (`id_famille`),
  ADD KEY `id_statut` (`id_statut`);

--
-- Indexes for table `hybridation`
--
ALTER TABLE `hybridation`
  ADD PRIMARY KEY (`id_hybridation`),
  ADD KEY `id_grenouille_resultat` (`id_grenouille_resultat`),
  ADD KEY `id_grenouille_parent` (`id_grenouille_parent`);

--
-- Indexes for table `noms_vernaculaire`
--
ALTER TABLE `noms_vernaculaire`
  ADD PRIMARY KEY (`id_nom`),
  ADD KEY `fk_id_grenouille` (`id_grenouille`);

--
-- Indexes for table `statut_conservation_uicn`
--
ALTER TABLE `statut_conservation_uicn`
  ADD PRIMARY KEY (`id_statut`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id_collection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `famille`
--
ALTER TABLE `famille`
  MODIFY `id_famille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grenouille`
--
ALTER TABLE `grenouille`
  MODIFY `id_grenouille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `noms_vernaculaire`
--
ALTER TABLE `noms_vernaculaire`
  MODIFY `id_nom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `statut_conservation_uicn`
--
ALTER TABLE `statut_conservation_uicn`
  MODIFY `id_statut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Constraints for table `enregistrement_collection`
--
ALTER TABLE `enregistrement_collection`
  ADD CONSTRAINT `enregistrement_collection_ibfk_1` FOREIGN KEY (`id_grenouille`) REFERENCES `grenouille` (`id_grenouille`),
  ADD CONSTRAINT `enregistrement_collection_ibfk_2` FOREIGN KEY (`id_collection`) REFERENCES `collection` (`id_collection`);

--
-- Constraints for table `grenouille`
--
ALTER TABLE `grenouille`
  ADD CONSTRAINT `grenouille_ibfk_1` FOREIGN KEY (`id_famille`) REFERENCES `famille` (`id_famille`),
  ADD CONSTRAINT `grenouille_ibfk_2` FOREIGN KEY (`id_statut`) REFERENCES `statut_conservation_uicn` (`id_statut`);

--
-- Constraints for table `hybridation`
--
ALTER TABLE `hybridation`
  ADD CONSTRAINT `hybridation_ibfk_1` FOREIGN KEY (`id_grenouille_resultat`) REFERENCES `grenouille` (`id_grenouille`),
  ADD CONSTRAINT `hybridation_ibfk_2` FOREIGN KEY (`id_grenouille_parent`) REFERENCES `grenouille` (`id_grenouille`);

--
-- Constraints for table `noms_vernaculaire`
--
ALTER TABLE `noms_vernaculaire`
  ADD CONSTRAINT `fk_id_grenouille` FOREIGN KEY (`id_grenouille`) REFERENCES `grenouille` (`id_grenouille`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
