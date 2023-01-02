-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 02 jan. 2023 à 14:47
-- Version du serveur : 10.6.11-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_category`
--

CREATE TABLE `t_category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_category`
--

INSERT INTO `t_category` (`id_category`, `category_name`) VALUES
(1, 'Action'),
(2, 'Science Fiction');

-- --------------------------------------------------------

--
-- Structure de la table `t_comment`
--

CREATE TABLE `t_comment` (
  `id_comment` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_post`
--

CREATE TABLE `t_post` (
  `id_post` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_post`
--

INSERT INTO `t_post` (`id_post`, `title`, `date`, `content`, `picture`, `id_user`) VALUES
(2, 'Steins;Gate', '2022-12-22 10:04:21', 'Cupcake ipsum dolor sit amet. Apple pie jelly-o bonbon gummies oat cake powder pudding. Sugar plum candy canes cake brownie cookie cotton candy bear claw. Pudding danish ice cream tootsie roll marzipan biscuit cookie gummi bears. Marshmallow dragée tootsie roll muffin cupcake. Chocolate tootsie roll oat cake lemon drops cheesecake gummies liquorice powder.\r\nCandy canes dessert jujubes lollipop cake cake. Carrot cake carrot cake chocolate bar gingerbread cheesecake toffee chocolate bar pie. Bonbon chocolate cake toffee sesame snaps cotton candy halvah. Danish bonbon cupcake gummi bears chupa chups cake. Cheesecake marshmallow dragée cake cake muffin. Muffin jujubes jelly beans topping halvah. Donut biscuit lemon drops fruitcake cheesecake lollipop topping liquorice. Biscuit sugar plum marzipan sesame snaps chocolate jelly-o fruitcake chocolate.\r\nFruitcake pie gummi bears croissant brownie soufflé gummies apple pie wafer. Wafer carrot cake gingerbread halvah dessert brownie. Liquorice wafer topping powder lemon drops candy. Gummi bears cupcake tiramisu jelly-o dragée pudding cupcake. Pie jelly beans pie pudding gummi bears. Cookie shortbread dessert pastry lollipop cheesecake brownie. Tart jelly beans donut macaroon candy canes powder. Tootsie roll cookie soufflé marshmallow candy cake.', 'steinsgate.jpg', 1),
(3, 'Serial Experimental Lain', '2023-01-02 13:53:52', 'Chocolate oat cake soufflé lollipop cake cake tiramisu. Cotton candy cake sweet roll chocolate cake lollipop sweet roll cake. Jujubes marshmallow muffin danish gummi bears jelly. Gummi bears marshmallow gummies chocolate jujubes. Chocolate cake jelly beans tiramisu lollipop cake. Cookie dragée marshmallow chupa chups toffee jelly jelly cheesecake. Shortbread gingerbread cake cheesecake muffin powder dragée tart gummi bears. Chupa chups marzipan caramels bonbon sugar plum powder apple pie tiramisu marzipan. Macaroon pastry bear claw cheesecake toffee chocolate bar. Chocolate bar toffee cheesecake pastry sweet. Soufflé pie powder ice cream chupa chups marshmallow carrot cake lollipop. Donut fruitcake icing cake chocolate soufflé.\r\n\r\nCarrot cake jujubes cupcake biscuit toffee bear claw. Danish sesame snaps wafer ice cream macaroon. Muffin lollipop jelly topping cheesecake bonbon sweet roll. Danish liquorice macaroon gummi bears ice cream chupa chups lollipop chocolate bear claw. Macaroon oat cake gummies apple pie tart jelly beans. Brownie lemon drops tootsie roll croissant danish. Brownie cake gummies muffin toffee. Ice cream candy canes sweet sweet roll brownie. Wafer sweet roll dessert croissant brownie sugar plum. Cupcake donut dragée topping marshmallow. Oat cake pudding pastry lollipop gummies. Lemon drops dessert jujubes pastry cupcake. Dessert pastry bear claw tart bear claw sesame snaps icing sugar plum brownie.', 'lain.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_post_category`
--

CREATE TABLE `t_post_category` (
  `id_pc` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_post_category`
--

INSERT INTO `t_post_category` (`id_pc`, `id_post`, `id_category`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_user`
--

INSERT INTO `t_user` (`id_user`, `pseudo`, `email`, `password`) VALUES
(1, 'Egregorion', 'master@afpa.fr', 'greg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `index_post` (`id_post`),
  ADD KEY `id_user_fk` (`id_user`);

--
-- Index pour la table `t_post`
--
ALTER TABLE `t_post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_user_fkpost` (`id_user`);

--
-- Index pour la table `t_post_category`
--
ALTER TABLE `t_post_category`
  ADD PRIMARY KEY (`id_pc`),
  ADD KEY `id_post_fkpc` (`id_post`),
  ADD KEY `id_category_fkcat` (`id_category`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_category`
--
ALTER TABLE `t_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_post`
--
ALTER TABLE `t_post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_post_category`
--
ALTER TABLE `t_post_category`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD CONSTRAINT `id_post_fk` FOREIGN KEY (`id_post`) REFERENCES `t_post` (`id_post`),
  ADD CONSTRAINT `id_user_fk` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`);

--
-- Contraintes pour la table `t_post`
--
ALTER TABLE `t_post`
  ADD CONSTRAINT `id_user_fkpost` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`);

--
-- Contraintes pour la table `t_post_category`
--
ALTER TABLE `t_post_category`
  ADD CONSTRAINT `id_category_fkcat` FOREIGN KEY (`id_category`) REFERENCES `t_category` (`id_category`),
  ADD CONSTRAINT `id_post_fkpc` FOREIGN KEY (`id_post`) REFERENCES `t_post` (`id_post`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
