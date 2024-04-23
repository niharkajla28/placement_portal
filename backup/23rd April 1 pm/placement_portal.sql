-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 10:02 AM
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
-- Database: `placement_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `ad_no` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `admin_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`ad_no`, `username`, `admin_name`) VALUES
(1, 'admin123', 'Nihar');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `b_id` int(11) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `special` varchar(20) NOT NULL,
  `full_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`b_id`, `branch`, `special`, `full_name`) VALUES
(1, 'Computer Science and Engineering', 'CSE', 'Computer Science and Engineering'),
(2, 'Computer Science and Engineering', 'CSIS', 'Computer Science and Information Security'),
(3, 'Chemical Engineering', 'CE', 'Chemical Engineering'),
(4, 'Civil Engineering', 'WRE', 'Water Resource Engineering'),
(5, 'Civil Engineering', 'ENE', 'Environmental Engineering'),
(6, 'Civil Engineering', 'TRE', 'Transportation Engineering'),
(7, 'Civil Engineering', 'SE', 'Structural Engineering'),
(8, 'Civil Engineering', 'DAM', 'Disaster Assessment & Mitigation'),
(9, 'Electrical Engineering', 'PS', 'Power Systems'),
(10, 'Electrical Engineering', 'PED', 'Power Electronics and Drives'),
(11, 'Electrical Engineering', 'PSM', 'Power Systems Management'),
(13, 'Electronics & Communication Engineering', 'VLSI', 'VLSI'),
(14, 'Electronics & Communication Engineering', 'ECE', 'ECE'),
(15, 'Electronics & Communication Engineering', 'WOC', 'Wireless and Optical Communication'),
(16, 'Electronics & Communication Engineering', 'ES', 'Embedded Systems'),
(17, 'Mechanical Engineering', 'THE', 'Thermal Engineering'),
(18, 'Mechanical Engineering', 'DE', 'Design Engineering'),
(19, 'Mechanical Engineering', 'IE', 'Industrial Engineering'),
(20, 'Mechanical Engineering', 'PE', 'Production Engineering'),
(21, 'Metallurgical and Materials Engineering', 'MME', 'Metallurgical and Materials Engineering'),
(22, 'Metallurgical and Materials Engineering', 'ST', 'Steel Technology');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cno` int(11) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `website_link` varchar(500) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `cgpa` varchar(5) DEFAULT NULL,
  `marks_10` varchar(5) DEFAULT NULL,
  `marks_12` varchar(5) DEFAULT NULL,
  `backlogs` varchar(5) DEFAULT NULL,
  `ctc` varchar(20) DEFAULT NULL,
  `offer_type` varchar(50) DEFAULT NULL,
  `stipend` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `ppo` tinyint(1) DEFAULT NULL,
  `active_reg` tinyint(1) NOT NULL,
  `last_date` date DEFAULT NULL,
  `eligible_branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cno`, `company_name`, `website_link`, `profile`, `cgpa`, `marks_10`, `marks_12`, `backlogs`, `ctc`, `offer_type`, `stipend`, `duration`, `location`, `start_date`, `ppo`, `active_reg`, `last_date`, `eligible_branch`) VALUES
