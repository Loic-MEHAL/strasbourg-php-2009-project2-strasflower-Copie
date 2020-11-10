-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2020 at 03:55 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strasflower`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `prix` int(200) NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `couleur` varchar(100) COLLATE utf8_bin NOT NULL,
  `quantité` int(255) NOT NULL,
  `nom` varchar(100) COLLATE utf8_bin NOT NULL,
  `image` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `prix`, `type`, `couleur`, `quantité`, `nom`, `image`, `description`) VALUES
(1, 45, 'bouquet', 'rouge', 10, 'Bouquet Margot', 'bouquet-margot.jpg', 'Jolie bouquet de roses rouges'),
(2, 40, 'bouquet', 'blanc', 15, 'Bouquet Clemence', 'bouquet-clemence.jpg', 'Jolie bouquet de roses blanches'),
(3, 40, 'bouquet', 'rose', 12, 'Bouquet Anna', 'bouquet-anna.jpg', 'Jolie bouquet de roses roses'),
(4, 50, 'bouquet', 'rouge', 12, 'Bouquet Anais', 'bouquet-anais.jpg', 'Jolie bouquet de roses rouges'),
(5, 39, 'bouquet', 'orange', 23, 'Bouquet Alicia', 'bouquet-alicia.jpg', 'Jolie bouquet de roses oranges'),
(6, 45, 'bouquet', 'multicolore', 13, 'Bouquet Madeleine', 'bouquet-madeleine.jpg', 'Jolie bouquet de fleurs multicolores'),
(7, 45, 'bouquet', 'orange', 23, 'Bouquet Odette', 'bouquet-odette.jpg', 'Jolie bouquet de roses oranges'),
(8, 50, 'bouquet', 'multicolore', 13, 'Bouquet Charlotte', 'bouquet-charlotte.jpg', 'Jolie bouquet de roses multicolores'),
(9, 50, 'bouquet', 'pastel', 13, 'Bouquet Amelie', 'bouquet-amelie.jpg', 'Jolie bouquet de roses pastel'),
(10, 50, 'bouquet', 'multicolore', 13, 'Bouquet Marie-Claude', 'bouquet-marieclaude.jpg', 'Jolie bouquet de roses multicolores'),
(11, 5, 'fleur', 'rouge', 24, 'Fleur Amaryllis', 'fleur-amaryllis.jpg', 'Amaryllis est un nom vernaculaire féminin donné à différentes plantes bulbeuses à fleurs de la famille des Amaryllidaceae, anciennement des Liliaceae dans la classification classique.'),
(12, 6, 'fleur', 'violette', 18, 'Fleur Dauphinelle', 'fleur-dauphinelle.jpg', 'Le genre Delphinium, les Dauphinelles ou Pieds-d\'alouette, regroupe plus de 350 espèces de plantes herbacées généralement vivaces, rarement annuelles ou bisannuelles, de la famille des Renonculacées'),
(13, 7, 'fleur', 'freesia', 22, 'Fleur Freesia', 'fleur-freesia.jpg', 'Freesia est un genre de plante monocotylédone à bulbe originaire d\'Afrique du Sud, cultivé pour ses fleurs très odorantes, aux couleurs variées. Il appartient à la famille des Iridacées. Son nom date de 1866, et lui a été donné par le botaniste Ecklon en l\'honneur d\'un médecin allemand appelé Freese.'),
(14, 5, 'fleur', 'violettte', 13, 'Fleur Iris', 'fleur-iris.jpg', 'L’Iris est un genre de plantes vivaces à rhizomes ou à bulbes de la famille des Iridacées. Le genre Iris contient 210 espèces et d\'innombrables variétés horticoles. On trouve souvent dans les jardins des Iris hybrides horticoles appelés à tort Iris germaniques.'),
(15, 6, 'fleur', 'orange', 12, 'Fleur Lys', 'fleur-lys.jpg', 'Les lys ou lis sont des plantes herbacées de la famille des Liliaceæ appartenant au genre Lilium.'),
(16, 7, 'fleur', 'rouge', 16, 'Fleur oeillet', 'fleur-oeillet.jpg', 'Œillets est un nom vernaculaire ambigu désignant en français diverses plantes herbacées, souvent utilisées comme plantes ornementales ou « fleurs à couper ». Les pétales de leurs fleurs sont généralement dentés, découpés voire laciniés.'),
(17, 8, 'fleur', 'orange', 17, 'Fleur Oiseau du Paradis', 'fleur-oiseauduparadis.jpg', 'Strelitzia est un genre de plantes ornementales de la famille des Strelitziaceae. Son nom honore la mémoire de la reine Charlotte d\'Angleterre, née duchesse de Mecklembourg-Strelitz. Botaniste à ses heures, la reine figura au nombre des fondateurs des Jardins botaniques royaux de Kew.'),
(18, 9, 'fleur', 'blanc', 25, 'Fleur Orchidée', 'fleur-orchidee.jpg', 'Les Cypripediaceae sont une famille de plantes monocotylédones. Cette famille n\'existe ni dans la classification classique de Cronquist ni dans la classification phylogénétique APG III. Ces 2 classifications placent les genres de cette famille dans celle des Orchidaceae.'),
(19, 8, 'fleur', 'rose', 19, 'Fleur Pivoine', 'fleur-pivoine.jpg', 'Les pivoines sont connues par une quarantaine d\'espèces de plantes vivaces, herbacées, ou arbustives. Les feuilles sont vert tendre ou foncé, quelquefois argentées. Les fleurs peuvent être parfumées, dressées et solitaires ou en forme de coupe ou de boule.\r\n\r\nOn distingue les pivoines herbacées et les pivoines arbustives, ou pivoines en arbre. '),
(20, 7, 'fleur', 'rose', 20, 'Fleur Tulipe', 'fleur-tulipe.jpg', 'Les tulipes forment un genre de plantes herbacées de la famille des Liliacées, qui compte une centaine d\'espèces originaires des régions tempérées chaudes de l\'Ancien monde. Plusieurs espèces sont largement cultivées comme plantes ornementales et ont donné lieu à la création de plusieurs milliers de variétés. ');

-- --------------------------------------------------------

--
-- Table structure for table `article_commande`
--

CREATE TABLE `article_commande` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `montant` int(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `date`, `montant`, `id_user`) VALUES
(1, '2020-10-06', 150, 2),
(2, '2020-07-15', 85, 3),
(3, '2020-03-26', 25, 3),
(4, '2019-11-11', 260, 4),
(5, '2020-07-15', 105, 6),
(6, '2020-03-26', 25, 9),
(7, '2019-11-11', 220, 4),
(8, '2020-10-06', 250, 5),
(9, '2019-10-23', 150, 4),
(10, '2020-10-12', 250, 5),
(11, '2020-10-06', 140, 8),
(12, '2020-07-15', 260, 7),
(13, '2020-03-26', 300, 8),
(14, '2019-11-11', 140, 10),
(15, '2020-07-15', 175, 3),
(16, '2020-03-26', 150, 6),
(17, '2019-11-11', 190, 2),
(18, '2020-10-06', 30, 6),
(19, '2019-10-23', 150, 4),
(20, '2020-10-12', 250, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(80) COLLATE utf8_bin NOT NULL,
  `nom` varchar(80) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(80) COLLATE utf8_bin NOT NULL,
  `password` varchar(80) COLLATE utf8_bin NOT NULL,
  `adress` varchar(200) COLLATE utf8_bin NOT NULL,
  `age` int(150) NOT NULL,
  `sexe` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `nom`, `prenom`, `password`, `adress`, `age`, `sexe`, `admin`) VALUES
(1, 'Yavuzkutuk@gmail.com', 'Kutuk', 'Yavuz', 'yavuz', '105 avec de Saverne 67000 Strasbourg', 58, 1, 1),
(2, 'hardytom@gmail.com', 'Hardy', 'Tom', 'tutu', '20 rue de Strasbourg 67000 Strasbourg', 35, 1, 0),
(3, 'dupontjean@gmail.com', 'Dupont', 'Jean', 'toto', '35 rue de Colmar 67000 Strasbourg', 26, 1, 0),
(4, 'dupontanna@gmail.com', 'Dupont', 'Anna', 'titi', '105 rue de Venise 67100 Strasbourg', 27, 0, 0),
(5, 'VertefeuilleMarc@gmail.com', 'Vertefeuille', 'Marc', 'okgoogle', '87 rue Banaudon 69009 LYON', 45, 1, 0),
(6, 'Doyonemile@gmail.com', 'Doyon', 'Émile', 'painauchocolat', '39 Rue du Limas 20200 BASTIA ', 36, 1, 0),
(7, 'QuinnBaptiste@gmail.com', 'Quinn', 'Baptiste', 'martine', '88 Rue Hubert de Lisle 39000 LONS-LE-SAUNIER', 28, 1, 0),
(8, 'Blondlot@gmail.com', 'Blondlot', 'Mandel', 'atchoum', '63 rue Saint Germain 93220 GAGNY ', 42, 1, 0),
(9, 'BousquetIven@gmail.com', 'Bousquet', 'Iven', 'jack', '45 Place de la Gare 92700 COLOMBES ', 28, 1, 0),
(10, 'BousquetIven@gmail.com', 'Givry', 'Aurélie', 'jack', '74 rue des six frères Ruellan 95110 SANNOIS ', 36, 0, 0),
(20, 'email@email.fr', 'nom', 'prenom', 'aa36dc6e81e2ac7ad03e12fedcb6a2c0', 'edadaz', 20, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_commande`
--
ALTER TABLE `article_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_commande` (`id_commande`);

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_avis` (`id_user`),
  ADD KEY `id_commande` (`id_commande`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `article_commande`
--
ALTER TABLE `article_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_commande`
--
ALTER TABLE `article_commande`
  ADD CONSTRAINT `article_commande_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `id_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`);

--
-- Constraints for table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `id_commande` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
