-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-site-supercar.alwaysdata.net
-- Generation Time: Mar 14, 2026 at 07:18 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site-supercar_db`
--
CREATE DATABASE IF NOT EXISTS `site-supercar_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `site-supercar_db`;

-- --------------------------------------------------------

--
-- Table structure for table `acceuil_en`
--

CREATE TABLE `acceuil_en` (
  `id` int(11) NOT NULL,
  `section` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acceuil_en`
--

INSERT INTO `acceuil_en` (`id`, `section`, `content`, `image`) VALUES
(1, 'hero_title', 'Welcome to Supercar!', 'images/bg-index.webp'),
(2, 'hero_subtitle', 'Discover a unique automotive experience.', ''),
(3, 'about_us', 'Supercar is much more than just a dealership! It\'s a gateway to the world of automotive excellence. Passionate about performance and elegance, we offer an exclusive selection of top-of-the-range vehicles, combining cutting-edge technology with refined design. Whether you\'re looking for a powerful sports car, a luxury model or a limited edition, we\'ll help you find the vehicle of your dreams with expertise and professionalism. Experience a tailor-made service and immerse yourself in the world of supercars with Supercar.', 'Nav_Images/logo.webp'),
(4, 'car1', 'Porsche Taycan Turbo S', 'images/TaycanTurboS.jpg'),
(5, 'car2', 'Maserati MC20 Cielo', 'images/mc20cielo.JPG'),
(6, 'car3', 'Aston Martin Vanquish', 'images/Vanquish-30.jpeg'),
(7, 'service1', 'Detailing', 'Service_Images/ast-detail.jpg'),
(8, 'service2', 'Maintenance', 'Service_Images/mas-maint-big.jpeg'),
(9, 'service3', 'Delivery', 'Service_Images/deliver.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `acceuil_fr`
--

CREATE TABLE `acceuil_fr` (
  `id` int(11) NOT NULL,
  `section` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acceuil_fr`
--

INSERT INTO `acceuil_fr` (`id`, `section`, `content`, `image`) VALUES
(1, 'hero_title', 'Bienvenue chez Supercar!', 'images/bg-index.webp'),
(2, 'hero_subtitle', 'Découvrez une expérience automobile unique.', ''),
(3, 'about_us', 'Supercar est bien plus qu\'une simple concession! C\'est une porte d\'entrée dans le monde de l\'excellence automobile. Passionnés de performance et d\'élégance, nous vous proposons une sélection exclusive de véhicules haut de gamme, alliant technologie de pointe et design raffiné. Que vous recherchiez une puissante voiture de sport, un modèle de luxe ou une série limitée, nous vous aiderons à trouver le véhicule de vos rêves avec expertise et professionnalisme. Bénéficiez d\'un service sur mesure et plongez dans l\'univers des supercars avec Supercar.', 'Nav_Images/logo.webp'),
(4, 'car1', 'Porsche Taycan Turbo S', 'images/TaycanTurboS.jpg'),
(5, 'car2', 'Maserati MC20 Cielo', 'images/mc20cielo.JPG'),
(6, 'car3', 'Aston Martin Vanquish', 'images/Vanquish-30.jpeg'),
(7, 'service1', 'Entretien du vehicule', 'Service_Images/ast-detail.jpg'),
(8, 'service2', 'Maintenance', 'Service_Images/mas-maint-big.jpeg'),
(9, 'service3', 'Livraison', 'Service_Images/deliver.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notes`
--

CREATE TABLE `admin_notes` (
  `id` int(11) NOT NULL,
  `note` text NOT NULL,
  `admin_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notes`
--

INSERT INTO `admin_notes` (`id`, `note`, `admin_user_id`, `created_at`) VALUES
(44, 'Verifier Clients', NULL, '2025-11-03 07:06:12'),
(45, 'Nouvelle demande d\'essai pour Porsche Cayenne GTS le 15/11/2025 à 16:00', 1, '2025-11-12 06:33:46'),
(46, 'Le statut de la demande d\'essai ID 82 est passé de \"Pending\" à \"Approved\"', 1, '2025-11-12 06:34:32'),
(47, 'Le statut de la demande d\'essai ID 16 est passé de \"\" à \"Pending\"', 1, '2025-11-14 11:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'utetue741963'),
(2, 'David', 'supErc4r');

-- --------------------------------------------------------

--
-- Table structure for table `contact_en`
--

CREATE TABLE `contact_en` (
  `id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_en`
--

INSERT INTO `contact_en` (`id`, `section`, `content`, `image`) VALUES
(1, 'email', 'site-supercar@alwaysdata.net', ''),
(2, 'phone', '+230 4444 5555', ''),
(3, 'horaire', '• Mon - Fri: 08:00 - 17:00\n• Saturday: 08:00 - 12:00\n• Sunday: Closed', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_fr`
--

CREATE TABLE `contact_fr` (
  `id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_fr`
--

INSERT INTO `contact_fr` (`id`, `section`, `content`, `image`) VALUES
(1, 'email', 'site-supercar@alwaysdata.net', ''),
(2, 'phone', '+230 4444 5555', ''),
(3, 'horaire', '• Lun - Ven: 08:00 - 17:00\r\n• Samedi: 08:00 - 12:00\r\n• Dimanche: Fermé', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_en`
--

CREATE TABLE `service_en` (
  `id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `sub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_en`
--

INSERT INTO `service_en` (`id`, `section`, `content`, `image`, `sub`) VALUES
(4, 'slide1', 'Banking & Leasing', 'Service_Images/leasing2.jpg', 'We take care of the bank side transactions and offer leasing\n                    facilities for easier payment!'),
(5, 'slide2', 'Maintenance', 'Service_Images/Maint1.jpg', 'Regular vehicle essential maintenance and repairs offered when\n                    needed to ensure your car is in pristine condition!'),
(6, 'slide3', 'On-Road Support', 'Service_Images/onroad3.jpg', 'Our team of professionals come wherever you are on the island to\n                    help you out in case of a car emergency!'),
(7, 'section1', 'Detailing', 'Service_Images/ast-detail.jpg', 'At SuperCar, we bring out the best in your car with our expert\n                    detailing services. From exterior washing and waxing to interior deep\n                    cleaning, we restore your vehicle\'s beauty and performance. Need\n                    something special? We tailor our services to your car’s unique needs,\n                    ensuring a hassle-free experience and exceptional results every time.'),
(8, 'section2', 'Courtesy Car', 'Service_Images/cayenne-court.jpg', 'Indulge in elegance with our Porsche Cayenne courtesy car. Powered by a 3.0L V6 engine delivering 335 horsepower, this SUV boasts adaptive air suspension, a luxurious leather interior, advanced tech features, and exceptional handling. Enjoy unrivaled comfort, performance, and style on every journey with our premium offering.'),
(9, 'section3', 'Delivery', 'Service_Images/deliver.jpg', 'We offer a premium car delivery service, ensuring your luxury vehicle arrives at your doorstep with the highest level of care. From start to finish, we prioritize a smooth, personalized experience, so you can enjoy your new car with ease and excitement, all from the comfort of your home.'),
(10, 'section4', 'Leasing &amp; Banking', 'Service_Images/lease-big.jpg', ' At SuperCar, we offer flexible leasing and banking facilities tailored to your needs, ensuring a seamless experience when acquiring your luxury vehicle. Whether you\'re looking for short-term leases or custom financing options, our expert team provides personalized solutions to make owning your dream car easy and accessible.'),
(11, 'section5', 'Maintenance &amp; Repairs', 'Service_Images/mas-maint-big.jpeg', 'We offer comprehensive maintenance services to ensure your luxury vehicle performs at its best. Our expert technicians use advanced diagnostic tools and genuine parts to provide top-tier care, from routine servicing to specialized repairs. Trust us to keep your car in pristine condition for years to come. '),
(12, 'section6', 'On-Road Assistance', 'Service_Images/onroad1.jpeg', 'We provide reliable on-road services to ensure you\'re never stranded. Whether it\'s a breakdown, flat tire, or fuel assistance, our professional team is available around the clock, 24/7 to offer quick support. With our prompt and efficient service, you can drive with confidence knowing help is just a call away.');

-- --------------------------------------------------------

--
-- Table structure for table `service_fr`
--

CREATE TABLE `service_fr` (
  `id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `sub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_fr`
--

INSERT INTO `service_fr` (`id`, `section`, `content`, `image`, `sub`) VALUES
(4, 'slide1', 'Banque et Crédit', 'Service_Images/leasing2.jpg', 'Nous nous chargeons des transactions bancaires et offrons des facilités de crédit-bail pour faciliter les paiements.'),
(5, 'slide2', 'Maintenance', 'Service_Images/Maint1.jpg', 'L\'entretien régulier des véhicules et les réparations nécessaires sont assurés pour que votre voiture soit en parfait état.'),
(6, 'slide3', 'Assistance sur route', 'Service_Images/onroad3.jpg', 'Notre équipe de professionnels se déplace où que vous soyez sur l\'île pour vous aider en cas d\'urgence automobile.'),
(7, 'section1', 'Entretien de la voiture', 'Service_Images/ast-detail.jpg', 'Chez SuperCar, nous faisons ressortir le meilleur de votre voiture grâce à nos services d\'esthétique experts. Du lavage et du cirage extérieurs au nettoyage en profondeur de l\'intérieur, nous restaurons la beauté et la performance de votre véhicule. intérieur, nous restaurons la beauté et la performance de votre véhicule. Besoin d\'un de quelque chose de spécial? Nous adaptons nos services aux besoins spécifiques de votre voiture, pour vous garantir une expérience sans tracas et des résultats exceptionnels à chaque fois.'),
(8, 'section2', 'Voiture de prêt', 'Service_Images/cayenne-court.jpg', 'Laissez-vous séduire par notre voiture de courtoisie. Propulsé par un moteur V6 de 3,0 litres ayant 335 chevaux, ce SUV est doté d\'une suspension pneumatique adaptative, d\'un intérieur en cuir luxueux, de fonctions technologiques avancées et d\'une maniabilité exceptionnelle. Profitez d\'un confort, d\'une performance et d\'un style inégalés à chaque voyage.'),
(9, 'section3', 'Livraison', 'Service_Images/deliver.jpg', 'Nous proposons un service de livraison de voitures haut de gamme, garantissant que votre véhicule de luxe arrive à votre porte avec le plus grand soin. Nous donnons la priorité à une expérience fluide et personnalisée, afin que vous puissiez profiter de votre nouvelle voiture avec facilité et enthousiasme.'),
(10, 'section4', 'Crédit-Bail &amp; Banque', 'Service_Images/lease-big.jpg', 'Nous offrons des facilités bancaires et de leasing flexibles adaptées à vos besoins, garantissant une expérience sans faille lors de l\'acquisition de votre véhicule de luxe.'),
(11, 'section5', 'Maintenance &amp; Réparations', 'Service_Images/mas-maint-big.jpeg', 'Nous proposons des services d\'entretien complets pour que votre véhicule soit le plus performant. Nous utilisons des outils de diagnostic avancés et des pièces d\'origine pour fournir des soins de premier ordre, de l\'entretien de routine aux réparations spécialisées.'),
(12, 'section6', 'Assistance sur Route', 'Service_Images/onroad1.jpeg', 'Nous fournissons des services routiers fiables pour que vous ne soyez jamais bloqué. Une panne, une crevaison ou une panne de carburant, notre équipe est disponible 24/7, pour vous offrir une assistance rapide. Grâce à notre service rapide et efficace, vous pouvez conduire en toute confiance en sachant qu\'il suffit d\'un appel pour obtenir de l\'aide.');

-- --------------------------------------------------------

--
-- Table structure for table `table_de_contacte`
--

CREATE TABLE `table_de_contacte` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `table_de_contacte`
--

INSERT INTO `table_de_contacte` (`id`, `first_name`, `last_name`, `email`, `user_id`, `phone`, `comment`) VALUES
(69, 'Jake', 'Paul', 'sim@son.com', 8, '574918', 'Where is he?'),
(70, 'Bob', 'Star', 'bobo@sqp.com', 12, '+230 88888888', 'vous etes la?'),
(71, 'Francois', 'Descharts', 'sim@son.com', 8, '+230 44444444', 'je veux vous parler'),
(76, 'Bob', 'Master', 'bobo@sqp.com', 12, '+230 845 9858', 'i want vroom'),
(77, 'Anne', 'Hathaway', 'anne@hath.com', 22, '57487485', 'bonjour'),
(78, 'Logan', 'Smith', 'log@an.com', 10, '58749512', 'hi'),
(79, 'Reed', 'Richards', 'reed@rich.com', 24, '57849635', 'Bonjour, je veux vous parler.'),
(80, 'Logan', 'Smith', 'log@an.com', 10, '58749512', 'Sent from my iPhone'),
(81, 'Billie', 'Bootstrap', 'bill@strap.com', NULL, '58967412', 'Hello, how are you doing?\r\n'),
(82, 'Billie', 'Bootstrap', 'bill@strap.com', 15, '58967412', 'How can I visit you?'),
(83, 'Billie', 'Bootstrap', 'bill@strap.com', 15, '58967412', 'Sweet Ride!'),
(84, 'Bruno', 'Bieber', 'bobo@sqp.com', 12, '51425458', 'Como Estas?'),
(85, 'Bruno', 'Bieber', 'bobo@sqp.com', NULL, '51425458', 'sda'),
(86, 'Bruno', 'Bieber', 'bobo@sqp.com', NULL, '51425458', 'Hola!'),
(87, 'Bruno', 'Bieber', 'bobo@sqp.com', 12, '51425458', 'Holaa!'),
(88, 'Logan', 'Smith', 'log@an.com', 10, '58749512', 'Hello dear'),
(90, 'Jim', 'Squarepants', 'cel@bil.com', NULL, '56852355', 'Vanakkam'),
(91, 'Jake', 'Pim', 'jak@pim.com', 23, '57487485', 'Do you have Porsche Targas?'),
(92, 'Casperal', 'Captain', 'capcap@mail.com', NULL, '454 5634', 'Bonjour, je suis Casper.');

-- --------------------------------------------------------

--
-- Table structure for table `testdrive_request`
--

CREATE TABLE `testdrive_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `voiture_id` int(11) DEFAULT NULL,
  `request_date` date NOT NULL,
  `request_time` varchar(10) NOT NULL,
  `comments` text DEFAULT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testdrive_request`
--

INSERT INTO `testdrive_request` (`id`, `user_id`, `brand`, `model`, `voiture_id`, `request_date`, `request_time`, `comments`, `status`) VALUES
(5, 12, 'Aston Martin', 'DBX', 2, '2025-03-13', '10:00', 'cas', 'Pending'),
(6, 8, 'Maserati', 'Ghibli', 6, '2025-03-16', '15:00', 'Bonjour', 'Completed'),
(7, 8, 'Maserati', 'Ghibli', 6, '2025-03-19', '16:00', 'pop', 'Approved'),
(8, 8, 'Maserati', 'Ghibli', 6, '2025-03-15', '16:00', 'I want car', 'Approved'),
(9, 8, 'Aston Martin', 'Vanquish', 4, '2025-03-16', '15:00', 'I wanna drive', 'Pending'),
(16, 24, 'Porsche', 'Taycan', 14, '2025-10-18', '14:00', 'Bonjour. Je suis Reed Richards et je veux essayer une Porsche.', 'Pending'),
(63, 10, 'Aston Martin', 'DB12 Volante', NULL, '2025-11-07', '15:00', '', 'Pending'),
(78, 10, 'Maserati', 'Levante', 8, '2025-10-26', '16:00', '', 'Denied'),
(79, 10, 'Maserati', 'GT2 Stradale', 7, '2025-10-04', '10:00', '', 'Approved'),
(80, 22, 'Maserati', 'Levante', 8, '2025-10-15', '14:00', '', 'Pending'),
(81, 22, 'Aston Martin', 'Vanquish', 4, '2025-10-21', '16:00', '', 'Pending'),
(82, 15, 'Porsche', 'Cayenne GTS', 11, '2025-11-15', '16:00', '', 'Approved');

--
-- Triggers `testdrive_request`
--
DELIMITER $$
CREATE TRIGGER `after_testdrive_insert` AFTER INSERT ON `testdrive_request` FOR EACH ROW BEGIN
    INSERT INTO admin_notes (note, admin_user_id)
    VALUES (
        CONCAT(
            'Nouvelle demande d''essai pour ', NEW.brand, ' ', NEW.model,
            ' le ', DATE_FORMAT(NEW.request_date, "%d/%m/%Y"),
            ' à ', TIME_FORMAT(NEW.request_time, "%H:%i")
        ),
        1
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_testdrive_status_update` AFTER UPDATE ON `testdrive_request` FOR EACH ROW BEGIN
    IF NEW.status <> OLD.status THEN
        INSERT INTO admin_notes (note, admin_user_id)
        VALUES (
            CONCAT(
                'Le statut de la demande d''essai ID ', NEW.id,
                ' est passé de "', OLD.status, '" à "', NEW.status, '"'
            ),
            1
        );
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `prenom`, `nom`, `username`, `email`, `phone`, `password`) VALUES
(8, 'Simonus', 'Sonata', 'Simon', 'sim@son.com', '58224176', '2adc9'),
(9, 'Casparov', 'Koshnoikotz', 'Casper', 'casp@pert.com', '56593718', '3'),
(10, 'Logan', 'Smith', 'Logan', 'log@an.com', '58749512', '3'),
(11, 'Thomas', 'Sawyer', 'Tom', 'taw@son.com', '58958724', '12345'),
(12, 'Bruno', 'Bieber', 'Bueno', 'bobo@sqp.com', '51425458', '54321'),
(13, 'Justin', 'Pitbull', 'Justin', 'just@sqp.com', '55475862', '2'),
(14, 'Celine', 'Bieber', 'Celica', 'cel@bil.com', '52368795', '44'),
(15, 'Billie', 'Bootstrap', 'Bill', 'bill@strap.com', '58967412', '142536'),
(20, 'Tester', 'User', 'Test', 'caspz@pert.com', '51798263', 's'),
(21, 'Jim', 'Bieber', 'Jim', 'star@patrpat.com', '56852355', 'd'),
(22, 'Anne', 'Hathaway', 'Anne', 'anne@hath.com', '57487485', '1'),
(23, 'Jake', 'Pim', 'Jake', 'jak@pim.com', '57487485', '1'),
(24, 'Reed', 'Richards', 'Reeds', 'reed@rich.com', '57849635', '4'),
(25, 'Alex', 'Martin', 'Alex', 'alex@mtn.com', '55005500', 'u$erAlex8');

-- --------------------------------------------------------

--
-- Table structure for table `voiture`
--

CREATE TABLE `voiture` (
  `id` int(11) NOT NULL,
  `car_num` varchar(8) NOT NULL,
  `make` varchar(30) NOT NULL,
  `model` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `explore_img1` varchar(255) NOT NULL,
  `explore_img2` varchar(255) NOT NULL,
  `explore_img3` varchar(255) NOT NULL,
  `overview_fr` text NOT NULL,
  `overview_en` text NOT NULL,
  `eng_type_fr` text NOT NULL,
  `eng_type_en` text NOT NULL,
  `key_fr` text NOT NULL,
  `key_en` text NOT NULL,
  `puissance` int(11) NOT NULL,
  `transmission_fr` varchar(60) NOT NULL,
  `transmission_en` varchar(60) NOT NULL,
  `boite_vitesse` tinyint(4) NOT NULL,
  `max_speed` int(11) NOT NULL,
  `accel` decimal(15,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voiture`
--

INSERT INTO `voiture` (`id`, `car_num`, `make`, `model`, `type`, `price`, `image`, `explore_img1`, `explore_img2`, `explore_img3`, `overview_fr`, `overview_en`, `eng_type_fr`, `eng_type_en`, `key_fr`, `key_en`, `puissance`, `transmission_fr`, `transmission_en`, `boite_vitesse`, `max_speed`, `accel`) VALUES
(1, 'car1', 'Aston Martin', 'DB12 Volante', 'Cabriolet', '€275,000', 'Voiture_Images/db12_cabriolet.webp', 'images/db12-front.jpg', 'images/DB12-side.jpeg', 'images/DB12-30.jpeg', 'L\'Aston Martin DB12 est la dernière grande routière de luxe (GT) d\'Aston Martin, dévoilée en 2023 pour succéder à la DB11. Surnommée la première « Super Tourer » au monde, la DB12 représente un grand pas en avant, offrant plus de puissance, une meilleure tenue de route, une technologie de pointe et un intérieur entièrement redessiné.', 'The Aston Martin DB12 is the latest luxury grand tourer (GT) from Aston Martin, unveiled in 2023 as the successor to the DB11. Dubbed the world\'s first \"Super Tourer,\" the DB12 represents a major step forward, offering more power, sharper handling, cutting-edge technology, and a completely redesigned interior.', 'V8 4.0L Biturbo', '4.0L Twin-Turbocharged V8', '• Cockpit entièrement repensé avec cuir haut de gamme, Alcantara et fibre de carbone\r\n• Phare LED plus fin avec technologie d\'éclairage avancée\r\n• Système audio Bang & Olufsen haut de gamme pour une expérience sonore immersive\r\n• Apple CarPlay et Android Auto avec le nouveau logiciel maison Aston Martin\r\n• Packages intérieurs et extérieurs en fibre de carbone optionnels', '• Completely redesigned cockpit with premium leather, Alcantara and carbon fiber \r\n• Slimmer LED headlamps with advanced lighting technology • Premium Bang & Olufsen audio system for an immersive sound experience \r\n• Apple CarPlay and Android Auto with new Aston Martin in-house software \r\n• Optional carbon-fiber interior and exterior packages', 680, ' Automatique avec différentiel arrière électronique', 'Automatic with electronic rear differential', 8, 325, 3.6),
(2, 'car2', 'Aston Martin', 'DBX', 'SUV', '€250,000', 'Voiture_Images/dbx2.webp', 'images/DBX-front.png', 'images/DBX-side.jpeg', 'images/DBX-30.jpeg', 'L\'Aston Martin DBX est le premier SUV de luxe de la marque, conçu pour allier les performances d\'une voiture de sport à la praticité d\'un SUV. Introduit en 2020, le DBX représente l\'expansion d\'Aston Martin au-delà de ses traditionnels grands tours et supercars, offrant un luxe haut de gamme, des capacités tout-terrain et des performances exaltantes en un seul ensemble.', 'The Aston Martin DBX is the brand’s first luxury SUV, designed to blend the performance of a sports car with the practicality of an SUV. Introduced in 2020, the DBX represents Aston Martin’s expansion beyond its traditional grand tourers and supercars, offering high-end luxury, off-road capability, and exhilarating performance in one package.', 'V8 4.0L Biturbo', '4.0L Twin-Turbocharged V8', '• Cabine spacieuse avec cinq sièges et un grand espace de chargement\n• Suspension pneumatique ajustable avec contrôle actif du roulis pour une maniabilité dynamique\n• Apple CarPlay, système audio haut de gamme et fonctionnalités avancées d\'assistance à la conduite\n• Les acheteurs peuvent choisir parmi des finitions intérieures et extérieures sur mesure, y compris le programme de personnalisation Q par Aston Martin\n• Grille avant plus large pour un meilleur refroidissement', '• Spacious cab with five seats and large load area\r\n• Adjustable air suspension with active roll control for dynamic handling\r\n• Apple CarPlay, premium audio system and advanced driver assistance features\r\n• Buyers can choose from bespoke interior and exterior finishes, including the Q by Aston Martin personalisation programme\r\n• Wider front grille for improved cooling', 542, 'Automatique ', 'Automatic', 9, 291, 4.5),
(3, 'car3', 'Aston Martin', 'Valour', 'Coupe', '€275,000', 'Voiture_Images/valour.webp', 'images/valour-front.png', 'images/valour-side.png', 'images/valour-30.png', 'L\'Aston Martin Valour est une voiture de grand tourisme V12 en édition limitée ultra-exclusive qui rend hommage au riche héritage de la marque tout en intégrant des technologies de pointe en matière de performances. Inspirée par la légendaire Aston Martin V8 Vantage des années 1970 et 1980, la Valour est une supercar à boîte manuelle qui allie une dynamique de conduite brute au luxe moderne.', 'The Aston Martin Valour is an ultra-exclusive, limited-edition V12 grand tourer that pays homage to the brand’s rich heritage while incorporating cutting-edge performance technology. Inspired by the legendary Aston Martin V8 Vantage from the 1970s and 1980s, the Valour is a manual-only supercar, blending raw driving dynamics with modern luxury.', 'V12 Biturbo de 5.2L', '5.2L Twin-Turbocharged V12', '• Cabine artisanale avec Alcantara, cuir et garnitures en fibre de carbone\n• Réglage du châssis le plus avancé d\'Aston Martin pour une conduite engageante\n• Diffuseur avant agressif, bas de caisse profonds et un aileron arrière distinctif\n• Propulsion arrière pour un engagement mécanique pur\n• Seulement 110 unités produites dans le monde, ce qui en fait un objet de collection exclusif\n', '• Handcrafted cabin with Alcantara, leather and carbon fibre trim\r\n• Aston Martin\'s most advanced chassis tuning for an engaging drive\r\n• Aggressive front diffuser, deep rocker panels and distinctive rear spoiler\r\n• Rear-wheel drive for pure mechanical engagement\r\n• Only 110 produced worldwide, making it an exclusive collector\'s item', 705, 'Boîte Manuelle', 'Manual gearbox', 6, 320, 3.5),
(4, 'car4', 'Aston Martin', 'Vanquish', 'Coupe', '€200,000', 'Voiture_Images/vanquish1.webp', 'images/Vanquish-Front.png', 'images/Vanquish-Side.jpeg', 'images/Vanquish-30.jpeg', 'L\'Aston Martin Vanquish est une voiture de grand tourisme (GT) très performante qui incarne le luxe, la puissance et l\'ingénierie de pointe. Présentée pour la première fois en 2001, elle a fait l\'objet de nombreux perfectionnements, les derniers modèles alliant un style agressif, un moteur puissant et une technologie moderne. Conçue pour succéder à la DBS, la Vanquish est connue pour son intérieur artisanal, sa carrosserie légère en fibre de carbone et son moteur V12 atmosphérique qui offre une expérience de conduite exaltante.', 'The Aston Martin Vanquish is a high-performance grand tourer (GT) that epitomizes luxury, power, and cutting-edge engineering. Originally introduced in 2001, it has undergone multiple refinements, with the latest models blending aggressive styling, a powerful engine, and modern technology. Designed as the successor to the DBS, the Vanquish is known for its handcrafted interior, lightweight carbon-fiber body, and a naturally aspirated V12 engine that delivers an exhilarating driving experience.', 'V12 Atmosphérique de 5.9L', '5.9L Naturally Aspirated V12', '• Intérieur en cuir haut de gamme\n• Système de caméra à 360 degrés\n• Apple CarPlay sans fil & Android Auto\n• Configuration d\'échappement à quatre sorties pour un son agressif\n', '• Premium leather interior\r\n• 360-degree camera system\r\n• Wireless Apple CarPlay & Android Auto\r\n• Four-exit exhaust configuration for an aggressive sound', 565, 'Transmission Automatique Touchtronic III ', 'Touchtronic III Automatic Transmission', 7, 320, 3.5),
(5, 'car5', 'Aston Martin', 'Vantage', 'Coupe', '€175,000', 'Voiture_Images/vantage_coupe.webp', 'images/Vantage-front.png', 'images/Vantage-side.jpeg', 'images/Vantage-30.jpeg', 'L\'Aston Martin Vantage est une voiture de sport de luxe très performante qui allie le savoir-faire britannique à un style agressif et à des capacités de conduite dynamiques. Présentée pour la première fois en 1977, la Vantage a évolué au fil des générations, les versions modernes offrant un châssis léger, des moteurs puissants et une aérodynamique avancée. Conçue pour rivaliser avec la Porsche 911, la Mercedes-AMG GT et la McLaren Artura, la Vantage se distingue par son design audacieux, son intérieur artisanal et ses performances palpitantes.', 'The Aston Martin Vantage is a high-performance luxury sports car that blends British craftsmanship with aggressive styling and dynamic driving capabilities. First introduced in 1977, the Vantage has evolved through multiple generations, with the modern versions offering a lightweight chassis, powerful engine options, and advanced aerodynamics. Designed to compete with the Porsche 911, Mercedes-AMG GT, and McLaren Artura, the Vantage stands out with its bold design, handcrafted interior, and thrilling performance.', 'V8 Biturbo de 4.0L', '4.0L Twin-Turbocharged V8', '• Fabriqué à la main avec du cuir, de l\'Alcantara et des garnitures en fibre de carbone \r\n• Splitter avant aérodynamique, grille agressive, diffuseur arrière sculpté et éclairage LED élégant \r\n• Modes Sport, Sport+ et Track sélectionnables pour une expérience de conduite personnalisable \r\n• Écran tactile de 8 pouces, Apple CarPlay, navigation et audio premium Aston Martin \r\n• Freins en céramique carbone disponibles pour une puissance de freinage améliorée', '• Handcrafted with leather, Alcantara and carbon fibre trim \r\n• Aerodynamic front splitter, aggressive grille, sculpted rear diffuser and stylish LED lighting \r\n• Selectable Sport, Sport+ and Track modes for a personalised driving experience \r\n• 8-inch touchscreen, Apple CarPlay, navigation and Aston Martin premium audio \r\n• Carbon ceramic brakes available for enhanced stopping power', 503, 'Manuelle ', 'Manual', 7, 314, 3.6),
(6, 'car6', 'Maserati', 'Ghibli', 'Sedan', '€225,000', 'Voiture_Images/ghibli1.webp', 'images/ghibli-front.avif', 'images/ghibli-side.jpeg', 'images/ghibli-30.png', 'La Maserati Ghibli est une berline sportive de luxe qui allie l\'élégance italienne, des performances palpitantes et un savoir-faire haut de gamme. Positionnée en dessous de la Quattroporte, la Ghibli offre une alternative plus dynamique et plus agile tout en conservant le design et l\'expérience de conduite propres à Maserati.', 'The Maserati Ghibli is a luxury sports sedan that blends Italian elegance, thrilling performance, and premium craftsmanship. Positioned below the Quattroporte, the Ghibli offers a more dynamic and agile alternative while maintaining Maserati’s signature design and driving experience.', 'V8 3.8L Biturbo', '3.8L Twin-Turbo V8', '• Cuir italien haut de gamme, bois ou garniture en fibre de carbone \r\n• Système d\'échappement à quatre sorties\r\n• Système d\'infodivertissement Maserati Intelligent Assistant de 12,3 pouces  \r\n• Caméra à vue panoramique à 360 degrés \r\n• Freinage d\'urgence automatique', '• Premium Italian leather, wood or carbon fibre trim \r\n• Four-tailpipe exhaust system\r\n• 12.3-inch Maserati Intelligent Assistant infotainment system  \r\n• 360 degree panoramic camera \r\n• Automatic emergency braking', 580, 'Automatique ZF ', 'ZF Automatic', 8, 326, 5.7),
(7, 'car7', 'Maserati', 'GT2 Stradale', 'Coupe', '€400,000', 'Voiture_Images/gt2_stra1.webp', 'images/stradale-front.jpg', 'images/stradale-side.jpg', 'images/stradale-30.jpg', 'La Maserati GT2 Stradale est une version routière ultraperformante de la voiture de course Maserati GT2, conçue pour offrir une puissance, une aérodynamique et une maniabilité inspirées du circuit, tout en restant utilisable sur les routes publiques. Elle représente le retour de Maserati dans les courses de GT, s\'inspirant de la MC12 et intégrant les dernières innovations en matière d\'ingénierie légère et d\'aérodynamique avancée.', 'The Maserati GT2 Stradale is an ultra-high-performance road-legal version of the Maserati GT2 race car, designed to deliver track-inspired power, aerodynamics, and handling while remaining usable on public roads. It represents Maserati’s return to GT racing, drawing inspiration from the MC12 and integrating the latest in lightweight engineering and advanced aerodynamics.', 'V6 Nettuno 3.0L Biturbo', '3.0L Twin-Turbocharged V6 Nettuno', '• Éléments aérodynamiques avant et arrière extrêmes pour un appui optimal \r\n• Sièges baquets de course avec option harnais 6 points \r\n• Aérodynamique active avec réglages ajustables pour la route et la piste\r\n• Différentiel électronique avancé pour une maniabilité de précision \r\n• Options de personnalisation sur mesure grâce au programme Fuoriserie de Maserati', '• Extreme front and rear aerodynamic elements for optimum support \r\n• Racing bucket seats with 6-point harness option \r\n• Active aerodynamics with adjustable road and track settings\r\n• Advanced electronic differential for precision handling \r\n• Tailor-made personalisation options thanks to Maserati\'s Fuoriserie programme', 630, 'Boîte Séquentielle Ou Version Adaptée À La Rout', 'Sequential gearbox or road-tuned version with paddle', 6, 300, 3.0),
(8, 'car8', 'Maserati', 'Levante', 'SUV', '€190,000', 'Voiture_Images/levante1.webp', 'images/levante-front.JPG', 'images/levante-side.JPG', 'images/levante-30.JPG', 'Le Maserati Levante est un SUV de luxe qui incarne la signature artisanale italienne de la marque, l\'ingénierie haute performance et le design élégant. Lancé en 2016, le Levante est le tout premier SUV de Maserati, alliant la dynamique d\'une voiture de sport au confort et à la praticité d\'un SUV. Nommé d\'après un vent méditerranéen connu pour son intensité soudaine, le Levante est conçu pour offrir des performances palpitantes, des intérieurs luxueux et une technologie de pointe.', 'The Maserati Levante is a luxury SUV that embodies the brand\'s signature Italian craftsmanship, high-performance engineering, and elegant design. Introduced in 2016, the Levante is Maserati’s first-ever SUV, blending sports car dynamics with the comfort and practicality of an SUV. Named after a Mediterranean wind known for its sudden intensity, the Levante is designed to deliver thrilling performance, luxurious interiors, and cutting-edge technology.', 'V8 Biturbo de 3,8 Litres', '3.8L twin-turbo V8', '• Garnitures en cuir, bois et fibre de carbone de haute qualité\r\n• Toit ouvrant panoramique\r\n• Systèmes audio haut de gamme (Harman Kardon ou Bowers & Wilkins disponibles)\r\n• Système d\'assistance à la conduite avancé\r\n• Alerte de franchissement de ligne\r\n• Surveillance des angles morts', '• High-quality leather, wood, and carbon fiber trim\r\n• Panoramic sunroof\r\n• Premium audio systems (Harman Kardon or Bowers & Wilkins available)\r\n• Advanced driver assistance system\r\n• Lane departure warning\r\n• Blind spot monitoring', 572, 'Automatique ', 'Automatic', 8, 302, 6.0),
(9, 'car9', 'Maserati', 'MC20 Cielo', 'Cabriolet', '€210,000', 'Voiture_Images/MC202.webp', 'images/cielo-front.JPG', 'images/cielo-side.JPG', 'images/cielo-30.JPG', 'La Maserati MC20 Cielo est la variante à toit ouvert de la supercar MC20, qui allie des performances époustouflantes à l\'émotion de la conduite en plein air. « Cielo », qui signifie “ciel” en italien, met l\'accent sur son toit en verre électrochrome rétractable, qui passe de la transparence à l\'opacité en un instant, améliorant ainsi l\'expérience de conduite.', 'The Maserati MC20 Cielo is the open-top variant of the MC20 supercar, combining breathtaking performance with the thrill of open-air driving. \"Cielo,\" meaning \"sky\" in Italian, emphasizes its retractable electrochromic glass roof, which transitions from transparent to opaque in an instant, enhancing the driving experience.', 'V6 Nettuno 3.0L Biturbo', '3.0L Twin-Turbo Nettuno V6', '• Matériaux en fibre de carbone, Alcantara et cuir\r\n• Toit en verre électrochromatique\r\n• Porte papillon pour un style dramatique et un accès facile à l\'habitacle\r\n• Modes de conduite : GT, Sport, Corsa et Wet\r\n• Différentiel à glissement limité pour une meilleure adhérence\r\n• Production limitée pour plus d\'exclusivité', '• Materials in carbon fiber, Alcantara, and leather\r\n• Electrochromatic glass roof\r\n• Butterfly door for dramatic style and easy cabin access\r\n• Driving modes: GT, Sport, Corsa, and Wet\r\n• Limited-slip differential for better grip\r\n• Limited production for added exclusivity', 630, 'Automatique À Double Embrayage ', 'Dual-Clutch automatic', 8, 320, 3.0),
(10, 'car10', 'Maserati', 'Quattroporte', 'Sedan', '€175,000', 'Voiture_Images/quattro11.webp', 'images/quattraporte-front.jpg', 'images/quattraporte-side.jpg', 'images/quattraporte-30.jpg', 'La Maserati Quattroporte est une berline sportive de luxe de grande taille qui allie l\'élégance italienne, le luxe artisanal et des performances exaltantes. En tant que berline phare de Maserati, la Quattroporte a un long héritage qui remonte à 1963, ce qui en fait l\'un des noms les plus distingués de l\'histoire de l\'automobile de luxe.', 'The Maserati Quattroporte is a full-size luxury sports sedan that combines Italian elegance, handcrafted luxury, and exhilarating performance. As Maserati’s flagship sedan, the Quattroporte has a long legacy dating back to 1963, making it one of the most distinguished names in luxury automotive history.', 'V6 Biturbo de 3.0L', '3.0L Twin-Turbo V6', '• Silhouette aérodynamique élégante avec des proportions de coupé\r\n• Climatisation automatique à quatre zones pour un confort ultime\r\n• Différentiel à glissement limité pour une traction améliorée\r\n• Alerte de sortie de voie & assistance au maintien de voie\r\n• Régulateur de vitesse adaptatif', '• Elegant aerodynamic silhouette with coupe proportions\r\n• Four-zone automatic climate control for ultimate comfort\r\n• Limited-slip differential for improved traction\r\n• Lane departure warning & lane-keeping assist\r\n• Adaptive cruise control', 430, 'Automatique ZF ', 'ZF automatic', 8, 288, 5.5),
(11, 'car11', 'Porsche', 'Cayenne GTS', 'SUV', '€200,000', 'Voiture_Images/cayenne_gts1.png', 'images/cayenne-front.avif', 'images/cayenne-side.avif', 'images/cayenne-court.jpg', 'Le Porsche Cayenne GTS est un SUV de luxe hautes performances qui allie l\'agilité d\'une voiture de sport à la praticité d\'un SUV. Situé entre le Cayenne S et le Cayenne Turbo, le modèle GTS met l\'accent sur une dynamique de conduite améliorée, un design plus sportif et une note d\'échappement plus agressive.', 'The Porsche Cayenne GTS is a high-performance luxury SUV that blends sportscar agility with SUV practicality. Positioned between the Cayenne S and the Cayenne Turbo, the GTS model focuses on enhanced driving dynamics, a sportier design, and a more aggressive exhaust note.', 'V8 4.0L À Double Turbocompresseur', '4.0L Twin-Turbocharged V8', '• Revêtement exclusif Alcantara® GTS et garniture en cuir\r\n• Options de garniture intérieure en fibre de carbone ou aluminium brossé\r\n• Phare et feux arrière LED teintés sombres\r\n• Contrôle dynamique du châssis Porsche pour une meilleure stabilité en virage\r\n• Régulateur de vitesse adaptatif\r\n• Option de pack sportif léger pour une réduction de poids', '• Exclusive Alcantara® GTS trim and leather upholstery\r\n• Interior trim options in carbon fiber or brushed aluminum\r\n• Dark-tinted LED headlights and taillights\r\n• Porsche Dynamic Chassis Control for better cornering stability\r\n• Adaptive cruise control\r\n• Lightweight sports package option for weight reduction', 500, 'Automatique Tiptronic S', 'Tiptronic S Automatic', 8, 275, 4.5),
(12, 'car12', 'Porsche', '911 Turbo S', 'Coupe', '€325,000', 'Voiture_Images/911turbo_s1.png', 'images/911turbos-front', 'images/911turbos-side', 'images/911turbos-30', 'La Porsche 911 Turbo S est le summum de la performance, du luxe et de l\'ingénierie de pointe dans la gamme 911. En tant que 911 la plus rapide et la plus puissante, la Turbo S offre une accélération digne d\'une supercar, une maniabilité exceptionnelle et une facilité d\'utilisation au quotidien, ce qui en fait l\'une des voitures hautes performances les plus complètes au monde.', 'The Porsche 911 Turbo S is the pinnacle of performance, luxury, and cutting-edge engineering in the 911 lineup. As the fastest and most powerful 911, the Turbo S delivers supercar-level acceleration, exceptional handling, and everyday usability, making it one of the most well-rounded high-performance cars in the world.', '6 Cylindres À Plat de 3,8 Litres À Double Turbocompresseur', '3.8L Twin-Turbocharged Flat-6', '• Roues exclusives à verrouillage central forgées 911 Turbo S\r\n• Carrosserie élargie avec prises d\'air spécifiques Turbo pour un meilleur refroidissement\r\n• Roues exclusives à verrouillage central forgées 911 Turbo S\r\n• Système audio surround BOSE® premium\r\n• Stabilisation active contre le roulis pour une meilleure stabilité en virage\r\n• Freinage d\'urgence automatique avec détection des piétons\r\n• Assistance à la vision nocturne', '• Exclusive 911 Turbo S forged center-lock wheels\n• Wider body with Turbo-specific air intakes for better cooling\n• Exclusive 911 Turbo S forged center-lock wheels\n• BOSE® premium surround sound system\n• Active roll stabilization for better cornering stability\n• Automatic emergency braking with pedestrian detection\n• Night vision assist', 650, 'Automatique Porsche Doppelkupplung', 'Porsche Doppelkupplung automatic', 8, 330, 2.7),
(13, 'car13', 'Porsche', '911 GT3 RS', 'Coupe', '€600,000', 'Voiture_Images/911gt3rs1.png', 'images/911gt3rs-front', 'images/911gt3rs-side.webp', 'images/911gt3rs-30.webp', 'La Porsche 911 GT3 RS est l\'expression ultime de l\'ingénierie axée sur la piste dans la gamme 911. Conçue pour offrir un maximum d\'aérodynamisme, de légèreté et de maniabilité, la GT3 RS est une machine de précision à moteur atmosphérique et à propulsion arrière, conçue pour dominer la piste et la route.', 'The Porsche 911 GT3 RS is the ultimate expression of track-focused engineering in the 911 lineup. Designed for maximum aerodynamics, lightweight performance, and razor-sharp handling, the GT3 RS is a naturally aspirated, rear-wheel-drive precision machine, built to dominate both the track and the road.', '6 cylindres à plat de 4,0 Litres', '4.0L Naturally Aspirated Flat-6', '• Cage de sécurité et harnais à six points\r\n• Volant gainé d\'alcantara avec palettes de changement de vitesse de course\r\n• Plusieurs modes de conduite, dont le mode « Race » pour des performances maximales\r\n• Freins en carbone-céramique pour une puissance de freinage digne de la course\r\n• Freinage d\'urgence automatique avec détection des piétons\r\n• Ensemble Weissach pour une réduction extrême du poids et des performances sur piste\r\n• Disponible dans des couleurs uniques comme le vert python, le gris arctique et le jaune racing.', '• Roll cage and six-point harness\r\n• Alcantara-wrapped steering wheel with racing shift paddles\r\n• Multiple driving modes, including Race Mode for max performance\r\n• Carbon-ceramic brakes for race-spec stopping power\r\n• Automatic Emergency Braking with pedestrian detection\r\n• Weissach Package for extreme weight reduction and track performance\r\n• Available in unique colors like Python Green, Arctic Grey, and Racing Yellow', 525, 'Porsche Doppelkupplung (PDK) automatique', 'Porsche Doppelkupplung (PDK) automatic', 7, 296, 3.2),
(14, 'car14', 'Porsche', 'Taycan', 'Sedan', '€400,000', 'Voiture_Images/taycan1.png', 'images/taycan-front', 'images/taycan-side.webp', 'images/taycan-30.webp', 'La Porsche Taycan est la première berline sportive entièrement électrique de Porsche, combinant une technologie EV de pointe avec les performances, la maniabilité et le luxe légendaires de Porsche. Depuis son lancement en 2019, la Taycan a redéfini la conduite électrique en offrant une accélération palpitante, un aérodynamisme avancé et un intérieur haut de gamme, ce qui en fait une concurrente sérieuse de la Tesla Model S Plaid, de l\'Audi e-tron GT et de la Mercedes-AMG EQS.', 'The Porsche Taycan is Porsche’s first fully electric sports sedan, combining cutting-edge EV technology with Porsche’s legendary performance, handling, and luxury. Since its launch in 2019, the Taycan has redefined electric driving by offering thrilling acceleration, advanced aerodynamics, and a premium interior, making it a serious competitor to the Tesla Model S Plaid, Audi e-tron GT, and Mercedes-AMG EQS.', 'Performance Battery Plus (93,4 KWh) Disponible Pour Une Autonomie Étendue', 'Performance Battery Plus (93.4 kWh)', '• Sellerie en cuir premium, Race-Tex (suède synthétique écologique), ou finitions intérieures en carbone intégral\r\n• Bande lumineuse LED pleine largeur avec script Porsche\r\n• Apple CarPlay et Android Auto sans fil\r\n• Porsche Active Suspension Management (PASM) pour une qualité de conduite adaptative\r\n• Assistance au maintien de la trajectoire et à l’aide au changement de voie\r\n• Caméra à vue panoramique à 360 degrés\r\n• Régulateur de vitesse adaptatif', '• Premium leather, Race-Tex (eco-friendly synthetic suede), or full-carbon interior trims\r\n• Full-width LED taillight strip with Porsche script\r\n• Wireless Apple CarPlay & Android Auto\r\n• Porsche Active Suspension Management (PASM) for adaptive ride quality\r\n• Lane-keeping assist & lane-change assist\r\n360-degree Surround View Camera\r\n• Adaptive Cruise Control', 408, 'Boîte De Vitesses À Deux Rapports Sur L\'Essieu Arrière ', 'Two-speed transmission on the rear axle ', 2, 230, 5.4),
(15, 'car15', 'Porsche', 'Panamera', 'Sedan', '€350,000', 'Voiture_Images/panamera1.png', 'images/panamera-front.webp', 'images/panamera-side.webp', 'images/panamera-30.webp', 'La Porsche Panamera est une berline sportive de luxe qui associe une conduite dynamique et performante à un confort haut de gamme et à une technologie de pointe. Lancée en 2009, la Panamera a été conçue pour apporter la maniabilité et la puissance caractéristiques de Porsche à une plateforme grand tourisme à quatre portes, offrant ainsi l\'agilité d\'une voiture de sport et la praticité d\'une berline exécutive.', 'The Porsche Panamera is a luxury sports sedan that combines high-performance driving dynamics with premium comfort and cutting-edge technology. Originally introduced in 2009, the Panamera was designed to bring Porsche’s signature handling and power to a four-door grand touring platform, offering sports car agility with executive sedan practicality.', 'V6 2.9L Biturbo', '2.9L Twin-Turbo V6', '• Options de finitions en cuir, fibre de carbone ou bois de haute qualité\r\n• Climatisation automatique à quatre zones\r\n• Apple CarPlay et Android Auto sans fil\r\n• Modes de conduite : Normal, Sport, Sport Plus, Individuel\r\n• Freinage d\'urgence automatique\r\n• Caméra de vue panoramique à 360 degrés\r\n• Régulateur de vitesse adaptatif', '• High-quality leather, carbon fiber, or wood trim options\r\n• Four-zone automatic climate control\r\n• Wireless Apple CarPlay & Android Auto\r\n• Drive modes: Normal, Sport, Sport Plus, Individual\r\n• Automatic Emergency Braking\r\n• 360-degree Surround View Camera\r\n• Adaptive Cruise Control', 353, 'Automatique PDK', 'PDK automatic', 8, 272, 5.1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceuil_en`
--
ALTER TABLE `acceuil_en`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acceuil_fr`
--
ALTER TABLE `acceuil_fr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notes`
--
ALTER TABLE `admin_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_notes_admin_user` (`admin_user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_en`
--
ALTER TABLE `contact_en`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_fr`
--
ALTER TABLE `contact_fr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_en`
--
ALTER TABLE `service_en`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_fr`
--
ALTER TABLE `service_fr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_de_contacte`
--
ALTER TABLE `table_de_contacte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contact_user_id` (`user_id`);

--
-- Indexes for table `testdrive_request`
--
ALTER TABLE `testdrive_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_td_user_id` (`user_id`),
  ADD KEY `idx_td_voiture_id` (`voiture_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceuil_en`
--
ALTER TABLE `acceuil_en`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `acceuil_fr`
--
ALTER TABLE `acceuil_fr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_notes`
--
ALTER TABLE `admin_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_en`
--
ALTER TABLE `contact_en`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_fr`
--
ALTER TABLE `contact_fr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_en`
--
ALTER TABLE `service_en`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_fr`
--
ALTER TABLE `service_fr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table_de_contacte`
--
ALTER TABLE `table_de_contacte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `testdrive_request`
--
ALTER TABLE `testdrive_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_notes`
--
ALTER TABLE `admin_notes`
  ADD CONSTRAINT `fk_adminnotes_adminuser` FOREIGN KEY (`admin_user_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `table_de_contacte`
--
ALTER TABLE `table_de_contacte`
  ADD CONSTRAINT `fk_contact_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `testdrive_request`
--
ALTER TABLE `testdrive_request`
  ADD CONSTRAINT `fk_testdrive_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_testdrive_voiture` FOREIGN KEY (`voiture_id`) REFERENCES `voiture` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