(1, 'Thompson, Taylor and Hughes', 'rodriguez.com', 'Full Stack Developer', '7', '56', '69', '7', '26', 'I', '117062', '8', 'North Andrew', 'Aug', 1, 0, '2024-04-09', 'PE,CE,DE,WRE,ECE,VLSI,MME,SE,ENE,CSE,CSIS,ES,WOC,THE'),
(2, 'Martin-Flores', 'mayer.biz', 'Trainee', '5', '54', '54', '3', '15', 'I', '74908', '6', 'Port Michaelfurt', 'July', 0, 0, '2024-04-25', 'WRE,CE,ST,CSE,THE,PE,PS,DE'),
(3, 'Moody, Jones and Barnes', 'holmes-mccarthy.com', 'Software Engineer', '4', '78', '52', '5', '13', 'I', '79268', '9', 'Port Heather', 'May', 0, 0, '2024-04-14', 'CSE,PE,DAM,PED,MME'),
(4, 'Campbell-Lewis', 'yang-miller.net', 'Full Stack Developer', '2', '73', '70', '7', '26', 'P+I', '100839', '4', 'Pattersonchester', 'Jun', 1, 0, '2024-05-02', 'PED,WRE,CSE,ST,THE,TRE,VLSI,PE,CSIS,DAM,SE,ECE,CE,ES'),
(5, 'Wolfe-Anderson', 'jackson.com', 'Trainee', '4', '52', '77', '3', '13', 'P', '78591', '6', 'Lake Kevin', 'Nov', 0, 0, '2024-04-15', 'TRE,WRE,MME'),
(6, 'James, Chapman and Carter', 'ward-horton.net', 'Hardware Eng', '2', '53', '56', '9', '37', 'P', '101042', '4', 'Brownmouth', 'Sep', 0, 0, '2024-04-20', 'PS,TRE,PED,WRE'),
(7, 'Fuentes Inc', 'johnson-dawson.net', 'SDE', '7', '51', '80', '5', '13', 'I', '102698', '8', 'New Sarahstad', 'Feb', 1, 0, '2024-04-25', 'PSM,THE,ES,WRE,PED,TRE,DE,SE,IE,CSE,MME,CE,VLSI,WOC,DAM,PE,PS'),
(8, 'Cooper-Jordan', 'villa.com', 'SDE', '8', '70', '80', '4', '52', 'I', '100798', '6', 'Kennethland', 'Aug', 1, 0, '2024-04-19', 'TRE,PE,DE,PED,THE,PSM,VLSI,ES,MME,PS,CE,SE,WOC,ST,WRE,CSIS,ENE,ECE,DAM,CSE'),
(9, 'Flores, White and Peters', 'long-garcia.com', 'Software Engineer', '3', '50', '54', '3', '53', 'I', '73024', '2', 'East Joshuachester', 'Aug', 0, 0, '2024-04-17', 'ECE'),
(10, 'Keith-Howe', 'frost-cook.org', 'Hardware Eng', '5', '55', '65', '9', '22', 'P', '80452', '2', 'Perkinsview', 'Apr', 0, 0, '2024-04-12', 'MME,PSM,SE,ES,PE,ENE,WOC,PS'),
(11, 'Moore-Kim', 'phillips.net', 'SDE', '8', '56', '51', '6', '21', 'I', '98152', '2', 'Cannonburgh', 'Nov', 0, 0, '2024-04-06', 'WRE,DAM,MME,CSE,PE,TRE,SE,ES,ECE,IE,PED,PS,ST,CE'),
(12, 'Crawford, Young and Myers', 'jones-evans.com', 'SDE', '8', '62', '54', '9', '20', 'P+I', '43342', '2', 'North Anna', 'Feb', 1, 0, '2024-04-04', 'ST,DAM,CSE,IE,PED,TRE,CSIS,DE,CE'),
(13, 'Glover, Robinson and Robertson', 'williams-hicks.com', 'Software Engineer', '2', '56', '63', '7', '18', 'P', '60171', '5', 'East David', 'July', 0, 0, '2024-04-09', 'PE,WRE,MME,DAM,CSE,WOC,SE,ES,VLSI,IE'),
(14, 'Williams, Singh and Anthony', 'weber.info', 'SDE', '8', '71', '66', '9', '27', 'I', '63741', '2', 'West Ravenville', 'Dec', 0, 0, '2024-04-12', 'WOC'),
(15, 'Spears Group', 'barber.com', 'Full Stack Developer', '5', '76', '53', '7', '37', 'I', '76249', '5', 'West Matthewstad', 'Mar', 1, 0, '2024-05-01', 'ST,WRE,ES,PED,VLSI'),
(16, 'Jackson-Pierce', 'lee-mccoy.net', 'DevOps', '3', '73', '61', '3', '34', 'P', '73935', '9', 'Gregburgh', 'Sep', 1, 0, '2024-04-15', 'DAM,PED,PE,VLSI,THE,WOC,PSM,TRE,PS,DE,WRE,IE,SE,CSIS,CSE,ES,ECE,CE'),
(17, 'Clay, Melton and Cohen', 'smith-sutton.org', 'DevOps', '8', '77', '59', '5', '16', 'P+I', '81219', '7', 'North Danielbury', 'May', 0, 0, '2024-04-18', 'ECE,DE,PE,ENE,PED,SE,PS,ES,IE,CE'),
(18, 'Torres, Murphy and Mathews', 'guerra.biz', 'Full Stack Developer', '8', '75', '51', '5', '41', 'P+I', '60659', '5', 'West Paulton', 'Jan', 1, 0, '2024-04-13', 'IE,ES,CE,PED'),
(19, 'Gonzalez-Boyd', 'moore.com', 'Manager', '3', '61', '67', '6', '21', 'P', '89785', '4', 'Dennisside', 'Feb', 0, 0, '2024-04-21', 'CE,ST,SE,PED'),
(20, 'Johnson-Reynolds', 'montgomery.com', 'Full Stack Developer', '3', '63', '79', '6', '44', 'P+I', '65624', '8', 'Lopezborough', 'July', 1, 0, '2024-04-21', 'WRE,IE,PE,ES,VLSI,PS,CSE,DAM,ENE,ECE,DE,PED,PSM,ST,TRE,MME,THE,CSIS,SE,WOC'),
(21, 'Simmons-Fisher', 'abbott.org', 'Software Engineer', '5', '53', '55', '2', '24', 'P+I', '42109', '6', 'North Brenda', 'Feb', 0, 0, '2024-04-23', 'VLSI,ES,CSE,PED,ENE,ECE,TRE,WRE,ST,MME,PS,DAM,SE,WOC,PSM,DE'),
(22, 'Chang, Johnson and Green', 'ryan-duarte.com', 'Full Stack Developer', '4', '62', '54', '7', '14', 'I', '42343', '2', 'New Christopherton', 'Apr', 0, 0, '2024-04-07', 'CE,THE,IE,TRE,ST,DAM,DE,CSIS,CSE,VLSI,WOC'),
(23, 'Manning Inc', 'hammond-snyder.net', 'DevOps', '6', '80', '57', '8', '55', 'I', '59815', '5', 'West Conniemouth', 'Oct', 1, 0, '2024-04-06', 'DAM,ES,MME,PS,THE'),
(24, 'Bennett, King and Murphy', 'white-ryan.net', 'Trainee', '9', '50', '65', '7', '36', 'P+I', '79278', '9', 'Millerside', 'Jun', 0, 0, '2024-04-11', 'PE'),
(25, 'Curtis, Hubbard and Caldwell', 'cruz.com', 'Full Stack Developer', '6', '60', '64', '7', '56', 'P', '70110', '8', 'Costahaven', 'Aug', 0, 1, '2024-04-27', 'CE,TRE,ES,DAM,ST,WOC,IE,CSIS,MME,PS,PE,WRE,DE,ECE,THE,CSE,VLSI,PSM,ENE,SE'),
(26, 'Marsh-Cardenas', 'michael-anthony.biz', 'Software Engineer', '2', '75', '54', '9', '55', 'P', '42225', '4', 'South Courtney', 'Mar', 0, 1, '2024-04-23', 'CE,PED,WRE,SE,ES,THE,ST,ECE,IE,MME,TRE,PS,ENE,CSE,PSM,WOC'),
(27, 'Maldonado-Vazquez', 'duffy.info', 'Manager', '5', '78', '68', '5', '52', 'P', '58084', '7', 'New Christine', 'Aug', 0, 1, '2024-04-23', 'DE,ECE,WRE,CSE,CE,VLSI,SE,MME'),
(28, 'Smith Group', 'turner-moore.com', 'Trainee', '5', '61', '79', '3', '52', 'I', '93046', '5', 'Cameronberg', 'Jun', 1, 0, '2024-04-16', 'PE,MME,SE,PS,ECE,DAM,ENE,PSM,DE,THE'),
(29, 'Hernandez-Pena', 'carter.org', 'SDE', '7', '58', '66', '7', '43', 'P', '87189', '9', 'Whitestad', 'Dec', 1, 0, '2024-04-22', 'ENE,CSE,IE,SE,ECE,PS,ES,PE,CSIS,PED,MME,PSM,THE'),
(30, 'Hays, Patton and Watts', 'khan.com', 'DevOps', '7', '52', '60', '7', '14', 'P+I', '99305', '3', 'East Johnathan', 'Mar', 0, 0, '2024-04-13', 'CSE,SE,PS,CSIS,ES,TRE,ECE,ENE,MME,CE,PSM,WOC,WRE,THE,ST,PE,IE'),
(31, 'Osborne, Mullen and Floyd', 'velasquez.org', 'Hardware Eng', '6', '53', '54', '2', '33', 'P+I', '96950', '3', 'West Summer', 'July', 0, 0, '2024-04-08', 'DAM,PSM,PS,IE,ST'),
(32, 'Stephens and Sons', 'lopez.com', 'Trainee', '9', '61', '77', '5', '54', 'P+I', '56680', '8', 'East Jeffrey', 'Oct', 1, 0, '2024-04-12', 'PE,CSE,CSIS,IE,MME,ST,SE,PED,DAM,THE,DE,ES,WOC,WRE,PS,ECE,PSM,CE,VLSI,ENE'),
(33, 'Phillips-Robertson', 'baker-shaffer.com', 'DevOps', '7', '59', '53', '4', '32', 'I', '45024', '8', 'Garyburgh', 'Sep', 1, 1, '2024-04-28', 'WRE,PE,DE,CE,PED,SE,TRE,THE,ECE,VLSI,WOC,MME,PSM,IE,CSE,DAM'),
(34, 'Riggs, Campos and Fleming', 'frank-herrera.info', 'Full Stack Developer', '9', '56', '55', '4', '53', 'P+I', '91826', '4', 'North Brittany', 'Feb', 1, 0, '2024-04-10', 'WRE,ECE,CE,PSM,CSIS,VLSI,ST,THE,DAM,SE,MME,ENE,PED,IE,DE,PE,ES,CSE'),
(35, 'Clark, Smith and Kelley', 'sanders.com', 'SDE', '2', '65', '62', '5', '30', 'I', '107268', '4', 'Chanville', 'Sep', 1, 0, '2024-04-04', 'PE,CSE,IE,WRE'),
(36, 'Thompson, Wood and Haynes', 'morrison.com', 'DevOps', '8', '77', '70', '5', '51', 'P+I', '81261', '6', 'Crystalchester', 'Sep', 1, 0, '2024-04-06', 'ES,ECE,PED,WOC,DAM,VLSI,CSE,CE,PS'),
(37, 'Stafford Group', 'woodward-curtis.com', 'Manager', '7', '60', '72', '5', '42', 'P+I', '68229', '4', 'Port Michelle', 'July', 0, 0, '2024-04-26', 'TRE,DE,SE,CSIS,PED,CE'),
(38, 'Campbell-Carson', 'dunlap-martin.net', 'Trainee', '3', '51', '57', '7', '36', 'I', '83045', '9', 'Morrisfort', 'Jan', 1, 1, '2024-04-30', 'VLSI,IE,CE,WRE,ES,PE,MME,PED,PSM,WOC,ST,CSIS,ENE,TRE,THE,DAM,PS,DE,SE,ECE'),
(39, 'Jacobs LLC', 'fisher-anderson.com', 'Trainee', '7', '67', '80', '3', '25', 'P+I', '76727', '9', 'New James', 'Sep', 0, 0, '2024-04-19', 'IE,CSE,WRE,DE,DAM,SE,CSIS,THE,MME,PS,ES,WOC,ST,TRE'),
(40, 'Blake LLC', 'harrington.biz', 'DevOps', '7', '58', '51', '9', '44', 'P+I', '46129', '8', 'South Huntershire', 'July', 0, 0, '2024-04-27', 'VLSI,WOC,TRE,DE,ENE,PE,ECE,ES,IE,WRE,THE,PSM,CSE,ST,MME'),
(41, 'Sparks, Webb and Andrews', 'brown.org', 'Trainee', '4', '67', '73', '6', '14', 'P+I', '44448', '6', 'Ricardomouth', 'Oct', 0, 0, '2024-04-13', 'ECE,DE'),
(42, 'Zuniga, Ruiz and Rodriguez', 'rollins.com', 'Trainee', '5', '50', '72', '6', '33', 'I', '84534', '2', 'New Aaronmouth', 'Aug', 0, 1, '2024-04-28', 'PSM,CSIS,THE,VLSI,ES,MME'),
(43, 'Acosta, Butler and Perez', 'scott.com', 'Hardware Eng', '3', '71', '79', '9', '15', 'P', '90601', '8', 'Princemouth', 'Dec', 1, 1, '2024-05-01', 'THE,VLSI,TRE,CSIS,DAM,PSM,MME,ST,DE,PE,PED,CE,WRE,ENE,CSE,ECE,ES'),
(44, 'Delacruz-Smith', 'gilbert.net', 'Trainee', '3', '66', '62', '2', '28', 'P+I', '83206', '6', 'North Anthonyfort', 'Apr', 0, 0, '2024-04-07', 'DAM,THE,ES,PS,WOC,MME,CE,TRE,CSIS,ECE,ENE,PSM,CSE,PED'),
(45, 'Cline, Graham and Miller', 'price-grimes.com', 'Full Stack Developer', '3', '72', '54', '8', '54', 'I', '107792', '4', 'Port Travisberg', 'Feb', 1, 0, '2024-04-06', 'ECE,IE,DAM,PS,MME,WOC,TRE,CSE,SE,PE,DE,ENE,THE,CSIS'),
(46, 'Carlson and Sons', 'avila.com', 'Hardware Eng', '5', '70', '63', '3', '60', 'P+I', '65668', '7', 'Port Jillian', 'Jun', 0, 0, '2024-04-08', 'WRE,ECE,SE'),
(47, 'Wright-Shaw', 'gonzalez.com', 'SDE', '6', '51', '59', '4', '33', 'P+I', '108606', '3', 'Port Michaelfurt', 'Nov', 1, 0, '2024-04-06', 'PS,ES,DE,ECE,PED,WRE,THE,CE,MME,IE,SE'),
(48, 'Nichols-Roberts', 'tapia.com', 'Manager', '5', '64', '66', '9', '35', 'P+I', '85473', '4', 'West Josephstad', 'Nov', 0, 0, '2024-04-19', 'PED,ENE,DAM,PE,DE,SE,PSM,ES,VLSI'),
(49, 'Butler-Cline', 'turner.biz', 'Software Engineer', '5', '75', '57', '6', '40', 'I', '54079', '8', 'New Ellenfurt', 'July', 0, 0, '2024-04-24', 'CE,CSE,PSM,DE'),
(50, 'George Ltd', 'fuentes-larson.com', 'DevOps', '6', '55', '62', '9', '30', 'P', '109659', '4', 'Baileyview', 'Feb', 1, 0, '2024-04-14', 'ES,PE,ST,CE,ECE,TRE,THE,WOC,CSIS,VLSI,CSE,IE,DE,ENE'),
(51, 'Mclaughlin LLC', 'johnson.com', 'Software Engineer', '5', '77', '53', '2', '22', 'P+I', '99946', '4', 'West Michelle', 'Jan', 0, 0, '2024-04-13', 'WOC,CE,VLSI,SE,WRE,PED'),
(52, 'Rios-Brown', 'harris.com', 'Hardware Eng', '6', '74', '70', '5', '60', 'I', '93162', '2', 'South Paul', 'Aug', 1, 0, '2024-04-18', 'CE,ES'),
(53, 'Curtis, Thomas and Meyers', 'mcconnell-palmer.info', 'Trainee', '6', '63', '53', '9', '48', 'P', '95090', '8', 'Joshuaton', 'Jun', 0, 0, '2024-04-07', 'CE,PS,DAM,VLSI'),
(54, 'Andrews PLC', 'thomas.com', 'Software Engineer', '3', '65', '59', '5', '13', 'P+I', '52916', '2', 'Hessfurt', 'Nov', 1, 1, '2024-04-29', 'PED,IE,CSE,ENE,CSIS,ECE,DAM,DE,CE,TRE,PE,PS,WOC,MME,PSM,ST,WRE,ES,SE'),
(55, 'Wilson, Brennan and Bond', 'green.com', 'DevOps', '6', '73', '72', '4', '14', 'P', '70299', '9', 'Ninaport', 'May', 0, 0, '2024-04-05', 'PED,PE,PS,SE,MME,WOC,PSM,CSE,CSIS,THE,ST,CE,ES,IE,ECE,DAM,DE,ENE'),
(56, 'Barber-Gutierrez', 'sanchez.biz', 'Trainee', '8', '73', '65', '2', '39', 'P', '61591', '2', 'Brockport', 'July', 0, 0, '2024-04-04', 'THE'),
(57, 'Thompson LLC', 'matthews.org', 'Full Stack Developer', '5', '79', '67', '4', '18', 'P', '44433', '2', 'East Nataliechester', 'Oct', 0, 1, '2024-04-30', 'ES,ECE,DE,PE,PSM,TRE,WRE,ST,CE,CSIS,VLSI,ENE,SE,PED,PS,THE,WOC,CSE,DAM'),
(58, 'Sellers, Richardson and Ruiz', 'williams.com', 'Manager', '6', '67', '71', '2', '41', 'P', '42871', '7', 'Antonioberg', 'Sep', 1, 0, '2024-04-25', 'PSM,TRE,CE,WRE'),
(59, 'Nguyen and Sons', 'johnson.com', 'Hardware Eng', '7', '56', '76', '7', '35', 'P', '86414', '8', 'Raymondstad', 'May', 0, 0, '2024-04-30', 'PS,PE,MME,DAM,IE,ENE,PED,SE,VLSI,THE,TRE,CE,PSM,ST,ES,CSIS'),
(60, 'Fisher, Miller and Gray', 'clay.com', 'Trainee', '4', '79', '60', '6', '43', 'P+I', '97685', '9', 'Alexisview', 'Dec', 1, 0, '2024-04-10', 'ECE,CSIS,DE,IE,PE,ST,DAM,ENE,TRE,ES'),
(61, 'James, Young and Escobar', 'lindsey-morris.info', 'Trainee', '7', '57', '79', '9', '58', 'P+I', '89906', '7', 'Port Debbie', 'Feb', 1, 0, '2024-04-27', 'IE,THE,MME,PS,SE'),
(62, 'Marquez, Jackson and Romero', 'lee.biz', 'Software Engineer', '3', '65', '69', '4', '36', 'P+I', '79798', '8', 'North Amy', 'Apr', 1, 1, '2024-05-02', 'THE,ECE,WOC,DAM,ES,PSM'),
(63, 'Little PLC', 'whitaker.biz', 'DevOps', '3', '71', '79', '9', '33', 'P+I', '116664', '7', 'New Vanessa', 'Mar', 1, 1, '2024-04-23', 'SE'),
(64, 'Benjamin, Jackson and Shannon', 'morris-roberts.com', 'Hardware Eng', '9', '66', '76', '7', '36', 'P', '78670', '6', 'Erichaven', 'July', 0, 0, '2024-04-04', 'WOC,CSIS,PED,ENE,CE,CSE,ES,TRE'),
(65, 'Collins, Garcia and Smith', 'perez-williams.com', 'Hardware Eng', '6', '67', '50', '9', '49', 'P+I', '53631', '3', 'West Ashley', 'July', 0, 1, '2024-04-30', 'DE,TRE,CE'),
(66, 'Best, Miller and Mills', 'stewart-mercer.org', 'SDE', '6', '63', '51', '6', '57', 'I', '73726', '3', 'East Beth', 'May', 0, 1, '2024-05-02', 'PE,WRE,TRE,CE,PSM,MME,DAM,SE,THE,CSE,IE,WOC'),
(67, 'Cook Inc', 'washington.net', 'DevOps', '4', '64', '54', '9', '23', 'P', '42778', '4', 'New Brianfort', 'Oct', 1, 0, '2024-04-16', 'CE'),
(68, 'Warner, Wheeler and Brady', 'hoffman-mccall.com', 'DevOps', '8', '55', '74', '2', '37', 'P', '66499', '8', 'Port Jillchester', 'Dec', 0, 0, '2024-04-29', 'WRE,PE,IE,ECE,DE'),
(69, 'Valentine Ltd', 'ray-lewis.com', 'Hardware Eng', '9', '61', '75', '7', '23', 'I', '98776', '4', 'Summerstown', 'Dec', 1, 0, '2024-04-11', 'PSM,ECE,ST,CSIS,ES,TRE,MME,VLSI,CSE,ENE,PS,SE,THE,IE,PE,WRE,DE,WOC,DAM'),
(70, 'Daugherty and Sons', 'rollins.biz', 'Hardware Eng', '2', '66', '79', '2', '31', 'P', '84263', '5', 'New Donnaport', 'July', 0, 0, '2024-04-07', 'PE,THE,VLSI'),
(71, 'Smith, Walls and Sanders', 'castro-garcia.net', 'Full Stack Developer', '2', '69', '54', '8', '60', 'I', '119063', '5', 'East Denise', 'Nov', 1, 0, '2024-04-05', 'THE,IE,PS,SE,ENE,TRE,MME,ECE,CSIS,DE,CSE,DAM,CE,WOC'),
(72, 'Moore, Malone and Calhoun', 'martin.com', 'Hardware Eng', '8', '74', '60', '5', '12', 'P', '106766', '7', 'Port Christina', 'Dec', 1, 1, '2024-04-23', 'PSM,SE,DAM,ECE,CSE,CE,IE,ST,THE,DE,ENE,MME,CSIS,PE,TRE'),
(73, 'Morgan-Moore', 'hawkins.com', 'Trainee', '8', '52', '70', '7', '9', 'I', '66630', '7', 'Port Ashley', 'Apr', 0, 0, '2024-04-04', 'CSIS,IE,CE,DAM,ES,PS,WRE,THE,WOC,PE,ST,SE,MME,ECE,CSE,PED,VLSI,DE,ENE'),
(74, 'Huber, Todd and Cook', 'castro.com', 'Full Stack Developer', '8', '63', '54', '6', '33', 'P', '112133', '6', 'New Jacquelineland', 'Dec', 0, 0, '2024-04-28', 'PE,IE,WOC,ECE,DE,PED,DAM,ES,TRE,VLSI,CSE,ST,MME,CE,WRE,CSIS,SE,ENE'),
(75, 'Lewis-Diaz', 'kim-hardy.org', 'Full Stack Developer', '4', '74', '61', '3', '18', 'I', '90981', '7', 'Lake Meganburgh', 'Apr', 0, 1, '2024-04-29', 'DE,THE,PED'),
(76, 'Cortez-Perez', 'peterson.com', 'Trainee', '7', '63', '50', '3', '50', 'P+I', '111099', '6', 'East Todd', 'July', 1, 0, '2024-04-15', 'PE,WRE,DE,ECE,SE,DAM,ST,TRE,VLSI,PS,CE,WOC,PED,THE,MME,IE'),
(77, 'Rangel and Sons', 'jones.com', 'Software Engineer', '3', '57', '68', '4', '43', 'P', '99815', '2', 'Davidchester', 'Jan', 0, 0, '2024-04-14', 'PED,CE,WRE'),
(78, 'Simpson-Park', 'ross.org', 'Hardware Eng', '7', '59', '80', '9', '28', 'I', '84465', '8', 'West Gabrielburgh', 'Mar', 0, 0, '2024-04-24', 'PED,SE,THE,DAM,ES,ENE,ST,CSIS,MME,VLSI,DE,TRE,PSM,CE,PE'),
(79, 'Bryant Group', 'brady.com', 'Manager', '5', '68', '57', '4', '38', 'P+I', '60492', '9', 'West Georgeton', 'Nov', 0, 0, '2024-04-06', 'ST,PED,PS,DAM,SE'),
(80, 'Meyer-Peters', 'grant-abbott.com', 'SDE', '6', '50', '65', '9', '16', 'I', '61496', '9', 'North Jose', 'Apr', 0, 0, '2024-04-10', 'ES,ENE,VLSI,ECE,TRE,IE,MME,WOC,CSE,PED,CSIS,ST,PE,PSM,WRE,DAM,SE,THE,PS'),
(81, 'Doyle, Shields and Thomas', 'wood.com', 'Software Engineer', '6', '76', '74', '5', '19', 'P', '78946', '5', 'New Elizabethhaven', 'Apr', 1, 1, '2024-04-28', 'PED,SE'),
(82, 'Kerr-Porter', 'acosta-kennedy.com', 'SDE', '5', '64', '67', '6', '36', 'P', '102247', '2', 'Martintown', 'May', 1, 0, '2024-04-13', 'PS,DE,CE,DAM,SE,TRE,PED,WOC,ENE,PE,ST,THE,PSM,VLSI,IE,CSE,ECE,WRE,ES'),
(83, 'Duncan, Miller and Doyle', 'perez.org', 'SDE', '9', '74', '68', '5', '44', 'P', '58215', '7', 'East Brandon', 'Mar', 0, 0, '2024-04-06', 'IE,ST,WRE,VLSI,ENE,CSIS,TRE,PSM,WOC,PS,THE,CE,MME,PE,DE,CSE,ES,SE,ECE,DAM'),
(84, 'Myers-Gardner', 'williams-johnson.com', 'SDE', '3', '79', '71', '5', '46', 'I', '72812', '8', 'Grayton', 'Jan', 0, 0, '2024-04-09', 'CSIS'),
(85, 'Mooney PLC', 'mitchell-barrett.com', 'Software Engineer', '3', '53', '51', '2', '17', 'P', '97002', '4', 'Jillport', 'Sep', 0, 0, '2024-04-19', 'WOC,IE,THE,ENE,PS,MME,WRE,PSM,PE,CSE,ECE,SE,ST,ES,PED,VLSI'),
(86, 'Watson, Barker and Lewis', 'gray.com', 'Manager', '8', '77', '52', '6', '54', 'P', '117786', '8', 'Stephenview', 'Aug', 1, 1, '2024-04-28', 'ES,CSIS,TRE,DE,ECE,CSE,PE,DAM'),
(87, 'Hale PLC', 'hernandez.com', 'SDE', '2', '77', '74', '2', '26', 'P+I', '83285', '2', 'North Sandrastad', 'Mar', 0, 0, '2024-04-08', 'CSE'),
(88, 'Johnson-Mcdaniel', 'gonzales-vincent.com', 'Trainee', '2', '71', '75', '6', '50', 'P', '118898', '3', 'Jenniferton', 'Aug', 1, 0, '2024-04-18', 'MME,PS,THE,SE'),
(89, 'Stout-Orr', 'zamora-garner.biz', 'Hardware Eng', '6', '56', '57', '6', '43', 'I', '98506', '8', 'North Jennifermouth', 'Feb', 0, 1, '2024-04-23', 'PED,TRE,CSE,WOC,DAM,PSM,ENE,ES,SE,ECE,CE,THE,IE,PS,CSIS'),
(90, 'Lee, Martinez and Stone', 'steele.biz', 'Software Engineer', '7', '61', '63', '8', '50', 'P', '85130', '5', 'Markburgh', 'Jun', 0, 0, '2024-04-05', 'CSE,DAM,THE,ST,ECE,VLSI,CSIS,WRE,DE,CE,PS,ES,PSM,MME,PED,TRE,PE,SE,ENE'),
(91, 'Sawyer, Schroeder and Richards', 'jones-baker.org', 'Software Engineer', '4', '59', '80', '3', '44', 'P+I', '61419', '8', 'South Courtney', 'Apr', 1, 0, '2024-04-14', 'WOC,IE,PE'),
(92, 'Fitzgerald-Perkins', 'gibson.org', 'Trainee', '2', '57', '54', '7', '45', 'I', '76176', '3', 'Jamesland', 'Mar', 1, 0, '2024-04-15', 'TRE,PE,CE,ENE,DE,ES,WOC,ECE,MME,PED,THE,PS,IE,DAM,WRE,SE,CSE,VLSI'),
(93, 'Townsend, Norris and Hernandez', 'edwards.biz', 'DevOps', '8', '78', '52', '2', '35', 'P', '74827', '5', 'Stephanieberg', 'Oct', 0, 1, '2024-04-28', 'PED,ST,VLSI,PSM,PS,ECE,CE,WOC,CSE,ES,CSIS,MME,PE,DE,ENE,WRE,TRE,THE'),
(94, 'Kelly Group', 'bowman.com', 'SDE', '2', '53', '56', '5', '58', 'P+I', '72555', '8', 'East Lisa', 'Jun', 1, 0, '2024-04-27', 'WRE,THE,DE,CSE,PSM,ES,ECE,VLSI,SE'),
(95, 'Castillo Inc', 'thompson-edwards.org', 'SDE', '4', '53', '64', '4', '27', 'P', '116526', '6', 'Daybury', 'Jan', 0, 1, '2024-05-02', 'PSM,PED,DE,ST,THE,PE,CE,WOC,IE,TRE,PS,WRE,CSIS,DAM'),
(96, 'Carter-Griffith', 'lee.com', 'Trainee', '3', '61', '79', '8', '58', 'I', '58509', '8', 'Ericaburgh', 'Nov', 0, 0, '2024-04-12', 'VLSI,ECE,ENE,CSE'),
(97, 'Guerrero, Smith and Newton', 'nelson.com', 'Hardware Eng', '6', '67', '63', '8', '52', 'P', '116349', '2', 'South Amy', 'Feb', 0, 0, '2024-04-16', 'THE,PS,ECE,MME,WOC,PSM,DE,CSE,SE,TRE,PE,ENE,VLSI,DAM,ES,WRE,CSIS'),
(98, 'Mclaughlin, Stephens and Barber', 'sullivan-bradley.com', 'DevOps', '2', '74', '52', '2', '33', 'P', '82066', '5', 'South Blake', 'Jan', 1, 0, '2024-04-29', 'THE,IE,VLSI,TRE,DAM,ES,PE,PSM,PS,WOC,PED,DE'),
(99, 'Gonzalez-Porter', 'fernandez.com', 'Software Engineer', '4', '66', '73', '3', '32', 'P', '79386', '4', 'Smithbury', 'May', 1, 0, '2024-04-21', 'DE,TRE,CE,PSM,WOC,MME,PS,CSIS,ECE,IE,ST,CSE,SE,ENE,ES,DAM,PED,WRE,VLSI'),
(100, 'Rivera, Briggs and Johnston', 'villa.info', 'Trainee', '9', '63', '57', '5', '51', 'I', '85362', '7', 'Lopezland', 'Sep', 0, 0, '2024-04-26', 'ECE,PED,DAM,PS,CSIS,VLSI,ENE,THE,PE,TRE,CE,DE'),
(101, 'Knapp-Garrett', 'walker-walsh.net', 'Trainee', '8', '65', '54', '0', '59', 'P', '103881', '6', 'Mcintoshview', 'Nov', 1, 1, '2024-04-24', 'PS,VLSI,ST,PSM,ENE,PED,MME,DE,PE,TRE,CSE,SE,IE,CSIS,ECE,DAM,CE,WOC,ES,THE'),
(102, 'Coleman and Sons', 'williams.com', 'Full Stack Developer', '6', '50', '75', '1', '35', 'P', '84183', '8', 'South Gailfurt', 'Jun', 1, 1, '2024-04-30', 'PS,CSIS,ST,MME,TRE,PSM,PED,WRE,ENE,VLSI,THE,WOC'),
(103, 'Mann, Sherman and Herrera', 'wells-james.com', 'DevOps', '9', '79', '54', '2', '9', 'P+I', '109091', '7', 'Ninaview', 'July', 1, 0, '2024-04-06', 'PED,WRE,WOC,MME,ECE,ENE,VLSI,CE'),
(104, 'Vega, Durham and Santos', 'hernandez.com', 'Full Stack Developer', '7', '50', '61', '6', '22', 'I', '51306', '8', 'Terryville', 'Oct', 1, 0, '2024-04-22', 'PE,WOC,CE,VLSI,THE,PS,IE,PED,DAM,CSIS,TRE,WRE'),
(105, 'Cooper-Shah', 'ingram-daniel.info', 'SDE', '2', '77', '79', '7', '39', 'P+I', '78147', '3', 'Powersfurt', 'July', 0, 0, '2024-04-17', 'IE,PS,WOC,ES,PED,ENE,WRE,PE,ST,TRE,DAM,CSE,DE,CE,ECE,SE'),
(106, 'Mitchell Ltd', 'murray.com', 'SDE', '7', '58', '51', '5', '22', 'P+I', '50450', '9', 'South Lisatown', 'Jan', 0, 0, '2024-04-29', 'PED,TRE,ES,CE,ECE,DAM,SE,PE,MME,IE,CSIS,PS,PSM,DE,VLSI,ENE,WRE,THE,CSE'),
(107, 'Rojas LLC', 'hall.com', 'Manager', '4', '64', '53', '9', '52', 'P+I', '116037', '7', 'Brewermouth', 'Mar', 0, 1, '2024-04-27', 'PED,DAM,ES,DE,ECE,CSE,SE,WRE,CSIS,PSM,IE,PS,ST,ENE,CE,THE'),
(108, 'Jones Inc', 'wright-jones.com', 'Hardware Eng', '9', '69', '50', '5', '28', 'P+I', '45159', '2', 'Tracyshire', 'Jan', 0, 0, '2024-04-17', 'ES'),
(109, 'Pollard, Hill and Carrillo', 'elliott.net', 'Manager', '7', '69', '61', '3', '22', 'P', '117088', '4', 'Bryanhaven', 'Feb', 1, 1, '2024-05-02', 'CE,ENE,ST,WOC,VLSI,CSIS,SE,CSE,PE,IE,ES,ECE'),
(110, 'Wagner, Jimenez and Bailey', 'lam.com', 'SDE', '5', '72', '60', '2', '38', 'P', '77485', '2', 'Rogersfurt', 'Jun', 0, 0, '2024-04-04', 'CE,DAM,PED,PS,VLSI,WOC,IE'),
(111, 'Nelson, Cole and Graham', 'wheeler.info', 'SDE', '9', '50', '55', '3', '59', 'I', '68452', '2', 'Nataliestad', 'Feb', 1, 0, '2024-04-04', 'PED,CSE,DAM,ECE,CE,WRE,TRE'),
(112, 'Williams, Martin and Singleton', 'hanson.org', 'Trainee', '6', '77', '57', '8', '51', 'P+I', '80377', '8', 'Gonzalezton', 'Nov', 1, 0, '2024-04-14', 'PS,DE,PE,ENE,CE,SE,WOC,ST,WRE,PED,VLSI,CSE,THE,PSM,IE'),
(113, 'Brandt, Bennett and Acosta', 'anderson.com', 'Software Engineer', '3', '68', '58', '5', '59', 'P+I', '60416', '5', 'Holmeschester', 'Jan', 1, 0, '2024-04-21', 'PE,ES,THE,MME'),
(114, 'Stevens, Reid and Schroeder', 'mcgee.com', 'Trainee', '6', '53', '80', '0', '21', 'P+I', '116456', '8', 'Port Aliciafurt', 'May', 0, 1, '2024-04-30', 'CE,ES,DE,PSM,DAM,ST,SE,CSE,PED,VLSI,THE,TRE,PE,ECE,CSIS'),
(115, 'Robertson Inc', 'moon.com', 'Trainee', '2', '53', '74', '1', '51', 'I', '63664', '5', 'East Lindsayborough', 'Sep', 0, 0, '2024-04-11', 'PE,TRE,SE,ENE,CSE,ECE,ST,THE,PS,IE,VLSI,WRE,MME,WOC,CSIS'),
(116, 'Davis PLC', 'boyle-wright.com', 'Trainee', '6', '68', '62', '3', '15', 'P+I', '113113', '3', 'Port Nathanchester', 'Dec', 1, 0, '2024-05-01', 'SE,PS,PED,CE,ES,VLSI,WRE,ECE,MME,ST,IE,DE'),
(117, 'Kane-Webb', 'anderson-nixon.org', 'Full Stack Developer', '7', '72', '51', '3', '21', 'P', '56781', '2', 'Harveyville', 'Jan', 1, 0, '2024-05-01', 'WOC,PSM,ENE,DAM,IE,PS,PE'),
(118, 'Taylor-Hodge', 'wood.com', 'Hardware Eng', '2', '58', '78', '2', '31', 'P', '115439', '6', 'Howardton', 'Jan', 1, 0, '2024-04-13', 'THE,ECE,CSIS,DAM,ENE,WRE,ST,ES,VLSI'),
(119, 'Flores-Stephenson', 'fernandez-richardson.net', 'Hardware Eng', '7', '56', '58', '8', '17', 'P', '40667', '7', 'Maryfort', 'Nov', 0, 0, '2024-04-07', 'ST,CE,PSM,DAM,PE,ENE,ECE,CSE,THE,VLSI,MME,TRE,PS,WOC,WRE,DE,CSIS,PED'),
(120, 'West-Jones', 'johnson.org', 'Full Stack Developer', '2', '62', '73', '7', '10', 'P+I', '78856', '4', 'South Brittanyview', 'Jan', 0, 0, '2024-04-20', 'CE,WRE,SE,ES,IE'),
(121, 'Snyder Inc', 'allen-rhodes.net', 'SDE', '8', '70', '62', '2', '42', 'P+I', '64929', '3', 'West Laura', 'Sep', 1, 0, '2024-04-06', 'THE,PS,CE,ES,TRE,MME,VLSI,PED,ECE,IE'),
(122, 'Leonard, Fisher and Martin', 'moore-cummings.com', 'Software Engineer', '9', '53', '56', '5', '24', 'P+I', '63785', '3', 'Port Zachary', 'Oct', 1, 0, '2024-04-28', 'TRE,MME,SE,PE,ST,ENE,DE,PS,ES,THE'),
(123, 'Bolton-Thomas', 'clark-cantrell.org', 'Software Engineer', '5', '68', '76', '0', '52', 'P', '44396', '2', 'Craigchester', 'Oct', 0, 0, '2024-04-16', 'ST,MME,IE,PS,PE,TRE,SE,CE,ES'),
(124, 'Rodriguez, Miranda and Manning', 'simpson.com', 'Trainee', '6', '72', '73', '9', '22', 'I', '110425', '7', 'South Kimberly', 'Mar', 1, 1, '2024-05-02', 'DE,CE,MME,PE,WOC,PSM,WRE,CSE,PED,CSIS,IE,ES,SE,THE,DAM,VLSI'),
(125, 'Jordan Group', 'contreras.org', 'Manager', '5', '50', '76', '4', '41', 'I', '49623', '9', 'West Phillip', 'Feb', 1, 0, '2024-04-12', 'CSE,ST,PED'),
(126, 'Martin Inc', 'tran-flores.biz', 'SDE', '2', '66', '63', '3', '37', 'P', '118472', '3', 'North Joseph', 'Nov', 1, 0, '2024-04-22', 'ST,SE,WOC,ES,CE,THE,DE,PSM'),
(127, 'Smith-Davis', 'wilson.com', 'Full Stack Developer', '9', '61', '64', '8', '32', 'I', '112713', '6', 'West William', 'Jun', 0, 0, '2024-04-10', 'CE,PS,DE,CSE,MME,WRE'),
(128, 'Patrick, Olson and Anderson', 'carter-romero.org', 'Full Stack Developer', '7', '60', '80', '1', '43', 'P+I', '79895', '9', 'Tiffanyview', 'Aug', 1, 0, '2024-04-08', 'DE,PS,CSIS,CSE,IE,MME,SE,PE,PSM,PED,ST,VLSI'),
(129, 'Frederick and Sons', 'luna-santos.com', 'Software Engineer', '4', '57', '52', '5', '9', 'I', '72400', '6', 'Allisonton', 'Nov', 0, 0, '2024-05-01', 'CE,WRE,ECE,CSIS,CSE,TRE,SE,PE,VLSI,MME,PSM,THE,ENE,ES,DAM,WOC,DE,PS,IE,PED,ST'),
(130, 'Brown, Aguirre and Little', 'harrison.com', 'DevOps', '9', '72', '60', '5', '20', 'P+I', '114836', '2', 'Amandachester', 'Mar', 1, 0, '2024-04-30', 'IE,DE,SE,VLSI,WRE,THE,CE,PS,CSIS,ECE,ENE,PED,TRE,ST,MME,WOC,PE,ES,DAM,CSE'),
(131, 'Nichols Inc', 'hooper.com', 'Full Stack Developer', '5', '51', '64', '3', '14', 'P+I', '97804', '7', 'New Stevenside', 'Dec', 0, 0, '2024-04-12', 'PS,CSIS,ES,SE,ST,IE,PE'),
(132, 'Parker, Bryant and Harris', 'wilson.org', 'Hardware Eng', '2', '52', '59', '7', '18', 'P', '89222', '5', 'Ginaville', 'May', 1, 0, '2024-04-22', 'WRE,TRE,CSE,VLSI,PSM,SE,ENE,WOC,THE,DAM,CSIS'),
(133, 'Lopez Group', 'hall.com', 'DevOps', '5', '63', '61', '8', '49', 'P', '73669', '3', 'New Katherine', 'Aug', 0, 0, '2024-04-06', 'ES,ENE,PS,VLSI,PED'),
(134, 'Romero PLC', 'owens.com', 'Full Stack Developer', '4', '74', '54', '0', '60', 'I', '93222', '2', 'Millshaven', 'Jun', 1, 1, '2024-04-27', 'ST,PED,THE,CSIS,PS,WOC,CE,SE,DAM,PSM,ECE,IE,DE,TRE,PE,ENE,WRE'),
(135, 'Keller, Stewart and Smith', 'rogers.com', 'Full Stack Developer', '4', '65', '73', '3', '58', 'I', '100004', '8', 'Lake Lisa', 'Jun', 0, 0, '2024-04-07', 'THE,CE,PED,WRE'),
(136, 'Spencer, Sims and Gutierrez', 'brown-hernandez.com', 'SDE', '9', '77', '74', '6', '45', 'P+I', '69779', '8', 'Port Josephbury', 'Mar', 0, 0, '2024-04-04', 'SE,PSM,DE,VLSI,IE,ENE,TRE,PED,WRE,PS,ST,THE,ECE,ES,CSIS,DAM,WOC,CE,PE'),
(137, 'Gonzalez-Hardy', 'jordan.com', 'Manager', '6', '66', '58', '1', '44', 'P', '111487', '5', 'North Rebekah', 'Oct', 0, 0, '2024-04-06', 'THE'),
(138, 'Nguyen-Hubbard', 'wagner.com', 'SDE', '2', '57', '64', '9', '15', 'I', '93915', '9', 'Lake Adam', 'Jan', 1, 0, '2024-04-21', 'PSM,DAM,WOC,ST,CE,CSIS,PE,VLSI,PED'),
(139, 'Richardson, Leonard and Thomas', 'davidson-scott.com', 'Software Engineer', '4', '78', '62', '9', '34', 'P', '104619', '4', 'South Lori', 'Jan', 0, 0, '2024-04-15', 'ENE,ST,CSE,SE,VLSI,TRE,CE,ECE,PE,MME,PS,WRE,ES,PED,IE,THE,DAM,DE,WOC'),
(140, 'Park, Berger and Fernandez', 'jennings.info', 'Hardware Eng', '5', '61', '65', '1', '24', 'I', '97716', '7', 'Rangelchester', 'Nov', 1, 0, '2024-04-13', 'PSM,ES,DE,CSIS,WOC,ENE'),
(141, 'Lucero Ltd', 'brady.com', 'Software Engineer', '5', '54', '71', '9', '40', 'P', '59026', '5', 'Murphyland', 'July', 1, 0, '2024-04-05', 'THE,CE,PS,SE,PE,CSIS'),
(142, 'White-Shaw', 'cooper-howe.org', 'Hardware Eng', '5', '57', '64', '5', '33', 'P', '82016', '3', 'West Anneville', 'Feb', 1, 0, '2024-04-12', 'CE,WOC,VLSI,PSM,ECE,IE,THE,DAM'),
(143, 'Carter and Sons', 'morris-black.info', 'Software Engineer', '2', '56', '59', '9', '57', 'P', '118797', '8', 'Dixonland', 'Aug', 1, 0, '2024-04-08', 'PE,PED,ECE,CE,MME,PS,DAM,PSM,IE,VLSI,TRE,WOC,ES,WRE,DE,ENE,CSE,THE'),
(144, 'Sutton-Taylor', 'wilson.com', 'Manager', '9', '79', '60', '6', '36', 'P+I', '118525', '5', 'South Randy', 'Dec', 0, 0, '2024-04-05', 'ENE,ECE,PS,WOC,THE,DAM,DE,CSIS,VLSI'),
(145, 'Santiago and Sons', 'gonzalez.com', 'Manager', '2', '56', '74', '5', '43', 'P+I', '105730', '7', 'Scottbury', 'Mar', 1, 1, '2024-04-26', 'TRE,DAM,ECE'),
(146, 'Mejia Ltd', 'houston-livingston.com', 'Hardware Eng', '8', '63', '68', '8', '16', 'I', '71324', '8', 'Wilsonside', 'Jan', 1, 0, '2024-04-09', 'CSE,TRE,THE'),
(147, 'Good-Rogers', 'aguirre.com', 'Hardware Eng', '7', '62', '68', '5', '54', 'P+I', '44393', '5', 'Port Valeriemouth', 'Jun', 1, 0, '2024-04-20', 'DAM'),
(148, 'Barber, Sanchez and Smith', 'sutton-singh.biz', 'Software Engineer', '2', '62', '52', '2', '21', 'P+I', '44520', '5', 'Loganberg', 'Oct', 0, 0, '2024-04-04', 'ES,VLSI,WOC,CSIS,ECE'),
(149, 'Reyes Inc', 'weaver.net', 'Software Engineer', '3', '66', '72', '6', '55', 'P+I', '45033', '9', 'New Laura', 'Dec', 1, 1, '2024-04-23', 'TRE,WOC'),
(150, 'Page-Raymond', 'lee.com', 'DevOps', '6', '72', '60', '1', '24', 'P', '93691', '7', 'Powellberg', 'Apr', 1, 1, '2024-04-23', 'CSE,PED,ST'),
(151, 'Elliott, Palmer and Houston', 'mayer.com', 'Software Engineer', '5', '58', '59', '9', '18', 'P', '91470', '4', 'Port Rachael', 'Nov', 0, 0, '2024-04-06', 'WOC,PS,MME,IE,PE,ST,ENE,ECE,CSIS,ES,PSM,DAM,VLSI'),
(152, 'Wilson Group', 'brooks-williamson.org', 'Hardware Eng', '9', '52', '65', '5', '60', 'I', '83466', '3', 'Larsonbury', 'Jan', 0, 0, '2024-04-07', 'PED,ST,THE,ES,CSIS,WRE,PSM,ENE'),
(153, 'Johnson and Sons', 'jones.com', 'Software Engineer', '2', '71', '75', '6', '47', 'I', '76513', '4', 'Martinezbury', 'Apr', 1, 0, '2024-04-07', 'MME,ST,CSE,TRE,ECE,THE'),
(154, 'Pratt, Rodriguez and Williams', 'ramirez-sampson.com', 'Manager', '6', '77', '51', '4', '26', 'I', '104443', '2', 'Port Debraview', 'Dec', 1, 0, '2024-04-25', 'WOC,CSE'),
(155, 'Schmidt-Park', 'johnson-johnson.com', 'SDE', '4', '74', '78', '2', '13', 'P', '75621', '8', 'Anitastad', 'Oct', 1, 0, '2024-04-21', 'CE,ECE,MME,PE,IE,THE,SE,WOC'),
(156, 'Norman-Smith', 'johnson-davis.com', 'Manager', '8', '77', '73', '8', '53', 'I', '115624', '4', 'Kyleland', 'May', 0, 0, '2024-04-11', 'ST,PE,CSIS,ENE,IE,WRE,PS,VLSI,ECE,PSM,TRE,WOC,CSE,CE,DE,DAM,MME'),
(157, 'Freeman, Rosales and Martinez', 'rodriguez.com', 'Full Stack Developer', '8', '80', '75', '5', '26', 'I', '93855', '4', 'East Julie', 'Apr', 1, 0, '2024-04-15', 'DE,PS,SE,CSIS,WRE,DAM,PED,ST,ENE,THE,PE,VLSI,MME,IE,TRE,PSM,CE,WOC,ECE'),
(158, 'Huber Group', 'watson.info', 'Trainee', '9', '57', '53', '5', '11', 'P', '93151', '8', 'New Josephchester', 'Apr', 0, 0, '2024-04-19', 'WOC,ES'),
(159, 'Lloyd, Hamilton and Spencer', 'morales.com', 'Full Stack Developer', '6', '51', '74', '2', '21', 'I', '110493', '5', 'Ericafurt', 'Oct', 0, 0, '2024-04-13', 'TRE,PSM,ECE,DE,WOC,ENE,THE,PS,CSIS,SE,MME,IE,PED,PE,CE,CSE,ST,WRE'),
(160, 'Williams Ltd', 'schwartz.com', 'Manager', '3', '77', '73', '8', '49', 'P+I', '42086', '9', 'Julieshire', 'Dec', 0, 0, '2024-04-11', 'ST,SE,PSM,TRE,WOC,THE,MME,ENE,CE,ES,VLSI'),
(161, 'Lopez LLC', 'davis-tyler.com', 'Software Engineer', '4', '78', '58', '4', '12', 'P+I', '91985', '8', 'Port Robert', 'Apr', 1, 0, '2024-04-06', 'DAM,ST,PSM,PE,TRE,CSIS,IE,SE,WOC,ES,PED,CSE'),
(162, 'Martinez Ltd', 'harvey-wilson.biz', 'Manager', '6', '62', '68', '6', '47', 'P+I', '56499', '4', 'Port Keith', 'May', 1, 0, '2024-04-18', 'CE,TRE,WOC,CSIS,WRE,ENE,PS,DAM,PE,PED,DE,PSM,SE,ES,ST,CSE,THE,ECE,MME'),
(163, 'Leblanc, Olson and Ramirez', 'hernandez.com', 'SDE', '7', '80', '78', '4', '20', 'I', '61058', '4', 'North Oscar', 'May', 1, 0, '2024-05-01', 'DE,PE,WRE,MME'),
(164, 'Mckee-Ford', 'bullock.com', 'Manager', '8', '65', '76', '1', '49', 'P', '94361', '7', 'New Stephenville', 'Sep', 1, 0, '2024-04-18', 'WRE,DE,SE,TRE,PSM,IE,CSE,PED,VLSI,MME'),
(165, 'Ingram-Knight', 'olsen-bailey.info', 'DevOps', '9', '56', '68', '9', '43', 'I', '46610', '4', 'Lake Devonhaven', 'Apr', 0, 0, '2024-04-22', 'PSM,WRE,MME,CSIS,PS,CE,TRE,VLSI,ECE,ST,PE,DAM,CSE,SE'),
(166, 'Davis Group', 'lopez-shaw.info', 'Full Stack Developer', '3', '50', '63', '8', '14', 'I', '82574', '9', 'Port Juan', 'Jan', 0, 0, '2024-04-22', 'CSE,DAM,TRE,WRE,PED,CE,PSM,MME,ST,THE,VLSI,CSIS,ENE,PE,WOC,SE,PS'),
(167, 'Powers, Wilson and Moses', 'castro-wilson.biz', 'SDE', '2', '54', '72', '2', '16', 'I', '92583', '6', 'Timothyton', 'Sep', 1, 0, '2024-04-24', 'ES,DE,TRE,ENE,SE,WOC,PS,PSM,WRE,ST,DAM,THE,VLSI,CE,CSIS,ECE,CSE,IE,PED,PE,MME'),
(168, 'Harris Inc', 'perez.com', 'SDE', '7', '67', '52', '4', '11', 'P', '77670', '2', 'Lake Kimberly', 'Nov', 0, 1, '2024-04-27', 'CSIS,PSM'),
(169, 'Rogers-Martin', 'blankenship-harris.net', 'Software Engineer', '7', '63', '58', '9', '22', 'P', '89392', '5', 'North Stephen', 'Oct', 0, 0, '2024-04-09', 'PE,SE,VLSI,ECE,WOC,ES,CE,CSE,CSIS,DAM,WRE,PED,PSM,IE,DE,PS,ST,THE,TRE,ENE,MME'),
(170, 'Larson, Reynolds and Lopez', 'patel-adams.org', 'Manager', '8', '59', '63', '2', '39', 'P+I', '76380', '7', 'New Jared', 'Mar', 0, 0, '2024-04-20', 'PS,CE,PED,VLSI,THE,DE,MME'),
(171, 'Moreno Ltd', 'boyd.info', 'Software Engineer', '6', '57', '55', '7', '53', 'I', '49728', '8', 'North Jeffrey', 'Oct', 1, 0, '2024-04-20', 'DAM,DE,PED,CSIS,ECE,WOC,PE,WRE,MME,SE,VLSI,ES,IE,TRE,ENE'),
(172, 'Bradley-Romero', 'johnston.com', 'DevOps', '9', '64', '77', '1', '14', 'I', '104126', '5', 'South Noahview', 'Feb', 0, 1, '2024-04-29', 'PS,ES'),
(173, 'Sanchez, Chambers and Wilson', 'cruz.com', 'Trainee', '7', '70', '50', '7', '12', 'I', '65757', '4', 'Robertsfort', 'Nov', 0, 1, '2024-04-26', 'CSE,ST,CE,ENE,PED,MME,WRE,CSIS,IE,ES,WOC,DE,ECE,DAM'),
(174, 'Brown-Barnes', 'shields.biz', 'SDE', '5', '58', '60', '2', '10', 'P', '86394', '5', 'East Connie', 'Apr', 0, 1, '2024-04-30', 'MME,IE,ES,THE,CE,PE,DAM,PED'),
(175, 'Allen PLC', 'taylor.biz', 'DevOps', '4', '78', '54', '1', '26', 'P+I', '97062', '2', 'Lake David', 'Feb', 0, 0, '2024-04-10', 'THE,VLSI,DAM,IE,PED,TRE,WOC'),
(176, 'Stevens PLC', 'evans.com', 'Trainee', '7', '58', '80', '7', '17', 'P', '117689', '4', 'West Micheal', 'Jan', 0, 0, '2024-04-14', 'DAM,MME,WRE,TRE,PED,ST,SE,ENE,PSM,PS,IE,WOC,PE,DE,CE,ES,THE'),
(177, 'Short-Lucero', 'roberts.com', 'Full Stack Developer', '6', '62', '77', '4', '35', 'P+I', '85162', '9', 'New Joseview', 'May', 0, 0, '2024-04-19', 'DE,THE,PS,WOC,PE,PSM,ST'),
(178, 'Wilson, Garrett and Bond', 'duncan-holt.net', 'Trainee', '7', '75', '56', '7', '41', 'P+I', '79865', '9', 'East Cheryl', 'Feb', 0, 0, '2024-04-14', 'DAM,CE,ST,WRE,VLSI,ES,TRE,PSM,CSE'),
(179, 'Lyons-Lee', 'hall-young.net', 'Trainee', '9', '69', '80', '3', '20', 'I', '103177', '6', 'Scottfurt', 'Mar', 0, 0, '2024-04-20', 'PE'),
(180, 'Nelson-Rivera', 'freeman.net', 'SDE', '8', '70', '60', '5', '37', 'P', '47239', '3', 'Khanberg', 'Dec', 1, 0, '2024-04-04', 'DE,DAM,TRE,CE,PED,IE,ST,WRE,WOC,CSIS,PS,PSM,PE,THE,ES,ECE,ENE,MME'),
(181, 'Lyons-Reed', 'ibarra.com', 'Full Stack Developer', '5', '63', '77', '6', '55', 'P', '62827', '2', 'Lake Curtis', 'Oct', 0, 0, '2024-04-04', 'ECE,THE,ES,PSM,PS,TRE,CSIS'),
(182, 'Rodgers-Young', 'miller.com', 'Hardware Eng', '8', '77', '62', '0', '35', 'P', '84765', '3', 'Brianaton', 'July', 1, 0, '2024-04-25', 'ECE,PE,WRE,DAM,MME,CSE,WOC,DE,ENE,PED,ES'),
(183, 'Anderson, Johnson and Johnson', 'watkins.biz', 'SDE', '3', '51', '61', '2', '21', 'P', '115048', '3', 'Angelatown', 'Apr', 1, 0, '2024-04-07', 'CSE,VLSI,PED,DE,ECE,PS,DAM,MME,CSIS,WRE,ST,TRE,PSM,ES,THE,SE,CE,PE'),
(184, 'Maldonado-Rice', 'martinez.com', 'Full Stack Developer', '5', '66', '62', '1', '43', 'I', '81494', '5', 'Lake Christopherbury', 'May', 1, 0, '2024-04-26', 'ECE,CSE,PS,CSIS,PED,PSM,WOC,DE,VLSI,ENE,THE,TRE,CE,MME,SE,ES,WRE'),
(185, 'Copeland Inc', 'conley.com', 'Manager', '9', '75', '61', '5', '49', 'P+I', '101566', '9', 'Woodbury', 'May', 1, 0, '2024-04-29', 'PSM,PE,IE,ES,PS,WOC'),
(186, 'Carr, Walker and Dawson', 'patterson.info', 'Full Stack Developer', '5', '53', '54', '2', '51', 'P+I', '64298', '7', 'West John', 'Dec', 1, 1, '2024-05-02', 'VLSI,DE,WOC,PED,PS,ES,SE,PSM,CSE,PE,DAM,THE,MME,ECE,WRE,ENE,CE,ST,TRE,CSIS'),
(187, 'Newton-Taylor', 'martinez-ortiz.info', 'Hardware Eng', '8', '79', '63', '0', '36', 'P', '64628', '3', 'South Hectorton', 'Sep', 1, 1, '2024-04-26', 'CSIS,CE,DAM,MME,ECE,TRE,THE,ES,VLSI,WOC,PE,PSM'),
(188, 'Wu Inc', 'williams.net', 'Software Engineer', '8', '79', '55', '9', '44', 'P+I', '62620', '8', 'South Cindy', 'Sep', 0, 0, '2024-04-15', 'VLSI,CSE,ENE,CE,MME,WRE,IE,ES,TRE,WOC,PED,DE,PS,DAM,PSM'),
(189, 'Stafford PLC', 'freeman-reynolds.net', 'Software Engineer', '6', '56', '68', '3', '49', 'P', '60081', '6', 'Crystalville', 'Aug', 0, 0, '2024-04-12', 'PSM,CE,ENE,PE,SE,THE,WOC,DAM'),
(190, 'Brown-Miller', 'anderson.com', 'Manager', '5', '59', '64', '9', '29', 'P', '51579', '6', 'Ballland', 'Nov', 1, 0, '2024-04-26', 'TRE,CSIS,ENE,DAM,CE,DE,ECE,WOC,IE,SE'),
(191, 'Buchanan-Mcintyre', 'herrera-blair.com', 'SDE', '4', '80', '56', '6', '47', 'I', '50472', '3', 'Jamesmouth', 'Sep', 0, 0, '2024-04-15', 'CSIS,DAM,PED,WRE,ECE,MME,TRE,CE,SE'),
(192, 'Miller, Lewis and Holloway', 'weaver-wade.info', 'SDE', '2', '60', '55', '0', '35', 'P+I', '89307', '2', 'Clarkestad', 'Aug', 1, 1, '2024-04-28', 'ECE,DAM'),
(193, 'Johnson, Morgan and Underwood', 'brady.com', 'Hardware Eng', '9', '78', '67', '6', '25', 'P', '102152', '9', 'New Zacharyburgh', 'May', 0, 0, '2024-04-11', 'CE,ENE,SE'),
(194, 'Roberts-Dawson', 'mcknight.com', 'Full Stack Developer', '4', '61', '70', '5', '47', 'P+I', '47592', '9', 'Parkerburgh', 'Jun', 0, 0, '2024-04-18', 'MME,ECE,ES,PE,PED,ST,WRE,TRE,IE,PS,WOC,CSIS,CSE,CE,VLSI,DAM,PSM,DE,THE'),
(195, 'Smith, Cline and Moore', 'hicks.com', 'Software Engineer', '2', '80', '79', '0', '57', 'I', '42479', '5', 'East Rogermouth', 'Aug', 0, 0, '2024-04-16', 'CE,CSE,ECE'),
(196, 'Alexander, Bradley and Gonzales', 'hancock.com', 'Software Engineer', '5', '52', '54', '4', '28', 'P+I', '63480', '4', 'South Scott', 'Oct', 1, 0, '2024-04-21', 'MME,PED,IE,CSE,WRE,ECE,ES,PE,SE,ST,DE,THE,ENE,PSM,PS,DAM,WOC,CSIS,TRE,VLSI'),
(197, 'White, Moore and Martin', 'shaw.info', 'Software Engineer', '7', '51', '77', '0', '29', 'I', '107194', '6', 'Port Bryan', 'July', 0, 0, '2024-04-09', 'ST,PE,CSIS,DAM,CSE,MME,THE,PED,DE'),
(198, 'Nunez LLC', 'alvarez.com', 'DevOps', '3', '79', '64', '3', '20', 'P', '72987', '4', 'Fernandezland', 'July', 1, 0, '2024-04-06', 'SE,DE,THE,MME,ST,ECE,VLSI,WOC,PS,CE,PED,DAM,CSE'),
(199, 'Singleton-Rogers', 'price-marsh.com', 'DevOps', '8', '76', '61', '8', '10', 'P+I', '71991', '2', 'Patriciaborough', 'Feb', 1, 1, '2024-04-24', 'DE,PE,ST,THE'),
(200, 'Padilla, Adams and Macias', 'turner-smith.com', 'Full Stack Developer', '3', '51', '75', '0', '37', 'P+I', '96195', '8', 'Lindseystad', 'Apr', 0, 0, '2024-04-05', 'CSE,PS,THE,DAM,PE,ES,CE,TRE,MME'),
(201, 'KPIT', 'kpit.com', 'Software Engineer', '6', '60', '60', '0', '18', 'P', '', '', 'Pune', 'July', 1, 0, '2024-04-08', 'PED,ST');

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `log_id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`log_id`, `username`, `time`) VALUES
(1, 'admin123', '2024-04-03 07:26:29'),
(2, 'admin123', '2024-04-03 07:27:28'),
(3, 'student123', '2024-04-03 07:30:45'),
(4, 'student123', '2024-04-03 07:40:25'),
(5, 'student123', '2024-04-03 07:58:05'),
(6, 'student123', '2024-04-03 08:10:14'),
(7, 'student123', '2024-04-03 08:39:27'),
(8, 'student123', '2024-04-03 08:41:25'),
(9, 'student123', '2024-04-03 08:45:50'),
(10, 'student123', '2024-04-03 08:49:37'),
(11, 'student123', '2024-04-06 13:06:45'),
(12, 'student123', '2024-04-06 13:12:08'),
(13, 'student123', '2024-04-06 13:34:36'),
(14, 'student123', '2024-04-06 13:37:02'),
(15, 'student123', '2024-04-06 13:50:47'),
(16, 'student123', '2024-04-06 16:25:44'),
(17, 'student123', '2024-04-06 16:36:38'),
(18, 'student123', '2024-04-06 16:38:42'),
(19, 'student123', '2024-04-06 16:42:00'),
(20, 'student123', '2024-04-07 06:48:16'),
(21, 'student123', '2024-04-07 08:04:15'),
(22, 'student123', '2024-04-07 08:09:03'),
(23, 'student123', '2024-04-07 09:52:57'),
(24, 'student123', '2024-04-07 10:16:52'),
(25, 'admin123', '2024-04-07 10:17:36'),
(26, 'admin123', '2024-04-07 10:19:40'),
(27, 'admin123', '2024-04-07 10:20:27'),
(28, 'admin123', '2024-04-07 10:21:17'),
(29, 'admin123', '2024-04-07 10:26:53'),
(30, 'admin123', '2024-04-07 10:28:18'),
(31, 'admin123', '2024-04-07 10:41:03'),
(32, 'admin123', '2024-04-07 10:49:20'),
(33, 'admin123', '2024-04-07 10:59:06'),
(34, 'admin123', '2024-04-07 11:01:09'),
(35, 'admin123', '2024-04-07 11:07:03'),
(36, 'admin123', '2024-04-07 11:16:45'),
(37, 'student123', '2024-04-07 12:04:54'),
(38, 'student123', '2024-04-07 16:32:50'),
(39, 'student123', '2024-04-07 16:50:08'),
(40, 'student123', '2024-04-07 17:17:19'),
(41, 'student123', '2024-04-07 17:32:03'),
(42, 'student123', '2024-04-07 17:38:17'),
(43, 'admin123', '2024-04-07 17:44:50'),
(44, 'admin123', '2024-04-08 03:30:18'),
(45, 'admin123', '2024-04-08 03:41:28'),
(46, 'admin123', '2024-04-08 05:53:19'),
(47, 'admin123', '2024-04-08 05:55:22'),
(48, 'admin123', '2024-04-08 05:59:17'),
(49, 'student1', '2024-04-08 06:21:33'),
(50, 'student2', '2024-04-08 06:28:35'),
(51, 'student3', '2024-04-08 06:33:25'),
(52, 'student4', '2024-04-08 06:36:58'),
(53, 'student5', '2024-04-08 06:40:25'),
(54, 'student5', '2024-04-08 06:43:42'),
(55, 'student5', '2024-04-08 06:45:00'),
(56, 'admin123', '2024-04-08 06:46:01'),
(57, 'admin123', '2024-04-08 06:58:09'),
(58, 'admin123', '2024-04-08 07:01:09'),
(59, 'admin123', '2024-04-08 07:10:57'),
(60, 'student3', '2024-04-08 07:12:09'),
(61, 'admin123', '2024-04-08 07:43:12'),
(62, 'student3', '2024-04-08 07:47:05'),
(63, 'admin123', '2024-04-08 07:47:27'),
(64, 'admin123', '2024-04-08 08:03:21'),
(65, 'admin123', '2024-04-08 08:07:48'),
(66, 'admin123', '2024-04-08 08:08:57'),
(67, 'admin123', '2024-04-08 11:18:32'),
(68, 'admin123', '2024-04-08 11:23:11'),
(69, 'admin123', '2024-04-09 10:38:51'),
(70, 'student123', '2024-04-09 10:39:26'),
(71, 'admin123', '2024-04-09 10:48:01'),
(72, 'admin123', '2024-04-09 10:53:18'),
(73, 'admin123', '2024-04-09 10:58:54'),
(74, 'admin123', '2024-04-09 11:00:17'),
(75, 'admin123', '2024-04-09 11:01:39'),
(76, 'admin123', '2024-04-09 11:04:02'),
(77, 'admin123', '2024-04-09 11:04:46'),
(78, 'admin123', '2024-04-09 11:08:11'),
(79, 'student123', '2024-04-09 11:12:08'),
(80, 'admin123', '2024-04-09 11:17:41'),
(81, 'admin123', '2024-04-09 11:18:27'),
(82, 'admin123', '2024-04-09 16:22:24'),
(83, 'admin123', '2024-04-09 16:25:22'),
(84, 'admin123', '2024-04-09 16:27:12'),
(85, 'admin123', '2024-04-09 16:28:39'),
(86, 'admin123', '2024-04-09 16:37:52'),
(87, 'admin123', '2024-04-09 16:45:30'),
(88, 'admin123', '2024-04-12 05:55:47'),
(89, 'admin123', '2024-04-12 07:16:43'),
(90, 'admin123', '2024-04-12 07:17:24'),
(91, 'admin123', '2024-04-12 07:18:13'),
(92, 'admin123', '2024-04-12 07:21:20'),
(93, 'admin123', '2024-04-12 07:23:06'),
(94, 'admin123', '2024-04-12 07:23:56'),
(95, 'admin123', '2024-04-12 07:35:17'),
(96, 'admin123', '2024-04-12 07:41:10'),
(97, 'admin123', '2024-04-12 07:49:02'),
(98, 'admin123', '2024-04-12 07:55:37'),
(99, 'admin123', '2024-04-12 08:01:47'),
(100, 'admin123', '2024-04-12 08:09:33'),
(101, 'admin123', '2024-04-12 08:11:01'),
(102, 'admin123', '2024-04-12 08:15:32'),
(103, 'admin123', '2024-04-12 08:29:58'),
(104, 'admin123', '2024-04-12 08:43:14'),
(105, 'admin123', '2024-04-12 08:47:05'),
(106, 'admin123', '2024-04-12 08:50:59'),
(107, 'admin123', '2024-04-12 08:56:43'),
(108, 'admin123', '2024-04-15 06:50:19'),
(109, 'admin123', '2024-04-15 06:59:41'),
(110, 'admin123', '2024-04-15 07:03:02'),
(111, 'admin123', '2024-04-15 07:04:57'),
(112, 'student123', '2024-04-15 07:51:37'),
(113, 'admin123', '2024-04-15 07:54:36'),
(114, 'student123', '2024-04-15 08:14:14'),
(115, 'admin123', '2024-04-15 08:16:17'),
(116, 'admin123', '2024-04-16 16:02:38'),
(117, 'admin123', '2024-04-16 16:09:54'),
(118, 'admin123', '2024-04-16 16:35:39'),
(119, 'student5', '2024-04-16 16:39:04'),
(120, 'admin123', '2024-04-16 16:45:25'),
(121, 'admin123', '2024-04-16 16:49:03'),
(122, 'admin123', '2024-04-16 16:55:06'),
(123, 'admin123', '2024-04-16 16:56:03'),
(124, 'admin123', '2024-04-16 17:11:27'),
(125, 'admin123', '2024-04-16 17:16:13'),
(126, 'admin123', '2024-04-16 17:21:11'),
(127, 'admin123', '2024-04-16 17:33:34'),
(128, 'admin123', '2024-04-16 17:38:07'),
(129, 'admin123', '2024-04-16 17:39:20'),
(130, 'admin123', '2024-04-16 17:41:26'),
(131, 'admin123', '2024-04-16 17:42:31'),
(132, 'admin123', '2024-04-16 17:51:01'),
(133, 'admin123', '2024-04-16 17:52:14'),
(134, 'admin123', '2024-04-16 17:53:35'),
(135, 'admin123', '2024-04-16 17:54:18'),
(136, 'admin123', '2024-04-16 17:58:43'),
(137, 'admin123', '2024-04-16 18:02:02'),
(138, 'admin123', '2024-04-16 18:03:00'),
(139, 'admin123', '2024-04-16 18:04:57'),
(140, 'admin123', '2024-04-16 18:07:42'),
(141, 'admin123', '2024-04-16 18:09:27'),
(142, 'admin123', '2024-04-16 18:11:03'),
(143, 'admin123', '2024-04-16 18:14:14'),
(144, 'admin123', '2024-04-16 18:14:42'),
(145, 'admin123', '2024-04-17 04:48:17'),
(146, 'admin123', '2024-04-17 04:50:12'),
(147, 'admin123', '2024-04-17 04:59:42'),
(148, 'admin123', '2024-04-17 05:00:33'),
(149, 'admin123', '2024-04-17 05:01:54'),
(150, 'admin123', '2024-04-17 05:02:35'),
(151, 'admin123', '2024-04-17 05:05:46'),
(152, 'admin123', '2024-04-17 05:12:43'),
(153, 'admin123', '2024-04-17 05:14:24'),
(154, 'admin123', '2024-04-17 05:17:38'),
(155, 'admin123', '2024-04-17 05:18:50'),
(156, 'admin123', '2024-04-17 05:21:11'),
(157, 'admin123', '2024-04-17 05:28:03'),
(158, 'admin123', '2024-04-17 05:29:43'),
(159, 'admin123', '2024-04-17 05:53:37'),
(160, 'admin123', '2024-04-17 06:16:36'),
(161, 'student123', '2024-04-17 06:17:27'),
(162, 'student123', '2024-04-17 06:22:38'),
(163, 'student123', '2024-04-17 06:23:10'),
(164, 'student123', '2024-04-17 06:25:27'),
(165, 'admin123', '2024-04-17 06:26:56'),
(166, 'student123', '2024-04-17 06:27:14'),
(167, 'admin123', '2024-04-18 06:47:25'),
(168, 'admin123', '2024-04-18 07:14:30'),
(169, 'admin123', '2024-04-18 07:27:12'),
(170, 'admin123', '2024-04-18 07:32:11'),
(171, 'admin123', '2024-04-18 07:46:40'),
(172, 'admin123', '2024-04-18 08:08:27'),
(173, 'admin123', '2024-04-18 08:50:10'),
(174, 'admin123', '2024-04-18 08:52:26'),
(175, 'admin123', '2024-04-18 08:58:42'),
(176, 'admin123', '2024-04-18 09:01:21'),
(177, 'admin123', '2024-04-18 09:26:18'),
(178, 'student123', '2024-04-18 09:26:44'),
(179, 'student123', '2024-04-18 09:28:32'),
(180, 'student1', '2024-04-18 09:30:22'),
(181, 'student2', '2024-04-18 09:31:29'),
(182, 'student3', '2024-04-18 09:33:18'),
(183, 'student4', '2024-04-18 09:34:03'),
(184, 'student5', '2024-04-18 09:34:40'),
(185, 'admin123', '2024-04-18 09:35:17'),
(186, 'admin123', '2024-04-18 09:38:31'),
(187, 'admin123', '2024-04-18 09:41:01'),
(188, 'admin123', '2024-04-18 09:42:04'),
(189, 'admin123', '2024-04-18 09:50:57'),
(190, 'admin123', '2024-04-19 08:46:22'),
(191, 'admin123', '2024-04-19 09:22:47'),
(192, 'student123', '2024-04-19 09:23:13'),
(193, 'admin123', '2024-04-19 09:23:31'),
(194, 'admin123', '2024-04-19 09:24:15'),
(195, 'admin123', '2024-04-19 09:28:25'),
(196, 'admin123', '2024-04-19 09:30:23'),
(197, 'admin123', '2024-04-19 09:31:39'),
(198, 'admin123', '2024-04-19 09:42:10'),
(199, 'admin123', '2024-04-19 09:42:51'),
(200, 'admin123', '2024-04-19 09:44:23'),
(201, 'admin123', '2024-04-19 09:46:06'),
(202, 'admin123', '2024-04-19 09:49:50'),
(203, 'admin123', '2024-04-19 09:51:32'),
(204, 'admin123', '2024-04-19 10:25:00'),
(205, 'admin123', '2024-04-19 11:09:28'),
(206, 'admin123', '2024-04-19 11:10:37'),
(207, 'admin123', '2024-04-19 11:11:14'),
(208, 'admin123', '2024-04-19 11:13:05'),
(209, 'admin123', '2024-04-19 11:15:28'),
(210, 'admin123', '2024-04-19 11:24:09'),
(211, 'student123', '2024-04-19 11:25:07'),
(212, 'admin123', '2024-04-19 14:04:19'),
(213, 'student123', '2024-04-19 14:05:35'),
(214, 'student123', '2024-04-19 14:26:00'),
(215, 'student123', '2024-04-19 14:29:02'),
(216, 'student4', '2024-04-22 07:26:07'),
(217, 'student123', '2024-04-22 07:42:01'),
(218, 'admin123', '2024-04-22 07:42:14'),
(219, 'student123', '2024-04-22 08:01:18'),
(220, 'admin123', '2024-04-22 08:07:23'),
(221, 'admin123', '2024-04-22 15:37:37'),
(222, 'student123', '2024-04-23 01:19:24'),
(223, 'student123', '2024-04-23 01:25:48'),
(224, 'student123', '2024-04-23 01:26:47'),
(225, 'student123', '2024-04-23 01:31:00'),
(226, 'student123', '2024-04-23 01:34:33'),
(227, 'student123', '2024-04-23 01:47:46'),
(228, 'student123', '2024-04-23 01:56:45'),
(229, 'student123', '2024-04-23 01:57:39'),
(230, 'admin123', '2024-04-23 02:00:15'),
(231, 'student123', '2024-04-23 06:02:03'),
(232, 'student4', '2024-04-23 06:02:24'),
(233, 'student123', '2024-04-23 06:14:35'),
(234, 'admin123', '2024-04-23 06:44:13'),
(235, 'student123', '2024-04-23 06:44:49'),
(236, 'admin123', '2024-04-23 06:58:22'),
(237, 'admin123', '2024-04-23 07:32:23'),
(238, 'admin123', '2024-04-23 07:34:33'),
(239, 'admin123', '2024-04-23 07:36:29'),
(240, 'admin123', '2024-04-23 07:49:16'),
(241, 'student123', '2024-04-23 07:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `mail_details`
--

CREATE TABLE `mail_details` (
  `mid` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `subject` varchar(400) NOT NULL DEFAULT 'No Subject',
  `message` mediumtext NOT NULL DEFAULT 'No message',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mail_details`
