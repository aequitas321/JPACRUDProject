-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema soccer_team_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `soccer_team_db` ;

-- -----------------------------------------------------
-- Schema soccer_team_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `soccer_team_db` DEFAULT CHARACTER SET utf8 ;
USE `soccer_team_db` ;

-- -----------------------------------------------------
-- Table `soccer_team`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `soccer_team` ;

CREATE TABLE IF NOT EXISTS `soccer_team` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS soccerteamuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'soccerteamuser'@'localhost' IDENTIFIED BY 'soccerteamuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'soccerteamuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `soccer_team`
-- -----------------------------------------------------
START TRANSACTION;
USE `soccer_team_db`;
INSERT INTO `soccer_team` (`id`, `name`) VALUES (1, 'BVB Dortmund');

COMMIT;

