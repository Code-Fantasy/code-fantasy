SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Base de données : `codefantasy`
--

-- --------------------------------------------------------

--
-- Structure de la table `crystal`
--

DROP TABLE IF EXISTS `crystal`;
CREATE TABLE IF NOT EXISTS `crystal` (
  `idCrystal_Crystal` int NOT NULL AUTO_INCREMENT,
  `name_Crystal` varchar(255) DEFAULT NULL,
  `stats_Crystal` int NOT NULL,
  `url_Crystal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCrystal_Crystal`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `crystal`
--

INSERT INTO `crystal` (`idCrystal_Crystal`, `name_Crystal`, `stats_Crystal`, `url_Crystal`) VALUES
(1, 'Fire', 5, 'img/crystal/fire.gif, img/crystal/dullfire.png'),
(2, 'Water', 5, 'img/crystal/water.gif, img/crystal/dullwater.png'),
(3, 'Hearth', 5, 'img/crystal/earth.gif, img/crystal/dullearth.png'),
(4, 'Wind', 5, 'img/crystal/wind.gif, img/crystal/dullwind.png');

-- --------------------------------------------------------

--
-- Structure de la table `crystalteams`
--

DROP TABLE IF EXISTS `crystalteams`;
CREATE TABLE IF NOT EXISTS `crystalteams` (
  `idCrystal_Crystal` int NOT NULL,
  `idTeams_Teams` int NOT NULL,
  PRIMARY KEY (`idCrystal_Crystal`,`idTeams_Teams`),
  KEY `idTeams_Teams` (`idTeams_Teams`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `idJobs_Jobs` int NOT NULL AUTO_INCREMENT,
  `name_Jobs` varchar(255) DEFAULT NULL,
  `HP_Jobs` int DEFAULT NULL,
  `attack_Jobs` int DEFAULT NULL,
  `dodge_Jobs` int DEFAULT NULL,
  `skills_Jobs` varchar(255) DEFAULT NULL,
  `url_Jobs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idJobs_Jobs`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`idJobs_Jobs`, `name_Jobs`, `HP_Jobs`, `attack_Jobs`, `dodge_Jobs`, `skills_Jobs`, `url_Jobs`) VALUES
(1, 'Warrior', 650, 50, 5, 'Slash, Protera', 'img/jobs/warrior.png'),
(2, 'Rogue', 550, 50, 10, 'Slash', 'img/jobs/rogue.png'),
(3, 'Monk', 600, 60, 5, 'Punch', 'img/jobs/monk.png'),
(4, 'White Mage', 450, 30, 5, 'Strike, Curaga', 'img/jobs/whitemage.png'),
(5, 'Black Mage', 500, 30, 5, 'Strike, Firaga', 'img/jobs/black_mage.png');

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `idPlayer_Player` int NOT NULL AUTO_INCREMENT,
  `name_Player` varchar(255) DEFAULT NULL,
  `level_Player` int DEFAULT NULL,
  PRIMARY KEY (`idPlayer_Player`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `playerjobs`
--

DROP TABLE IF EXISTS `playerjobs`;
CREATE TABLE IF NOT EXISTS `playerjobs` (
  `idPlayer_Player` int NOT NULL,
  `idJobs_Jobs` int NOT NULL,
  PRIMARY KEY (`idPlayer_Player`,`idJobs_Jobs`),
  KEY `idJobs_Jobs` (`idJobs_Jobs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `playerstage`
--

DROP TABLE IF EXISTS `playerstage`;
CREATE TABLE IF NOT EXISTS `playerstage` (
  `idStage_Stage` int NOT NULL,
  `idPlayer_Player` int NOT NULL,
  PRIMARY KEY (`idStage_Stage`,`idPlayer_Player`),
  KEY `idPlayer_Player` (`idPlayer_Player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `sound`
--

DROP TABLE IF EXISTS `sound`;
CREATE TABLE IF NOT EXISTS `sound` (
  `idSound_Sound` int NOT NULL AUTO_INCREMENT,
  `battleTheme_Sound` varchar(255) DEFAULT NULL,
  `soundDesign_Sound` varchar(255) DEFAULT NULL,
  `victoryTheme_Sound` varchar(255) DEFAULT NULL,
  `menuTheme_Sound` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idSound_Sound`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `soundstage`
--

DROP TABLE IF EXISTS `soundstage`;
CREATE TABLE IF NOT EXISTS `soundstage` (
  `idSound_Sound` int NOT NULL,
  `idStage_Stage` int NOT NULL,
  PRIMARY KEY (`idSound_Sound`,`idStage_Stage`),
  KEY `idStage_Stage` (`idStage_Stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

DROP TABLE IF EXISTS `stage`;
CREATE TABLE IF NOT EXISTS `stage` (
  `idStage_Stage` int NOT NULL AUTO_INCREMENT,
  `url_Stage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idStage_Stage`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `teamplayer`
--

DROP TABLE IF EXISTS `teamplayer`;
CREATE TABLE IF NOT EXISTS `teamplayer` (
  `idTeams_Teams` int NOT NULL,
  `IdPlayer_Player` int NOT NULL,
  PRIMARY KEY (`idTeams_Teams`,`IdPlayer_Player`),
  KEY `IdPlayer_Player` (`IdPlayer_Player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `idTeams_Teams` int NOT NULL AUTO_INCREMENT,
  `name_Teams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTeams_Teams`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`idTeams_Teams`, `name_Teams`) VALUES
(1, 'Team 1'),
(2, 'Team 2');

-- --------------------------------------------------------

--
-- Structure de la table `xp`
--

DROP TABLE IF EXISTS `xp`;
CREATE TABLE IF NOT EXISTS `xp` (
  `idXP_XP` int NOT NULL AUTO_INCREMENT,
  `value_XP` int DEFAULT NULL,
  PRIMARY KEY (`idXP_XP`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `xp`
--

INSERT INTO `xp` (`idXP_XP`, `value_XP`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `xpplayer`
--

DROP TABLE IF EXISTS `xpplayer`;
CREATE TABLE IF NOT EXISTS `xpplayer` (
  `idXP_XP` int NOT NULL,
  `idPlayer_Player` int NOT NULL,
  PRIMARY KEY (`idXP_XP`,`idPlayer_Player`),
  KEY `idPlayer_Player` (`idPlayer_Player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `crystalteams`
--
ALTER TABLE `crystalteams`
  ADD CONSTRAINT `crystalteams_ibfk_1` FOREIGN KEY (`idCrystal_Crystal`) REFERENCES `crystal` (`idCrystal_Crystal`),
  ADD CONSTRAINT `crystalteams_ibfk_2` FOREIGN KEY (`idTeams_Teams`) REFERENCES `teams` (`idTeams_Teams`);

--
-- Contraintes pour la table `playerjobs`
--
ALTER TABLE `playerjobs`
  ADD CONSTRAINT `playerjobs_ibfk_1` FOREIGN KEY (`idPlayer_Player`) REFERENCES `player` (`idPlayer_Player`),
  ADD CONSTRAINT `playerjobs_ibfk_2` FOREIGN KEY (`idJobs_Jobs`) REFERENCES `jobs` (`idJobs_Jobs`);

--
-- Contraintes pour la table `playerstage`
--
ALTER TABLE `playerstage`
  ADD CONSTRAINT `playerstage_ibfk_1` FOREIGN KEY (`idStage_Stage`) REFERENCES `stage` (`idStage_Stage`),
  ADD CONSTRAINT `playerstage_ibfk_2` FOREIGN KEY (`idPlayer_Player`) REFERENCES `player` (`idPlayer_Player`);

--
-- Contraintes pour la table `soundstage`
--
ALTER TABLE `soundstage`
  ADD CONSTRAINT `soundstage_ibfk_1` FOREIGN KEY (`idSound_Sound`) REFERENCES `sound` (`idSound_Sound`),
  ADD CONSTRAINT `soundstage_ibfk_2` FOREIGN KEY (`idStage_Stage`) REFERENCES `stage` (`idStage_Stage`);

--
-- Contraintes pour la table `teamplayer`
--
ALTER TABLE `teamplayer`
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`IdPlayer_Player`) REFERENCES `player` (`idPlayer_Player`),
  ADD CONSTRAINT `teamplayer_ibfk_1` FOREIGN KEY (`idTeams_Teams`) REFERENCES `teams` (`idTeams_Teams`);

--
-- Contraintes pour la table `xpplayer`
--
ALTER TABLE `xpplayer`
  ADD CONSTRAINT `xpplayer_ibfk_1` FOREIGN KEY (`idXP_XP`) REFERENCES `xp` (`idXP_XP`),
  ADD CONSTRAINT `xpplayer_ibfk_2` FOREIGN KEY (`idPlayer_Player`) REFERENCES `player` (`idPlayer_Player`);
COMMIT;