--

INSERT INTO `mail_details` (`mid`, `cno`, `subject`, `message`, `timestamp`) VALUES
(1, 43, 'Testing the redirect', 'This is a simple testing mail send using python. Checking if everything is working fine or not.', '2024-04-12 08:05:21'),
(2, 43, 'Bus stopped 14kms before Mandi.', 'This is a simple testing mail send using python. Checking if everything is working fine or not.', '2024-04-12 08:09:46'),
(3, 43, 'Electrical and Electronics ', 'This is a simple testing mail send using python. Checking if everything is working fine or not.', '2024-04-12 08:11:15'),
(4, 43, 'Testing the redirect', 'This is a simple testing mail send using python. Checking if everything is working fine or not.', '2024-04-12 08:15:43'),
(5, 43, 'English,hindi,mathematics,science,social science', 'testing the message body', '2024-04-12 08:30:10'),
(6, 43, 'Testing the subject line for the company.', 'Message body for the mail. Implementation check.', '2024-04-12 08:44:20'),
(7, 43, 'Subject line of the mail testing.', 'This is a simple testing mail send using python. Checking if everything is working fine or not.', '2024-04-12 08:51:55'),
(8, 43, 'Update from company.', 'This is a simple testing mail send using python. Checking if everything is working fine or not.', '2024-04-12 08:57:41'),
(9, 43, 'Testing rich text editor for mail', '<p>Testing if this is <strong>working or not , if it works the<em>n it would be great.&nbsp;<span style=\"color:#e74c3c\">This is red color text.&nbsp;<img alt=\"smiley\" src=\"https://cdn.ckeditor.com/4.14.0/full-all/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" />.&nbsp; Still have to check for images.</span></em></strong></p>\r\n', '2024-04-15 06:52:08'),
(10, 43, 'Testing rich text editor for mail', '<p>Testing if this is <strong>working or not , if it works the<em>n it would be great.&nbsp;<span style=\"color:#e74c3c\">This is red color text.&nbsp;<img alt=\"smiley\" src=\"https://cdn.ckeditor.com/4.14.0/full-all/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" />.&nbsp; Still have to check for images.</span></em></strong></p>\n\n<p style=\"text-align:justify\"><strong><em><span style=\"color:#e74c3c\"><span class=\"marker\">hjkbkjbkbkbkjkjbkj<span style=\"background-color:#2ecc71\">bkjbkjbkjbjkbkjbkbkkbkbkjjbjbjkbbkjbkbkjnjkj<sup>hnmhnmnjnbjjjjjnmn</sup></span></span></span></em></strong></p>\n', '2024-04-15 06:57:31'),
(11, 43, 'Placement portal team style mail', '<div style=\"text-align:start\">\r\n<div dir=\"ltr\">\r\n<div class=\"gmail_default\">\r\n<div dir=\"ltr\">\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:large\"><span style=\"font-family:georgia,serif\"><strong><span style=\"color:#ff0000\">Alphawave Semi India</span><span style=\"color:#000000\"><span style=\"color:#ff0000\">&nbsp;</span></span><span style=\"color:#000000\">is hiring for&nbsp;</span><span style=\"color:#ff0000\">Intern</span><span style=\"color:#000000\">&nbsp;!!</span></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:georgia,serif\">ABOUT ORGANIZATION</span></u></strong></span></span></span></span></span><br />\r\n&nbsp;</div>\r\n\r\n<div class=\"gmail_default\">\r\n<p><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"color:#222222\"><span style=\"font-family:georgia,serif\"><strong>Alphawave Semi is a solution-centric silicon company that is uniquely positioned to design processor agnostic SoC architectures. With customizable and differentiated IP for Artificial Intelligence, Edge Computing, HPC, and Networking solutions, OpenFive develops domain-specific SoC architectures based on high-performance, highly-efficient, cost-optimized IP to deliver scalable, optimized, differentiated silicon. OpenFive offers end-to-end expertise in Architecture, Design Implementation, Software, Silicon Validation and Manufacturing to deliver high-quality silicon.</strong></span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Website:</strong>&nbsp;<a href=\"https://awavesemi.com/\" rel=\"noreferrer noreferrer\" style=\"color:#1155cc\" target=\"_blank\">https://awavesemi.com</a>/</span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:georgia,serif\">JOB PROFILE</span></u></strong></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Job Designation:</strong>&nbsp;Intern</span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Job Description:</strong>&nbsp;PFA<br />\r\n<strong>Duration</strong>:&nbsp;<span style=\"color:#222222\">6-month or 1 Year internship</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Tentative DOJ:</strong>&nbsp;June/July 2024</span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Place of Posting:</strong>&nbsp;Bangalore<span style=\"color:#222222\">/Pune</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><u><strong><span style=\"font-family:georgia,serif\">ELIGIBILITY CRITERIA</span></strong></u></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Course:</strong>&nbsp;BTech &amp; MTech 2024 &amp; 2025</span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Branch:</strong>&nbsp;<span style=\"color:#222222\">Electronics, Electrical</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>Any other requirements:</strong>&nbsp;zero active backlog<span style=\"color:#222222\">s.</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><u>COMPENSATION DETAILS</u>&nbsp;<br />\r\n<strong><span style=\"color:black\">Stipend:&nbsp;</span></strong>INR 25K per month<br />\r\n<strong>PPO:</strong>&nbsp;- Based on performance&nbsp;</span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><strong><span style=\"font-size:large\"><span style=\"font-family:georgia,serif\"><u><span style=\"color:#ff0000\">REGISTRATION LINK</span></u><span style=\"color:#000000\">&nbsp;</span></span></span></strong></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:large\"><span style=\"font-family:georgia,serif\"><strong><span style=\"color:#000000\">Link:&nbsp;</span><span style=\"color:#0000ff\"><a href=\"https://forms.gle/ZoVFq9Z6mecNfcze7\" rel=\"noreferrer noreferrer\" style=\"color:#1155cc\" target=\"_blank\">https://forms.gle/ZoVFq9Z6mecNfcze7</a></span></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:large\"><span style=\"font-family:georgia,serif\"><strong><span style=\"color:#000000\">Deadline:&nbsp;</span><span style=\"color:#ff0000\">15/04/2024 -EOD</span></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"gmail_signature\" dir=\"ltr\" style=\"text-align:start\">\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#500050\"><span style=\"color:#000000\"><span style=\"font-family:georgia,serif\"><strong>With Regards,</strong></span></span></span></span></span></span></span></div>\r\n\r\n<div dir=\"ltr\">\r\n<div><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#500050\"><span style=\"font-family:georgia,serif\"><span style=\"color:#ff0000\">Team MNIT</span><br />\r\n<span style=\"color:#0000ff\">Training &amp; Placement Cell</span></span></span></span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#500050\"><span style=\"color:#0000ff\"><span style=\"font-family:georgia,serif\">MNIT Jaipur, Rajasthan, India-302017<br />\r\n<a href=\"https://mnit.ac.in/placement/\" rel=\"noreferrer noreferrer\" style=\"color:#1155cc\" target=\"_blank\">https://mnit.ac.in/placement/</a>&nbsp;&nbsp;</span></span></span></span></span></span></span></div>\r\n\r\n<div><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#500050\"><span style=\"color:#0000ff\"><span style=\"font-family:georgia,serif\">+91-141-2529065</span></span></span></span></span></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '2024-04-15 07:05:37'),
(12, 43, 'Test mail ', '<div style=\"text-align:start\">\r\n<div dir=\"ltr\">\r\n<div class=\"gmail_default\">\r\n<div dir=\"ltr\">\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:large\"><span style=\"color:#ff0000\">Elexo Energy Private Limited</span></span><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><strong><span style=\"color:#ff0000\">&nbsp;</span></strong><span style=\"color:#000000\">is hiring for&nbsp;</span><span style=\"color:#ff0000\">Interns</span><span style=\"color:#000000\">&nbsp;!!</span></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:times new roman,serif\">ABOUT ORGANIZATION</span></u></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Name of Organization:</strong>&nbsp;</span><span style=\"color:#222222\">Elexo Energy Private Limited</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Website:</strong>&nbsp;</span><span style=\"color:#222222\">www.elexo.energy</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Organization Type:</strong>&nbsp;</span><span style=\"color:#222222\">Private Ltd. Company (DPIIT Registered)</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Industry Sector:</strong>&nbsp;</span><span style=\"color:#222222\">Core (Technical) &ndash; Energy Storage</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:times new roman,serif\">JOB PROFILE</span></u></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Job Designation:</strong>&nbsp;Intern</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Job Description:</strong>&nbsp;</span><span style=\"color:#222222\">Battery Management System Design Engineer (Hardware/ Firmware),&nbsp;</span><span style=\"color:#222222\">Battery Systems Thermal Management Engineer, Power Electronics&nbsp;</span><span style=\"color:#222222\">Engineer</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Tentative DOJ:</strong>&nbsp;</span><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">15th</span><span style=\"font-family:georgia,serif\">&nbsp;May onwards as per Course Schedule</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Place of Posting:</strong>&nbsp;Jaipur</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Internship duration:</strong>&nbsp;6 months</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><u><strong><span style=\"font-family:times new roman,serif\">ELIGIBILITY CRITERIA</span></strong></u></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Course:</strong>&nbsp;M.Tech<span style=\"background-color:#ffff00\">(2024 &amp; 25 batch)</span></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Branch:</strong>&nbsp;</span><span style=\"background-color:#ffff00\"><span style=\"color:#222222\">Embedded Systems,&nbsp;</span><span style=\"color:#222222\">Power Electronics &amp; Drives,&nbsp;</span><span style=\"color:#222222\">Thermal&nbsp;</span><span style=\"color:#222222\">Engineering, Renewable Energy</span></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>CGPA:</strong>&nbsp;NA</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Any other requirements:</strong>&nbsp;NA</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><u>COMPENSATION DETAILS</u>&nbsp;</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:arial,sans-serif\"><strong><span style=\"color:#000000\">Stipend:&nbsp;</span><span style=\"color:#ff0000\">Rs.15000/- per month</span></strong></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:arial,sans-serif\"><strong><span style=\"color:#000000\">CTC if PPO offered:&nbsp;</span><span style=\"color:#ff0000\">6-9 LPA</span></strong></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:times new roman,serif\">SELECTION PROCEDURE</span></u></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Pre-Placement Talk:</strong>&nbsp;N</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Aptitude Test:</strong>&nbsp;Y</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Technical Test:</strong>&nbsp;Y</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Group Discussion:&nbsp;</strong>N&nbsp;</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Personal Interview:</strong>&nbsp;Y</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><u>ANY OTHER DETAILS</u>&nbsp;</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><u><span style=\"color:#ff0000\">REGISTRATION LINK</span></u><span style=\"color:#000000\">&nbsp;</span></span></span></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"color:#000000\"><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><strong>Link:</strong>&nbsp;</span></span></span><strong><span style=\"font-size:large\"><a href=\"https://forms.gle/QH7oar69L7HmLExt5\" style=\"color:#1155cc\" target=\"_blank\">https://forms.gle/QH7oar69L7HmLExt5</a></span></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><strong>Deadline:</strong><span style=\"color:#000000\">&nbsp;</span><strong><span style=\"color:#ff0000\">15/04/2024(EOD)</span></strong></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<p><span style=\"color:#888888\">--</span></p>\r\n\r\n<div class=\"gmail_signature\" dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\"><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>With Regards,</strong></span></span></span></span></div>\r\n\r\n<div dir=\"ltr\">\r\n<div><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"font-family:times new roman,serif\"><span style=\"color:#ff0000\">Team MNIT</span><br />\r\n<span style=\"color:#0000ff\">Training &amp; Placement Cell</span></span></span></span></div>\r\n\r\n<div><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"color:#0000ff\"><span style=\"font-family:times new roman,serif\">MNIT Jaipur, Rajasthan , India-302017<br />\r\n<a href=\"https://mnit.ac.in/placement/\" style=\"color:#1155cc\" target=\"_blank\">https://mnit.ac.in/placement/</a>&nbsp;&nbsp;</span></span></span></span></div>\r\n\r\n<div><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"color:#0000ff\"><span style=\"font-family:times new roman,serif\">+91-141-2529065</span></span></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '2024-04-15 08:05:46'),
(13, 43, 'Registration open.', '<div style=\"text-align:start\">\r\n<div dir=\"ltr\">\r\n<div class=\"gmail_default\">\r\n<div dir=\"ltr\">\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:large\"><span style=\"color:#ff0000\">Elexo Energy Private Limited</span></span><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><strong><span style=\"color:#ff0000\">&nbsp;</span></strong><span style=\"color:#000000\">is hiring for&nbsp;</span><span style=\"color:#ff0000\">Interns</span><span style=\"color:#000000\">&nbsp;!!</span></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:times new roman,serif\">ABOUT ORGANIZATION</span></u></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Name of Organization:</strong>&nbsp;</span><span style=\"color:#222222\">Elexo Energy Private Limited</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Website:</strong>&nbsp;</span><span style=\"color:#222222\">www.elexo.energy</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Organization Type:</strong>&nbsp;</span><span style=\"color:#222222\">Private Ltd. Company (DPIIT Registered)</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Industry Sector:</strong>&nbsp;</span><span style=\"color:#222222\">Core (Technical) &ndash; Energy Storage</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:times new roman,serif\">JOB PROFILE</span></u></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Job Designation:</strong>&nbsp;Intern</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Job Description:</strong>&nbsp;</span><span style=\"color:#222222\">Battery Management System Design Engineer (Hardware/ Firmware),&nbsp;</span><span style=\"color:#222222\">Battery Systems Thermal Management Engineer, Power Electronics&nbsp;</span><span style=\"color:#222222\">Engineer</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Tentative DOJ:</strong>&nbsp;</span><span style=\"color:#222222\"><span style=\"font-family:arial,sans-serif\">15th</span><span style=\"font-family:georgia,serif\">&nbsp;May onwards as per Course Schedule</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Place of Posting:</strong>&nbsp;Jaipur</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Internship duration:</strong>&nbsp;6 months</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><u><strong><span style=\"font-family:times new roman,serif\">ELIGIBILITY CRITERIA</span></strong></u></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Course:</strong>&nbsp;M.Tech<span style=\"background-color:#ffff00\">(2024 &amp; 25 batch)</span></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Branch:</strong>&nbsp;</span><span style=\"background-color:#ffff00\"><span style=\"color:#222222\">Embedded Systems,&nbsp;</span><span style=\"color:#222222\">Power Electronics &amp; Drives,&nbsp;</span><span style=\"color:#222222\">Thermal&nbsp;</span><span style=\"color:#222222\">Engineering, Renewable Energy</span></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>CGPA:</strong>&nbsp;NA</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Any other requirements:</strong>&nbsp;NA</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><u>COMPENSATION DETAILS</u>&nbsp;</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:arial,sans-serif\"><strong><span style=\"color:#000000\">Stipend:&nbsp;</span><span style=\"color:#ff0000\">Rs.15000/- per month</span></strong></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:arial,sans-serif\"><strong><span style=\"color:#000000\">CTC if PPO offered:&nbsp;</span><span style=\"color:#ff0000\">6-9 LPA</span></strong></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><u><span style=\"font-family:times new roman,serif\">SELECTION PROCEDURE</span></u></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Pre-Placement Talk:</strong>&nbsp;N</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Aptitude Test:</strong>&nbsp;Y</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Technical Test:</strong>&nbsp;Y</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Group Discussion:&nbsp;</strong>N&nbsp;</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>Personal Interview:</strong>&nbsp;Y</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><u>ANY OTHER DETAILS</u>&nbsp;</span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><u><span style=\"color:#ff0000\">REGISTRATION LINK</span></u><span style=\"color:#000000\">&nbsp;</span></span></span></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"color:#000000\"><span style=\"color:#000000\"><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><strong>Link:</strong>&nbsp;</span></span></span><strong><span style=\"font-size:large\"><a href=\"https://forms.gle/QH7oar69L7HmLExt5\" style=\"color:#1155cc\" target=\"_blank\">https://forms.gle/QH7oar69L7HmLExt5</a></span></strong></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\"><span style=\"font-size:small\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-family:georgia,serif\"><span style=\"font-size:large\"><span style=\"font-family:times new roman,serif\"><strong>Deadline:</strong><span style=\"color:#000000\">&nbsp;</span><strong><span style=\"color:#ff0000\">15/04/2024(EOD)</span></strong></span></span></span></span></span></span></span></div>\r\n\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<p><span style=\"color:#888888\">--</span></p>\r\n\r\n<div class=\"gmail_signature\" dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\">\r\n<div>\r\n<div dir=\"ltr\"><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"color:#000000\"><span style=\"font-family:times new roman,serif\"><strong>With Regards,</strong></span></span></span></span></div>\r\n\r\n<div dir=\"ltr\">\r\n<div><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"font-family:times new roman,serif\"><span style=\"color:#ff0000\">Team MNIT</span><br />\r\n<span style=\"color:#0000ff\">Training &amp; Placement Cell</span></span></span></span></div>\r\n\r\n<div><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"color:#0000ff\"><span style=\"font-family:times new roman,serif\">MNIT Jaipur, Rajasthan , India-302017<br />\r\n<a href=\"https://mnit.ac.in/placement/\" style=\"color:#1155cc\" target=\"_blank\">https://mnit.ac.in/placement/</a>&nbsp;&nbsp;</span></span></span></span></div>\r\n\r\n<div><span style=\"color:#500050\"><span style=\"color:#888888\"><span style=\"color:#0000ff\"><span style=\"font-family:times new roman,serif\">+91-141-2529065</span></span></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '2024-04-15 08:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `student_company_reg`
--

CREATE TABLE `student_company_reg` (
  `scr_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `active_reg` tinyint(1) NOT NULL,
  `registration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_company_reg`
--

INSERT INTO `student_company_reg` (`scr_id`, `sid`, `cno`, `active_reg`, `registration_time`) VALUES
(29, 2, 43, 1, '2024-04-18 09:28:38'),
(30, 2, 196, 1, '2024-04-18 09:29:37'),
(31, 2, 54, 1, '2024-04-18 09:29:46'),
(32, 2, 66, 1, '2024-04-18 09:29:52'),
(33, 3, 196, 1, '2024-04-18 09:30:51'),
(34, 3, 54, 1, '2024-04-18 09:30:56'),
(35, 3, 38, 1, '2024-04-18 09:31:16'),
(36, 4, 43, 1, '2024-04-18 09:31:33'),
(37, 4, 196, 1, '2024-04-18 09:31:40'),
(38, 4, 54, 1, '2024-04-18 09:31:46'),
(39, 4, 66, 1, '2024-04-18 09:31:52'),
(40, 5, 43, 1, '2024-04-18 09:33:23'),
(41, 5, 196, 1, '2024-04-18 09:33:28'),
(42, 5, 186, 1, '2024-04-18 09:33:47'),
(43, 6, 196, 1, '2024-04-18 09:34:13'),
(44, 6, 54, 1, '2024-04-18 09:34:18'),
(45, 7, 43, 1, '2024-04-18 09:34:46'),
(46, 7, 54, 1, '2024-04-18 09:34:56'),
(47, 7, 66, 1, '2024-04-18 09:35:02'),
(48, 2, 25, 1, '2024-04-23 06:45:12'),
(49, 2, 25, 1, '2024-04-23 06:57:28'),
(50, 2, 25, 1, '2024-04-23 06:57:48'),
(51, 2, 25, 1, '2024-04-23 06:58:08'),
(52, 2, 72, 1, '2024-04-23 08:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `student_offer`
--

CREATE TABLE `student_offer` (
  `so_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `sid` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `offer_type` varchar(50) DEFAULT NULL,
  `offered` tinyint(1) NOT NULL DEFAULT 0,
  `accepted` tinyint(1) NOT NULL DEFAULT 0,
  `rejected` tinyint(1) NOT NULL DEFAULT 0,
  `revoked` tinyint(1) NOT NULL DEFAULT 0,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_offer`
--

INSERT INTO `student_offer` (`so_id`, `username`, `sid`, `cno`, `offer_type`, `offered`, `accepted`, `rejected`, `revoked`, `added_time`) VALUES
(1, 'student123', 2, 43, 'P', 1, 1, 0, 1, '2024-04-18 10:10:35'),
(2, 'student123', 2, 196, 'P+I', 1, 1, 0, 0, '2024-04-23 01:56:49'),
(3, 'student123', 2, 54, 'P+I', 1, 0, 1, 0, '2024-04-23 01:58:02'),
(4, 'student123', 2, 66, 'I', 0, 0, 0, 0, '2024-04-18 10:12:43'),
(5, 'student1', 3, 196, 'P+I', 1, 0, 0, 0, '2024-04-23 01:57:22'),
(6, 'student1', 3, 54, 'P+I', 1, 0, 0, 0, '2024-04-22 07:59:16'),
(7, 'student1', 3, 38, 'I', 0, 0, 0, 0, '2024-04-18 10:13:10'),
(8, 'student2', 4, 43, 'P', 1, 0, 1, 0, '2024-04-18 10:10:35'),
(9, 'student2', 4, 196, 'P+I', 0, 0, 0, 0, '2024-04-18 10:11:47'),
(10, 'student2', 4, 54, 'P+I', 1, 0, 0, 0, '2024-04-22 07:59:14'),
(11, 'student2', 4, 66, 'I', 0, 0, 0, 0, '2024-04-18 10:12:43'),
(12, 'student3', 5, 43, 'P', 1, 0, 0, 0, '2024-04-18 10:10:35'),
(13, 'student3', 5, 196, 'P+I', 0, 0, 0, 0, '2024-04-18 10:11:47'),
(14, 'student3', 5, 186, 'P+I', 0, 0, 0, 0, '2024-04-18 10:13:42'),
(15, 'student4', 6, 196, 'P+I', 1, 0, 0, 0, '2024-04-19 11:24:33'),
(16, 'student4', 6, 54, 'P+I', 0, 0, 0, 0, '2024-04-18 10:12:15'),
(17, 'student5', 7, 43, 'P', 1, 1, 0, 1, '2024-04-22 07:58:47'),
(18, 'student5', 7, 54, 'P+I', 0, 0, 0, 0, '2024-04-18 10:12:15'),
(19, 'student5', 7, 66, 'I', 0, 0, 0, 0, '2024-04-18 10:12:43'),
(20, 'student123', 2, 25, 'P', 0, 0, 0, 0, '2024-04-23 06:45:12'),
(24, 'student123', 2, 72, 'P', 0, 0, 0, 0, '2024-04-23 08:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `sid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `college_id` varchar(11) DEFAULT NULL,
  `addr` varchar(300) DEFAULT NULL,
  `mobile_no` varchar(11) DEFAULT NULL,
  `email_1` varchar(100) DEFAULT NULL,
  `email_2` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pwd` tinyint(1) DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `marks_10` varchar(10) DEFAULT '0',
  `marks_12` varchar(10) DEFAULT '0',
  `program` varchar(5) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `degree_type` varchar(50) DEFAULT NULL,
  `dept` varchar(200) DEFAULT NULL,
  `special_dept` varchar(200) DEFAULT NULL,
  `cgpa_1` varchar(5) DEFAULT '0',
  `cgpa_2` varchar(5) DEFAULT '0',
  `cgpa_3` varchar(5) DEFAULT '0',
  `cgpa_4` varchar(5) DEFAULT '0',
  `cgpa` varchar(5) NOT NULL DEFAULT '0',
  `backlogs` varchar(5) DEFAULT '0',
  `red_flag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`sid`, `username`, `name`, `college_id`, `addr`, `mobile_no`, `email_1`, `email_2`, `guardian_name`, `gender`, `category`, `dob`, `pwd`, `blood_group`, `marks_10`, `marks_12`, `program`, `degree`, `degree_type`, `dept`, `special_dept`, `cgpa_1`, `cgpa_2`, `cgpa_3`, `cgpa_4`, `cgpa`, `backlogs`, `red_flag`) VALUES
(2, 'student123', 'Nihar', '2023PCP5317', 'Ashiyana Mangalam Kalwar Jaipur', '8050106439', 'niharkajla28@gmail.com', 'niharkajla28@gmail.com', 'Kamal', 'Male', 'General', '1995-10-28', 0, 'O+', '88', '85', 'PG', 'M.Tech', 'Full Time', 'Computer Science and Engineering', 'CSE', '8', '9.5', '7', '0', '8.167', '1', 2),
(3, 'student1', 'Ellen Degenerous', '2023PCP5318', 'malviya nagar, jaipur', '8050106439', 'niharkajla28@gmail.com', 'niharkajla8@gmail.com', 'Adam', 'Female', 'General', '2024-03-05', 0, 'B+', '70', '70', 'PG', 'M.Tech', 'Full Time', 'Computer Science and Engineering', 'CSIS', '9', '9', '0', '0', '9', '0', 0),
(4, 'student2', 'Suhana Sharma', '2023PCP5305', 'Gaziabad,up', '8050106439', 'niharamazon5005@gmail.com', 'niharkajla28@gmail.com', 'Robert', 'Female', 'General', '2024-03-07', 0, 'A+', '90', '90', 'PG', 'M.Tech', 'Full Time', 'Computer Science and Engineering', 'CSE', '9', '0', '0', '0', '9', '0', 0),
(5, 'student3', 'Sagar Shah', '2023PCP5319', 'Mumbai,mh', '8050106439', 'niharkajla123@gmail.com', 'niharkajla28@gmail.com', 'Ramesh', 'Male', 'OBC', '2024-02-01', 0, 'AB+', '80', '85', 'PG', 'M.Tech', 'Full Time', 'Computer Science and Engineering', 'VLSI', '8.5', '8', '9', '9.5', '8.75', '0', 0),
(6, 'student4', 'Samay Raina', '2023PCP5320', 'Mumbai, Maharashtra', '8050106439', 'niharkajla28@gmail.com', 'niharkajla28@gmail.com', 'Raghav Raina', 'Male', 'General', '2023-12-07', 1, 'O+', '90', '95', 'PG', 'M.Tech', 'Full Time', 'Computer Science and Engineering', 'PS', '8', '8', '8', '8', '8', '1', 0),
(7, 'student5', 'Inna', '2023PCP5321', 'Mumbai, MH', '8050106439', 'niharkajla123@gmail.com', 'niharkajla28@gmail.com', 'Rajesh Mokal', 'Female', 'SC', '2024-01-16', 0, 'AB-', '90', '90', 'PG', 'M.Tech', 'Full Time', 'Chemical Engineering', 'CE', '9', '9', '9', '9', '9', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(80) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `admin`) VALUES
(1, 'admin123', '$2b$12$nApwsxzhu95XJrns1OBb8uRULCy/KBvBNYNVIhKBvUW01Drazl1JS', 1),
(2, 'student123', '$2b$12$Bh5s9POB849bOIFnEhwXle1SncaRuxHvNJp3zDJblGzBq/8A9QadK', 0),
(4, 'student1', '$2b$12$NIBWdQFEExWUqDxoeUs7AeXwqeX8GNHjAU5Aabx02dRaDsAkJUYSq', 0),
(5, 'student2', '$2b$12$Fv3Aht7Vc.34pw71vMq78u.8R4S533JnsuuVN831znJ4W2MqucoKe', 0),
(6, 'student3', '$2b$12$IMzGfShJyeU1xYTgJUgNLOlXajzf8vtmn07DDFZibJfg4jU3v5mt2', 0),
(7, 'student4', '$2b$12$k2FysiAG44dOwSLk4c3pxeTzbw9F/9lCJ98WEatbgSMPLQeGXboIG', 0),
(8, 'student5', '$2b$12$VO5Sbl7xW9knpLPpm3KekeX2FSMGY.p/drywQ8N4mYAwDXnYdyufO', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`ad_no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`b_id`),
  ADD UNIQUE KEY `special` (`special`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cno`);

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `mail_details`
--
ALTER TABLE `mail_details`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `cno` (`cno`);

--
-- Indexes for table `student_company_reg`
--
ALTER TABLE `student_company_reg`
  ADD PRIMARY KEY (`scr_id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `cno` (`cno`);

--
-- Indexes for table `student_offer`
--
ALTER TABLE `student_offer`
  ADD PRIMARY KEY (`so_id`),
  ADD KEY `cno` (`cno`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `ad_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `mail_details`
--
ALTER TABLE `mail_details`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_company_reg`
--
ALTER TABLE `student_company_reg`
  MODIFY `scr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `student_offer`
--
ALTER TABLE `student_offer`
  MODIFY `so_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mail_details`
--
ALTER TABLE `mail_details`
  ADD CONSTRAINT `cno` FOREIGN KEY (`cno`) REFERENCES `company` (`cno`);

--
-- Constraints for table `student_company_reg`
--
ALTER TABLE `student_company_reg`
  ADD CONSTRAINT `student_company_reg_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student_table` (`sid`),
  ADD CONSTRAINT `student_company_reg_ibfk_2` FOREIGN KEY (`cno`) REFERENCES `company` (`cno`);

--
-- Constraints for table `student_offer`
--
ALTER TABLE `student_offer`
  ADD CONSTRAINT `student_offer_ibfk_1` FOREIGN KEY (`cno`) REFERENCES `company` (`cno`),
  ADD CONSTRAINT `student_offer_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student_table` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
