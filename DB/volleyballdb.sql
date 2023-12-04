-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema volleyballdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `volleyballdb` ;

-- -----------------------------------------------------
-- Schema volleyballdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `volleyballdb` DEFAULT CHARACTER SET utf8 ;
USE `volleyballdb` ;

-- -----------------------------------------------------
-- Table `player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `player` ;

CREATE TABLE IF NOT EXISTS `player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `jersey_number` VARCHAR(2) NULL,
  `birth_date` VARCHAR(45) NULL,
  `position` VARCHAR(45) NULL,
  `height` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS official@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'official'@'localhost' IDENTIFIED BY 'official';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'official'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `player`
-- -----------------------------------------------------
START TRANSACTION;
USE `volleyballdb`;
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (1, 'Matt', 'Anderson', '1', '08-18-1987', 'Opposite', '6-10');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (2, 'Aaron', 'Russell', '2', '06-04-1993', 'Outside', '6-9');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (3, 'James', 'Shaw', '3', '03-05-1994', 'Setter', '6-8');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (4, 'Jeff', 'Jendryk', '4', '09-15-1995', 'Middle', '6-10');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (5, 'Kyle', 'Ensing', '5', '03-06-1997', 'Opposite', '6-7');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (6, 'Quinn', 'Isaacson', '6', '02-19-1999', 'Setter', '6-2');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (7, 'Jacob', 'Pasteur', '7', '06-05-2002', 'Outside', '6-4');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (8, 'T.J.', 'DeFalco', '8', '04-10-1997', 'Outside', '6-5');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (9, 'Jake', 'Hanes', '9', '05-03-1998', 'Opposite', '6-10');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (10, 'Kyle', 'Dagostino', '10', '05-18-1995', 'Libero', '5-9');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (11, 'Micah', 'Christenson', '11', '05-08-1993', 'Setter', '6-5');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (12, 'Max', 'Holt', '12', '03-12-1987', 'Middle', '6-10');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (13, 'Patrick', 'Gasman', '13', '01-02-1997', 'Middle', '6-10');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (14, 'Micah', 'Ma\'a', '14', '04-16-1997', 'Setter', '6-3');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (15, 'Kyle', 'Russell', '15', '08-25-1993', 'Opposite', '6-9');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (16, 'Josh', 'Tuaniga', '16', '03-18-1997', 'Setter', '6-3');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (17, 'Thomas', 'Jaeschke', '17', '09-04-1993', 'Outside', '6-6');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (18, 'Garrett', 'Muagututia', '18', '02-26-1988', 'Outside', '6-5');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (19, 'Taylor', 'Averill', '19', '03-05-1992', 'Middle', '6-7');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (20, 'David', 'Smith', '20', '05-15-1985', 'Middle', '6-7');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (21, 'Mason', 'Briggs', '21', '01-21-2001', 'Libero', '6-0');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (22, 'Erik', 'Shoji', '22', '08-24-1989', 'Libero', '6-0');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (23, 'Cody', 'Kessel', '23', '12-03-1991', 'Outside', '6-5');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (24, 'Brett', 'Wildman', '24', '03-06-2000', 'Outside', '6-5');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (25, 'Ethan', 'Champlin', '25', '11-29-2001', 'Outside', '6-3');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (26, 'Merrick', 'McHenry', '26', '10-17-2000', 'Middle', '6-7');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (27, 'Tyler', 'Mitchem', '27', '05-24-1998', 'Middle', '6-11');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (28, 'Francesco', 'Sani', '28', '07-16-2002', 'Opposite', '6-8');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (29, 'Jordan', 'Ewert', '29', '03-18-1997', 'Outside', '6-5');
INSERT INTO `player` (`id`, `first_name`, `last_name`, `jersey_number`, `birth_date`, `position`, `height`) VALUES (30, 'Kyle', 'McCauley', '30', '01-23-1999', 'Outside', '6-4');

COMMIT;

