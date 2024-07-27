-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 11:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wis`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `role` enum('superadmin','admin','user') NOT NULL DEFAULT 'user',
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `email`, `password`, `FirstName`, `LastName`, `role`, `code`) VALUES
(14, 'SAdmin@ph', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Rhoeder', 'Gatarin', 'superadmin', NULL),
(20, 'adminS@ph', '$2y$10$Q/AorUi1jMY4rHF4FRjFnuxibriwAlASkJ9S2NH3pys7liQWZF2vS', 'RhoederFS', 'Gatarin', 'superadmin', NULL),
(21, 'v1admin@ph', '$2y$10$147D35U0GikEZFOIvqXbh.Cb13HdSV/TI42c4FxMD4w2KXLXUK9y.', 'Djay', 'Pasio', 'admin', NULL),
(24, 'alapang@ph', '$2y$10$MTEzp8xjslWSUcMiKVmUFu547cEgsNzpAR6rBUjNPp1tNEBAPfxgq', 'user', 'ph', 'user', '3'),
(26, 'alno@ph', '$2y$10$l/7t/kpedsLV4yla7e.Ciu.sy/XRQlZkJrWWQKWEEfmqFAPtUz0qy', 'user', 'ph', 'user', '4'),
(27, 'ambiong@ph', '$2y$10$S2PLSyzkWRYG1BHbmROzj.MwUdbErEubj8s5TER./mvvBQM2.Kyny', 'user', 'ph', 'user', '5'),
(28, 'bahong@ph', '$2y$10$7hhVwvsX6MJkG7tfN4QOeOzb.odKHuuUr8lBZQ/kV/X98Wn97UvZa', 'user', 'ph', 'user', '6'),
(29, 'balili@ph', '$2y$10$r4.6jrZfsB34cuwIQJcLoe8LwQJa5uDKNGx9SbAz0qr4kyfB0zs.S', 'user', 'ph', 'user', '7'),
(30, 'beckel@ph', '$2y$10$LvA23Imj/F2zxf1ELvRIdOwq17NjBpS9K5zDhsY4d8cod4LudPVCe', 'user6', 'ph', 'user', '8'),
(31, 'betag@ph', '$2y$10$/7ucuWn1weGDCi5UZITu3uttIR1t45iKxoyMYeEzot0onvWpbha9K', 'user7', 'ph', 'user', '9'),
(32, 'bineng@ph', '$2y$10$gyTdmh5FhYIOUkPhLJEfBesmS4qvKjHN8UcY5.OfbYsYjRVwqTX4u', 'user8', 'ph', 'user', '10'),
(33, 'cruz@ph', '$2y$10$VfRjubG9x6dcT9WmxYjX5uZjIbB7wvLm1EZIsGK9mSpWQHOr/x3cK', 'Rhoder', 'Gats', 'user', '11'),
(34, 'lubas@ph', '$2y$10$MZN/vwJrjdORMT7BtQqIce68Qc67dWhrdltrI9QuhFU/4nOIfuYvC', 'a1', 'a1', 'user', '12'),
(35, 'pico@ph', '$2y$10$FFuS4L5vOF.UiUo/J.Z32OOL/x0lS.bvBujXzJM/or3a3HF2oA6k6', 'a2', 'a2', 'user', '13'),
(36, 'poblacion@ph', '$2y$10$wZuQQwjOUPnn9v37tha3luxifPZtTlN4ACkq9COJZMd.KohcI7SEm', 'a3', 'a3', 'user', '14'),
(37, 'puguis@ph', '$2y$10$Ka0LEb1HmLFz8m0YLwKb9uYyAgQJa/VHby2hURwjBV4dE970B/j1C', 'a4', 'a4', 'user', '15'),
(38, 'shilan@ph', '$2y$10$GslEiF36xsNDlTrgbA/HYe9G.KNuMi7b4RhXU1wbD.u9SfNLi81vu', 'a5', 'a5', 'user', '16'),
(39, 'tawang@ph', '$2y$10$WmtTwK3sII8nJCLNV2N.D.ZamIQKwYl/7cmusMILhd81c9n3cQBdm', 'a6', 'a6', 'user', '17'),
(40, 'wangal@ph', '$2y$10$mpd8ZsfrAG0IHjUu72XQAe6hCcTlaNQg7bwehpSSanjbtwqsxbpGq', 'b1', 'b1', 'user', '18');

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `ID` int(11) NOT NULL,
  `Brngy` varchar(50) NOT NULL,
  `Code` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`ID`, `Brngy`, `Code`) VALUES
(1, 'Alapang', '3'),
(2, 'Alno', '4'),
(3, 'Ambiong', '5'),
(4, 'Bahong', '6'),
(5, 'Balili', '7'),
(6, 'Beckel', '8'),
(7, 'Betag', '9'),
(8, 'Bineng', '10'),
(9, 'Cruz', '11'),
(10, 'Lubas', '12'),
(11, 'Pico', '13'),
(12, 'Poblacion', '14'),
(13, 'Puguis', '15'),
(14, 'Shilan', '16'),
(15, 'Tawang', '17'),
(16, 'Wangal', '18');

-- --------------------------------------------------------

--
-- Table structure for table `delete_profile`
--

CREATE TABLE `delete_profile` (
  `id` int(11) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `sitio` varchar(50) DEFAULT NULL,
  `purok` varchar(100) DEFAULT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `youth_with_needs` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birth_month` varchar(20) DEFAULT NULL,
  `birth_day` varchar(20) DEFAULT NULL,
  `birth_year` varchar(20) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `youth_classification` varchar(100) DEFAULT NULL,
  `age_group` varchar(50) DEFAULT NULL,
  `work_status` varchar(50) DEFAULT NULL,
  `educational_background` varchar(50) DEFAULT NULL,
  `register_sk_voter` varchar(50) DEFAULT NULL,
  `voted_last_election` varchar(3) DEFAULT NULL,
  `national_voter` varchar(50) DEFAULT NULL,
  `attended_kk` varchar(3) DEFAULT NULL,
  `times_attended_kk` int(11) DEFAULT NULL,
  `no_why` varchar(100) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `barangay_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delete_profile`
--

