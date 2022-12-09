-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 09 déc. 2022 à 15:08
-- Version du serveur : 5.5.68-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fabien-ricca_livreor`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaire`, `id_utilisateur`, `date`) VALUES
(14, 'test', 6, '2022-09-12 12:40:43'),
(13, 'Le dieu des enfers te surveille !', 4, '2022-05-12 17:49:23'),
(7, 'Fais le, ou ne le fais pas, mais il n&#039;y a pas d&#039;essai.', 1, '2022-05-12 12:18:42'),
(12, 'Pas mal du tout cette histoire Fab ! ;) Bien jouÃ© !', 3, '2022-05-12 14:16:32'),
(15, 'coucou; DROP DATABASE livre-or;', 12, '2022-09-12 13:00:19'),
(16, 'a; DROP DATABASE livreor;', 12, '2022-09-12 13:00:29');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(1, 'padawan', '$2y$10$FuklX3IwqnweFgSW8fM.F.8BM.CzbLy7mkXPqgN6jRtmjHMrmb/Wy'),
(2, 'Gilgamesh', '$2y$10$yTj4UFmhd3re88FGkjR6de0nXIeUVjndb/RW4/n.VH0ejuu342T8W'),
(3, 'Nana', '$2y$10$bOfeWaPQVyteuCe7sOo4LeWIstN8FgKsRRY/fQE.zl4hMHSQQ/k8i'),
(4, 'Mefisto', '$2y$10$X54rr/uU9jKG/PlZVlGrvO/xBMGvhoApPA6REmOhIZ8xTFpMBoSDC'),
(5, 'Poutourouille326', '$2y$10$s7De6hue2nDZknlQa0zOlOmue/xxwBYdLNdAWcpEJphXCwS8z0yVe'),
(6, 'admin', '$2y$10$8bdxHnFoq4zlNQXAEBgV4uX8JTcmxbdXHiE2zquDRNRkI.KF/WKEG'),
(7, 'titi; DROP TABLE students', '$2y$10$pspcuZSTD68RQg8rZGYM/OphALq9qkePl8Nve/gHAWXgBWPQpKmIW'),
(8, 'totocaca;DROP TABLE utilisateurs;', '$2y$10$hJZOy15pPk/ffti6yHfi7Os87QzUCvWB2lZ6EpOGG8wnllZxT.4dy'),
(9, 'testtest1; DROP TABLE commentaires;', '$2y$10$o2UHQBj6W/4YEtD2yfewH.p5CpaxcwGWX0a/kp/s/i.EaMWibbumK'),
(10, 'hey;DROP DATABASE livreor;', '$2y$10$25rtiMfFd3AGPQL39NEfpe2YYTzQ5pJEiJtwJWZ5OYh0CYf3VpFBW'),
(11, 'titi; DROP DATABASE livre-or;', '$2y$10$MAJgwuESuoaKHp7W7pLvbOFX4wNPBkuGPrwUS/nDUXqMi1GJjbboi'),
(12, 'toto', '$2y$10$PFOs4FrUIEDR5F1.veWwP.jFeFiVUknHArWvQATvcr2MvpibnotE.'),
(13, 'hey;DROP DATABASE fabien-ricca_livreor;', '$2y$10$Ba3GmBOtqbAvubIf5eb5A.SDURHR4Cxf21ydoo3epCDXfdd/qKO7i'),
(14, 'hey;DROP DATABASE fabien-ricca_livre-or;', '$2y$10$VgLE.PiY2n6aUnMuc2foFO8uuv7bd.B7/futzDIvM2jojyVn.phZu'),
(15, 'admin;DROP TABLE utilisateur;', '$2y$10$Ax7k8X/SJOlJxS.LiFFfQ.S1taDG8nZNpbxDsNbgZFj91FAFVuwqO'),
(16, 'z;DROP TABLE commentaire;', '$2y$10$itL/p3veoHeLuJdXyk5RMO8d0ybGaLDarwmscnYXYZOk7cf51D1fK'),
(17, 'titi; DROP DATABASE fabien-ricca_livreor;', '$2y$10$dX8Uh2TX9DoQkKGSFGCCt.cCLzEqf4t6hG40V0bs42QHx0/YqTlU.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
