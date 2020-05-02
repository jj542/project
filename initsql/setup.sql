CREATE DATABASE student_records;
USE student_records;
-- Adminer 4.7.6 MySQL dump

-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `student_id` int NOT NULL,
  `Gym_Grade` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `grades` (`student_id`, `Gym_Grade`) VALUES
(3,	'B'),
(5,	'NA'),
(23,	'F'),
(24,	'A'),
(32,	'A'),
(33,	'A');

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int NOT NULL,
  `first_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `students` (`id`, `first_name`, `username`, `password`, `last_name`) VALUES
(3,	'Allen',	'ai',	'ai123',	'Iverson'),
(5,	'Coach Bill',	'cb',	'cb45',	'Ryan'),
(23,	'Michael',	'mj',	'mj123',	'Jordan'),
(24,	'Kobe',	'kb',	'kb123',	'Bryant'),
(32,	'Magic',	'mj32',	'basketball',	'Johnson'),
(33,	'Larry',	'lb',	'bird',	'Bird');


-- 2020-04-25 20:39:19
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'it635';
CREATE USER 'steve'@'%' IDENTIFIED BY 'it635';
-- GRANT SELECT ON scraping.prod_info TO 'steve'@'%';
-- GRANT INSERT ON scraping.prod_info TO 'steve'@'%';
FLUSH PRIVILEGES;

