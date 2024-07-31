-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 03:59 AM
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles_archive`
--
ALTER TABLE `profiles_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles_backup`
--
ALTER TABLE `profiles_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
