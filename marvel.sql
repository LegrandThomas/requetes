-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mar. 17 mai 2022 à 08:09
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date of birth` date NOT NULL,
  `release date` date NOT NULL,
  `creation date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `last_name`, `date of birth`, `release date`, `creation date`) VALUES
(3, 'Robert', 'Downey Jr.', '1965-04-04', '2022-05-16', '2022-05-16'),
(4, 'Terrence', 'Howard', '1965-04-04', '2022-05-16', '2022-05-16'),
(5, 'Gwyneth', 'Paltrow', '1972-09-27', '2022-05-16', '2022-05-16'),
(6, 'Edward', 'Norton', '1969-08-18', '2022-05-16', '2022-05-16'),
(7, 'Chris', 'Hemsworth', '1983-08-11', '2022-05-16', '2022-05-16'),
(8, 'Tom', 'Hiddleston', '1981-02-09', '2022-05-16', '2022-05-16'),
(9, 'Hayley', 'Atwell', '1982-04-05', '2022-05-16', '2022-05-16'),
(10, 'Samuel L.', 'Jackson', '1948-12-21', '2022-05-16', '2022-05-16'),
(11, 'Mark', 'Ruffalo', '1967-11-22', '2022-05-16', '2022-05-16'),
(12, 'Scarlett', 'Johansson', '1984-11-22', '2022-05-16', '2022-05-16'),
(13, 'Jeremy', 'Renner', '1971-01-07', '2022-05-16', '2022-05-16'),
(14, 'Clark', 'Gregg', '1962-04-02', '2022-05-16', '2022-05-16'),
(15, 'Chris', 'Pratt', '1979-06-21', '2022-05-16', '2022-05-16'),
(16, 'Zoe', 'Saldana', '1978-06-19', '2022-05-16', '2022-05-16'),
(17, 'Paul', 'Rudd', '1969-04-06', '2022-05-16', '2022-05-16'),
(18, 'Evangeline', 'Lilly', '1979-08-03', '2022-05-16', '2022-05-16'),
(19, 'Anthony', 'Mackie', '1978-09-23', '2022-05-16', '2022-05-16'),
(20, 'Chadwick', 'Boseman', '1976-11-29', '2022-05-16', '2022-05-16'),
(21, 'Tom', 'Holland', '1996-06-01', '2022-05-16', '2022-05-16'),
(22, 'Elizabeth', 'Olsen', '1989-02-16', '2022-05-16', '2022-05-16'),
(23, 'Benedict', 'Cumberbatch', '1976-07-19', '2022-05-16', '2022-05-16'),
(25, 'Chris', 'Evans', '1981-06-13', '2022-05-16', '2022-05-16'),
(26, 'Brie', 'Larson', '1989-10-01', '2022-05-16', '2022-05-16');

-- --------------------------------------------------------

--
-- Structure de la table `actor_movies`
--

