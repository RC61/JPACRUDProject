-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ppr_leaderboard
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ppr_leaderboard` ;

-- -----------------------------------------------------
-- Schema ppr_leaderboard
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ppr_leaderboard` DEFAULT CHARACTER SET utf8 ;
USE `ppr_leaderboard` ;

-- -----------------------------------------------------
-- Table `player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `player` ;

CREATE TABLE IF NOT EXISTS `player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL DEFAULT 'FirstName',
  `last_name` VARCHAR(45) NOT NULL DEFAULT 'LastName',
  `position` VARCHAR(45) NULL,
  `total_ppr_points` INT NULL,
  `touchdowns` INT NULL,
  `receptions` INT NULL,
  `rec_yards` INT NULL,
  `rush_attempts` INT NULL,
  `rush_yards` INT NULL,
  `adp` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS ppruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'ppruser'@'localhost' IDENTIFIED BY 'ppruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'ppruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `player`
-- -----------------------------------------------------
START TRANSACTION;
USE `ppr_leaderboard`;
INSERT INTO `player` (`id`, `first_name`, `last_name`, `position`, `total_ppr_points`, `touchdowns`, `receptions`, `rec_yards`, `rush_attempts`, `rush_yards`, `adp`) VALUES (1, 'Create', 'APlayer', 'WR/RB/TE', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `player` (`id`, `first_name`, `last_name`, `position`, `total_ppr_points`, `touchdowns`, `receptions`, `rec_yards`, `rush_attempts`, `rush_yards`, `adp`) VALUES (2, 'Billy', 'Buster', 'RB', 2, 2, 2, 2, 2, 2, 2);

COMMIT;

