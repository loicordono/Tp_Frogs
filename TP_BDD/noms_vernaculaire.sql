-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2023 at 12:56 PM
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
-- Table structure for table `noms_vernaculaire`
--

CREATE TABLE `noms_vernaculaire` (
  `id_nom` int(11) NOT NULL,
  `designation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `noms_vernaculaire`
--

INSERT INTO `noms_vernaculaire` (`id_nom`, `designation`) VALUES
(1, 'Grenouille agile'),
(2, 'Grenouille d\'Albanie'),
(3, 'Grenouille arboricole'),
(4, 'Grenouille arboricole d\'Afrique'),
(5, 'Grenouille des Balkans'),
(6, 'Grenouille de Berger'),
(7, 'Grenouille des bois'),
(8, 'Grenouille des champs'),
(9, 'Grenouille des montagnes à pattes jaunes'),
(10, 'Grenouille du ciel'),
(11, 'Grenouille cornue'),
(12, 'Grenouille cornue des Salomon'),
(13, 'Grenouille de Crète'),
(14, 'Grenouilles-criquet'),
(15, 'Grenouille de Darwin'),
(16, 'Grenouille épirote'),
(17, 'Grenouille-feuille'),
(18, 'Grenouille fouisseuse'),
(19, 'Grenouille géante'),
(20, 'Grenouille géante du lac Titicaca'),
(21, 'Grenouille Goliath'),
(22, 'Grenouille de Graf'),
(23, 'Grenouille grecque'),
(24, 'Grenouille ibérique'),
(25, 'Grenouille italienne'),
(26, 'Grenouille de Karpathos'),
(27, 'Grenouille de Lataste'),
(28, 'Grenouille de Lesson'),
(29, 'Grenouille de Lessona'),
(30, 'Grenouille léopard'),
(31, 'Grenouille à lèvres blanches'),
(32, 'Grenouille des marais'),
(33, 'Grenouille maculée de Columbia'),
(34, 'Grenouille maculée de l\'Orégon'),
(35, 'Grenouille marsupiale'),
(36, 'Grenouille-mouton'),
(37, 'Grenouille mugissante'),
(38, 'Grenouille du Nord'),
(39, 'Grenouille oxyrhine'),
(40, 'Grenouille de Pérez'),
(41, 'Grenouille pisseuse'),
(42, 'Grenouille des Pyrénées'),
(43, 'Grenouille-à-queue côtière'),
(44, 'Grenouille-à-queue des Rocheuses'),
(45, 'Grenouille rieuse'),
(46, 'Grenouille rousse'),
(47, 'Grenouille des Seychelles'),
(48, 'Grenouille-taureau'),
(49, 'Grenouille-taureau américaine'),
(50, 'Grenouille-taureau d\'Amérique du Nord'),
(51, 'Grenouille-taureau d\'Afrique australe'),
(52, 'Grenouille-tigre'),
(53, 'Grenouille-tomate'),
(54, 'Grenouille d\'Uzzell'),
(55, 'Grenouille verte'),
(56, 'Grenouille vivipare de Porto Rico'),
(57, 'Grenouille volante'),
(58, 'Petite grenouille verte');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noms_vernaculaire`
--
ALTER TABLE `noms_vernaculaire`
  ADD PRIMARY KEY (`id_nom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noms_vernaculaire`
--
ALTER TABLE `noms_vernaculaire`
  MODIFY `id_nom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