INSERT INTO `delete_profile` (`id`, `lname`, `fname`, `mname`, `suffix`, `region`, `province`, `municipality`, `barangay`, `sitio`, `purok`, `house_number`, `sex`, `age`, `youth_with_needs`, `email`, `birth_month`, `birth_day`, `birth_year`, `contactnumber`, `civil_status`, `youth_classification`, `age_group`, `work_status`, `educational_background`, `register_sk_voter`, `voted_last_election`, `national_voter`, `attended_kk`, `times_attended_kk`, `no_why`, `date_created`, `barangay_code`) VALUES
(2, 'Hernandez', 'Maria', 'Kelly', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '67', 'Female', 18, '0', 'ellenwilliams@yahoo.com', '3', '20', '2006', '789-601-6091', 'Divorced', 'In School Youth', 'Core Youth', 'Currently looking for job', 'High School Graduate', 'Not Registered', 'No', '', 'Yes', 3, '0', '3/5/2024', '6'),
(3, 'Henderson', 'Johnathan', 'Charlene', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '4', 'Male', 23, '0', 'rebeccabernard@ramirez.com', '4', '3', '2001', '396-800-7727x9648', 'Single', 'Working Youth', 'Core Youth', 'Employed', 'Vocational Graduate', 'Not Registered', 'No', '', 'No', 0, '0', '6/14/2024', '6'),
(4, 'Martinez', 'Peggy', 'Bradley', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '14', 'Male', 15, '0', 'griffinthomas@carter-gibson.com', '6', '25', '2009', '001-927-602-7872x840', 'Divorced', 'Out Of School Youth', 'Child Youth', 'Employed', 'College Graduate', 'Not Registered', 'Yes', '', 'Yes', 2, '0', '2/19/2024', '4'),
(5, 'Jones', 'Margaret', 'Robert', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '17', 'Male', 28, '0', 'victoria82@brown.com', '12', '14', '1996', '(156)428-4910x043', 'Divorced', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Vocational Graduate', 'Registered', 'Yes', '', 'No', 0, '0', '3/13/2024', '4'),
(6, 'Leonard', 'John', 'Juan', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', NULL, '3', NULL, 'Male', 34, NULL, 'edwinconner@gmail.com', '2', '24', '1990', '(745)667-7755x342', 'Divorced', 'In School Youth', 'Core Youth', 'Employed', 'Elementary Graduate', 'Not Registered', 'Yes', NULL, 'Yes', 5, NULL, '4/15/2024', NULL),
(7, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', NULL, 'asd', NULL, 'Male', 35, NULL, 'z@z', '3', '18', '1989', '123', 'Married', 'In Youth School', '', 'Unemployed', 'Elementary Graduate', 'No', 'No', NULL, 'No', 0, NULL, '', NULL),
(8, 'Johnson', 'Alejandro', 'Charlotte', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', NULL, '8', NULL, 'Female', 34, NULL, 'christopher72@anderson.com', '1', '2', '1990', '9993381872', 'Married', 'SK Official', 'Young Adult', 'Unemployed', 'Elementary', '', 'Yes', NULL, '', 0, NULL, '05/27/24', NULL),
(12, 'Jimenez', 'laww', 'ranx', 'R.', 'CAR', 'Benguet', 'La Trinidad', '', 'qui', 'dos', '220', 'Male', 22, '', '12344@wer', '\r\n                  ', '\r\n                  ', '2002', '0922234212', 'Single', 'Person With Disability (PWD)', '', 'Student', 'College Level', 'Registered', 'Yes', 'No', 'No', 0, '', '', '4'),
(16, 'a', 's', 's', 's', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 's', 's', 's', 'Female', 24, '', 'awd@dafwd', '1', '1', '2000', '123', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'No', 'No', 'No', 0, '', '', '17'),
(20, 'ZXNMC', 'ZXNMC', 'ZXNMC', 'ZXNMC', 'CAR', 'Benguet', 'La Trinidad', '', 'ZXNMC', 'ZXNMC', '123', 'Female', 24, '', 'ZXNMC@ZXNMC', '\r\n                  ', '\r\n                  ', '2000', '123123123', 'Widowed', 'Person With Disability (PWD)', '', 'Unemployed', 'Vocational Graduate', 'Not Registered', 'No', 'No', 'No', 0, '', '', '18'),
(21, 'wad', 'awd', 'awd', 'awd', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'awd', 'awd', 'awd', 'Male', 24, '', 'awd@dawd', '1', '1', '2000', '123', 'Single', 'In School Youth', 'Core Youth', 'Student', 'Elementary Level', 'Not Registered', 'No', 'No', 'No', 0, '', '', '18'),
(22, 'wad', 'awd', 'awd', 'awdawd', 'CAR', 'Benguet', 'La Trinidad', '', 'awd', 'awd', 'awd', 'Female', 24, '', 'awd@dawd', '\r\n                  ', '\r\n                  ', '2000', '123', 'Single', 'In School Youth', '', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'No', 'No', 'No', 0, '', '', '18'),
(23, 'ZXNMC', 'ZXNMC', 'ZXNMC', 'ZXNMC', 'CAR', 'Benguet', 'La Trinidad', '', 'ZXNMC', 'ZXNMC', '123', 'Female', 24, '', 'ZXNMC@ZXNMC', '\r\n                  ', '\r\n                  ', '2000', '123123123', 'Widowed', 'Person With Disability (PWD)', '', 'Unemployed', 'Vocational Graduate', 'Not Registered', 'No', 'No', 'No', 0, '', '', '18'),
(24, 'Cayambas', 'Nicole', 'Sabawil', '', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Boted', '1', 'OB-', 'Female', 23, '', 'nico@email.com', '12', '22', '2000', '123', 'Single', 'Working Youth', 'Core Youth', 'Employed', 'College Graduate', 'Not Registered', 'No', 'Yes', 'No', 0, '', '', '18'),
(25, 'Cayambas', 'Hyra', 'Sabawil', '', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Boted', '', 'OB-', 'Female', 21, '', 'cayambashyra@yahoo.com', '10', '25', '2002', '9203941509', 'Single', 'In School Youth', 'Core Youth', 'Student', 'College Level', 'Not Registered', 'No', 'Yes', 'No', 0, '', '', '18'),
(26, 'Cayambas', 'Hyra', 'Sabawil', '', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Boted', '', 'OB-', 'Female', 21, '', 'cayambashyra@yahoo.com', '10', '25', '2002', '123', 'Single', 'In School Youth', 'Core Youth', 'Student', 'College Level', 'Not Registered', 'No', 'No', 'No', 0, '', '', '18');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(50) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description`, `start_date`, `end_date`, `url`) VALUES
(3, 'hyra', 'hyra', '2024-07-18 23:44:00', '2024-07-19 23:44:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `sitio` varchar(50) DEFAULT NULL,
  `purok` varchar(100) DEFAULT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `youth_with_needs` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birth_month` varchar(20) DEFAULT NULL,
  `birth_day` varchar(50) DEFAULT NULL,
  `birth_year` varchar(20) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `youth_classification` varchar(50) DEFAULT NULL,
  `age_group` varchar(50) DEFAULT NULL,
  `work_status` varchar(50) DEFAULT NULL,
  `educational_background` varchar(50) DEFAULT NULL,
  `register_sk_voter` varchar(50) DEFAULT NULL,
  `voted_last_election` varchar(3) DEFAULT NULL,
  `national_voter` varchar(50) DEFAULT NULL,
  `attended_kk` varchar(3) DEFAULT NULL,
  `times_attended_kk` int(11) DEFAULT NULL,
  `no_why` varchar(100) DEFAULT NULL,
  `barangay_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `lname`, `fname`, `mname`, `suffix`, `region`, `province`, `municipality`, `barangay`, `sitio`, `purok`, `house_number`, `sex`, `age`, `youth_with_needs`, `email`, `birth_month`, `birth_day`, `birth_year`, `contactnumber`, `civil_status`, `youth_classification`, `age_group`, `work_status`, `educational_background`, `register_sk_voter`, `voted_last_election`, `national_voter`, `attended_kk`, `times_attended_kk`, `no_why`, `barangay_code`) VALUES
(1, 'Hanson', 'Stacy', 'Kayla', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Mason Radial', 'Dan Road', '091', 'Female', 28, '0', 'deniserivas@murray-brown.com', '1', '14', '2000', '(659)640-9170x72135', 'Divorced', 'In School Youth', 'Young Adult', 'Student', 'College Level', 'Not Registered', 'Yes', 'No', 'No', 5, '0', '3'),
(5, 'Hoover', 'Christopher', 'Donna', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Yolanda Square', 'Danielle Flat', '134', 'Female', 24, '0', 'timothy68@webb-chavez.biz', '5', '1', '2004', '(212)736-5979', 'Single', 'Working Youth', 'Core Youth', 'Student', 'Elementary Graduate', 'Registered', 'No', 'Yes', 'Yes', 5, '0', '3'),
(6, 'White', 'Carolyn', 'Paul', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Wilson Hills', 'Hunter Gardens', '21931', 'Female', 24, '0', 'boyddavid@gmail.com', '3', '22', '2004', '-8236', 'Divorced', 'Person With Disability', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'Yes', 'Yes', 'Yes', 1, '0', '3'),
(7, 'Herrera', 'Stephen', 'Dana', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Garcia Loaf', 'Chaney Extensions', '12121', 'Male', 27, '0', 'michael40@stewart.com', '6', '25', '2001', '954-012-2843', 'Widowed', 'In School Youth', 'Core Youth', 'Employed', 'Masters Level', 'Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(8, 'Watson', 'James', 'Trevor', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Le Island', 'Gina Spur', '14264', 'Female', 23, '0', 'elizabethfisher@gmail.com', '12', '25', '2004', '478.834.0622', 'Widowed', 'In School Youth', 'Core Youth', 'Self-Employed', 'Masters Graduate', 'Not Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(9, 'Smith', 'William', 'Curtis', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Booth Summit', 'Ashley Lake', '65683', 'Male', 18, '0', 'ann70@blair.net', '12', '9', '2009', '001-288-839-5762x675', 'Widowed', 'Out Of School Youth', 'Child Youth', 'Employed', 'Elementary Level', 'Not Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(11, 'Yang', 'Jessica', 'Steven', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Vaughn Track', 'George Lodge', '1792', 'Female', 26, '0', 'dickersondavid@cox.com', '1', '17', '2002', '(573)877-6317x640', 'Widowed', 'Person With Disability', 'Core Youth', 'Unemployed', 'Masters Level', 'Registered', 'Yes', 'No', 'No', 0, '0', '3'),
(12, 'Alexander', 'Frank', 'Susan', '', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Jones Via', 'Taylor Circle', '375', 'Female', 27, '0', 'boyleregina@gmail.com', '3', '23', '2001', '(771)084-4082x6757', 'Married', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Graduate', 'Not Registered', 'Yes', 'No', 'No', 0, '0', '3'),
(14, 'Baker', 'Taylor', 'Christopher', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'David Trail', 'Fox Ranch', '11822', 'Male', 22, '0', 'jackie60@ford.com', '11', '18', '2005', '001-418-005-9149', 'Divorced', 'Working Youth', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'No', 'No', 'Yes', 1, '0', '3'),
(16, 'Pineda', 'Willie', 'Lisa', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Simpson Canyon', 'Cox Heights', '6292', 'Male', 22, '0', 'kevin46@allen-pratt.com', '9', '22', '2005', '440.436.6348x066', 'Single', 'In School Youth', 'Core Youth', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(18, 'Morales', 'Aaron', 'Derrick', '', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Farmer Mountains', 'Bobby Lights', '74653', 'Female', 23, '0', 'nelsonjessica@yahoo.com', '5', '11', '2005', '001-931-042-1963', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'Elementary Graduate', 'Not Registered', 'Yes', 'Yes', 'Yes', 4, '0', '3'),
(19, 'Edwards', 'Michael', 'Tamara', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Bineng', 'Young Squares', 'Dale Prairie', '2998', 'Male', 28, '0', 'brandtnicholas@bell.biz', '9', '13', '1999', '948-561-8612x57554', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Student', 'College Level', 'Registered', 'Yes', 'No', 'Yes', 0, '0', '3'),
(20, 'Ryan', 'Leslie', 'William', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Dalton Mill', 'Ramirez Ford', '879', 'Male', 23, '0', 'woodarddesiree@parrish.com', '3', '18', '2005', '001-153-216-0183x646', 'Widowed', 'Working Youth', 'Core Youth', 'Student', 'Elementary Graduate', 'Not Registered', 'Yes', 'No', 'No', 0, '0', '3'),
(21, 'Olsen', 'David', 'Joseph', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Patricia Port', 'Julie Motorway', '2638', 'Male', 24, '0', 'nharper@yahoo.com', '7', '17', '2004', '(500)438-1508', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'Masters Graduate', 'Registered', 'Yes', 'No', 'Yes', 4, '0', '3'),
(22, 'Gomez', 'Alexis', 'Jessica', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Cummings Neck', 'Bradford Ports', '58447', 'Female', 28, '0', 'morgandavid@king.com', '11', '16', '1999', '001-194-020-7576x069', 'Married', 'Working Youth', 'Young Adult', 'Unemployed', 'Masters Level', 'Not Registered', 'No', 'Yes', 'No', 3, '0', '3'),
(26, 'Nelson', 'Ashley', 'Shane', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Shawn Dale', 'Rhonda Street', '8833', 'Male', 24, '0', 'elizabethrivera@pearson.com', '5', '19', '2004', '597.834.7320', 'Single', 'Working Youth', 'Core Youth', 'Self-Employed', 'High School Level', 'Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(28, 'Gonzales', 'Lauren', 'Nathan', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Cheryl Overpass', 'Jeffrey Summit', '41041', 'Female', 25, '0', 'lindsaygarza@white.com', '8', '4', '2002', '(263)044-3328', 'Married', 'Working Youth', 'Core Youth', 'Student', 'High School Level', 'Registered', 'No', 'Yes', 'Yes', 0, '0', '3'),
(29, 'Rogers', 'Frank', 'Cindy', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Courtney Summit', 'Duncan Harbor', '97506', 'Female', 26, '0', 'uanthony@hotmail.com', '10', '1', '2001', '0942137654', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Graduate', 'Not Registered', 'No', 'No', 'Yes', 0, '0', '3'),
(31, 'Stanley', 'Antonio', 'Matthew', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Emma Valley', 'Cannon Fall', '22354', 'Female', 19, '0', 'fostertammy@yahoo.com', '12', '12', '2008', '+1-001-583-7399x684', 'Widowed', 'Person With Disability', 'Child Youth', 'Student', 'College Level', 'Not Registered', 'Yes', 'Yes', 'No', 1, '0', '3'),
(32, 'Martinez', 'Karen', 'Maurice', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Ambiong', 'Valerie Lock', 'Thompson Vista', '66882', 'Female', 25, '0', 'robersonbrianna@fernandez-simmons.biz', '7', '18', '2003', '438-315-2355x52727', 'Divorced', 'Person With Disability', 'Core Youth', 'Employed', 'Doctorate Level', 'Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(33, 'Brown', 'Darlene', 'Aaron', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Hill Terrace', 'Michele Pike', '1904', 'Male', 28, '0', 'annafuller@brown.com', '7', '11', '2000', '457-656-1743', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'High School Level', 'Not Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(34, 'Sharp', 'Jasmine', 'Eric', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Betag', 'Gutierrez Key', 'Cummings Ramp', '30638', 'Female', 22, '0', 'mackenziekelley@hull.com', '8', '14', '2005', '890-309-4349x11830', 'Single', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Elementary Graduate', 'Registered', 'No', 'No', 'Yes', 1, '0', '3'),
(35, 'Moran', 'Jill', 'Kristi', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Shawn Island', 'Wiley Causeway', '9795', 'Female', 21, '0', 'tarahensley@yahoo.com', '1', '1', '2007', '271.533.9030x73382', 'Single', 'In School Youth', 'Child Youth', 'Employed', 'Doctorate Level', 'Not Registered', 'No', 'No', 'Yes', 2, '0', '3'),
(36, 'Garcia', 'Ashley', 'Eduardo', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Shea Forge', 'Williams Points', '047', 'Female', 25, '0', 'butlerlisa@yahoo.com', '3', '19', '2003', '760-056-9222x2955', 'Single', 'Working Youth', 'Core Youth', 'Unemployed', 'Doctorate Level', 'Not Registered', 'No', 'Yes', 'No', 1, '0', '3'),
(37, 'Lopez', 'Anita', 'Rebecca', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Ambiong', 'James Key', 'Aaron Curve', '920', 'Female', 19, '0', 'davidstanton@velasquez-shah.com', '12', '3', '2008', '(640)341-4164', 'Divorced', 'Person With Disability', 'Child Youth', 'Self-Employed', 'College Graduate', 'Not Registered', 'No', 'No', 'Yes', 1, '0', '3'),
(39, 'Rhodes', 'Michael', 'Jessica', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Ortega Via', 'Snyder Road', '8137', 'Male', 19, '0', 'karen66@brown.com', '1', '5', '2009', '298-331-8212x582', 'Single', 'In School Youth', 'Child Youth', 'Self-Employed', 'High School Level', 'Registered', 'No', 'Yes', 'Yes', 1, '0', '3'),
(40, 'Murray', 'Erika', 'Anthony', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Ambiong', 'Frazier Union', 'Chen Estates', '652', 'Male', 30, '0', 'annwright@johnson-keller.com', '1', '26', '1998', '855-662-4194', 'Married', 'Out Of School Youth', 'Young Adult', 'Unemployed', 'Elementary Level', 'Registered', 'Yes', 'No', 'Yes', 2, '0', '3'),
(41, 'Sheppard', 'Sandra', 'Michaela', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Hickman Causeway', 'Anthony Branch', '94334', 'Female', 25, '0', 'carlwhite@robertson-stevens.biz', '1', '17', '2003', '-7413', 'Widowed', 'Person With Disability', 'Core Youth', 'Employed', 'Vocational Graduate', 'Registered', 'No', 'Yes', 'No', 5, '0', '3'),
(42, 'Davenport', 'Debra', 'Stephen', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Caitlin Prairie', 'Baldwin Light', '956', 'Female', 20, '0', 'reginawilliams@hotmail.com', '12', '14', '2007', '194-761-7127', 'Divorced', 'In School Youth', 'Child Youth', 'Employed', 'Elementary Graduate', 'Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(43, 'Christensen', 'Joshua', 'Jennifer', '', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Hughes Fall', 'Ruiz Streets', '7357', 'Female', 20, '0', 'seanmoyer@gmail.com', '4', '23', '2008', '+1-193-511-7931x1523', 'Widowed', 'In School Youth', 'Child Youth', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(44, 'Munoz', 'Nicholas', 'Brianna', '', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Bethany Mount', 'Derrick Roads', '977', 'Female', 21, '0', 'jasonarmstrong@hotmail.com', '4', '25', '2007', '516.132.4052', 'Single', 'Person With Disability', 'Child Youth', 'Currently looking for job', 'Masters Level', 'Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(45, 'Fitzgerald', 'Emily', 'Michael', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Allison Road', 'Scott Walks', '2943', 'Female', 30, '0', 'susansmith@hotmail.com', '7', '4', '1998', '442.887.9804', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'College Graduate', 'Registered', 'No', 'Yes', 'Yes', 1, '0', '3'),
(46, 'Mejia', 'Matthew', 'Kelli', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Huffman Summit', 'Anne Well', '763', 'Female', 24, '0', 'barbaragalloway@allen.com', '4', '7', '2004', '720.344.6498x93832', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Graduate', 'Registered', 'No', 'No', 'No', 0, '0', '3'),
(48, 'Perez', 'Anna', 'Amanda', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Kevin Turnpike', 'Brittany Well', '790', 'Male', 19, '0', 'jennifer64@anderson.org', '9', '11', '2008', '087.303.0014', 'Single', 'Working Youth', 'Child Youth', 'Unemployed', 'High School Graduate', 'Not Registered', 'No', 'No', 'No', 0, '0', '3'),
(49, 'Howe', 'Lisa', 'Grace', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Bineng', 'Jones Terrace', 'Swanson Extensions', '067', 'Male', 27, '0', 'katherinebrown@hotmail.com', '10', '12', '2000', '+1-386-872-2635x0589', 'Married', 'In School Youth', 'Core Youth', 'Student', 'High School Graduate', 'Registered', 'No', 'Yes', 'Yes', 4, '0', '3'),
(50, 'Mueller', 'Melissa', 'James', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Hahn Passage', 'Gonzales Orchard', '981', 'Male', 20, '0', 'julie05@mccoy.org', '6', '23', '2008', '439.769.6279', 'Widowed', 'Person With Disability', 'Child Youth', 'Unemployed', 'Vocational Graduate', 'Registered', 'Yes', 'No', 'Yes', 3, '0', '3'),
(51, 'Franklin', 'Christopher', 'Kayla', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Natalie Spur', 'Johnston Isle', '5603', 'Female', 24, '0', 'smithjoshua@lewis-mendoza.com', '9', '18', '2003', '365.468.3753', 'Married', 'Person With Disability', 'Core Youth', 'Self-Employed', 'College Level', 'Registered', 'No', 'Yes', 'No', 3, '0', '3'),
(52, 'Wilson', 'David', 'Patricia', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Wilson Well', 'Henry Locks', '264', 'Female', 24, '0', 'gsnyder@yahoo.com', '1', '1', '2004', '+1-752-729-2809x542', 'Single', 'Person With Disability', 'Core Youth', 'Currently looking for job', 'College Level', 'Registered', 'No', 'No', 'Yes', 4, '0', '3'),
(53, 'Rubio', 'Nathan', 'Laura', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Jose Walks', 'Lewis Flats', '640', 'Female', 23, '0', 'glen55@kennedy.biz', '4', '5', '2005', '447.027.2146', 'Married', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Elementary Level', 'Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(54, 'Robinson', 'Tracy', 'Dennis', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Hardin Estates', 'Gregory Mountain', '6127', 'Female', 26, '0', 'rebeccavasquez@gmail.com', '11', '7', '2001', '(868)505-5855', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'Masters Graduate', 'Not Registered', 'Yes', 'No', 'Yes', 5, '0', '3'),
(56, 'Stewart', 'Austin', 'Anthony', '', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Kaiser Club', 'Eugene Manors', '6748', 'Male', 26, '0', 'srodgers@gmail.com', '7', '16', '2002', '-4652', 'Single', 'Person With Disability', 'Core Youth', 'Self-Employed', 'High School Graduate', 'Not Registered', 'Yes', 'No', 'No', 0, '0', '3'),
(57, 'Brown', 'Sandra', 'Roberta', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Day Turnpike', 'Norton Green', '71748', 'Male', 20, '0', 'tiffanywilson@davis.com', '10', '28', '2007', '+1-755-021-6310x7719', 'Married', 'Out Of School Youth', 'Child Youth', 'Student', 'Vocational Graduate', 'Not Registered', 'Yes', 'No', 'Yes', 5, '0', '3'),
(58, 'Silva', 'Katherine', 'Daniel', '', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Troy Creek', 'Hines Bypass', '5232', 'Female', 20, '0', 'lisamiller@hall.info', '9', '27', '2007', '001-071-873-4053x906', 'Single', 'Out Of School Youth', 'Child Youth', 'Employed', 'High School Level', 'Not Registered', 'No', 'Yes', 'No', 2, '0', '3'),
(59, 'Kelley', 'Alicia', 'Stephanie', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Torres Streets', 'Matthew Mews', '621', 'Male', 22, '0', 'paige32@hotmail.com', '1', '22', '2006', '8234606234', 'Divorced', 'Person With Disability', 'Core Youth', 'Self-Employed', 'College Level', 'Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(61, 'Williams', 'Paula', 'Jean', '', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Jackson Place', 'Brittany Streets', '617', 'Female', 22, '0', 'corey26@johnson.org', '10', '4', '2005', '(006)284-7654x096', 'Married', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'Yes', 'Yes', 'Yes', 4, '0', '3'),
(62, 'Olson', 'Jessica', 'Morgan', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Shea Bridge', 'Sanchez Alley', '258', 'Female', 25, '0', 'wardjesse@williamson.info', '1', '16', '2003', '(707)848-5585x384', 'Divorced', 'Working Youth', 'Core Youth', 'Self-Employed', 'Vocational Graduate', 'Registered', 'Yes', 'No', 'Yes', 0, '0', '3'),
(63, 'Wilkerson', 'Gerald', 'Gabriel', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Neal Crest', 'Joseph Turnpike', '47619', 'Male', 18, '0', 'alyssakelly@ward.com', '10', '13', '2009', '512.632.1635x162', 'Married', 'Out Of School Youth', 'Child Youth', 'Employed', 'College Graduate', 'Not Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(64, 'Johnson', 'Christopher', 'John', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Smith Views', 'Russell Key', '931', 'Male', 28, '0', 'evanrice@gmail.com', '12', '18', '1999', '+1-326-866-6862x7552', 'Married', 'Person With Disability', 'Young Adult', 'Employed', 'Elementary Level', 'Not Registered', 'No', 'Yes', 'Yes', 0, '0', '3'),
(66, 'Malone', 'Ryan', 'Amber', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Greer Mission', 'Gallegos Loop', '01966', 'Female', 22, '0', 'rebeccahenry@yahoo.com', '5', '6', '2006', '108.777.1106x236', 'Married', 'In School Youth', 'Core Youth', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', 'Yes', 'No', 3, '0', '3'),
(67, 'Silva', 'Jeffrey', 'Misty', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Jacqueline Cliff', 'Rush Track', '3083', 'Female', 22, '0', 'thomas49@hotmail.com', '7', '5', '2006', '992-298-3244x61701', 'Married', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Level', 'Not Registered', 'Yes', 'No', 'No', 4, '0', '3'),
(71, 'Jones', 'Mackenzie', 'Margaret', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Kaitlyn Unions', 'Jared Mount', '8637', 'Male', 18, '0', 'joseph69@morris.com', '12', '2', '2009', '881.106.5048x87430', 'Married', 'In School Youth', 'Child Youth', 'Currently looking for job', 'Masters Graduate', 'Not Registered', 'Yes', 'No', 'Yes', 3, '0', '3'),
(72, 'Hunter', 'Nicholas', 'James', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Martinez Neck', 'Stephen Canyon', '1316', 'Male', 22, '0', 'mallen@gmail.com', '11', '15', '2005', '431.421.4243', 'Widowed', 'Out Of School Youth', 'Core Youth', 'Employed', 'High School Level', 'Registered', 'No', 'No', 'Yes', 5, '0', '3'),
(73, 'Christian', 'Veronica', 'Mark', '', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Jenny Ville', 'Gary Mews', '568', 'Female', 22, '0', 'benjaminballard@yahoo.com', '1', '19', '2006', '+1-074-111-4281x618', 'Married', 'Person With Disability', 'Core Youth', 'Self-Employed', 'Elementary Graduate', 'Registered', 'Yes', 'Yes', 'No', 2, '0', '3'),
(74, 'Simmons', 'Heidi', 'Melissa', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Torres Rue', 'Alexander Keys', '949', 'Male', 24, '0', 'vhicks@gmail.com', '11', '25', '2003', '(371)647-2445', 'Widowed', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(75, 'Rose', 'Brandon', 'Kimberly', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Benitez Hills', 'Christopher Common', '049', 'Female', 20, '0', 'harrisalexandra@saunders-hays.com', '12', '28', '2007', '-7335', 'Single', 'In School Youth', 'Child Youth', 'Currently looking for job', 'College Level', 'Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(76, 'Greene', 'April', 'Sarah', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Chavez Ramp', 'Chavez Route', '21141', 'Male', 25, '0', 'amandasimmons@yahoo.com', '7', '15', '2003', '648.379.5815', 'Married', 'Person With Disability', 'Core Youth', 'Self-Employed', 'Vocational Graduate', 'Registered', 'No', 'No', 'No', 0, '0', '3'),
(77, 'Roberts', 'Sandra', 'Michelle', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Tanner Oval', 'Hart Vista', '299', 'Male', 28, '0', 'tramsey@hotmail.com', '4', '16', '2000', '001-919-143-8367x625', 'Married', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'Masters Graduate', 'Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(79, 'Thomas', 'Andrea', 'Shelly', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Carol Trail', 'Joshua Vista', '65500', 'Female', 27, '0', 'wramirez@hotmail.com', '9', '20', '2000', '-6548', 'Divorced', 'Working Youth', 'Core Youth', 'Student', 'High School Level', 'Registered', 'Yes', 'No', 'Yes', 0, '0', '3'),
(81, 'Scott', 'Deanna', 'Joshua', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Berry Underpass', 'Gibson Bridge', '783', 'Male', 23, '0', 'millerjessica@yahoo.com', '9', '4', '2004', '(175)053-9085', 'Single', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Level', 'Registered', 'No', 'Yes', 'Yes', 0, '0', '3'),
(82, 'Perez', 'Kevin', 'David', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Betag', 'Smith Ports', 'Lyons Summit', '18997', 'Female', 18, '0', 'ftaylor@foster.net', '9', '24', '2009', '877-475-3831x08111', 'Divorced', 'Person With Disability', 'Child Youth', 'Currently looking for job', 'High School Graduate', 'Registered', 'No', 'Yes', 'Yes', 0, '0', '3'),
(83, 'Jackson', 'Natalie', 'Sylvia', '', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Randall Gateway', 'Hoover Alley', '272', 'Male', 28, '0', 'drewhoffman@hotmail.com', '7', '15', '2000', '(304)859-7934x019', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'Doctorate Level', 'Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(84, 'White', 'Erin', 'Michael', '', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Zhang Lodge', 'Meagan Ramp', '8059', 'Female', 18, '0', 'phillipsjeffrey@livingston.com', '8', '18', '2009', '895.893.1457x715', 'Single', 'Out Of School Youth', 'Child Youth', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', 'Yes', 'Yes', 1, '0', '3'),
(85, 'Holmes', 'Jean', 'Heather', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Harrison Manors', 'Nancy Course', '521', 'Female', 22, '0', 'kaylataylor@gmail.com', '7', '28', '2005', '(307)923-7282x395', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'College Graduate', 'Not Registered', 'No', 'No', 'Yes', 0, '0', '3'),
(87, 'Jones', 'Brittany', 'Robin', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Bineng', 'Mikayla Station', 'Reyes Canyon', '675', 'Male', 19, '0', 'ilove@yahoo.com', '6', '9', '2009', '068-603-0978', 'Married', 'Out Of School Youth', 'Child Youth', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(89, 'Howell', 'Cynthia', 'Donna', '', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Rivas Mission', 'Rice Spurs', '7623', 'Male', 27, '0', 'hessrenee@rush.com', '10', '21', '2000', '073-300-7926x0120', 'Single', 'Person With Disability', 'Core Youth', 'Student', 'Elementary Level', 'Registered', 'Yes', 'No', 'No', 0, '0', '3'),
(91, 'Garcia', 'Joshua', 'Deborah', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Carla Trail', 'David Summit', '19327', 'Male', 30, '0', 'jason65@haynes.com', '4', '12', '1998', '802.433.4097', 'Married', 'Working Youth', 'Young Adult', 'Self-Employed', 'Elementary Level', 'Not Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(93, 'Blankenship', 'Mario', 'Melissa', '', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Harris Falls', 'Huber Plain', '0679', 'Male', 28, '0', 'dorothyharris@reyes-ruiz.com', '12', '7', '1999', '848-330-1440', 'Single', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Doctorate Level', 'Not Registered', 'Yes', 'Yes', 'Yes', 5, '0', '3'),
(94, 'Mcintyre', 'Gary', 'Ryan', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Casey Trafficway', 'Sarah Row', '9559', 'Male', 29, '0', 'jerryross@randall-white.info', '10', '23', '1998', '(394)565-9675', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Masters Graduate', 'Not Registered', 'Yes', 'No', 'Yes', 4, '0', '3'),
(95, 'Bauer', 'Janet', 'Richard', '', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Haley Glen', 'Lopez Courts', '9481', 'Female', 29, '0', 'richardmeadows@yahoo.com', '1', '14', '1999', '001-740-664-5587', 'Divorced', 'Working Youth', 'Young Adult', 'Unemployed', 'College Graduate', 'Not Registered', 'Yes', 'No', 'Yes', 0, '0', '3'),
(96, 'Barnes', 'Kayla', 'Elaine', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Braun Shores', 'Johnson Via', '14259', 'Female', 26, '0', 'frodriguez@cobb-stuart.com', '12', '3', '2001', '801.546.6528', 'Divorced', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Masters Level', 'Registered', 'No', 'Yes', 'No', 1, '0', '3'),
(97, 'Cannon', 'Jesse', 'John', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Lucas Plain', 'Nguyen Hills', '01564', 'Male', 21, '0', 'yjordan@cervantes.net', '2', '17', '2007', '284.257.6705x411', 'Single', 'In School Youth', 'Child Youth', 'Currently looking for job', 'Doctorate Level', 'Not Registered', 'Yes', 'No', 'No', 2, '0', '3'),
(98, 'Brown', 'Kevin', 'Kristina', '', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Pitts View', 'Wagner Haven', '221', 'Female', 30, '0', 'ewilliams@gmail.com', '10', '7', '1997', '300-518-2339x0216', 'Married', 'Person With Disability', 'Young Adult', 'Student', 'Masters Level', 'Registered', 'Yes', 'Yes', 'Yes', 5, '0', '3'),
(99, 'Gilmore', 'Kristen', 'Taylor', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Graham Spurs', 'Alex Place', '7052', 'Female', 22, '0', 'lonniejones@yahoo.com', '5', '22', '2006', '028-824-6625', 'Married', 'Person With Disability', 'Core Youth', 'Currently looking for job', 'Masters Level', 'Registered', 'Yes', 'No', 'No', 5, '0', '3'),
(100, 'Hayden', 'Michael', 'Heather', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Williams Isle', 'Kenneth Mountains', '82217', 'Female', 30, '0', 'careysusan@yahoo.com', '7', '10', '1998', '001-021-637-8729x298', 'Divorced', 'Working Youth', 'Young Adult', 'Employed', 'Elementary Level', 'Registered', 'Yes', 'Yes', 'No', 3, '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `profiles_archive`
--

CREATE TABLE `profiles_archive` (
  `id` int(11) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `municipality` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `sitio` varchar(50) DEFAULT NULL,
  `purok` varchar(100) DEFAULT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `youth_with_needs` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birth_month` varchar(20) DEFAULT NULL,
  `birth_day` varchar(20) DEFAULT NULL,
  `birth_year` varchar(20) DEFAULT NULL,
  `contactnumber` varchar(20) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `youth_classification` varchar(100) DEFAULT NULL,
  `age_group` varchar(50) DEFAULT NULL,
  `work_status` varchar(50) DEFAULT NULL,
  `educational_background` varchar(50) DEFAULT NULL,
  `register_sk_voter` varchar(50) DEFAULT NULL,
  `voted_last_election` varchar(3) DEFAULT NULL,
  `national_voter` varchar(100) DEFAULT NULL,
  `attended_kk` varchar(3) DEFAULT NULL,
  `times_attended_kk` int(11) DEFAULT NULL,
  `no_why` varchar(100) DEFAULT NULL,
  `barangay_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles_archive`
--

INSERT INTO `profiles_archive` (`id`, `lname`, `fname`, `mname`, `suffix`, `region`, `province`, `municipality`, `barangay`, `sitio`, `purok`, `house_number`, `sex`, `age`, `youth_with_needs`, `email`, `birth_month`, `birth_day`, `birth_year`, `contactnumber`, `civil_status`, `youth_classification`, `age_group`, `work_status`, `educational_background`, `register_sk_voter`, `voted_last_election`, `national_voter`, `attended_kk`, `times_attended_kk`, `no_why`, `barangay_code`) VALUES
(2, 'Douglas', 'Rebecca', 'Troy', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Davis Village', 'Margaret Station', '107', 'Female', 34, '0', 'christina92@lee.com', '12', '17', '1993', '001-558-796-6718x704', 'Married', 'Working Youth', 'Core Youth', 'Employed', 'Masters Level', 'Registered', 'No', 'No', 'Yes', 0, '0', '3'),
(3, 'Hancock', 'Mary', 'Judith', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Wells Stravenue', 'Warner Parks', '7293', 'Female', 34, '0', 'kimberly66@jennings.biz', '2', '9', '1990', '571.471.2915', 'Divorced', 'In School Youth', 'Child Youth', 'Self-Employed', 'College Graduate', 'Registered', 'No', 'Yes', 'No', 1, '0', '3'),
(4, 'Tran', 'Sydney', 'James', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Bean Locks', 'David Gateway', '598', 'Female', 33, '0', 'james92@evans.com', '4', '3', '1991', '411.624.8677x1963', 'Married', 'Working Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Registered', 'Yes', 'No', 'Yes', 1, '0', '3'),
(10, 'Ross', 'Nicholas', 'Roy', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Tiffany Ports', 'Chandler Junctions', '4732', 'Male', 43, '0', 'michaelgarcia@hotmail.com', '1', '4', '1981', '367-615-5703x424', 'Married', 'Out Of School Youth', 'Child Youth', 'Student', 'High School Level', 'Not Registered', 'No', 'Yes', 'Yes', 4, '0', '3'),
(13, 'Romero', 'Gordon', 'Christina', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Cynthia Skyway', 'Ashley Fork', '0854', 'Female', 31, '0', 'wfernandez@hotmail.com', '7', '4', '1997', '+1-748-306-9295x1411', 'Married', 'Working Youth', 'Young Adult', 'Student', 'Vocational Graduate', 'Registered', 'No', 'Yes', 'No', 1, '0', '3'),
(15, 'Velazquez', 'Daniel', 'Jerry', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Rhonda Glens', 'Brian Roads', '48405', 'Female', 34, '0', 'mitchelljeanette@gmail.com', '9', '6', '1989', '960.883.7273x88466', 'Married', 'Working Youth', 'Core Youth', 'Student', 'Masters Level', 'Not Registered', 'Yes', 'No', 'No', 0, '0', '3'),
(17, 'Banks', 'Kelly', 'Gloria', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Gilmore Mill', 'Smith Cape', '78932', 'Male', 33, '0', 'david97@hotmail.com', '1', '10', '1995', '001-283-747-4717x903', 'Divorced', 'Person With Disability', 'Young Adult', 'Student', 'Masters Graduate', 'Not Registered', 'No', 'Yes', 'No', 1, '0', '3'),
(23, 'Griffith', 'Yvonne', 'Albert', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Salazar Inlet', 'Moore Ways', '02505', 'Female', 32, '0', 'james91@taylor-campbell.com', '6', '4', '1996', '6569841219', 'Married', 'Person With Disability', 'Young Adult', 'Student', 'Elementary Graduate', 'Registered', 'Yes', 'No', 'No', 0, '0', '3'),
(24, 'Graves', 'Andrew', 'Steven', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Robin Trafficway', 'Adam Manors', '316', 'Female', 35, '0', 'jamesvillegas@hotmail.com', '12', '27', '1988', '459-472-2606', 'Widowed', 'In School Youth', 'Young Adult', 'Student', 'College Graduate', 'Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(25, 'Wilkerson', 'Felicia', 'Kevin', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Kevin Estates', 'Carlson Lock', '579', 'Male', 34, '0', 'christinadixon@sanchez.com', '6', '15', '1994', '546.022.4020x256', 'Divorced', 'In School Youth', 'Young Adult', 'Unemployed', 'High School Level', 'Registered', 'No', 'No', 'No', 1, '0', '3'),
(27, 'Rice', 'Amy', 'Douglas', '', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Gonzalez Junction', 'Kari Prairie', '535', 'Female', 33, '0', 'alisoncastillo@mcdaniel.biz', '8', '9', '1994', '841.810.1515x17414', 'Married', 'In School Youth', 'Young Adult', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', 'No', 'Yes', 0, '0', '3'),
(30, 'Mendez', 'Rebecca', 'Brandon', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Hanson Pass', 'Ramirez Camp', '8885', 'Male', 33, '0', 'michael68@hotmail.com', '11', '28', '1994', '(560)909-8481', 'Single', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Masters Graduate', 'Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(38, 'Lewis', 'Lisa', 'Ernest', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Laura Pass', 'Brad Street', '8224', 'Female', 31, '0', 'meltonshawn@gmail.com', '10', '17', '1996', '178.899.0303', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'High School Level', 'Registered', 'Yes', 'No', 'Yes', 0, '0', '3'),
(47, 'Rowland', 'Rachel', 'Elizabeth', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Jason Key', 'Laura Dam', '9929', 'Male', 33, '0', 'uwest@yahoo.com', '9', '15', '1994', '(928)329-3267', 'Single', 'Person With Disability', 'Young Adult', 'Employed', 'Elementary Level', 'Not Registered', 'Yes', 'No', 'Yes', 0, '0', '3'),
(55, 'Barnett', 'Kelsey', 'Jennifer', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Hammond Heights', 'Jeffrey Underpass', '571', 'Male', 33, '0', 'rebecca86@gonzalez.info', '8', '20', '1994', '428.902.2590x9149', 'Divorced', 'In School Youth', 'Young Adult', 'Self-Employed', 'Masters Graduate', 'Registered', 'No', 'Yes', 'No', 5, '0', '3'),
(60, 'Bush', 'Jacqueline', 'Daniel', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Andrews Orchard', 'Costa Ways', '38788', 'Male', 31, '0', 'ivilla@ellison.info', '4', '11', '1997', '(745)795-7387', 'Married', 'Person With Disability', 'Young Adult', 'Employed', 'College Graduate', 'Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(65, 'Mckinney', 'John', 'Curtis', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Hughes Cliffs', 'Joseph Freeway', '0210', 'Female', 33, '0', 'wolfjohn@hamilton.org', '3', '6', '1995', '(251)854-7998', 'Divorced', 'In School Youth', 'Young Adult', 'Student', 'Elementary Graduate', 'Not Registered', 'Yes', 'Yes', 'No', 0, '0', '3'),
(68, 'Cabrera', 'Julie', 'Holly', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Taylor Branch', 'Jeffrey Inlet', '2193', 'Female', 32, '0', 'angela53@yahoo.com', '10', '3', '1995', '(901)745-8296x443', 'Widowed', 'In School Youth', 'Young Adult', 'Self-Employed', 'Elementary Level', 'Registered', 'Yes', 'No', 'No', 2, '0', '3'),
(69, 'Wright', 'Daniel', 'Chad', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Betag', 'James Ports', 'Dawn Plain', '5871', 'Female', 32, '0', 'ericmyers@robinson-dickson.net', '8', '18', '1995', '001-078-362-4280x703', 'Single', 'Working Youth', 'Young Adult', 'Unemployed', 'Masters Level', 'Not Registered', 'Yes', 'Yes', 'No', 1, '0', '3'),
(70, 'Garcia', 'Gail', 'Megan', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Bailey Plain', 'Gutierrez Well', '202', 'Female', 32, '0', 'michele03@yahoo.com', '7', '19', '1996', '+1-664-823-9403x6668', 'Single', 'Person With Disability', 'Young Adult', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'Yes', 'Yes', 'Yes', 0, '0', '3'),
(78, 'Reynolds', 'Jeffrey', 'Joshua', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Meyer Field', 'Jonathon Wall', '380', 'Female', 31, '0', 'brittanyblack@spencer.biz', '6', '1', '1997', '(605)693-7489x2674', 'Divorced', 'Working Youth', 'Young Adult', 'Currently looking for job', 'Masters Graduate', 'Registered', 'No', 'No', 'Yes', 0, '0', '3'),
(80, 'Smith', 'Katelyn', 'David', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Kristina Wells', 'Garcia Key', '203', 'Male', 34, '0', 'louis98@quinn-singleton.biz', '5', '1', '1994', '513.193.8665', 'Widowed', 'In School Youth', 'Young Adult', 'Unemployed', 'Elementary Level', 'Registered', 'No', 'Yes', 'Yes', 0, '0', '3'),
(86, 'Collins', 'Alicia', 'Richard', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Moore Springs', 'Huang Creek', '14117', 'Female', 32, '0', 'davistimothy@hotmail.com', '12', '25', '1995', '395-101-7820x18721', 'Single', 'In School Youth', 'Young Adult', 'Student', 'Masters Graduate', 'Not Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(88, 'Clark', 'Kevin', 'Wendy', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Karen Walk', 'Mendoza Centers', '240', 'Female', 34, '0', 'mitchellkenneth@taylor-clark.biz', '6', '9', '1994', '819.160.1068x866', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Self-Employed', 'Vocational Graduate', 'Registered', 'No', 'Yes', 'No', 0, '0', '3'),
(90, 'Cantrell', 'Nichole', 'Brandy', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Wise Square', 'Joshua Underpass', '6436', 'Male', 33, '0', 'mrodriguez@blake.net', '2', '11', '1995', '-8003', 'Married', 'Working Youth', 'Young Adult', 'Currently looking for job', 'College Level', 'Not Registered', 'Yes', 'No', 'Yes', 5, '0', '3'),
(92, 'Walker', 'Andrew', 'Denise', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Friedman Manor', 'Kim Mills', '273', 'Female', 33, '0', 'bassearl@yahoo.com', '12', '10', '1994', '574-620-3984', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'Masters Graduate', 'Registered', 'Yes', 'Yes', 'No', 3, '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `profiles_backup`
--

CREATE TABLE `profiles_backup` (
  `id` int(11) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `suffix` varchar(20) NOT NULL,
  `region` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `municipality` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `sitio` varchar(50) DEFAULT NULL,
  `purok` varchar(100) NOT NULL,
  `house_number` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `youth_with_needs` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `birth_month` varchar(50) NOT NULL,
  `birth_day` varchar(50) NOT NULL,
  `birth_year` varchar(50) NOT NULL,
  `contactnumber` varchar(20) NOT NULL,
  `civil_status` varchar(20) NOT NULL,
  `youth_classification` varchar(50) NOT NULL,
  `age_group` varchar(50) NOT NULL,
  `work_status` varchar(50) NOT NULL,
  `educational_background` varchar(50) NOT NULL,
  `register_sk_voter` varchar(50) NOT NULL,
  `voted_last_election` varchar(3) NOT NULL,
  `national_voter` int(50) DEFAULT NULL,
  `attended_kk` varchar(3) NOT NULL,
  `times_attended_kk` int(11) NOT NULL,
  `no_why` varchar(100) DEFAULT NULL,
  `barangay_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles_backup`
--

INSERT INTO `profiles_backup` (`id`, `lname`, `fname`, `mname`, `suffix`, `region`, `province`, `municipality`, `barangay`, `sitio`, `purok`, `house_number`, `sex`, `age`, `youth_with_needs`, `email`, `birth_month`, `birth_day`, `birth_year`, `contactnumber`, `civil_status`, `youth_classification`, `age_group`, `work_status`, `educational_background`, `register_sk_voter`, `voted_last_election`, `national_voter`, `attended_kk`, `times_attended_kk`, `no_why`, `barangay_code`) VALUES
(1, 'Hanson', 'Stacy', 'Kayla', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Mason Radial', 'Dan Road', '091', 'Female', 20, '0', 'deniserivas@murray-brown.com', '1', '14', '1990', '(659)640-9170x72135', 'Divorced', 'In School Youth', 'Core Youth', 'Student', 'College Level', 'Not Registered', 'Yes', 0, 'No', 5, '0', '3'),
(2, 'Douglas', 'Rebecca', 'Troy', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Davis Village', 'Margaret Station', '107', 'Female', 20, '0', 'christina92@lee.com', '12', '17', '1993', '001-558-796-6718x704', 'Married', 'Working Youth', 'Core Youth', 'Employed', 'Masters Level', 'Registered', 'No', 0, 'Yes', 0, '0', '3'),
(3, 'Hancock', 'Mary', 'Judith', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Wells Stravenue', 'Warner Parks', '7293', 'Female', 34, '0', 'kimberly66@jennings.biz', '2', '9', '1990', '571.471.2915', 'Divorced', 'In School Youth', 'Child Youth', 'Self-Employed', 'College Graduate', 'Registered', 'No', 0, 'No', 1, '0', '3'),
(4, 'Tran', 'Sydney', 'James', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Bean Locks', 'David Gateway', '598', 'Female', 22, '0', 'james92@evans.com', '4', '3', '1991', '411.624.8677x1963', 'Married', 'Working Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Registered', 'Yes', 0, 'Yes', 1, '0', '3'),
(5, 'Hoover', 'Christopher', 'Donna', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Yolanda Square', 'Danielle Flat', '134', 'Female', 20, '0', 'timothy68@webb-chavez.biz', '5', '1', '2004', '(212)736-5979', 'Single', 'Working Youth', 'Core Youth', 'Student', 'Elementary Graduate', 'Registered', 'No', 0, 'Yes', 5, '0', '3'),
(6, 'White', 'Carolyn', 'Paul', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Wilson Hills', 'Hunter Gardens', '21931', 'Female', 20, '0', 'boyddavid@gmail.com', '3', '22', '2004', '-8236', 'Divorced', 'Person With Disability', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'Yes', 0, 'Yes', 1, '0', '3'),
(7, 'Herrera', 'Stephen', 'Dana', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Garcia Loaf', 'Chaney Extensions', '12121', 'Male', 23, '0', 'michael40@stewart.com', '6', '25', '2001', '954-012-2843', 'Widowed', 'In School Youth', 'Core Youth', 'Employed', 'Masters Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(8, 'Watson', 'James', 'Trevor', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Le Island', 'Gina Spur', '14264', 'Female', 20, '0', 'elizabethfisher@gmail.com', '12', '25', '2004', '478.834.0622', 'Widowed', 'In School Youth', 'Core Youth', 'Self-Employed', 'Masters Graduate', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(9, 'Smith', 'William', 'Curtis', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Booth Summit', 'Ashley Lake', '65683', 'Male', 15, '0', 'ann70@blair.net', '12', '9', '2009', '001-288-839-5762x675', 'Widowed', 'Out Of School Youth', 'Child Youth', 'Employed', 'Elementary Level', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(10, 'Ross', 'Nicholas', 'Roy', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Tiffany Ports', 'Chandler Junctions', '4732', 'Male', 16, '0', 'michaelgarcia@hotmail.com', '1', '4', '1981', '367-615-5703x424', 'Married', 'Out Of School Youth', 'Child Youth', 'Student', 'High School Level', 'Not Registered', 'No', 0, 'Yes', 4, '0', '3'),
(11, 'Yang', 'Jessica', 'Steven', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Vaughn Track', 'George Lodge', '1792', 'Female', 22, '0', 'dickersondavid@cox.com', '1', '17', '2002', '(573)877-6317x640', 'Widowed', 'Person With Disability', 'Core Youth', 'Unemployed', 'Masters Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(12, 'Alexander', 'Frank', 'Susan', '', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Jones Via', 'Taylor Circle', '375', 'Female', 23, '0', 'boyleregina@gmail.com', '3', '23', '2001', '(771)084-4082x6757', 'Married', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(13, 'Romero', 'Gordon', 'Christina', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Cynthia Skyway', 'Ashley Fork', '0854', 'Female', 27, '0', 'wfernandez@hotmail.com', '7', '4', '1997', '+1-748-306-9295x1411', 'Married', 'Working Youth', 'Young Adult', 'Student', 'Vocational Graduate', 'Registered', 'No', 0, 'No', 1, '0', '3'),
(14, 'Baker', 'Taylor', 'Christopher', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'David Trail', 'Fox Ranch', '11822', 'Male', 19, '0', 'jackie60@ford.com', '11', '18', '2005', '001-418-005-9149', 'Divorced', 'Working Youth', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'No', 0, 'Yes', 1, '0', '3'),
(15, 'Velazquez', 'Daniel', 'Jerry', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Rhonda Glens', 'Brian Roads', '48405', 'Female', 22, '0', 'mitchelljeanette@gmail.com', '9', '6', '1989', '960.883.7273x88466', 'Married', 'Working Youth', 'Core Youth', 'Student', 'Masters Level', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(16, 'Pineda', 'Willie', 'Lisa', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Simpson Canyon', 'Cox Heights', '6292', 'Male', 19, '0', 'kevin46@allen-pratt.com', '9', '22', '2005', '440.436.6348x066', 'Single', 'In School Youth', 'Core Youth', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(17, 'Banks', 'Kelly', 'Gloria', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Gilmore Mill', 'Smith Cape', '78932', 'Male', 29, '0', 'david97@hotmail.com', '1', '10', '1995', '001-283-747-4717x903', 'Divorced', 'Person With Disability', 'Young Adult', 'Student', 'Masters Graduate', 'Not Registered', 'No', 0, 'No', 1, '0', '3'),
(18, 'Morales', 'Aaron', 'Derrick', '', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Farmer Mountains', 'Bobby Lights', '74653', 'Female', 19, '0', 'nelsonjessica@yahoo.com', '5', '11', '2005', '001-931-042-1963', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'Elementary Graduate', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(19, 'Edwards', 'Michael', 'Tamara', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Bineng', 'Young Squares', 'Dale Prairie', '2998', 'Male', 25, '0', 'brandtnicholas@bell.biz', '9', '13', '1999', '948-561-8612x57554', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Student', 'College Level', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(20, 'Ryan', 'Leslie', 'William', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Dalton Mill', 'Ramirez Ford', '879', 'Male', 19, '0', 'woodarddesiree@parrish.com', '3', '18', '2005', '001-153-216-0183x646', 'Widowed', 'Working Youth', 'Core Youth', 'Student', 'Elementary Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(21, 'Olsen', 'David', 'Joseph', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Patricia Port', 'Julie Motorway', '2638', 'Male', 20, '0', 'nharper@yahoo.com', '7', '17', '2004', '(500)438-1508', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'Masters Graduate', 'Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(22, 'Gomez', 'Alexis', 'Jessica', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Cummings Neck', 'Bradford Ports', '58447', 'Female', 25, '0', 'morgandavid@king.com', '11', '16', '1999', '001-194-020-7576x069', 'Married', 'Working Youth', 'Young Adult', 'Unemployed', 'Masters Level', 'Not Registered', 'No', 0, 'No', 3, '0', '3'),
(23, 'Griffith', 'Yvonne', 'Albert', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Salazar Inlet', 'Moore Ways', '02505', 'Female', 28, '0', 'james91@taylor-campbell.com', '6', '4', '1996', '6569841219', 'Married', 'Person With Disability', 'Young Adult', 'Student', 'Elementary Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(24, 'Graves', 'Andrew', 'Steven', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Robin Trafficway', 'Adam Manors', '316', 'Female', 26, '0', 'jamesvillegas@hotmail.com', '12', '27', '1988', '459-472-2606', 'Widowed', 'In School Youth', 'Young Adult', 'Student', 'College Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(25, 'Wilkerson', 'Felicia', 'Kevin', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Kevin Estates', 'Carlson Lock', '579', 'Male', 30, '0', 'christinadixon@sanchez.com', '6', '15', '1994', '546.022.4020x256', 'Divorced', 'In School Youth', 'Young Adult', 'Unemployed', 'High School Level', 'Registered', 'No', 0, 'No', 1, '0', '3'),
(26, 'Nelson', 'Ashley', 'Shane', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Shawn Dale', 'Rhonda Street', '8833', 'Male', 20, '0', 'elizabethrivera@pearson.com', '5', '19', '2004', '597.834.7320', 'Single', 'Working Youth', 'Core Youth', 'Self-Employed', 'High School Level', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(27, 'Rice', 'Amy', 'Douglas', '', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Gonzalez Junction', 'Kari Prairie', '535', 'Female', 30, '0', 'alisoncastillo@mcdaniel.biz', '8', '9', '1994', '841.810.1515x17414', 'Married', 'In School Youth', 'Young Adult', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(28, 'Gonzales', 'Lauren', 'Nathan', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Cheryl Overpass', 'Jeffrey Summit', '41041', 'Female', 22, '0', 'lindsaygarza@white.com', '8', '4', '2002', '(263)044-3328', 'Married', 'Working Youth', 'Core Youth', 'Student', 'High School Level', 'Registered', 'No', 0, 'Yes', 0, '0', '3'),
(29, 'Rogers', 'Frank', 'Cindy', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Courtney Summit', 'Duncan Harbor', '97506', 'Female', 23, '0', 'uanthony@hotmail.com', '10', '1', '2001', '0942137654', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Graduate', 'Not Registered', 'No', 0, 'Yes', 0, '0', '3'),
(30, 'Mendez', 'Rebecca', 'Brandon', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Hanson Pass', 'Ramirez Camp', '8885', 'Male', 30, '0', 'michael68@hotmail.com', '11', '28', '1994', '(560)909-8481', 'Single', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Masters Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(31, 'Stanley', 'Antonio', 'Matthew', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Emma Valley', 'Cannon Fall', '22354', 'Female', 16, '0', 'fostertammy@yahoo.com', '12', '12', '2008', '+1-001-583-7399x684', 'Widowed', 'Person With Disability', 'Child Youth', 'Student', 'College Level', 'Not Registered', 'Yes', 0, 'No', 1, '0', '3'),
(32, 'Martinez', 'Karen', 'Maurice', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Ambiong', 'Valerie Lock', 'Thompson Vista', '66882', 'Female', 21, '0', 'robersonbrianna@fernandez-simmons.biz', '7', '18', '2003', '438-315-2355x52727', 'Divorced', 'Person With Disability', 'Core Youth', 'Employed', 'Doctorate Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(33, 'Brown', 'Darlene', 'Aaron', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Hill Terrace', 'Michele Pike', '1904', 'Male', 24, '0', 'annafuller@brown.com', '7', '11', '2000', '457-656-1743', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'High School Level', 'Not Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(34, 'Sharp', 'Jasmine', 'Eric', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Betag', 'Gutierrez Key', 'Cummings Ramp', '30638', 'Female', 19, '0', 'mackenziekelley@hull.com', '8', '14', '2005', '890-309-4349x11830', 'Single', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Elementary Graduate', 'Registered', 'No', 0, 'Yes', 1, '0', '3'),
(35, 'Moran', 'Jill', 'Kristi', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Balili', 'Shawn Island', 'Wiley Causeway', '9795', 'Female', 17, '0', 'tarahensley@yahoo.com', '1', '1', '2007', '271.533.9030x73382', 'Single', 'In School Youth', 'Child Youth', 'Employed', 'Doctorate Level', 'Not Registered', 'No', 0, 'Yes', 2, '0', '3'),
(36, 'Garcia', 'Ashley', 'Eduardo', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Shea Forge', 'Williams Points', '047', 'Female', 21, '0', 'butlerlisa@yahoo.com', '3', '19', '2003', '760-056-9222x2955', 'Single', 'Working Youth', 'Core Youth', 'Unemployed', 'Doctorate Level', 'Not Registered', 'No', 0, 'No', 1, '0', '3'),
(37, 'Lopez', 'Anita', 'Rebecca', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Ambiong', 'James Key', 'Aaron Curve', '920', 'Female', 16, '0', 'davidstanton@velasquez-shah.com', '12', '3', '2008', '(640)341-4164', 'Divorced', 'Person With Disability', 'Child Youth', 'Self-Employed', 'College Graduate', 'Not Registered', 'No', 0, 'Yes', 1, '0', '3'),
(38, 'Lewis', 'Lisa', 'Ernest', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Laura Pass', 'Brad Street', '8224', 'Female', 28, '0', 'meltonshawn@gmail.com', '10', '17', '1996', '178.899.0303', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'High School Level', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(39, 'Rhodes', 'Michael', 'Jessica', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Ortega Via', 'Snyder Road', '8137', 'Male', 15, '0', 'karen66@brown.com', '1', '5', '2009', '298-331-8212x582', 'Single', 'In School Youth', 'Child Youth', 'Self-Employed', 'High School Level', 'Registered', 'No', 0, 'Yes', 1, '0', '3'),
(40, 'Murray', 'Erika', 'Anthony', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Ambiong', 'Frazier Union', 'Chen Estates', '652', 'Male', 26, '0', 'annwright@johnson-keller.com', '1', '26', '1998', '855-662-4194', 'Married', 'Out Of School Youth', 'Young Adult', 'Unemployed', 'Elementary Level', 'Registered', 'Yes', 0, 'Yes', 2, '0', '3'),
(41, 'Sheppard', 'Sandra', 'Michaela', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Hickman Causeway', 'Anthony Branch', '94334', 'Female', 21, '0', 'carlwhite@robertson-stevens.biz', '1', '17', '2003', '-7413', 'Widowed', 'Person With Disability', 'Core Youth', 'Employed', 'Vocational Graduate', 'Registered', 'No', 0, 'No', 5, '0', '3'),
(42, 'Davenport', 'Debra', 'Stephen', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Caitlin Prairie', 'Baldwin Light', '956', 'Female', 17, '0', 'reginawilliams@hotmail.com', '12', '14', '2007', '194-761-7127', 'Divorced', 'In School Youth', 'Child Youth', 'Employed', 'Elementary Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(43, 'Christensen', 'Joshua', 'Jennifer', '', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Hughes Fall', 'Ruiz Streets', '7357', 'Female', 16, '0', 'seanmoyer@gmail.com', '4', '23', '2008', '+1-193-511-7931x1523', 'Widowed', 'In School Youth', 'Child Youth', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(44, 'Munoz', 'Nicholas', 'Brianna', '', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Bethany Mount', 'Derrick Roads', '977', 'Female', 17, '0', 'jasonarmstrong@hotmail.com', '4', '25', '2007', '516.132.4052', 'Single', 'Person With Disability', 'Child Youth', 'Currently looking for job', 'Masters Level', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(45, 'Fitzgerald', 'Emily', 'Michael', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Allison Road', 'Scott Walks', '2943', 'Female', 26, '0', 'susansmith@hotmail.com', '7', '4', '1998', '442.887.9804', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'College Graduate', 'Registered', 'No', 0, 'Yes', 1, '0', '3'),
(46, 'Mejia', 'Matthew', 'Kelli', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Huffman Summit', 'Anne Well', '763', 'Female', 20, '0', 'barbaragalloway@allen.com', '4', '7', '2004', '720.344.6498x93832', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(47, 'Rowland', 'Rachel', 'Elizabeth', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Jason Key', 'Laura Dam', '9929', 'Male', 30, '0', 'uwest@yahoo.com', '9', '15', '1994', '(928)329-3267', 'Single', 'Person With Disability', 'Young Adult', 'Employed', 'Elementary Level', 'Not Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(48, 'Perez', 'Anna', 'Amanda', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Kevin Turnpike', 'Brittany Well', '790', 'Male', 16, '0', 'jennifer64@anderson.org', '9', '11', '2008', '087.303.0014', 'Single', 'Working Youth', 'Child Youth', 'Unemployed', 'High School Graduate', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(49, 'Howe', 'Lisa', 'Grace', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Bineng', 'Jones Terrace', 'Swanson Extensions', '067', 'Male', 24, '0', 'katherinebrown@hotmail.com', '10', '12', '2000', '+1-386-872-2635x0589', 'Married', 'In School Youth', 'Core Youth', 'Student', 'High School Graduate', 'Registered', 'No', 0, 'Yes', 4, '0', '3'),
(50, 'Mueller', 'Melissa', 'James', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Hahn Passage', 'Gonzales Orchard', '981', 'Male', 16, '0', 'julie05@mccoy.org', '6', '23', '2008', '439.769.6279', 'Widowed', 'Person With Disability', 'Child Youth', 'Unemployed', 'Vocational Graduate', 'Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(51, 'Franklin', 'Christopher', 'Kayla', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Natalie Spur', 'Johnston Isle', '5603', 'Female', 21, '0', 'smithjoshua@lewis-mendoza.com', '9', '18', '2003', '365.468.3753', 'Married', 'Person With Disability', 'Core Youth', 'Self-Employed', 'College Level', 'Registered', 'No', 0, 'No', 3, '0', '3'),
(52, 'Wilson', 'David', 'Patricia', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Wilson Well', 'Henry Locks', '264', 'Female', 20, '0', 'gsnyder@yahoo.com', '1', '1', '2004', '+1-752-729-2809x542', 'Single', 'Person With Disability', 'Core Youth', 'Currently looking for job', 'College Level', 'Registered', 'No', 0, 'Yes', 4, '0', '3'),
(53, 'Rubio', 'Nathan', 'Laura', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Jose Walks', 'Lewis Flats', '640', 'Female', 19, '0', 'glen55@kennedy.biz', '4', '5', '2005', '447.027.2146', 'Married', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Elementary Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(54, 'Robinson', 'Tracy', 'Dennis', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Hardin Estates', 'Gregory Mountain', '6127', 'Female', 23, '0', 'rebeccavasquez@gmail.com', '11', '7', '2001', '(868)505-5855', 'Single', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'Masters Graduate', 'Not Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(55, 'Barnett', 'Kelsey', 'Jennifer', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Hammond Heights', 'Jeffrey Underpass', '571', 'Male', 30, '0', 'rebecca86@gonzalez.info', '8', '20', '1994', '428.902.2590x9149', 'Divorced', 'In School Youth', 'Young Adult', 'Self-Employed', 'Masters Graduate', 'Registered', 'No', 0, 'No', 5, '0', '3'),
(56, 'Stewart', 'Austin', 'Anthony', '', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Kaiser Club', 'Eugene Manors', '6748', 'Male', 22, '0', 'srodgers@gmail.com', '7', '16', '2002', '-4652', 'Single', 'Person With Disability', 'Core Youth', 'Self-Employed', 'High School Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(57, 'Brown', 'Sandra', 'Roberta', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Day Turnpike', 'Norton Green', '71748', 'Male', 17, '0', 'tiffanywilson@davis.com', '10', '28', '2007', '+1-755-021-6310x7719', 'Married', 'Out Of School Youth', 'Child Youth', 'Student', 'Vocational Graduate', 'Not Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(58, 'Silva', 'Katherine', 'Daniel', '', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Troy Creek', 'Hines Bypass', '5232', 'Female', 17, '0', 'lisamiller@hall.info', '9', '27', '2007', '001-071-873-4053x906', 'Single', 'Out Of School Youth', 'Child Youth', 'Employed', 'High School Level', 'Not Registered', 'No', 0, 'No', 2, '0', '3'),
(59, 'Kelley', 'Alicia', 'Stephanie', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Torres Streets', 'Matthew Mews', '621', 'Male', 18, '0', 'paige32@hotmail.com', '1', '22', '2006', '8234606234', 'Divorced', 'Person With Disability', 'Core Youth', 'Self-Employed', 'College Level', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(60, 'Bush', 'Jacqueline', 'Daniel', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Andrews Orchard', 'Costa Ways', '38788', 'Male', 27, '0', 'ivilla@ellison.info', '4', '11', '1997', '(745)795-7387', 'Married', 'Person With Disability', 'Young Adult', 'Employed', 'College Graduate', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(61, 'Williams', 'Paula', 'Jean', '', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Jackson Place', 'Brittany Streets', '617', 'Female', 19, '0', 'corey26@johnson.org', '10', '4', '2005', '(006)284-7654x096', 'Married', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(62, 'Olson', 'Jessica', 'Morgan', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Shea Bridge', 'Sanchez Alley', '258', 'Female', 21, '0', 'wardjesse@williamson.info', '1', '16', '2003', '(707)848-5585x384', 'Divorced', 'Working Youth', 'Core Youth', 'Self-Employed', 'Vocational Graduate', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(63, 'Wilkerson', 'Gerald', 'Gabriel', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Neal Crest', 'Joseph Turnpike', '47619', 'Male', 15, '0', 'alyssakelly@ward.com', '10', '13', '2009', '512.632.1635x162', 'Married', 'Out Of School Youth', 'Child Youth', 'Employed', 'College Graduate', 'Not Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(64, 'Johnson', 'Christopher', 'John', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Smith Views', 'Russell Key', '931', 'Male', 25, '0', 'evanrice@gmail.com', '12', '18', '1999', '+1-326-866-6862x7552', 'Married', 'Person With Disability', 'Young Adult', 'Employed', 'Elementary Level', 'Not Registered', 'No', 0, 'Yes', 0, '0', '3'),
(65, 'Mckinney', 'John', 'Curtis', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Hughes Cliffs', 'Joseph Freeway', '0210', 'Female', 29, '0', 'wolfjohn@hamilton.org', '3', '6', '1995', '(251)854-7998', 'Divorced', 'In School Youth', 'Young Adult', 'Student', 'Elementary Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(66, 'Malone', 'Ryan', 'Amber', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Greer Mission', 'Gallegos Loop', '01966', 'Female', 18, '0', 'rebeccahenry@yahoo.com', '5', '6', '2006', '108.777.1106x236', 'Married', 'In School Youth', 'Core Youth', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', 0, 'No', 3, '0', '3'),
(67, 'Silva', 'Jeffrey', 'Misty', '', 'CAR', 'Benguet', 'La Trinidad', 'Puguis', 'Jacqueline Cliff', 'Rush Track', '3083', 'Female', 18, '0', 'thomas49@hotmail.com', '7', '5', '2006', '992-298-3244x61701', 'Married', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'College Level', 'Not Registered', 'Yes', 0, 'No', 4, '0', '3'),
(68, 'Cabrera', 'Julie', 'Holly', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Taylor Branch', 'Jeffrey Inlet', '2193', 'Female', 29, '0', 'angela53@yahoo.com', '10', '3', '1995', '(901)745-8296x443', 'Widowed', 'In School Youth', 'Young Adult', 'Self-Employed', 'Elementary Level', 'Registered', 'Yes', 0, 'No', 2, '0', '3'),
(69, 'Wright', 'Daniel', 'Chad', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Betag', 'James Ports', 'Dawn Plain', '5871', 'Female', 29, '0', 'ericmyers@robinson-dickson.net', '8', '18', '1995', '001-078-362-4280x703', 'Single', 'Working Youth', 'Young Adult', 'Unemployed', 'Masters Level', 'Not Registered', 'Yes', 0, 'No', 1, '0', '3'),
(70, 'Garcia', 'Gail', 'Megan', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Bailey Plain', 'Gutierrez Well', '202', 'Female', 28, '0', 'michele03@yahoo.com', '7', '19', '1996', '+1-664-823-9403x6668', 'Single', 'Person With Disability', 'Young Adult', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(71, 'Jones', 'Mackenzie', 'Margaret', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Kaitlyn Unions', 'Jared Mount', '8637', 'Male', 15, '0', 'joseph69@morris.com', '12', '2', '2009', '881.106.5048x87430', 'Married', 'In School Youth', 'Child Youth', 'Currently looking for job', 'Masters Graduate', 'Not Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(72, 'Hunter', 'Nicholas', 'James', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Bahong', 'Martinez Neck', 'Stephen Canyon', '1316', 'Male', 19, '0', 'mallen@gmail.com', '11', '15', '2005', '431.421.4243', 'Widowed', 'Out Of School Youth', 'Core Youth', 'Employed', 'High School Level', 'Registered', 'No', 0, 'Yes', 5, '0', '3'),
(73, 'Christian', 'Veronica', 'Mark', '', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Jenny Ville', 'Gary Mews', '568', 'Female', 18, '0', 'benjaminballard@yahoo.com', '1', '19', '2006', '+1-074-111-4281x618', 'Married', 'Person With Disability', 'Core Youth', 'Self-Employed', 'Elementary Graduate', 'Registered', 'Yes', 0, 'No', 2, '0', '3'),
(74, 'Simmons', 'Heidi', 'Melissa', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Torres Rue', 'Alexander Keys', '949', 'Male', 21, '0', 'vhicks@gmail.com', '11', '25', '2003', '(371)647-2445', 'Widowed', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(75, 'Rose', 'Brandon', 'Kimberly', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Benitez Hills', 'Christopher Common', '049', 'Female', 17, '0', 'harrisalexandra@saunders-hays.com', '12', '28', '2007', '-7335', 'Single', 'In School Youth', 'Child Youth', 'Currently looking for job', 'College Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(76, 'Greene', 'April', 'Sarah', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Chavez Ramp', 'Chavez Route', '21141', 'Male', 21, '0', 'amandasimmons@yahoo.com', '7', '15', '2003', '648.379.5815', 'Married', 'Person With Disability', 'Core Youth', 'Self-Employed', 'Vocational Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(77, 'Roberts', 'Sandra', 'Michelle', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Tanner Oval', 'Hart Vista', '299', 'Male', 24, '0', 'tramsey@hotmail.com', '4', '16', '2000', '001-919-143-8367x625', 'Married', 'Out Of School Youth', 'Core Youth', 'Currently looking for job', 'Masters Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(78, 'Reynolds', 'Jeffrey', 'Joshua', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Meyer Field', 'Jonathon Wall', '380', 'Female', 27, '0', 'brittanyblack@spencer.biz', '6', '1', '1997', '(605)693-7489x2674', 'Divorced', 'Working Youth', 'Young Adult', 'Currently looking for job', 'Masters Graduate', 'Registered', 'No', 0, 'Yes', 0, '0', '3'),
(79, 'Thomas', 'Andrea', 'Shelly', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Carol Trail', 'Joshua Vista', '65500', 'Female', 24, '0', 'wramirez@hotmail.com', '9', '20', '2000', '-6548', 'Divorced', 'Working Youth', 'Core Youth', 'Student', 'High School Level', 'Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(80, 'Smith', 'Katelyn', 'David', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Kristina Wells', 'Garcia Key', '203', 'Male', 30, '0', 'louis98@quinn-singleton.biz', '5', '1', '1994', '513.193.8665', 'Widowed', 'In School Youth', 'Young Adult', 'Unemployed', 'Elementary Level', 'Registered', 'No', 0, 'Yes', 0, '0', '3'),
(81, 'Scott', 'Deanna', 'Joshua', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Berry Underpass', 'Gibson Bridge', '783', 'Male', 20, '0', 'millerjessica@yahoo.com', '9', '4', '2004', '(175)053-9085', 'Single', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Level', 'Registered', 'No', 0, 'Yes', 0, '0', '3'),
(82, 'Perez', 'Kevin', 'David', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Betag', 'Smith Ports', 'Lyons Summit', '18997', 'Female', 15, '0', 'ftaylor@foster.net', '9', '24', '2009', '877-475-3831x08111', 'Divorced', 'Person With Disability', 'Child Youth', 'Currently looking for job', 'High School Graduate', 'Registered', 'No', 0, 'Yes', 0, '0', '3'),
(83, 'Jackson', 'Natalie', 'Sylvia', '', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Randall Gateway', 'Hoover Alley', '272', 'Male', 24, '0', 'drewhoffman@hotmail.com', '7', '15', '2000', '(304)859-7934x019', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'Doctorate Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(84, 'White', 'Erin', 'Michael', '', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Zhang Lodge', 'Meagan Ramp', '8059', 'Female', 15, '0', 'phillipsjeffrey@livingston.com', '8', '18', '2009', '895.893.1457x715', 'Single', 'Out Of School Youth', 'Child Youth', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', 0, 'Yes', 1, '0', '3'),
(85, 'Holmes', 'Jean', 'Heather', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Harrison Manors', 'Nancy Course', '521', 'Female', 19, '0', 'kaylataylor@gmail.com', '7', '28', '2005', '(307)923-7282x395', 'Married', 'Person With Disability', 'Core Youth', 'Employed', 'College Graduate', 'Not Registered', 'No', 0, 'Yes', 0, '0', '3'),
(86, 'Collins', 'Alicia', 'Richard', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Lubas', 'Moore Springs', 'Huang Creek', '14117', 'Female', 29, '0', 'davistimothy@hotmail.com', '12', '25', '1995', '395-101-7820x18721', 'Single', 'In School Youth', 'Young Adult', 'Student', 'Masters Graduate', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(87, 'Jones', 'Brittany', 'Robin', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Bineng', 'Mikayla Station', 'Reyes Canyon', '675', 'Male', 15, '0', 'ilove@yahoo.com', '6', '9', '2009', '068-603-0978', 'Married', 'Out Of School Youth', 'Child Youth', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(88, 'Clark', 'Kevin', 'Wendy', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Karen Walk', 'Mendoza Centers', '240', 'Female', 30, '0', 'mitchellkenneth@taylor-clark.biz', '6', '9', '1994', '819.160.1068x866', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Self-Employed', 'Vocational Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(89, 'Howell', 'Cynthia', 'Donna', '', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Rivas Mission', 'Rice Spurs', '7623', 'Male', 24, '0', 'hessrenee@rush.com', '10', '21', '2000', '073-300-7926x0120', 'Single', 'Person With Disability', 'Core Youth', 'Student', 'Elementary Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(90, 'Cantrell', 'Nichole', 'Brandy', 'Jr.', 'CAR', 'Benguet', 'La Trinidad', 'Alno', 'Wise Square', 'Joshua Underpass', '6436', 'Male', 29, '0', 'mrodriguez@blake.net', '2', '11', '1995', '-8003', 'Married', 'Working Youth', 'Young Adult', 'Currently looking for job', 'College Level', 'Not Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(91, 'Garcia', 'Joshua', 'Deborah', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Shilan', 'Carla Trail', 'David Summit', '19327', 'Male', 26, '0', 'jason65@haynes.com', '4', '12', '1998', '802.433.4097', 'Married', 'Working Youth', 'Young Adult', 'Self-Employed', 'Elementary Level', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(92, 'Walker', 'Andrew', 'Denise', 'Sr.', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Friedman Manor', 'Kim Mills', '273', 'Female', 30, '0', 'bassearl@yahoo.com', '12', '10', '1994', '574-620-3984', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'Masters Graduate', 'Registered', 'Yes', 0, 'No', 3, '0', '3'),
(93, 'Blankenship', 'Mario', 'Melissa', '', 'CAR', 'Benguet', 'La Trinidad', 'Cruz', 'Harris Falls', 'Huber Plain', '0679', 'Male', 25, '0', 'dorothyharris@reyes-ruiz.com', '12', '7', '1999', '848-330-1440', 'Single', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Doctorate Level', 'Not Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(94, 'Mcintyre', 'Gary', 'Ryan', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Beckel', 'Casey Trafficway', 'Sarah Row', '9559', 'Male', 26, '0', 'jerryross@randall-white.info', '10', '23', '1998', '(394)565-9675', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Masters Graduate', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(95, 'Bauer', 'Janet', 'Richard', '', 'CAR', 'Benguet', 'La Trinidad', 'Alapang', 'Haley Glen', 'Lopez Courts', '9481', 'Female', 25, '0', 'richardmeadows@yahoo.com', '1', '14', '1999', '001-740-664-5587', 'Divorced', 'Working Youth', 'Young Adult', 'Unemployed', 'College Graduate', 'Not Registered', 'Yes', 0, 'Yes', 0, '0', '3'),
(96, 'Barnes', 'Kayla', 'Elaine', 'IV', 'CAR', 'Benguet', 'La Trinidad', 'Poblacion', 'Braun Shores', 'Johnson Via', '14259', 'Female', 23, '0', 'frodriguez@cobb-stuart.com', '12', '3', '2001', '801.546.6528', 'Divorced', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Masters Level', 'Registered', 'No', 0, 'No', 1, '0', '3'),
(97, 'Cannon', 'Jesse', 'John', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Wangal', 'Lucas Plain', 'Nguyen Hills', '01564', 'Male', 17, '0', 'yjordan@cervantes.net', '2', '17', '2007', '284.257.6705x411', 'Single', 'In School Youth', 'Child Youth', 'Currently looking for job', 'Doctorate Level', 'Not Registered', 'Yes', 0, 'No', 2, '0', '3'),
(98, 'Brown', 'Kevin', 'Kristina', '', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Pitts View', 'Wagner Haven', '221', 'Female', 27, '0', 'ewilliams@gmail.com', '10', '7', '1997', '300-518-2339x0216', 'Married', 'Person With Disability', 'Young Adult', 'Student', 'Masters Level', 'Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(99, 'Gilmore', 'Kristen', 'Taylor', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Pico', 'Graham Spurs', 'Alex Place', '7052', 'Female', 18, '0', 'lonniejones@yahoo.com', '5', '22', '2006', '028-824-6625', 'Married', 'Person With Disability', 'Core Youth', 'Currently looking for job', 'Masters Level', 'Registered', 'Yes', 0, 'No', 5, '0', '3'),
(100, 'Hayden', 'Michael', 'Heather', 'III', 'CAR', 'Benguet', 'La Trinidad', 'Tawang', 'Williams Isle', 'Kenneth Mountains', '82217', 'Female', 26, '0', 'careysusan@yahoo.com', '7', '10', '1998', '001-021-637-8729x298', 'Divorced', 'Working Youth', 'Young Adult', 'Employed', 'Elementary Level', 'Registered', 'Yes', 0, 'No', 3, '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangay`
--
ALTER TABLE `barangay`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `delete_profile`
--
ALTER TABLE `delete_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles_archive`
--
ALTER TABLE `profiles_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles_backup`
--
ALTER TABLE `profiles_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `barangay`
--
ALTER TABLE `barangay`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `delete_profile`
--
ALTER TABLE `delete_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `profiles_archive`
--
ALTER TABLE `profiles_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `profiles_backup`
--
ALTER TABLE `profiles_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
