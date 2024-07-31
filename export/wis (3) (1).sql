-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 06:26 PM
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
(20, 'adminS@ph', '$2y$10$Q/AorUi1jMY4rHF4FRjFnuxibriwAlASkJ9S2NH3pys7liQWZF2vS', 'Super', 'Admin', 'superadmin', NULL),
(21, 'v1admin@ph', '$2y$10$SFuiuxbYKia565jr8j0ON.B08SAs69jVN/0TCxAlMy3aJI6iEBu7O', '', '', '', NULL),
(24, 'alapang@ph', '$2y$10$fx9VYg/YJ77n32GWLyDWx.xficCQEZAPSmzU7NtMPiJjLHVNjmYsW', 'Alapang', 'La Trinidad', 'user', '3'),
(26, 'alno@ph', '$2y$10$AQsOPNJtuuZtc59u8E49BeJM2gpoju3mCeD/rX0IFc.F3/28SLuYe', 'Alno', 'La Trinidad', 'user', '4'),
(27, 'ambiong@ph', '$2y$10$WLadnD0/qO14wwCynTYEVuJ9Q75aJ0R5PN.8F6fKkVON/tMEbE1fy', 'Ambiong', 'La Trinidad', 'user', '5'),
(28, 'bahong@ph', '$2y$10$xhkxfAuD4lUVLN8e7271wuj/lXj9AyVV6BuQ5cH5wyFMDHqu4ny/u', 'Bahong', 'La Trinidad', 'user', '6'),
(29, 'balili@ph', '$2y$10$m9IMNo8DwpHGBK4K39zytOWzxcwWQ6XGQWjmlepbOz8mYjOd1chuW', 'Balili', 'La Trinidad', 'user', '7'),
(30, 'beckel@ph', '$2y$10$8ciTxxkOPgygl8l7qvRiS.60GtddnF3zGxm5EQ74hSuayO9Flec7y', 'Beckel', 'La Trinidad', 'user', '8'),
(31, 'betag@ph', '$2y$10$3xzr3RBNAjwQIHURXNxNUu/jBoVG1H1DiTTxNVN1PL6naTnGhziQ2', 'Betag', 'La Trinidad', 'user', '9'),
(32, 'bineng@ph', '$2y$10$24ry8vVPAA/Lucw55dDx8eUG0100tq/7AE8YifdIVRJBC/k6d3Oy2', 'Bineng', 'La Trinidad', 'user', '10'),
(33, 'cruz@ph', '$2y$10$rThf/gp8a23FnQogQD7v1OcjcnBqWyQv5Mmm1.EMsMa8O1rKJOsYq', 'Cruz', 'La Trinidad', 'user', '11'),
(34, 'lubas@ph', '$2y$10$xtUXVV6DwxTwtgxf6FOxMeL1SJcKNiwO95MqZDeDcmKxutUm4K7w6', 'Lubas', 'La Trinidad', 'user', '12'),
(35, 'pico@ph', '$2y$10$PhnEeo5BXfZfW7lQR3dPA.OPDl7/Q7CWR59YuIUjPru1xSnXea5Ti', 'Pico', 'La Trinidad', 'user', '13'),
(36, 'poblacion@ph', '$2y$10$0rt1blEQWgpYBtE3ZuOBQessHSnJDxtOx0QmOVUo5zsmEMUpvPnkW', 'Poblacion', 'La Trinidad', 'user', '14'),
(37, 'puguis@ph', '$2y$10$ywEYFI3B8it6RiLFGwFSA.456gt1ULtHjLhs6IIjpODIMm4Sn1GBm', 'Puguis', 'La Trinidad', 'user', '15'),
(38, 'shilan@ph', '$2y$10$YaF4XzCf4qvui5G2KPbgQedih.EA2ssxJEBi7.5nrbCwbkgUM385.', 'Shilan', 'La Trinidad', 'user', '16'),
(39, 'tawang@ph', '$2y$10$m.UZq5nH.4oGsMg2l9j4re5jnUUWW2SfpZrcOL..mmUMJzZqDs55q', 'Tawang', 'La Trinidad', 'user', '17'),
(49, 'wangal@ph', '$2y$10$iH8zklKg/ZsbRN7qLMFgKuH8Ipff0rtBaK.sjsT6FydpFCYl07kFO', 'Wangal', 'La Trinidad', 'user', '18'),
(50, 'admin@admin', '$2y$10$JEm1njwdrFsS4d5Ijc6rVOkoUTH0FnU7FBntzAlROFkCVLXcfTV7G', 'Admin', 'Admin', 'admin', '');

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

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `lname`, `fname`, `mname`, `suffix`, `region`, `province`, `municipality`, `barangay`, `sitio`, `purok`, `house_number`, `sex`, `age`, `youth_with_needs`, `email`, `birth_month`, `birth_day`, `birth_year`, `contactnumber`, `civil_status`, `youth_classification`, `age_group`, `work_status`, `educational_background`, `register_sk_voter`, `voted_last_election`, `national_voter`, `attended_kk`, `times_attended_kk`, `no_why`, `barangay_code`) VALUES
(2, 'Jones', 'Margaret', 'Robert', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '17', 'Male', 27, '0', 'victoria82@brown.com', '12', '14', '1996', '(156)428-4910x043', 'Divorced', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Vocational Graduate', 'Registered', 'Yes', '', 'No', 0, '0', '17'),
(3, 'Kim', 'Katie', 'Yolanda', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '12', 'Male', 24, '0', 'mooreleslie@schmitt-jimenez.biz', '9', '24', '1999', '423-227-9171x50653', 'Single', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'High School Level', 'Registered', 'Yes', '', 'No', 0, '0', '17'),
(4, 'Henderson', 'Johnathan', 'Charlene', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '4', 'Male', 23, '0', 'rebeccabernard@ramirez.com', '4', '3', '2001', '396-800-7727x9648', 'Single', 'Working Youth', 'Core Youth', 'Employed', 'Vocational Graduate', 'Not Registered', 'No', '', 'No', 0, '0', '17'),
(5, 'Perez', 'Ricardo', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '62', 'Male', 20, '0', 'higginseugene@bautista-jones.net', '12', '20', '2003', '(234)602-5521x659', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'Elementary Graduate', 'Registered', 'No', '', 'Yes', 2, '0', '17'),
(6, 'Holder', 'Eric', 'Joanna', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '98', 'Male', 22, '0', 'vterry@jones.com', '1', '24', '2002', '001-504-632-5612x996', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Student', 'College Graduate', 'Registered', 'No', '', 'Yes', 5, '0', '17'),
(7, 'Marshall', 'Gary', 'Martin', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '49', 'Female', 18, '0', 'carpenterjoseph@yahoo.com', '10', '18', '2005', '233.586.8603', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Employed', 'College Graduate', 'Registered', 'No', '', 'Yes', 2, '0', '3'),
(8, 'Jones', 'Brandon', 'Sarah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '46', 'Female', 27, '0', 'williampatton@chavez.com', '11', '9', '1996', '987.173.6228', 'Married', 'Person With Disability (PWD)', 'Young Adult', 'Student', 'Master Graduate', 'Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(9, 'Maynard', 'Erica', 'Joshua', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '57', 'Male', 16, '0', 'kathleen87@hotmail.com', '2', '5', '2008', '973.553.4509x39552', 'Single', 'Person With Disability (PWD)', 'Child Youth', 'Student', 'Elementary Graduate', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(11, 'Long', 'Martin', 'Mark', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '57', 'Female', 18, '0', 'sheliamccullough@king.biz', '10', '13', '2005', '-4759', 'Divorced', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'No', '', 'Yes', 3, '0', '3'),
(12, 'Lam', 'Tonya', 'Michelle', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '98', 'Female', 28, '0', 'brandon38@yahoo.com', '1', '26', '1996', '179-115-9857x40867', 'Married', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'College Graduate', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(13, 'Martinez', 'Blake', 'Deborah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '78', 'Male', 20, '0', 'christine91@gardner.com', '4', '14', '2004', '001-817-755-9015x375', 'Married', 'Working Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(14, 'Martinez', 'Peggy', 'Bradley', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '14', 'Male', 15, '0', 'griffinthomas@carter-gibson.com', '6', '25', '2009', '001-927-602-7872x840', 'Divorced', 'Out Of School Youth', 'Child Youth', 'Employed', 'College Graduate', 'Not Registered', 'Yes', '', 'Yes', 2, '0', '3'),
(15, 'Little', 'Erin', 'Tonya', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '8', 'Male', 21, '0', 'ronaldtrevino@hill.com', '11', '5', '2002', '001-539-497-6149x106', 'Divorced', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', '', 'Yes', 5, '0', '3'),
(16, 'Cunningham', 'Taylor', 'Timothy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '9', 'Female', 26, '0', 'xgeorge@webb-smith.com', '10', '15', '1997', '731-430-1687', 'Widowed', 'Working Youth', 'Young Adult', 'Unemployed', 'High School Graduate', 'Registered', 'No', '', 'Yes', 4, '0', '3'),
(17, 'Anderson', 'Michael', 'Tina', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '70', 'Female', 25, '0', 'wnguyen@hotmail.com', '6', '16', '1999', '+1-845-094-9996x0250', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Master Graduate', 'Registered', 'No', '', 'No', 0, '0', '3'),
(18, 'Diaz', 'Bradley', 'Raymond', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '96', 'Male', 24, '0', 'freemanryan@johnson.com', '5', '20', '2000', '(710)866-6768x340', 'Divorced', 'Working Youth', 'Core Youth', 'Employed', 'Master Level', 'Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(19, 'Blevins', 'Jamie', 'Samantha', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '93', 'Female', 22, '0', 'heatherlane@yahoo.com', '9', '12', '2001', '3490453794', 'Widowed', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(20, 'Murillo', 'Mary', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '37', 'Male', 24, '0', 'xhorton@hotmail.com', '7', '6', '2000', '582.634.8896x7999', 'Widowed', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(21, 'Medina', 'Lawrence', 'Danielle', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '22', 'Female', 29, '0', 'jasongutierrez@trevino.com', '2', '12', '1995', '157-565-8649x90361', 'Single', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'Master Graduate', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(22, 'Hart', 'Valerie', 'Matthew', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '14', 'Female', 17, '0', 'bryanmorgan@wilson-richardson.com', '8', '31', '2006', '610.092.0950x7554', 'Married', 'Out Of School Youth', 'Core Youth', 'Student', 'Elementary Level', 'Registered', 'No', '', 'No', 0, '0', '3'),
(23, 'Wright', 'Laura', 'Brianna', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '70', 'Male', 24, '0', 'bjohnson@yahoo.com', '5', '20', '2000', '(441)425-6698x97435', 'Married', 'Out Of School Youth', 'Core Youth', 'Student', 'High School Level', 'Registered', 'No', '', 'No', 0, '0', '3'),
(24, 'Meyer', 'Keith', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '90', 'Male', 28, '0', 'kevinspencer@hotmail.com', '3', '20', '1996', '(972)179-2085x949', 'Widowed', 'In School Youth', 'Young Adult', 'Student', 'High School Level', 'Not Registered', 'Yes', '', 'Yes', 5, '0', '3'),
(25, 'Kelly', 'Linda', 'Vanessa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '11', 'Female', 23, '0', 'floresrenee@acosta.org', '11', '25', '2000', '001-097-730-2044x834', 'Single', 'In School Youth', 'Core Youth', 'Employed', 'College Level', 'Registered', 'Yes', '', 'Yes', 1, '0', '3'),
(26, 'Diaz', 'Beth', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '79', 'Female', 28, '0', 'pamelathornton@shaw.com', '1', '12', '1996', '001-252-283-9786x962', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Student', 'High School Graduate', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(27, 'Sullivan', 'Toni', 'Jay', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '36', 'Male', 23, '0', 'davidpayne@dixon-reyes.info', '2', '18', '2001', '911.166.1790', 'Married', 'In School Youth', 'Core Youth', 'Student', 'Elementary Graduate', 'Not Registered', 'No', '', 'Yes', 1, '0', '3'),
(28, 'Ponce', 'Sara', 'Sarah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '61', 'Male', 15, '0', 'nnicholson@hawkins.com', '1', '10', '2009', '596-749-8710', 'Widowed', 'Person With Disability (PWD)', 'Child Youth', 'Currently looking for job', 'College Graduate', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(29, 'Stout', 'Sarah', 'Kristy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '78', 'Male', 25, '0', 'morandarlene@hotmail.com', '6', '19', '1999', '001-470-538-3778x352', 'Single', 'In School Youth', 'Young Adult', 'Student', 'Master Graduate', 'Not Registered', 'No', '', 'Yes', 4, '0', '3'),
(30, 'Jones', 'Andrew', 'James', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '81', 'Female', 25, '0', 'foxbruce@gmail.com', '3', '27', '1999', '225.656.5708', 'Single', 'Person With Disability (PWD)', 'Young Adult', 'Employed', 'Master Level', 'Not Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(31, 'Ramirez', 'Patricia', 'Brandon', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '45', 'Male', 30, '0', 'tracy74@gmail.com', '1', '2', '1994', '997.652.6140x893', 'Divorced', 'In School Youth', 'Young Adult', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(32, 'Evans', 'Brandy', 'Lindsey', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '31', 'Male', 21, '0', 'zpaul@gmail.com', '9', '22', '2002', '925.563.8156', 'Married', 'Person With Disability (PWD)', 'Core Youth', 'Currently looking for job', 'Master Level', 'Registered', 'No', '', 'Yes', 3, '0', '3'),
(33, 'Higgins', 'Jason', 'Curtis', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '49', 'Male', 27, '0', 'nmendoza@schneider.info', '10', '12', '1996', '+1-685-948-5839x5006', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Self-Employed', 'Vocational Graduate', 'Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(34, 'Smith', 'Julia', 'Jessica', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '72', 'Male', 15, '0', 'ryananderson@hotmail.com', '6', '11', '2009', '2587170106', 'Married', 'Working Youth', 'Child Youth', 'Unemployed', 'Elementary Graduate', 'Registered', 'No', '', 'Yes', 5, '0', '3'),
(35, 'Hernandez', 'Maria', 'Kelly', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '67', 'Female', 18, '0', 'ellenwilliams@yahoo.com', '3', '20', '2006', '789-601-6091', 'Divorced', 'In School Youth', 'Core Youth', 'Currently looking for job', 'High School Graduate', 'Not Registered', 'No', '', 'Yes', 3, '0', '3'),
(36, 'Frank', 'Edward', 'Karen', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '96', 'Female', 16, '0', 'schmidtmelissa@rogers-riggs.com', '7', '6', '2008', '748.461.0796x530', 'Married', 'Person With Disability (PWD)', 'Child Youth', 'Self-Employed', 'High School Level', 'Registered', 'No', '', 'Yes', 2, '0', '3'),
(37, 'Hunt', 'Claudia', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '8', 'Female', 23, '0', 'ashley83@hotmail.com', '5', '8', '2001', '001-614-148-8905', 'Single', 'Working Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(38, 'Smith', 'Amy', 'William', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '8', 'Male', 24, '0', 'peter03@schmidt.com', '11', '28', '1999', '888-100-1822', 'Single', 'Working Youth', 'Young Adult', 'Employed', 'College Level', 'Registered', 'No', '', 'Yes', 2, '0', '3'),
(39, 'Murphy', 'Tina', 'Keith', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '61', 'Female', 16, '0', 'norrisnancy@gmail.com', '1', '8', '2008', '001-905-802-4467x149', 'Widowed', 'Person With Disability (PWD)', 'Child Youth', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(40, 'Taylor', 'Mark', 'Angelica', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '64', 'Male', 29, '0', 'abrooks@hotmail.com', '11', '12', '1994', '(903)449-3825x659', 'Married', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(41, 'Mendoza', 'Tracy', 'Glenn', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '99', 'Female', 21, '0', 'marygeorge@yahoo.com', '5', '30', '2003', '-6764', 'Single', 'Working Youth', 'Core Youth', 'Student', 'Elementary Level', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(42, 'Green', 'Katie', 'Gary', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '62', 'Female', 28, '0', 'ryanlarsen@hotmail.com', '11', '2', '1995', '8967372437', 'Married', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'College Graduate', 'Registered', 'No', '', 'Yes', 4, '0', '3'),
(43, 'Brown', 'Michelle', 'Chelsea', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '47', 'Female', 23, '0', 'moorelori@marshall-gomez.com', '6', '4', '2001', '001-550-911-4974x815', 'Married', 'In School Youth', 'Core Youth', 'Employed', 'Elementary Graduate', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(44, 'Ashley', 'Stephanie', 'Jeremy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '45', 'Male', 30, '0', 'slee@yahoo.com', '6', '19', '1994', '-5901', 'Married', 'Out Of School Youth', 'Young Adult', 'Unemployed', 'Doctorate Level', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(45, 'Beck', 'Chad', 'Jeremy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '62', 'Female', 21, '0', 'cgoodman@yahoo.com', '9', '3', '2002', '+1-169-444-4817x1516', 'Single', 'In School Youth', 'Core Youth', 'Unemployed', 'Vocational Graduate', 'Registered', 'No', '', 'No', 0, '0', '3'),
(46, 'Garcia', 'Megan', 'Richard', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '14', 'Female', 19, '0', 'toniduncan@james.com', '7', '20', '2005', '+1-936-886-9980x4738', 'Single', 'Working Youth', 'Core Youth', 'Self-Employed', 'Master Graduate', 'Registered', 'Yes', '', 'Yes', 2, '0', '3'),
(47, 'Schroeder', 'Jeff', 'Kevin', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '2', 'Female', 21, '0', 'chad47@yahoo.com', '8', '14', '2002', '131-528-7720x35977', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Currently looking for job', 'Elementary Graduate', 'Not Registered', 'No', '', 'Yes', 1, '0', '3'),
(48, 'Porter', 'Donna', 'Eric', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '26', 'Female', 17, '0', 'angelalambert@yahoo.com', '9', '21', '2006', '061-036-1295x8853', 'Widowed', 'Working Youth', 'Core Youth', 'Currently looking for job', 'Doctorate Level', 'Not Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(49, 'Briggs', 'Richard', 'Lisa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '81', 'Male', 27, '0', 'gshelton@williams.org', '1', '31', '1997', '6575159976', 'Married', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'Master Graduate', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(50, 'Young', 'Sierra', 'Wyatt', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '40', 'Male', 17, '0', 'dray@hotmail.com', '7', '13', '2007', '(579)962-5007x7872', 'Married', 'Out Of School Youth', 'Child Youth', 'Student', 'High School Level', 'Registered', 'No', '', 'No', 0, '0', '3'),
(51, 'Estrada', 'Jacqueline', 'Theresa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '7', 'Female', 25, '0', 'hugheslauren@mejia.com', '9', '14', '1998', '+1-216-252-9218x800', 'Widowed', 'Working Youth', 'Young Adult', 'Currently looking for job', 'Master Graduate', 'Not Registered', 'Yes', '', 'Yes', 4, '0', '3'),
(52, 'Henderson', 'Kathleen', 'Ellen', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '40', 'Female', 18, '0', 'twarren@gmail.com', '12', '27', '2005', '132.225.5391', 'Widowed', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Vocational Graduate', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(53, 'Sherman', 'Rebecca', 'Oscar', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '95', 'Male', 22, '0', 'wsmith@fry.info', '3', '14', '2002', '-7763', 'Married', 'Out Of School Youth', 'Core Youth', 'Employed', 'College Level', 'Registered', 'Yes', '', 'Yes', 2, '0', '3'),
(54, 'Perez', 'Heather', 'Amanda', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '6', 'Female', 23, '0', 'etaylor@sparks.com', '6', '26', '2001', '-4929', 'Divorced', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Level', 'Not Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(55, 'Adams', 'Debbie', 'Antonio', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '63', 'Male', 18, '0', 'joseph42@holland.net', '10', '21', '2005', '-7698', 'Married', 'Person With Disability (PWD)', 'Core Youth', 'Student', 'Vocational Graduate', 'Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(56, 'Cooper', 'William', 'Julia', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '36', 'Male', 26, '0', 'brett60@yahoo.com', '1', '5', '1998', '577-327-3351', 'Single', 'Out Of School Youth', 'Young Adult', 'Employed', 'College Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(57, 'Coleman', 'Ruth', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '12', 'Female', 29, '0', 'jessica20@rodriguez-lee.com', '3', '21', '1995', '001-422-810-1867x032', 'Married', 'Working Youth', 'Young Adult', 'Self-Employed', 'College Level', 'Not Registered', 'No', '', 'Yes', 5, '0', '3'),
(58, 'Knox', 'Kimberly', 'Dylan', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '44', 'Female', 25, '0', 'samuel14@gmail.com', '2', '27', '1999', '001-002-201-8965', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'High School Level', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(59, 'Arnold', 'Michael', 'Jacqueline', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '40', 'Male', 18, '0', 'jessica77@marshall.org', '8', '18', '2005', '(189)604-3912x5460', 'Single', 'Working Youth', 'Core Youth', 'Self-Employed', 'Master Graduate', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(60, 'Flores', 'Natasha', 'Nathaniel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '82', 'Female', 28, '0', 'allen55@grant.com', '2', '23', '1996', '001-544-939-7623x101', 'Widowed', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'High School Graduate', 'Registered', 'No', '', 'Yes', 4, '0', '3'),
(61, 'Carroll', 'Gabriella', 'Luis', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '41', 'Female', 21, '0', 'keith00@walker-vasquez.com', '11', '26', '2002', '9068773997', 'Widowed', 'Working Youth', 'Core Youth', 'Unemployed', 'College Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(62, 'Wise', 'Craig', 'Yvonne', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '55', 'Female', 15, '0', 'dale32@hotmail.com', '9', '6', '2008', '150.431.1434x4035', 'Divorced', 'Out Of School Youth', 'Child Youth', 'Employed', 'Master Graduate', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(63, 'Evans', 'Luis', 'Brad', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '43', 'Female', 21, '0', 'kyoung@gmail.com', '12', '27', '2002', '001-675-337-7965', 'Widowed', 'Working Youth', 'Core Youth', 'Unemployed', 'Doctorate Level', 'Registered', 'No', '', 'Yes', 5, '0', '3'),
(64, 'Rose', 'Krista', 'James', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '83', 'Male', 20, '0', 'tmorse@daniels-williams.com', '2', '8', '2004', '584-592-6835x8808', 'Widowed', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'Master Graduate', 'Not Registered', 'No', '', 'Yes', 2, '0', '3'),
(65, 'Castro', 'William', 'Samuel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '19', 'Male', 15, '0', 'rochasusan@hotmail.com', '8', '20', '2008', '573-235-6306x758', 'Married', 'In School Youth', 'Child Youth', 'Unemployed', 'Doctorate Level', 'Registered', 'Yes', '', 'Yes', 2, '0', '3'),
(66, 'Love', 'Melissa', 'Paul', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '33', 'Male', 27, '0', 'zbray@yahoo.com', '10', '1', '1996', '-2228', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Currently looking for job', 'College Level', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(67, 'Ross', 'Nicholas', 'Steven', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '40', 'Male', 25, '0', 'vjohnson@sellers.com', '10', '31', '1998', '794-701-6076', 'Married', 'Out Of School Youth', 'Young Adult', 'Employed', 'Elementary Level', 'Registered', 'No', '', 'Yes', 4, '0', '3'),
(68, 'Johnson', 'Joyce', 'Jamie', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '77', 'Female', 23, '0', 'williamsstephanie@cortez.com', '6', '15', '2001', '688-708-4427', 'Widowed', 'In School Youth', 'Core Youth', 'Employed', 'High School Level', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(69, 'Heath', 'Ryan', 'Michelle', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '28', 'Male', 27, '0', 'warellano@hotmail.com', '4', '9', '1997', '001-585-360-8261x033', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'College Graduate', 'Not Registered', 'No', '', 'Yes', 3, '0', '3'),
(70, 'King', 'Michelle', 'Sarah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '52', 'Male', 28, '0', 'anna39@hotmail.com', '3', '15', '1996', '7406195691', 'Widowed', 'In School Youth', 'Young Adult', 'Employed', 'Elementary Graduate', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(71, 'Sweeney', 'Mark', 'Kelly', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '60', 'Female', 23, '0', 'xhayes@yahoo.com', '1', '13', '2001', '415.882.1459', 'Widowed', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'High School Graduate', 'Not Registered', 'Yes', '', 'Yes', 5, '0', '3'),
(72, 'Baker', 'Scott', 'Christopher', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '50', 'Female', 17, '0', 'joneill@byrd.info', '10', '6', '2006', '(236)792-9138', 'Married', 'In School Youth', 'Core Youth', 'Student', 'High School Level', 'Not Registered', 'No', '', 'Yes', 3, '0', '3'),
(73, 'Leonard', 'John', 'Juan', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '3', 'Male', 21, '0', 'edwinconner@gmail.com', '2', '24', '2003', '(745)667-7755x342', 'Divorced', 'Person With Disability (PWD)', 'Core Youth', 'Student', 'Elementary Graduate', 'Not Registered', 'Yes', '', 'Yes', 5, '0', '3'),
(74, 'Woodward', 'William', 'James', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '39', 'Male', 20, '0', 'mariafoster@acosta.net', '6', '12', '2004', '001-873-704-9011x863', 'Widowed', 'Working Youth', 'Core Youth', 'Employed', 'College Graduate', 'Registered', 'No', '', 'No', 0, '0', '3'),
(75, 'Gates', 'Laura', 'Scott', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '43', 'Male', 17, '0', 'wjones@murphy-davis.net', '11', '28', '2006', '(862)742-3789', 'Single', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(76, 'Jacobs', 'Kyle', 'Connor', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '29', 'Female', 21, '0', 'ebradley@hotmail.com', '5', '7', '2003', '101-595-1566x267', 'Married', 'Working Youth', 'Core Youth', 'Self-Employed', 'High School Graduate', 'Not Registered', 'No', '', 'Yes', 1, '0', '3'),
(77, 'Hart', 'Samuel', 'Elizabeth', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '34', 'Female', 25, '0', 'larsonkelly@wolf.com', '4', '14', '1999', '832.434.7911x08551', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(78, 'Jones', 'Timothy', 'Daniel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '78', 'Male', 29, '0', 'paulluna@hancock-henderson.org', '1', '24', '1995', '394.792.3880', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'High School Level', 'Registered', 'No', '', 'No', 0, '0', '3'),
(79, 'Melendez', 'Katherine', 'Gregory', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '57', 'Female', 29, '0', 'ricardo13@gmail.com', '4', '22', '1995', '811-598-2327', 'Widowed', 'Working Youth', 'Young Adult', 'Student', 'High School Graduate', 'Not Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(80, 'Wood', 'Christina', 'Andrew', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '66', 'Male', 26, '0', 'christopherperez@white.com', '3', '11', '1998', '491-621-9327', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'College Graduate', 'Not Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(81, 'Moore', 'Willie', 'William', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '31', 'Male', 29, '0', 'jeremyhenry@thompson-paul.com', '8', '2', '1994', '001-848-456-0386x550', 'Single', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Master Graduate', 'Registered', 'No', '', 'No', 0, '0', '3'),
(82, 'Myers', 'Melissa', 'Daniel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '85', 'Male', 29, '0', 'ribarra@hotmail.com', '4', '24', '1995', '+1-367-196-0117x9726', 'Widowed', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'Doctorate Level', 'Registered', 'No', '', 'No', 0, '0', '3'),
(83, 'Thompson', 'Monica', 'Autumn', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '13', 'Female', 17, '0', 'ginadavis@gmail.com', '2', '6', '2007', '-11080', 'Widowed', 'Working Youth', 'Child Youth', 'Self-Employed', 'Vocational Graduate', 'Not Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(84, 'Montoya', 'Brian', 'Sean', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '30', 'Female', 24, '0', 'jordan10@gmail.com', '9', '22', '1999', '(790)250-8254x726', 'Single', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Vocational Graduate', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(85, 'Cruz', 'Alicia', 'Carl', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '54', 'Female', 27, '0', 'arobinson@neal.com', '9', '5', '1996', '789.000.0142', 'Single', 'Working Youth', 'Young Adult', 'Self-Employed', 'Master Graduate', 'Not Registered', 'No', '', 'Yes', 3, '0', '3'),
(86, 'Turner', 'Elizabeth', 'Lisa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '99', 'Female', 26, '0', 'ystone@yahoo.com', '8', '27', '1997', '9102675261', 'Widowed', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'College Level', 'Registered', 'No', '', 'Yes', 1, '0', '3'),
(87, 'Brock', 'Denise', 'Kristin', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '91', 'Male', 23, '0', 'grossjason@brown.com', '5', '13', '2001', '573.687.4641', 'Widowed', 'Working Youth', 'Core Youth', 'Employed', 'Elementary Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(88, 'Carlson', 'Jennifer', 'Laura', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '11', 'Female', 20, '0', 'karenellis@hayes.com', '5', '27', '2004', '+1-692-640-2387x027', 'Divorced', 'Working Youth', 'Core Youth', 'Student', 'College Graduate', 'Registered', 'No', '', 'Yes', 1, '0', '3'),
(89, 'King', 'Sean', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '22', 'Female', 23, '0', 'ann49@marshall-jensen.info', '1', '17', '2001', '001-894-455-2146x490', 'Married', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'Elementary Graduate', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(90, 'Kennedy', 'April', 'Priscilla', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '15', 'Female', 21, '0', 'cardenasaaron@gmail.com', '1', '28', '2003', '914.439.2469x2991', 'Divorced', 'Person With Disability (PWD)', 'Core Youth', 'Self-Employed', 'Master Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(91, 'Sherman', 'Danny', 'Jamie', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '67', 'Male', 26, '0', 'fmann@molina.biz', '5', '7', '1998', '791-684-7596', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'Yes', '', 'Yes', 1, '0', '3'),
(92, 'Pennington', 'Barbara', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '58', 'Female', 24, '0', 'millerjesse@yahoo.com', '9', '24', '1999', '(711)523-0265x09655', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(93, 'Vazquez', 'Nicholas', 'Glen', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '58', 'Male', 16, '0', 'susanharris@hotmail.com', '8', '23', '2007', '9180104237', 'Married', 'Out Of School Youth', 'Child Youth', 'Unemployed', 'Master Level', 'Not Registered', 'No', '', 'Yes', 1, '0', '3'),
(94, 'Rodriguez', 'Thomas', 'Taylor', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '53', 'Male', 24, '0', 'michealnunez@martin-diaz.biz', '6', '30', '2000', '(711)818-6535', 'Divorced', 'In School Youth', 'Core Youth', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', '', 'No', 0, '0', '3'),
(95, 'Johnson', 'Alejandro', 'Charlotte', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '12', 'Female', 30, '0', 'christopher72@anderson.com', '1', '2', '1994', '001-357-617-1677x661', 'Married', 'Working Youth', 'Young Adult', 'Unemployed', 'Master Level', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(96, 'Krause', 'Rachel', 'Madison', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '2', 'Male', 25, '0', 'sosaalexa@bridges.biz', '9', '15', '1998', '+1-253-498-1232x890', 'Married', 'Working Youth', 'Young Adult', 'Student', 'College Level', 'Registered', 'No', '', 'No', 0, '0', '3'),
(97, 'Harris', 'Ashley', 'Melanie', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '98', 'Male', 29, '0', 'gmcfarland@mills.com', '1', '18', '1995', '001-707-131-2042', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'Master Graduate', 'Not Registered', 'Yes', '', 'No', 0, '0', '3'),
(98, 'Snyder', 'Katherine', 'Tara', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '5', 'Female', 23, '0', 'zchen@yahoo.com', '5', '9', '2001', '626-886-4072', 'Single', 'In School Youth', 'Core Youth', 'Employed', 'Vocational Graduate', 'Not Registered', 'Yes', '', 'Yes', 3, '0', '3'),
(99, 'Martinez', 'Ronald', 'William', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '24', 'Male', 19, '0', 'johnbrown@gmail.com', '11', '13', '2004', '778.066.0439x50263', 'Married', 'Out Of School Youth', 'Core Youth', 'Employed', 'Elementary Level', 'Registered', 'No', '', 'Yes', 3, '0', '3'),
(100, 'Mitchell', 'Melissa', 'Sheila', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '83', 'Male', 20, '0', 'chase05@hotmail.com', '8', '10', '2003', '001-040-681-1958x882', 'Divorced', 'Out Of School Youth', 'Core Youth', 'Self-Employed', 'Elementary Level', 'Registered', 'Yes', '', 'No', 0, '0', '3'),
(101, 'Williams', 'James', 'Carla', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', 'a', '1', '17', 'Male', 24, '0', 'john80@hotmail.com', '1', '10', '2000', '+1-124-538-3865x5254', 'Divorced', 'Working Youth', 'Core Youth', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'No', 'No', 'No', 0, '0', '3');

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
(11, 'Scott', 'Bonnie', 'Shannon', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', 'cfgh', '8', '34', 'Female', 34, '0', 'hward@york-martin.org', '4', '28', '1990', '5345590189', 'Single', 'Working Youth', 'Young Adult', 'Currently looking for job', 'Vocational Graduate', 'Not Registered', 'Yes', 'No', 'Yes', 4, '0', '3');

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
(1, 'Williams', 'James', 'Carla', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', 'a', '1', '17', 'Male', 18, '0', 'john80@hotmail.com', '1', '10', '2006', '+1-124-538-3865x5254', 'Divorced', 'Working Youth', 'Core Youth', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(2, 'Jones', 'Margaret', 'Robert', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '17', 'Male', 28, '0', 'victoria82@brown.com', '12', '14', '1996', '(156)428-4910x043', 'Divorced', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Vocational Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '17'),
(3, 'Kim', 'Katie', 'Yolanda', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '12', 'Male', 25, '0', 'mooreleslie@schmitt-jimenez.biz', '9', '24', '1999', '423-227-9171x50653', 'Single', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'High School Level', 'Registered', 'Yes', 0, 'No', 0, '0', '17'),
(4, 'Henderson', 'Johnathan', 'Charlene', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '4', 'Male', 23, '0', 'rebeccabernard@ramirez.com', '4', '3', '2001', '396-800-7727x9648', 'Single', 'Working Youth', 'Core Youth', 'Employed', 'Vocational Graduate', 'Not Registered', 'No', 0, 'No', 0, '0', '17'),
(5, 'Perez', 'Ricardo', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '62', 'Male', 21, '0', 'higginseugene@bautista-jones.net', '12', '20', '2003', '(234)602-5521x659', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'Elementary Graduate', 'Registered', 'No', 0, 'Yes', 2, '0', '17'),
(6, 'Holder', 'Eric', 'Joanna', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '98', 'Male', 22, '0', 'vterry@jones.com', '1', '24', '2002', '001-504-632-5612x996', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Student', 'College Graduate', 'Registered', 'No', 0, 'Yes', 5, '0', '17'),
(7, 'Marshall', 'Gary', 'Martin', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '49', 'Female', 19, '0', 'carpenterjoseph@yahoo.com', '10', '18', '2005', '233.586.8603', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Employed', 'College Graduate', 'Registered', 'No', 0, 'Yes', 2, '0', '3'),
(8, 'Jones', 'Brandon', 'Sarah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '46', 'Female', 28, '0', 'williampatton@chavez.com', '11', '9', '1996', '987.173.6228', 'Married', 'Person With Disability (PWD)', 'Young Adult', 'Student', 'Master Graduate', 'Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(9, 'Maynard', 'Erica', 'Joshua', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '57', 'Male', 16, '0', 'kathleen87@hotmail.com', '2', '5', '2008', '973.553.4509x39552', 'Single', 'Person With Disability (PWD)', 'Child Youth', 'Student', 'Elementary Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(10, 'Scott', 'Bonnie', 'Shannon', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '34', 'Female', 25, '0', 'hward@york-martin.org', '4', '28', '1999', '5345590189', 'Single', 'Working Youth', 'Young Adult', 'Currently looking for job', 'Vocational Graduate', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(11, 'Long', 'Martin', 'Mark', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '57', 'Female', 19, '0', 'sheliamccullough@king.biz', '10', '13', '2005', '-4759', 'Divorced', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'College Graduate', 'Not Registered', 'No', 0, 'Yes', 3, '0', '3'),
(12, 'Lam', 'Tonya', 'Michelle', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '98', 'Female', 28, '0', 'brandon38@yahoo.com', '1', '26', '1996', '179-115-9857x40867', 'Married', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'College Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(13, 'Martinez', 'Blake', 'Deborah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '78', 'Male', 20, '0', 'christine91@gardner.com', '4', '14', '2004', '001-817-755-9015x375', 'Married', 'Working Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(14, 'Martinez', 'Peggy', 'Bradley', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '14', 'Male', 15, '0', 'griffinthomas@carter-gibson.com', '6', '25', '2009', '001-927-602-7872x840', 'Divorced', 'Out Of School Youth', 'Child Youth', 'Employed', 'College Graduate', 'Not Registered', 'Yes', 0, 'Yes', 2, '0', '3'),
(15, 'Little', 'Erin', 'Tonya', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '8', 'Male', 22, '0', 'ronaldtrevino@hill.com', '11', '5', '2002', '001-539-497-6149x106', 'Divorced', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(16, 'Cunningham', 'Taylor', 'Timothy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '9', 'Female', 27, '0', 'xgeorge@webb-smith.com', '10', '15', '1997', '731-430-1687', 'Widowed', 'Working Youth', 'Young Adult', 'Unemployed', 'High School Graduate', 'Registered', 'No', 0, 'Yes', 4, '0', '3'),
(17, 'Anderson', 'Michael', 'Tina', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '70', 'Female', 25, '0', 'wnguyen@hotmail.com', '6', '16', '1999', '+1-845-094-9996x0250', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Master Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(18, 'Diaz', 'Bradley', 'Raymond', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '96', 'Male', 24, '0', 'freemanryan@johnson.com', '5', '20', '2000', '(710)866-6768x340', 'Divorced', 'Working Youth', 'Core Youth', 'Employed', 'Master Level', 'Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(19, 'Blevins', 'Jamie', 'Samantha', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '93', 'Female', 23, '0', 'heatherlane@yahoo.com', '9', '12', '2001', '3490453794', 'Widowed', 'Out Of School Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(20, 'Murillo', 'Mary', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '37', 'Male', 24, '0', 'xhorton@hotmail.com', '7', '6', '2000', '582.634.8896x7999', 'Widowed', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(21, 'Medina', 'Lawrence', 'Danielle', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '22', 'Female', 29, '0', 'jasongutierrez@trevino.com', '2', '12', '1995', '157-565-8649x90361', 'Single', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'Master Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(22, 'Hart', 'Valerie', 'Matthew', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '14', 'Female', 18, '0', 'bryanmorgan@wilson-richardson.com', '8', '31', '2006', '610.092.0950x7554', 'Married', 'Out Of School Youth', 'Core Youth', 'Student', 'Elementary Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(23, 'Wright', 'Laura', 'Brianna', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '70', 'Male', 24, '0', 'bjohnson@yahoo.com', '5', '20', '2000', '(441)425-6698x97435', 'Married', 'Out Of School Youth', 'Core Youth', 'Student', 'High School Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(24, 'Meyer', 'Keith', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '90', 'Male', 28, '0', 'kevinspencer@hotmail.com', '3', '20', '1996', '(972)179-2085x949', 'Widowed', 'In School Youth', 'Young Adult', 'Student', 'High School Level', 'Not Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(25, 'Kelly', 'Linda', 'Vanessa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '11', 'Female', 24, '0', 'floresrenee@acosta.org', '11', '25', '2000', '001-097-730-2044x834', 'Single', 'In School Youth', 'Core Youth', 'Employed', 'College Level', 'Registered', 'Yes', 0, 'Yes', 1, '0', '3'),
(26, 'Diaz', 'Beth', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '79', 'Female', 28, '0', 'pamelathornton@shaw.com', '1', '12', '1996', '001-252-283-9786x962', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Student', 'High School Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(27, 'Sullivan', 'Toni', 'Jay', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '36', 'Male', 23, '0', 'davidpayne@dixon-reyes.info', '2', '18', '2001', '911.166.1790', 'Married', 'In School Youth', 'Core Youth', 'Student', 'Elementary Graduate', 'Not Registered', 'No', 0, 'Yes', 1, '0', '3'),
(28, 'Ponce', 'Sara', 'Sarah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '61', 'Male', 15, '0', 'nnicholson@hawkins.com', '1', '10', '2009', '596-749-8710', 'Widowed', 'Person With Disability (PWD)', 'Child Youth', 'Currently looking for job', 'College Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(29, 'Stout', 'Sarah', 'Kristy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '78', 'Male', 25, '0', 'morandarlene@hotmail.com', '6', '19', '1999', '001-470-538-3778x352', 'Single', 'In School Youth', 'Young Adult', 'Student', 'Master Graduate', 'Not Registered', 'No', 0, 'Yes', 4, '0', '3'),
(30, 'Jones', 'Andrew', 'James', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '81', 'Female', 25, '0', 'foxbruce@gmail.com', '3', '27', '1999', '225.656.5708', 'Single', 'Person With Disability (PWD)', 'Young Adult', 'Employed', 'Master Level', 'Not Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(31, 'Ramirez', 'Patricia', 'Brandon', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '45', 'Male', 30, '0', 'tracy74@gmail.com', '1', '2', '1994', '997.652.6140x893', 'Divorced', 'In School Youth', 'Young Adult', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(32, 'Evans', 'Brandy', 'Lindsey', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '31', 'Male', 22, '0', 'zpaul@gmail.com', '9', '22', '2002', '925.563.8156', 'Married', 'Person With Disability (PWD)', 'Core Youth', 'Currently looking for job', 'Master Level', 'Registered', 'No', 0, 'Yes', 3, '0', '3'),
(33, 'Higgins', 'Jason', 'Curtis', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '49', 'Male', 28, '0', 'nmendoza@schneider.info', '10', '12', '1996', '+1-685-948-5839x5006', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Self-Employed', 'Vocational Graduate', 'Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(34, 'Smith', 'Julia', 'Jessica', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '72', 'Male', 15, '0', 'ryananderson@hotmail.com', '6', '11', '2009', '2587170106', 'Married', 'Working Youth', 'Child Youth', 'Unemployed', 'Elementary Graduate', 'Registered', 'No', 0, 'Yes', 5, '0', '3'),
(35, 'Hernandez', 'Maria', 'Kelly', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '67', 'Female', 18, '0', 'ellenwilliams@yahoo.com', '3', '20', '2006', '789-601-6091', 'Divorced', 'In School Youth', 'Core Youth', 'Currently looking for job', 'High School Graduate', 'Not Registered', 'No', 0, 'Yes', 3, '0', '3'),
(36, 'Frank', 'Edward', 'Karen', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '96', 'Female', 16, '0', 'schmidtmelissa@rogers-riggs.com', '7', '6', '2008', '748.461.0796x530', 'Married', 'Person With Disability (PWD)', 'Child Youth', 'Self-Employed', 'High School Level', 'Registered', 'No', 0, 'Yes', 2, '0', '3'),
(37, 'Hunt', 'Claudia', 'Michael', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '8', 'Female', 23, '0', 'ashley83@hotmail.com', '5', '8', '2001', '001-614-148-8905', 'Single', 'Working Youth', 'Core Youth', 'Unemployed', 'High School Level', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(38, 'Smith', 'Amy', 'William', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '8', 'Male', 25, '0', 'peter03@schmidt.com', '11', '28', '1999', '888-100-1822', 'Single', 'Working Youth', 'Young Adult', 'Employed', 'College Level', 'Registered', 'No', 0, 'Yes', 2, '0', '3'),
(39, 'Murphy', 'Tina', 'Keith', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '61', 'Female', 16, '0', 'norrisnancy@gmail.com', '1', '8', '2008', '001-905-802-4467x149', 'Widowed', 'Person With Disability (PWD)', 'Child Youth', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(40, 'Taylor', 'Mark', 'Angelica', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '64', 'Male', 30, '0', 'abrooks@hotmail.com', '11', '12', '1994', '(903)449-3825x659', 'Married', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(41, 'Mendoza', 'Tracy', 'Glenn', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '99', 'Female', 21, '0', 'marygeorge@yahoo.com', '5', '30', '2003', '-6764', 'Single', 'Working Youth', 'Core Youth', 'Student', 'Elementary Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(42, 'Green', 'Katie', 'Gary', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '62', 'Female', 29, '0', 'ryanlarsen@hotmail.com', '11', '2', '1995', '8967372437', 'Married', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'College Graduate', 'Registered', 'No', 0, 'Yes', 4, '0', '3'),
(43, 'Brown', 'Michelle', 'Chelsea', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '47', 'Female', 23, '0', 'moorelori@marshall-gomez.com', '6', '4', '2001', '001-550-911-4974x815', 'Married', 'In School Youth', 'Core Youth', 'Employed', 'Elementary Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(44, 'Ashley', 'Stephanie', 'Jeremy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '45', 'Male', 30, '0', 'slee@yahoo.com', '6', '19', '1994', '-5901', 'Married', 'Out Of School Youth', 'Young Adult', 'Unemployed', 'Doctorate Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(45, 'Beck', 'Chad', 'Jeremy', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '62', 'Female', 22, '0', 'cgoodman@yahoo.com', '9', '3', '2002', '+1-169-444-4817x1516', 'Single', 'In School Youth', 'Core Youth', 'Unemployed', 'Vocational Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(46, 'Garcia', 'Megan', 'Richard', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '14', 'Female', 19, '0', 'toniduncan@james.com', '7', '20', '2005', '+1-936-886-9980x4738', 'Single', 'Working Youth', 'Core Youth', 'Self-Employed', 'Master Graduate', 'Registered', 'Yes', 0, 'Yes', 2, '0', '3'),
(47, 'Schroeder', 'Jeff', 'Kevin', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '2', 'Female', 22, '0', 'chad47@yahoo.com', '8', '14', '2002', '131-528-7720x35977', 'Single', 'Person With Disability (PWD)', 'Core Youth', 'Currently looking for job', 'Elementary Graduate', 'Not Registered', 'No', 0, 'Yes', 1, '0', '3'),
(48, 'Porter', 'Donna', 'Eric', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '26', 'Female', 18, '0', 'angelalambert@yahoo.com', '9', '21', '2006', '061-036-1295x8853', 'Widowed', 'Working Youth', 'Core Youth', 'Currently looking for job', 'Doctorate Level', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(49, 'Briggs', 'Richard', 'Lisa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '81', 'Male', 27, '0', 'gshelton@williams.org', '1', '31', '1997', '6575159976', 'Married', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'Master Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(50, 'Young', 'Sierra', 'Wyatt', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '40', 'Male', 17, '0', 'dray@hotmail.com', '7', '13', '2007', '(579)962-5007x7872', 'Married', 'Out Of School Youth', 'Child Youth', 'Student', 'High School Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(51, 'Estrada', 'Jacqueline', 'Theresa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '7', 'Female', 26, '0', 'hugheslauren@mejia.com', '9', '14', '1998', '+1-216-252-9218x800', 'Widowed', 'Working Youth', 'Young Adult', 'Currently looking for job', 'Master Graduate', 'Not Registered', 'Yes', 0, 'Yes', 4, '0', '3'),
(52, 'Henderson', 'Kathleen', 'Ellen', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '40', 'Female', 19, '0', 'twarren@gmail.com', '12', '27', '2005', '132.225.5391', 'Widowed', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Vocational Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(53, 'Sherman', 'Rebecca', 'Oscar', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '95', 'Male', 22, '0', 'wsmith@fry.info', '3', '14', '2002', '-7763', 'Married', 'Out Of School Youth', 'Core Youth', 'Employed', 'College Level', 'Registered', 'Yes', 0, 'Yes', 2, '0', '3'),
(54, 'Perez', 'Heather', 'Amanda', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '6', 'Female', 23, '0', 'etaylor@sparks.com', '6', '26', '2001', '-4929', 'Divorced', 'In School Youth', 'Core Youth', 'Self-Employed', 'College Level', 'Not Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(55, 'Adams', 'Debbie', 'Antonio', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '63', 'Male', 19, '0', 'joseph42@holland.net', '10', '21', '2005', '-7698', 'Married', 'Person With Disability (PWD)', 'Core Youth', 'Student', 'Vocational Graduate', 'Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(56, 'Cooper', 'William', 'Julia', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '36', 'Male', 26, '0', 'brett60@yahoo.com', '1', '5', '1998', '577-327-3351', 'Single', 'Out Of School Youth', 'Young Adult', 'Employed', 'College Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(57, 'Coleman', 'Ruth', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '12', 'Female', 29, '0', 'jessica20@rodriguez-lee.com', '3', '21', '1995', '001-422-810-1867x032', 'Married', 'Working Youth', 'Young Adult', 'Self-Employed', 'College Level', 'Not Registered', 'No', 0, 'Yes', 5, '0', '3'),
(58, 'Knox', 'Kimberly', 'Dylan', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '44', 'Female', 25, '0', 'samuel14@gmail.com', '2', '27', '1999', '001-002-201-8965', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'High School Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(59, 'Arnold', 'Michael', 'Jacqueline', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '40', 'Male', 19, '0', 'jessica77@marshall.org', '8', '18', '2005', '(189)604-3912x5460', 'Single', 'Working Youth', 'Core Youth', 'Self-Employed', 'Master Graduate', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(60, 'Flores', 'Natasha', 'Nathaniel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '82', 'Female', 28, '0', 'allen55@grant.com', '2', '23', '1996', '001-544-939-7623x101', 'Widowed', 'Person With Disability (PWD)', 'Young Adult', 'Unemployed', 'High School Graduate', 'Registered', 'No', 0, 'Yes', 4, '0', '3'),
(61, 'Carroll', 'Gabriella', 'Luis', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '41', 'Female', 22, '0', 'keith00@walker-vasquez.com', '11', '26', '2002', '9068773997', 'Widowed', 'Working Youth', 'Core Youth', 'Unemployed', 'College Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(62, 'Wise', 'Craig', 'Yvonne', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '55', 'Female', 16, '0', 'dale32@hotmail.com', '9', '6', '2008', '150.431.1434x4035', 'Divorced', 'Out Of School Youth', 'Child Youth', 'Employed', 'Master Graduate', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(63, 'Evans', 'Luis', 'Brad', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '43', 'Female', 22, '0', 'kyoung@gmail.com', '12', '27', '2002', '001-675-337-7965', 'Widowed', 'Working Youth', 'Core Youth', 'Unemployed', 'Doctorate Level', 'Registered', 'No', 0, 'Yes', 5, '0', '3'),
(64, 'Rose', 'Krista', 'James', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '83', 'Male', 20, '0', 'tmorse@daniels-williams.com', '2', '8', '2004', '584-592-6835x8808', 'Widowed', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'Master Graduate', 'Not Registered', 'No', 0, 'Yes', 2, '0', '3'),
(65, 'Castro', 'William', 'Samuel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '19', 'Male', 16, '0', 'rochasusan@hotmail.com', '8', '20', '2008', '573-235-6306x758', 'Married', 'In School Youth', 'Child Youth', 'Unemployed', 'Doctorate Level', 'Registered', 'Yes', 0, 'Yes', 2, '0', '3'),
(66, 'Love', 'Melissa', 'Paul', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '33', 'Male', 28, '0', 'zbray@yahoo.com', '10', '1', '1996', '-2228', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Currently looking for job', 'College Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(67, 'Ross', 'Nicholas', 'Steven', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '40', 'Male', 26, '0', 'vjohnson@sellers.com', '10', '31', '1998', '794-701-6076', 'Married', 'Out Of School Youth', 'Young Adult', 'Employed', 'Elementary Level', 'Registered', 'No', 0, 'Yes', 4, '0', '3'),
(68, 'Johnson', 'Joyce', 'Jamie', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '77', 'Female', 23, '0', 'williamsstephanie@cortez.com', '6', '15', '2001', '688-708-4427', 'Widowed', 'In School Youth', 'Core Youth', 'Employed', 'High School Level', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(69, 'Heath', 'Ryan', 'Michelle', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '28', 'Male', 27, '0', 'warellano@hotmail.com', '4', '9', '1997', '001-585-360-8261x033', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'College Graduate', 'Not Registered', 'No', 0, 'Yes', 3, '0', '3'),
(70, 'King', 'Michelle', 'Sarah', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '52', 'Male', 28, '0', 'anna39@hotmail.com', '3', '15', '1996', '7406195691', 'Widowed', 'In School Youth', 'Young Adult', 'Employed', 'Elementary Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(71, 'Sweeney', 'Mark', 'Kelly', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '60', 'Female', 23, '0', 'xhayes@yahoo.com', '1', '13', '2001', '415.882.1459', 'Widowed', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'High School Graduate', 'Not Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(72, 'Baker', 'Scott', 'Christopher', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '50', 'Female', 18, '0', 'joneill@byrd.info', '10', '6', '2006', '(236)792-9138', 'Married', 'In School Youth', 'Core Youth', 'Student', 'High School Level', 'Not Registered', 'No', 0, 'Yes', 3, '0', '3'),
(73, 'Leonard', 'John', 'Juan', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '3', 'Male', 21, '0', 'edwinconner@gmail.com', '2', '24', '2003', '(745)667-7755x342', 'Divorced', 'Person With Disability (PWD)', 'Core Youth', 'Student', 'Elementary Graduate', 'Not Registered', 'Yes', 0, 'Yes', 5, '0', '3'),
(74, 'Woodward', 'William', 'James', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '39', 'Male', 20, '0', 'mariafoster@acosta.net', '6', '12', '2004', '001-873-704-9011x863', 'Widowed', 'Working Youth', 'Core Youth', 'Employed', 'College Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(75, 'Gates', 'Laura', 'Scott', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '43', 'Male', 18, '0', 'wjones@murphy-davis.net', '11', '28', '2006', '(862)742-3789', 'Single', 'In School Youth', 'Core Youth', 'Currently looking for job', 'Elementary Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(76, 'Jacobs', 'Kyle', 'Connor', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '29', 'Female', 21, '0', 'ebradley@hotmail.com', '5', '7', '2003', '101-595-1566x267', 'Married', 'Working Youth', 'Core Youth', 'Self-Employed', 'High School Graduate', 'Not Registered', 'No', 0, 'Yes', 1, '0', '3'),
(77, 'Hart', 'Samuel', 'Elizabeth', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '34', 'Female', 25, '0', 'larsonkelly@wolf.com', '4', '14', '1999', '832.434.7911x08551', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(78, 'Jones', 'Timothy', 'Daniel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '78', 'Male', 29, '0', 'paulluna@hancock-henderson.org', '1', '24', '1995', '394.792.3880', 'Divorced', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'High School Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(79, 'Melendez', 'Katherine', 'Gregory', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '9', '57', 'Female', 29, '0', 'ricardo13@gmail.com', '4', '22', '1995', '811-598-2327', 'Widowed', 'Working Youth', 'Young Adult', 'Student', 'High School Graduate', 'Not Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(80, 'Wood', 'Christina', 'Andrew', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '66', 'Male', 26, '0', 'christopherperez@white.com', '3', '11', '1998', '491-621-9327', 'Widowed', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'College Graduate', 'Not Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(81, 'Moore', 'Willie', 'William', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '31', 'Male', 30, '0', 'jeremyhenry@thompson-paul.com', '8', '2', '1994', '001-848-456-0386x550', 'Single', 'Out Of School Youth', 'Young Adult', 'Currently looking for job', 'Master Graduate', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(82, 'Myers', 'Melissa', 'Daniel', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '85', 'Male', 29, '0', 'ribarra@hotmail.com', '4', '24', '1995', '+1-367-196-0117x9726', 'Widowed', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'Doctorate Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(83, 'Thompson', 'Monica', 'Autumn', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '13', 'Female', 17, '0', 'ginadavis@gmail.com', '2', '6', '2007', '-11080', 'Widowed', 'Working Youth', 'Child Youth', 'Self-Employed', 'Vocational Graduate', 'Not Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(84, 'Montoya', 'Brian', 'Sean', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '30', 'Female', 25, '0', 'jordan10@gmail.com', '9', '22', '1999', '(790)250-8254x726', 'Single', 'In School Youth', 'Young Adult', 'Currently looking for job', 'Vocational Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(85, 'Cruz', 'Alicia', 'Carl', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '54', 'Female', 28, '0', 'arobinson@neal.com', '9', '5', '1996', '789.000.0142', 'Single', 'Working Youth', 'Young Adult', 'Self-Employed', 'Master Graduate', 'Not Registered', 'No', 0, 'Yes', 3, '0', '3'),
(86, 'Turner', 'Elizabeth', 'Lisa', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '2', '99', 'Female', 27, '0', 'ystone@yahoo.com', '8', '27', '1997', '9102675261', 'Widowed', 'Person With Disability (PWD)', 'Young Adult', 'Self-Employed', 'College Level', 'Registered', 'No', 0, 'Yes', 1, '0', '3'),
(87, 'Brock', 'Denise', 'Kristin', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '91', 'Male', 23, '0', 'grossjason@brown.com', '5', '13', '2001', '573.687.4641', 'Widowed', 'Working Youth', 'Core Youth', 'Employed', 'Elementary Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(88, 'Carlson', 'Jennifer', 'Laura', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '5', '11', 'Female', 20, '0', 'karenellis@hayes.com', '5', '27', '2004', '+1-692-640-2387x027', 'Divorced', 'Working Youth', 'Core Youth', 'Student', 'College Graduate', 'Registered', 'No', 0, 'Yes', 1, '0', '3'),
(89, 'King', 'Sean', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '22', 'Female', 23, '0', 'ann49@marshall-jensen.info', '1', '17', '2001', '001-894-455-2146x490', 'Married', 'Person With Disability (PWD)', 'Core Youth', 'Unemployed', 'Elementary Graduate', 'Registered', 'Yes', 0, 'No', 0, '0', '3'),
(90, 'Kennedy', 'April', 'Priscilla', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '15', 'Female', 21, '0', 'cardenasaaron@gmail.com', '1', '28', '2003', '914.439.2469x2991', 'Divorced', 'Person With Disability (PWD)', 'Core Youth', 'Self-Employed', 'Master Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(91, 'Sherman', 'Danny', 'Jamie', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '67', 'Male', 26, '0', 'fmann@molina.biz', '5', '7', '1998', '791-684-7596', 'Divorced', 'Out Of School Youth', 'Young Adult', 'Self-Employed', 'Doctorate Level', 'Not Registered', 'Yes', 0, 'Yes', 1, '0', '3'),
(92, 'Pennington', 'Barbara', 'Jennifer', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '4', '58', 'Female', 25, '0', 'millerjesse@yahoo.com', '9', '24', '1999', '(711)523-0265x09655', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'College Graduate', 'Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(93, 'Vazquez', 'Nicholas', 'Glen', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '58', 'Male', 17, '0', 'susanharris@hotmail.com', '8', '23', '2007', '9180104237', 'Married', 'Out Of School Youth', 'Child Youth', 'Unemployed', 'Master Level', 'Not Registered', 'No', 0, 'Yes', 1, '0', '3'),
(94, 'Rodriguez', 'Thomas', 'Taylor', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '3', '53', 'Male', 24, '0', 'michealnunez@martin-diaz.biz', '6', '30', '2000', '(711)818-6535', 'Divorced', 'In School Youth', 'Core Youth', 'Unemployed', 'Elementary Level', 'Not Registered', 'No', 0, 'No', 0, '0', '3'),
(95, 'Johnson', 'Alejandro', 'Charlotte', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '8', '12', 'Female', 30, '0', 'christopher72@anderson.com', '1', '2', '1994', '001-357-617-1677x661', 'Married', 'Working Youth', 'Young Adult', 'Unemployed', 'Master Level', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(96, 'Krause', 'Rachel', 'Madison', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '6', '2', 'Male', 26, '0', 'sosaalexa@bridges.biz', '9', '15', '1998', '+1-253-498-1232x890', 'Married', 'Working Youth', 'Young Adult', 'Student', 'College Level', 'Registered', 'No', 0, 'No', 0, '0', '3'),
(97, 'Harris', 'Ashley', 'Melanie', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '98', 'Male', 29, '0', 'gmcfarland@mills.com', '1', '18', '1995', '001-707-131-2042', 'Divorced', 'Working Youth', 'Young Adult', 'Self-Employed', 'Master Graduate', 'Not Registered', 'Yes', 0, 'No', 0, '0', '3'),
(98, 'Snyder', 'Katherine', 'Tara', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '1', '5', 'Female', 23, '0', 'zchen@yahoo.com', '5', '9', '2001', '626-886-4072', 'Single', 'In School Youth', 'Core Youth', 'Employed', 'Vocational Graduate', 'Not Registered', 'Yes', 0, 'Yes', 3, '0', '3'),
(99, 'Martinez', 'Ronald', 'William', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '7', '24', 'Male', 20, '0', 'johnbrown@gmail.com', '11', '13', '2004', '778.066.0439x50263', 'Married', 'Out Of School Youth', 'Core Youth', 'Employed', 'Elementary Level', 'Registered', 'No', 0, 'Yes', 3, '0', '3'),
(100, 'Mitchell', 'Melissa', 'Sheila', '', 'CAR', 'BEN', 'La Trinidad', 'Tawang', '', '10', '83', 'Male', 21, '0', 'chase05@hotmail.com', '8', '10', '2003', '001-040-681-1958x882', 'Divorced', 'Out Of School Youth', 'Core Youth', 'Self-Employed', 'Elementary Level', 'Registered', 'Yes', 0, 'No', 0, '0', '3');

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
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `barangay`
--
ALTER TABLE `barangay`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `delete_profile`
--
ALTER TABLE `delete_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `profiles_archive`
--
ALTER TABLE `profiles_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
