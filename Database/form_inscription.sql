-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2025 at 06:22 PM
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
-- Database: `form_inscription`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prenom` text NOT NULL,
  `nom` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `prenom`, `nom`, `username`, `email`, `phone`, `password`) VALUES
(7, 'Julius', 'Caesar', 'Julien', 'doe@gmail.com', 0, '1'),
(8, 'Simonus', 'Sonata', 'Simon', 'sim@son.com', 0, '2adc9'),
(9, 'Casparov', 'Koshnoikotz', 'Casper', 'casp@pert.com', 0, '3'),
(10, 'Logan', 'Wolverine', 'Logan', 'log@an.com', 0, '3'),
(11, 'Thomas', 'Sawyer', 'Tom', 'taw@son.com', 0, '12345'),
(12, 'Bruno', 'Bieber', 'Bueno', 'bobo@sqp.com', 0, '54321'),
(13, 'Justin', 'Pitbull', 'Justin', 'just@sqp.com', 0, '2'),
(14, 'Celine', 'Bieber', 'Celica', 'cel@bib.com', 0, '44'),
(15, 'Billie', 'Bootstrap', 'Bill', 'bill@strap.com', 0, '142536'),
(20, 'Miley', 'Pitbull', 'itoi', 'caspz@pert.com', 0, 's'),
(21, 'Jim', 'Bieber', 'holaey', 'star@patrpat.com', 56852355, 'd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
