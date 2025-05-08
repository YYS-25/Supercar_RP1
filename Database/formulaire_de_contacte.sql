-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2025 at 06:23 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formulaire_de_contacte`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_de_contacte`
--

DROP TABLE IF EXISTS `table_de_contacte`;
CREATE TABLE IF NOT EXISTS `table_de_contacte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `table_de_contacte`
--

INSERT INTO `table_de_contacte` (`id`, `first_name`, `last_name`, `email`, `phone`, `comment`) VALUES
(67, 'Patrick', 'Star', 'star@patpat.com', '574918', 'Melon'),
(68, 'Patrick', 'Patrick', 'sim@son.com', '574918', 's'),
(69, 'Jake', 'Paul', 'sim@son.com', '574918', 'Where is he?'),
(70, 'Bob', 'Star', 'bobo@sqp.com', '+230 88888888', 'vous etes la?'),
(71, 'Francois', 'Descharts', 'sim@son.com', '+230 44444444', 'je veux vous parler'),
(72, 'Jake', 'Paul', 'star@patpat.com', '+230 69696969', 'I wanna fight'),
(73, 'jacque', 'poulet', 'star@patpat.com', '+230 69696969', 'je veux boulette'),
(74, 'Julius', 'Caesar', 'doe@gmail.com', '+230 57491254', 'Hi!'),
(75, 'Julius', 'Caesar', 'doe@gmail.com', '+230 69696969', 'Bonjour Supercar'),
(76, 'Bob', 'Master', 'bobo@sqp.com', '+230 845 9858', 'i want vroom');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
