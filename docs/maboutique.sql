-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 sep. 2022 à 12:58
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maboutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
CREATE TABLE IF NOT EXISTS `app_user` (
  `id_app_user` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_app_user`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `app_user`
--

INSERT INTO `app_user` (`id_app_user`, `password`, `mail`, `active`, `is_deleted`) VALUES
(1, 'OPh3fdsUh', 'abizley0@list-manage.com', 0, 0),
(2, 'KdZO0PEiJV', 'fhussell1@ucsd.edu', 0, 1),
(3, 'uLVQxvQ', 'dnewark2@cafepress.com', 1, 1),
(4, 'RMCKzqHu', 'tmaccaughan3@vistaprint.com', 1, 1),
(5, 'PcTJCHKKqOjX', 'bgynne4@google.com.au', 0, 0),
(6, 'HTtrJARMX72u', 'blighterness5@soup.io', 0, 1),
(7, 'kKuqHr', 'greder6@goo.gl', 0, 0),
(8, 'JuSO9gn8WgE', 'pmacrory7@chronoengine.com', 1, 1),
(9, 'lL6w1l', 'tkulicke8@omniture.com', 0, 1),
(10, 'DMBiuMo', 'kperfitt9@csmonitor.com', 1, 0),
(11, 'KkPcl0', 'lczaplea@github.io', 1, 1),
(12, 'BdtxugXfbEaN', 'gpetrassob@woothemes.com', 0, 1),
(13, 'BA4TfFhGk3K', 'iwitulc@amazon.com', 1, 1),
(14, 'SAfXsb1v', 'dmudied@marketwatch.com', 0, 0),
(15, 'PdkHgp7YVQJ', 'akelshawe@vistaprint.com', 1, 0),
(16, 'CgUbNM1r', 'ccalff@dion.ne.jp', 1, 0),
(17, 'B2Lizr91yo', 'cdrinkelg@princeton.edu', 1, 1),
(18, 'WSOcF5', 'cmallabonh@freewebs.com', 0, 1),
(19, 'qJaHssn5e8', 'rbrekonridgei@issuu.com', 1, 1),
(20, 'LavYnP0', 'enecoldsj@usda.gov', 1, 0),
(21, 'FBKWDmme8O', 'pthurstank@apple.com', 1, 0),
(22, '37xmO2t', 'lchrismasl@w3.org', 0, 0),
(23, '56l0jJb2Wo', 'mhankardm@bloomberg.com', 1, 0),
(24, 'YRavgEcU', 'zcastanan@fotki.com', 1, 1),
(25, '5NUHjwy', 'hdodridgeo@linkedin.com', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `Id_brand` int(11) NOT NULL AUTO_INCREMENT,
  `name_brand` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `brand`
--

INSERT INTO `brand` (`Id_brand`, `name_brand`, `is_deleted`) VALUES
(1, 'LG', 0),
(2, 'Razer', 0),
(3, 'Logitech', 0),
(4, 'Samsung', 0),
(5, 'Lenovo', 0),
(6, 'Dell', 0),
(7, 'Apple', 0),
(8, 'HP', 0);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Id_category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`Id_category`, `category`, `is_deleted`) VALUES
(1, 'Ecran PC', 0),
(2, 'Clavier/Souris/Tapis', 0),
(3, 'Casque & micro', 0),
(4, 'Webcam', 0),
(5, 'Ordinateurs Portables', 0),
(6, 'Ordinateurs PC Fixe', 0),
(7, 'Tablette', 0),
(8, 'Ipad', 0),
(9, 'Nouveautes', 0);

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `id_product` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_category_product` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_category_product`),
  KEY `id_product` (`id_product`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category_product`
--

INSERT INTO `category_product` (`id_product`, `id_category`, `id_category_product`) VALUES
(1, 1, 1),
(1, 9, 2),
(2, 2, 3),
(2, 9, 6);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `id_command` int(11) NOT NULL AUTO_INCREMENT,
  `date_ordered` datetime DEFAULT NULL,
  `cmd_number` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `bill_nb` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_command`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`id_command`, `date_ordered`, `cmd_number`, `status`, `bill_nb`, `is_deleted`, `id_customer`) VALUES
(1, '2022-07-17 16:29:02', 2147483647, 1, 1147149534, 1, 1),
(2, '2022-01-03 03:27:45', 309489806, 2, 2147483647, 0, 1),
(3, '2022-06-29 21:07:41', 2147483647, 2, 2147483647, 0, 3),
(4, '2022-05-18 09:06:44', 2147483647, 3, 1847810950, 0, 4),
(5, '2022-06-25 18:30:23', 2147483647, 2, 2147483647, 0, 5),
(6, '2021-11-11 02:22:22', 2147483647, 1, 2147483647, 0, 6),
(7, '2021-10-16 06:51:20', 2147483647, 2, 896761614, 0, 7),
(8, '2022-07-22 04:10:19', 2147483647, 3, 2147483647, 1, 8),
(9, '2021-11-13 14:26:53', 2147483647, 3, 2147483647, 1, 9),
(10, '2022-03-13 01:25:25', 2147483647, 3, 2147483647, 1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `command_line`
--

DROP TABLE IF EXISTS `command_line`;
CREATE TABLE IF NOT EXISTS `command_line` (
  `id_command_line` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rate_tva` double DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_command` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_command_line`),
  KEY `id_product` (`id_product`),
  KEY `id_command` (`id_command`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `command_line`
--

INSERT INTO `command_line` (`id_command_line`, `quantity`, `price`, `rate_tva`, `id_product`, `id_command`) VALUES
(1, 6, 100.99, 20, 1, 1),
(2, 2, 69.99, 20, 1, 1),
(3, 2, 59.99, 20, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `inscription` date DEFAULT NULL,
  `civility` text,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` text,
  `country_code` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `id_app_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_customer`),
  KEY `id_app_user` (`id_app_user`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`Id_customer`, `inscription`, `civility`, `name`, `surname`, `birthdate`, `address`, `country_code`, `city`, `phone_number`, `is_deleted`, `id_app_user`) VALUES
(1, '2022-06-25', 'Mrs', 'Overell', 'Inessa', '2021-10-26', '0 Burrows Court', 0, 'Umeå', 2147483647, 1, 5),
(2, '2022-01-31', 'Mrs', 'Gisbey', 'Barbe', '2022-03-02', '6 Union Crossing', 0, 'Suraż', 1584303748, 0, NULL),
(3, '2021-11-11', 'Mrs', 'Lening', 'Dionisio', '2022-08-14', '71762 Pond Lane', 0, 'Shangyuan', 2143566586, 0, NULL),
(4, '2021-11-14', 'Mr', 'Baccup', 'Stephen', '2022-05-20', '08622 6th Place', 0, 'Viļaka', 1665761417, 0, NULL),
(5, '2022-06-10', 'Rev', 'Keller', 'Ronny', '2022-06-12', '56696 Sutteridge Street', 0, 'Retorta', 2106309074, 0, NULL),
(6, '2022-02-18', 'Mrs', 'Blofeld', 'Wendel', '2022-07-12', '6379 Sachs Junction', 0, 'Azua', 2147483647, 1, NULL),
(7, '2022-07-26', 'Mr', 'Hulse', 'Louis', '2021-09-13', '130 Shoshone Park', 0, 'Mantalongon', 2147483647, 1, NULL),
(8, '2021-11-27', 'Ms', 'Caveau', 'Ethan', '2021-12-11', '4180 Main Pass', 0, 'Rudka', 2147483647, 1, NULL),
(9, '2022-05-25', 'Ms', 'Dubique', 'Cynthia', '2022-06-16', '83 Ramsey Trail', 0, 'Newport', 2147483647, 1, NULL),
(10, '2022-03-26', 'Dr', 'Crennan', 'Devondra', '2021-12-09', '2 Westend Avenue', 0, 'Xinji', 1306271651, 0, NULL),
(11, '2022-05-11', 'Mr', 'McCusker', 'Griswold', '2022-02-08', '119 Dakota Junction', 0, 'Manwakh', 2147483647, 0, NULL),
(12, '2021-11-19', 'Honorable', 'Stallen', 'Teddy', '2022-01-18', '41 Katie Court', 0, 'Karangtengah Lor', 2147483647, 1, NULL),
(13, '2022-07-22', 'Honorable', 'Stringer', 'Alexander', '2021-11-19', '703 Shopko Street', 0, 'Yuta', 2147483647, 1, NULL),
(14, '2021-09-21', 'Dr', 'Oakshott', 'Merrili', '2021-09-11', '44 John Wall Drive', 0, 'Zhifang', 2147483647, 1, NULL),
(15, '2022-08-24', 'Dr', 'Bundock', 'Ingrim', '2022-01-11', '5437 Onsgard Street', 0, 'Maraial', 1714219656, 1, NULL),
(16, '2022-08-30', 'Dr', 'Palumbo', 'Rhianna', '2022-02-06', '6 Packers Hill', 0, 'Zephyrhills', 2147483647, 0, NULL),
(17, '2022-02-18', 'Rev', 'Earnshaw', 'Shaylynn', '2021-11-06', '592 Maple Trail', 0, 'Tomilino', 2147483647, 1, NULL),
(18, '2022-01-14', 'Dr', 'Boutflour', 'Edlin', '2022-03-07', '4274 Waxwing Trail', 0, 'Perre', 2147483647, 1, NULL),
(19, '2022-02-12', 'Honorable', 'Digg', 'Minetta', '2022-02-22', '41 Brickson Park Trail', 0, 'Gendiwu', 2147483647, 1, NULL),
(20, '2022-01-08', 'Mrs', 'Walworche', 'Shellie', '2022-02-18', '66330 Shasta Point', 0, 'North Little Rock', 2147483647, 1, NULL),
(21, '2022-01-03', 'Dr', 'Kubecka', 'Law', '2022-02-20', '8303 Jay Hill', 0, 'Cabadiangan', 2147483647, 1, NULL),
(22, '2022-09-06', 'Honorable', 'Pere', 'Elvis', '2022-05-02', '68503 Straubel Plaza', 0, 'Nielisz', 2147483647, 0, NULL),
(23, '2022-03-11', 'Mrs', 'Van\'t Hoff', 'Janeta', '2022-01-01', '59 Heath Point', 0, 'Postupice', 2147483647, 0, NULL),
(24, '2022-08-19', 'Dr', 'Bettington', 'Lorrayne', '2021-11-28', '3639 Sullivan Point', 0, 'Waerana', 2147483647, 0, NULL),
(25, '2021-09-18', 'Mr', 'Worgen', 'Bob', '2022-03-08', '488 Golf Course Point', 0, 'Junín', 2147483647, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `img`
--

DROP TABLE IF EXISTS `img`;
CREATE TABLE IF NOT EXISTS `img` (
  `id_img` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_img`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `img`
--

INSERT INTO `img` (`id_img`, `url`, `is_deleted`) VALUES
(1, 'https://media.ldlc.com/r1600/ld/products/00/05/21/61/LD0005216148_2.jpg', 0),
(2, 'https://media.ldlc.com/r1600/ld/products/00/05/21/61/LD0005216163_2.jpg', 0),
(4, 'https://media.ldlc.com/r1600/ld/products/00/05/92/79/LD0005927989_1.jpg', 0),
(5, 'https://media.ldlc.com/r1600/ld/products/00/05/92/79/LD0005927990_1.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `img_product`
--

DROP TABLE IF EXISTS `img_product`;
CREATE TABLE IF NOT EXISTS `img_product` (
  `id_img` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_img_product` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_img_product`),
  KEY `id_img` (`id_img`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `img_product`
--

INSERT INTO `img_product` (`id_img`, `id_product`, `id_img_product`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 2, 3),
(5, 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `designation` text,
  `min_description` text,
  `description` text,
  `current_price` double DEFAULT NULL,
  `current_rate_tva` double DEFAULT NULL,
  `stock_min` int(11) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_max` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_brand` (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id_product`, `designation`, `min_description`, `description`, `current_price`, `current_rate_tva`, `stock_min`, `stock_qty`, `stock_max`, `is_deleted`, `id_brand`) VALUES
(1, 'LG 22\" LED 22MK430H-B', '1920 x 1080 pixels - 5 ms - Format large 16/9 - Dalle IPS - FreeSync - HDMI - Noir', 'Regroupant des fonctionnalités idéales pour des parties de haute volée, le moniteur 22MK430H-B signé LG vous accompagnera idéalement dans votre quête de la victoire. Savourez des moments intenses devant cet écran Full HD doté d\'une dalle IPS et de la technologie AMD FreeSync.', 159.95, 20, 0, 6, 10, 0, 1),
(2, 'Samsung 23.8\" LED - S24R35AFHU', '1920 x 1080 pixels - 4 ms (gris à gris) - 16/9 - Dalle VA - 75 Hz - FreeSync - HDMI/VGA - Noir', 'Avec une résolution Full HD sur une dalle VA, le moniteur Samsung S24R35AFHU possède toutes les qualités pour accompagner vos besoins au quotidien. Bénéficiez d\'une belle polyvalence pour une utilisation multimédia, bureautique ou gaming en fonction de vos envies.', 139.96, 20, 0, 4, 10, 0, 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  ADD CONSTRAINT `category_product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`Id_category`);

--
-- Contraintes pour la table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `command_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`Id_customer`);

--
-- Contraintes pour la table `command_line`
--
ALTER TABLE `command_line`
  ADD CONSTRAINT `command_line_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  ADD CONSTRAINT `command_line_ibfk_2` FOREIGN KEY (`id_command`) REFERENCES `command` (`id_command`);

--
-- Contraintes pour la table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_app_user`) REFERENCES `app_user` (`id_app_user`);

--
-- Contraintes pour la table `img_product`
--
ALTER TABLE `img_product`
  ADD CONSTRAINT `img_product_ibfk_1` FOREIGN KEY (`id_img`) REFERENCES `img` (`id_img`),
  ADD CONSTRAINT `img_product_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`Id_brand`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