CREATE TABLE `actor_movies` (
  `id_movies` int NOT NULL,
  `id_actors` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actor_movies`
--

INSERT INTO `actor_movies` (`id_movies`, `id_actors`) VALUES
(1, 3),
(3, 3),
(6, 3),
(7, 3),
(13, 3),
(1, 4),
(3, 4),
(6, 4),
(7, 4),
(1, 5),
(3, 5),
(6, 5),
(2, 6),
(4, 7),
(8, 7),
(13, 7),
(25, 7),
(4, 8),
(8, 8),
(25, 8),
(5, 9),
(6, 9),
(9, 9),
(13, 9),
(3, 10),
(5, 10),
(6, 10),
(9, 10),
(13, 10),
(17, 10),
(29, 10),
(35, 10),
(5, 11),
(6, 11),
(9, 11),
(13, 11),
(17, 11),
(29, 11),
(35, 11),
(3, 12),
(5, 12),
(6, 12),
(9, 12),
(13, 12),
(17, 12),
(29, 12),
(35, 12),
(11, 15),
(17, 15),
(21, 15),
(29, 15),
(35, 15),
(11, 16),
(17, 16),
(21, 16),
(29, 16),
(35, 16),
(15, 17),
(31, 17),
(15, 18),
(31, 18),
(17, 19),
(29, 19),
(35, 19),
(17, 20),
(27, 20),
(29, 20),
(35, 20),
(17, 21),
(23, 21),
(29, 21),
(35, 21),
(37, 21),
(19, 23),
(5, 25),
(6, 25),
(13, 25),
(17, 25),
(29, 25),
(35, 25),
(32, 26);

-- --------------------------------------------------------

--
-- Structure de la table `Movies`
--

CREATE TABLE `Movies` (
  `id` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `release date` date NOT NULL,
  `duration` time NOT NULL,
  `director` varchar(30) NOT NULL,
  `creation date` date NOT NULL,
  `update date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Movies`
--

INSERT INTO `Movies` (`id`, `title`, `release date`, `duration`, `director`, `creation date`, `update date`) VALUES
(1, 'iron man', '2008-04-14', '02:06:00', 'Jon Favreau', '2022-05-14', '2022-05-14'),
(2, 'Incroyable Hulk', '2008-07-23', '02:26:12', 'Louis Leterrier', '2022-05-14', '2022-05-14'),
(3, 'Iron Man 2', '2010-05-28', '02:06:46', 'Jon Favreau', '2022-05-14', '2022-05-14'),
(4, 'Thor', '2011-04-27', '01:54:23', 'Kenneth Branagh', '2022-05-14', '2022-05-14'),
(5, 'Captain America: First Avenger', '2011-08-17', '02:04:23', 'Joe Johnston', '2022-05-14', '2022-05-14'),
(6, 'Avengers', '2012-04-25', '02:05:58', 'Joss Whedon', '2022-05-14', '2022-05-14'),
(7, 'Iron Man 3', '2013-04-24', '02:10:00', 'Shane Black', '2022-05-14', '2022-05-14'),
(8, 'Thor : Le Monde des ténèbres', '2013-10-30', '01:52:00', 'Alan Taylor', '2022-05-14', '2022-05-14'),
(9, 'Captain America : Le Soldat de l hiver', '2014-05-26', '02:16:00', ' Anthony et Joe Russo', '2022-05-14', '2022-05-14'),
(11, 'Les Gardiens de la Galaxie', '2014-08-13', '02:01:00', ' James Gunn', '2022-05-14', '2022-05-14'),
(13, 'Avengers : L Ère d Ultron', '2015-04-22', '02:22:00', 'Joss Whedon', '2022-05-14', '2022-05-14'),
(15, 'Ant-Man', '2015-07-14', '01:57:00', 'Peyton Reed', '2022-05-14', '2022-05-14'),
(17, 'Captain America: Civil War', '2016-04-27', '02:27:00', 'Anthony et Joe Russo', '2022-05-14', '2022-05-14'),
(19, 'Doctor Strange', '2016-10-26', '01:55:00', 'Scott Derrickson', '2022-05-14', '2022-05-14'),
(21, 'Les Gardiens de la Galaxie Vol. 2', '2017-04-26', '02:17:00', 'James Gunn', '2022-05-14', '2022-05-14'),
(23, 'Spider-Man: Homecoming', '2017-07-12', '02:13:00', 'Jon Watts', '2022-05-14', '2022-05-14'),
(25, 'Thor : Ragnarok', '2017-10-25', '02:10:00', 'Taika Waititi', '2022-05-14', '2022-05-14'),
(27, 'Black Panther', '2018-02-14', '02:14:00', 'Ryan Coogler', '2022-05-14', '2022-05-14'),
(29, 'Avengers: Infinity War', '2018-04-25', '02:29:00', 'Anthony et Joe Russo', '2022-05-14', '2022-05-14'),
(31, 'Ant-Man et la Guêpe', '2018-07-18', '01:58:00', 'Peyton Reed', '2022-05-14', '2022-05-14'),
(32, 'Captain Marvel', '2019-03-06', '02:04:00', 'Anna Boden et Ryan Fleck', '2022-05-14', '2022-05-14'),
(35, 'Avengers: Endgame', '2019-04-24', '03:01:00', 'Anthony et Joe Russo', '2022-05-14', '2022-05-14'),
(37, 'Spider-Man: Far From Home', '2019-07-03', '02:09:00', 'Jon Watts', '2022-05-14', '2022-05-14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `first_name` (`first_name`,`last_name`,`date of birth`);

--
-- Index pour la table `actor_movies`
--
ALTER TABLE `actor_movies`
  ADD PRIMARY KEY (`id_movies`,`id_actors`),
  ADD KEY `id_actors` (`id_actors`);

--
-- Index pour la table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`,`release date`,`duration`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actor_movies`
--
ALTER TABLE `actor_movies`
  ADD CONSTRAINT `actor_movies_ibfk_1` FOREIGN KEY (`id_actors`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `actor_movies_ibfk_2` FOREIGN KEY (`id_movies`) REFERENCES `Movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
