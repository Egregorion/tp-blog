-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 10 jan. 2023 à 19:06
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
(2, 'Science Fiction'),
(3, 'Horreur');

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

--
-- Déchargement des données de la table `t_comment`
--

INSERT INTO `t_comment` (`id_comment`, `id_post`, `id_user`, `date`, `content`) VALUES
(10, 2, 2, '2023-01-05 11:01:33', 'Pas vu ! '),
(11, 14, 4, '2023-01-05 21:41:28', 'Enormissime traitement d\'un personnage type assez peu souvent traité ailleurs qu\'au Japon et qu\'on nomme là bas  \"Yandere\".');

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
(2, 'Steins;Gate', '2023-01-06 12:59:43', 'Steins;Gate est une série d\'anime de science-fiction créée par 5pb. et Nitroplus. Il a été publié en 2011 et est basé sur un visual novel du même nom. La série suit l\'histoire de Rintaro Okabe, un auto-proclamé scientifique fou, et de son groupe d\'amis alors qu\'ils découvrent un moyen d\'envoyer des messages dans le passé. Ils doivent cependant utiliser ce pouvoir avec précaution car tout changement qu\'ils apportent au passé peut avoir des conséquences drastiques dans le futur.\r\n\r\nL\'histoire de Steins;Gate suit Rintaro et ses amis alors qu\'ils utilisent leurs nouveaux pouvoirs de voyage temporel pour le bien de l\'humanité. Ils doivent faire face aux conséquences de leurs actions et utiliser leur intelligence pour éviter les dangers. Au fil du temps, ils découvrent la vraie nature du temps et de l\'espace, ainsi qu\'un complot gouvernemental.\r\n\r\nLes personnages de Steins;Gate sont ce qui rend vraiment la série exceptionnelle. Rintaro est une personne passionnée qui est prête à tout pour atteindre ses objectifs. Ses amis sont tous uniques et ont leurs propres motivations pour l\'aider. Ils se rassemblent tous pour former une unité cohérente qui s\'entraide en cas de besoin.\r\n\r\nL\'animation de Steins;Gate est de haut niveau, avec des arrière-plans détaillés et des personnages faciles à reconnaître. La bande originale est également excellente et colle parfaitement à l\'ambiance.\r\n\r\nSi vous cherchez un anime de science-fiction avec une superbe histoire et des personnages intéressants, alors Steins;Gate vaut vraiment le coup d\'être regardé. L\'histoire est captivante et vous tiendra en haleine jusqu\'à la fin.', 'steinsgate.jpg', 4),
(3, 'Serial Experimental Lain', '2023-01-02 13:53:52', 'Serial Experiments Lain est une série d\'anime psychédélique créée par Triangle Staff et Pioneer LDC. Il a été publié en 1998 et suit l\'histoire de Lain Iwakura, une jeune fille de 14 ans qui est plongée dans un monde virtuel connu sous le nom de «The Wired». Lain et ses amis explorent ce monde électronique tout en découvrant des secrets sur leur existence et leur destin.\r\n\r\nLa série se concentre sur les thèmes de la technologie et de la philosophie. Elle aborde des concepts tels que l\'identité virtuelle, la télématique et le monde numérique. Elle explore également les limites entre le monde réel et le monde virtuel, ainsi que la manière dont les technologies peuvent être utilisées pour manipuler et contrôler les gens.\r\n\r\nLes personnages de Serial Experiments Lain sont intrigants et complexes. Lain est une jeune fille intelligente et courageuse qui cherche à comprendre le monde qui l\'entoure. Ses amis et sa famille sont tous des personnages richement développés avec des motivations et des objectifs uniques.\r\n\r\nL\'animation de Serial Experiments Lain est étonnante. Les couleurs sont vives et les détails sont très bien réalisés. La musique est également très bien choisie et complète parfaitement le ton de la série.\r\n\r\nSi vous êtes à la recherche d\'une série d\'anime psychédélique avec des thèmes profonds et des personnages complexes, alors Serial Experiments Lain est une excellente option. La série explorera vos limites et vous tiendra en haleine jusqu\'à la fin.', 'lain.jpg', 4),
(4, 'Shingeki No Kyojin', '2023-01-02 18:05:27', 'Shingeki No Kyojin est une série d\'anime post-apocalyptique créée par Wit Studio et Production I.G. Il a été publié en 2013 et suit l\'histoire d\'Eren Jaeger et de ses amis alors qu\'ils luttent pour survivre dans un monde ravagé par des titans colossaux.\r\n\r\nLa série met en scène des personnages complexes et un scénario captivant. Les personnages principaux sont Eren, Mikasa et Armin, qui sont tous les trois des adolescents déterminés à sauver le monde des titans. Ils doivent affronter des dangers et des adversaires puissants tout en découvrant la vérité sur leur passé et leur destin.\r\n\r\nL\'animation d\'Attack on Titan est très réaliste. Les titans sont créés de manière très détaillée et leurs mouvements sont fluides. La musique est également très bien choisie et complète parfaitement l\'ambiance de chaque épisode.\r\n\r\nSi vous êtes à la recherche d\'une série d\'anime post-apocalyptique avec des personnages complexes et une histoire captivante, alors Attack on Titan est une excellente option. La série vous tiendra en haleine jusqu\'à la fin et vous laissera avec des réflexions profondes sur la nature humaine.', 'shingekinokyojin.jpg', 4),
(13, 'Full Metal Alchemist', '2023-01-06 13:00:11', 'Fullmetal Alchemist est une série d\'anime remplie d\'action et de magie. Elle se concentre sur les aventures de deux frères, Edward et Alphonse Elric, qui sont à la recherche d\'une pierre philosophale qui leur permettra de récupérer leurs corps perdus. Dans leur quête, ils explorent des nouveaux mondes, affrontent des dangers et des adversaires puissants, et découvrent des secrets sur leur passé et leur destin. \r\n\r\nLes personnages de Fullmetal Alchemist sont complexes et bien développés. Edward et Alphonse sont courageux et déterminés à atteindre leurs objectifs, et leurs amis et leurs alliés leur apportent leur aide et leur soutien.\r\nL\'animation de Fullmetal Alchemist est de haut niveau. Les couleurs sont vives et les détails sont très bien réalisés. La musique est également très bien choisie et complète parfaitement le ton de la série.\r\n\r\nSi vous êtes à la recherche d\'une série d\'anime remplie d\'action et de magie avec des personnages courageux et déterminés, alors Fullmetal Alchemist est une excellente option. La série propose des thèmes profonds et des scénarios captivants qui tiendront le spectateur en haleine jusqu\'à la fin.', '63b59357a5889-fma.jpg', 4),
(14, 'Mirrai Nikki', '2023-01-06 12:41:49', 'Mirai Nikki, également connu sous le nom de The Future Diary, est une série de manga japonaise écrite et illustrée par Sakae Esuno. La série suit l\'histoire d\'un jeune homme nommé Yuno Gasai, qui reçoit un journal qui peut prédire l\'avenir, et ses efforts pour l\'utiliser pour survivre à un battle royale contre 11 autres personnes avec leurs propres journaux.\r\n\r\nLa série a été serialisée dans le Magazine hebdomadaire de Kodansha de janvier 2006 à décembre 2010, et a été par la suite regroupée en 26 volumes tankōbon. Elle a également été adaptée en une série d\'anime produite par Asread, qui a été diffusée au Japon de octobre 2011 à avril 2012. La série a été licenciée pour une sortie en langue anglaise par Viz Media, et a également été adaptée en une pièce de théâtre en direct en 2015.\r\n\r\nMirai Nikki a connu un grand succès commercial, vendant plus de 20 millions d\'exemplaires dans le monde. Il a reçu un large accueil critique pour ses personnages complexes, son scénario et ses thèmes, et est considéré comme un classique du genre du survival game.\r\n\r\nLa série est connue pour son contenu sombre et violent, et explore les thèmes de la solitude, de l\'isolement et des conséquences de l\'utilisation irresponsable du pouvoir. Elle explore également la relation entre Yuno et le principal protagoniste de la série, Yukiteru Amano, et les longueurs auxquelles ils sont prêts à aller pour se protéger l\'un l\'autre.\r\n\r\nMirai Nikki a eu un impact durable sur la culture populaire, et a inspiré de nombreux médias dérivés, y compris des light novels, des jeux vidéo et de la marchandise. C\'est une série populaire et influente dans l\'industrie du manga et de l\'anime.', '63b6be68cfd28-227944.jpg', 4);

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
(3, 3, 2),
(4, 4, 1),
(16, 14, 3),
(17, 2, 2),
(18, 13, 1);

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
(2, 'Steven', 'steven@steven.fr', '$2y$10$vn24HL5eKWsROIXKexc3eOt7FWLH.qavy2VuGniF1DCviuhr6tbiG'),
(3, 'Lesa', 'lesa@lesa.fr', '$2y$10$3eIbADtuM15Qh.MTO2yXU.ivx74l3z53aTN3P1OYL8eT5FmVSQwUS'),
(4, 'Egregorion', 'greg@gmail.com', '$2y$10$0w4T/ugyXGUqgE4FaTGsKejR7SbhjA8FtRTsC2nnWRdnHM.MaNz6K');

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
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_category`
--
ALTER TABLE `t_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `t_post`
--
ALTER TABLE `t_post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `t_post_category`
--
ALTER TABLE `t_post_category`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
