-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 10:56 AM
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
  `last_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cno`, `company_name`, `website_link`, `profile`, `cgpa`, `marks_10`, `marks_12`, `backlogs`, `ctc`, `offer_type`, `stipend`, `duration`, `location`, `start_date`, `ppo`, `active_reg`, `last_date`) VALUES
(1, 'Thompson, Taylor and Hughes', 'rodriguez.com', 'Full Stack Developer', '7', '56', '69', '7', '26', 'I', '117062', '8', 'North Andrew', 'Aug', 1, 1, '2024-04-09'),
(2, 'Martin-Flores', 'mayer.biz', 'Trainee', '5', '54', '54', '3', '15', 'I', '74908', '6', 'Port Michaelfurt', 'July', 0, 0, '2024-04-25'),
(3, 'Moody, Jones and Barnes', 'holmes-mccarthy.com', 'Software Engineer', '4', '78', '52', '5', '13', 'I', '79268', '9', 'Port Heather', 'May', 0, 1, '2024-04-14'),
(4, 'Campbell-Lewis', 'yang-miller.net', 'Full Stack Developer', '2', '73', '70', '7', '26', 'P+I', '100839', '4', 'Pattersonchester', 'Jun', 1, 0, '2024-05-02'),
(5, 'Wolfe-Anderson', 'jackson.com', 'Trainee', '4', '52', '77', '3', '13', 'P', '78591', '6', 'Lake Kevin', 'Nov', 0, 0, '2024-04-15'),
(6, 'James, Chapman and Carter', 'ward-horton.net', 'Hardware Eng', '2', '53', '56', '9', '37', 'P', '101042', '4', 'Brownmouth', 'Sep', 0, 1, '2024-04-20'),
(7, 'Fuentes Inc', 'johnson-dawson.net', 'SDE', '7', '51', '80', '5', '13', 'I', '102698', '8', 'New Sarahstad', 'Feb', 1, 0, '2024-04-25'),
(8, 'Cooper-Jordan', 'villa.com', 'SDE', '8', '70', '80', '4', '52', 'I', '100798', '6', 'Kennethland', 'Aug', 1, 1, '2024-04-19'),
(9, 'Flores, White and Peters', 'long-garcia.com', 'Software Engineer', '3', '50', '54', '3', '53', 'I', '73024', '2', 'East Joshuachester', 'Aug', 0, 0, '2024-04-17'),
(10, 'Keith-Howe', 'frost-cook.org', 'Hardware Eng', '5', '55', '65', '9', '22', 'P', '80452', '2', 'Perkinsview', 'Apr', 0, 0, '2024-04-12'),
(11, 'Moore-Kim', 'phillips.net', 'SDE', '8', '56', '51', '6', '21', 'I', '98152', '2', 'Cannonburgh', 'Nov', 0, 0, '2024-04-06'),
(12, 'Crawford, Young and Myers', 'jones-evans.com', 'SDE', '8', '62', '54', '9', '20', 'P+I', '43342', '2', 'North Anna', 'Feb', 1, 0, '2024-04-04'),
(13, 'Glover, Robinson and Robertson', 'williams-hicks.com', 'Software Engineer', '2', '56', '63', '7', '18', 'P', '60171', '5', 'East David', 'July', 0, 0, '2024-04-09'),
(14, 'Williams, Singh and Anthony', 'weber.info', 'SDE', '8', '71', '66', '9', '27', 'I', '63741', '2', 'West Ravenville', 'Dec', 0, 0, '2024-04-12'),
(15, 'Spears Group', 'barber.com', 'Full Stack Developer', '5', '76', '53', '7', '37', 'I', '76249', '5', 'West Matthewstad', 'Mar', 1, 0, '2024-05-01'),
(16, 'Jackson-Pierce', 'lee-mccoy.net', 'DevOps', '3', '73', '61', '3', '34', 'P', '73935', '9', 'Gregburgh', 'Sep', 1, 0, '2024-04-15'),
(17, 'Clay, Melton and Cohen', 'smith-sutton.org', 'DevOps', '8', '77', '59', '5', '16', 'P+I', '81219', '7', 'North Danielbury', 'May', 0, 1, '2024-04-18'),
(18, 'Torres, Murphy and Mathews', 'guerra.biz', 'Full Stack Developer', '8', '75', '51', '5', '41', 'P+I', '60659', '5', 'West Paulton', 'Jan', 1, 1, '2024-04-13'),
(19, 'Gonzalez-Boyd', 'moore.com', 'Manager', '3', '61', '67', '6', '21', 'P', '89785', '4', 'Dennisside', 'Feb', 0, 1, '2024-04-21'),
(20, 'Johnson-Reynolds', 'montgomery.com', 'Full Stack Developer', '3', '63', '79', '6', '44', 'P+I', '65624', '8', 'Lopezborough', 'July', 1, 1, '2024-04-21'),
(21, 'Simmons-Fisher', 'abbott.org', 'Software Engineer', '5', '53', '55', '2', '24', 'P+I', '42109', '6', 'North Brenda', 'Feb', 0, 0, '2024-04-23'),
(22, 'Chang, Johnson and Green', 'ryan-duarte.com', 'Full Stack Developer', '4', '62', '54', '7', '14', 'I', '42343', '2', 'New Christopherton', 'Apr', 0, 1, '2024-04-07'),
(23, 'Manning Inc', 'hammond-snyder.net', 'DevOps', '6', '80', '57', '8', '55', 'I', '59815', '5', 'West Conniemouth', 'Oct', 1, 0, '2024-04-06'),
(24, 'Bennett, King and Murphy', 'white-ryan.net', 'Trainee', '9', '50', '65', '7', '36', 'P+I', '79278', '9', 'Millerside', 'Jun', 0, 1, '2024-04-11'),
(25, 'Curtis, Hubbard and Caldwell', 'cruz.com', 'Full Stack Developer', '6', '60', '64', '7', '56', 'P', '70110', '8', 'Costahaven', 'Aug', 0, 1, '2024-04-27'),
(26, 'Marsh-Cardenas', 'michael-anthony.biz', 'Software Engineer', '2', '75', '54', '9', '55', 'P', '42225', '4', 'South Courtney', 'Mar', 0, 1, '2024-04-23'),
(27, 'Maldonado-Vazquez', 'duffy.info', 'Manager', '5', '78', '68', '5', '52', 'P', '58084', '7', 'New Christine', 'Aug', 0, 1, '2024-04-23'),
(28, 'Smith Group', 'turner-moore.com', 'Trainee', '5', '61', '79', '3', '52', 'I', '93046', '5', 'Cameronberg', 'Jun', 1, 0, '2024-04-16'),
(29, 'Hernandez-Pena', 'carter.org', 'SDE', '7', '58', '66', '7', '43', 'P', '87189', '9', 'Whitestad', 'Dec', 1, 0, '2024-04-22'),
(30, 'Hays, Patton and Watts', 'khan.com', 'DevOps', '7', '52', '60', '7', '14', 'P+I', '99305', '3', 'East Johnathan', 'Mar', 0, 0, '2024-04-13'),
(31, 'Osborne, Mullen and Floyd', 'velasquez.org', 'Hardware Eng', '6', '53', '54', '2', '33', 'P+I', '96950', '3', 'West Summer', 'July', 0, 1, '2024-04-08'),
(32, 'Stephens and Sons', 'lopez.com', 'Trainee', '9', '61', '77', '5', '54', 'P+I', '56680', '8', 'East Jeffrey', 'Oct', 1, 0, '2024-04-12'),
(33, 'Phillips-Robertson', 'baker-shaffer.com', 'DevOps', '7', '59', '53', '4', '32', 'I', '45024', '8', 'Garyburgh', 'Sep', 1, 1, '2024-04-28'),
(34, 'Riggs, Campos and Fleming', 'frank-herrera.info', 'Full Stack Developer', '9', '56', '55', '4', '53', 'P+I', '91826', '4', 'North Brittany', 'Feb', 1, 0, '2024-04-10'),
(35, 'Clark, Smith and Kelley', 'sanders.com', 'SDE', '2', '65', '62', '5', '30', 'I', '107268', '4', 'Chanville', 'Sep', 1, 0, '2024-04-04'),
(36, 'Thompson, Wood and Haynes', 'morrison.com', 'DevOps', '8', '77', '70', '5', '51', 'P+I', '81261', '6', 'Crystalchester', 'Sep', 1, 0, '2024-04-06'),
(37, 'Stafford Group', 'woodward-curtis.com', 'Manager', '7', '60', '72', '5', '42', 'P+I', '68229', '4', 'Port Michelle', 'July', 0, 0, '2024-04-26'),
(38, 'Campbell-Carson', 'dunlap-martin.net', 'Trainee', '3', '51', '57', '7', '36', 'I', '83045', '9', 'Morrisfort', 'Jan', 1, 1, '2024-04-30'),
(39, 'Jacobs LLC', 'fisher-anderson.com', 'Trainee', '7', '67', '80', '3', '25', 'P+I', '76727', '9', 'New James', 'Sep', 0, 1, '2024-04-19'),
(40, 'Blake LLC', 'harrington.biz', 'DevOps', '7', '58', '51', '9', '44', 'P+I', '46129', '8', 'South Huntershire', 'July', 0, 0, '2024-04-27'),
(41, 'Sparks, Webb and Andrews', 'brown.org', 'Trainee', '4', '67', '73', '6', '14', 'P+I', '44448', '6', 'Ricardomouth', 'Oct', 0, 0, '2024-04-13'),
(42, 'Zuniga, Ruiz and Rodriguez', 'rollins.com', 'Trainee', '5', '50', '72', '6', '33', 'I', '84534', '2', 'New Aaronmouth', 'Aug', 0, 1, '2024-04-28'),
(43, 'Acosta, Butler and Perez', 'scott.com', 'Hardware Eng', '3', '71', '79', '9', '15', 'P', '90601', '8', 'Princemouth', 'Dec', 1, 1, '2024-05-01'),
(44, 'Delacruz-Smith', 'gilbert.net', 'Trainee', '3', '66', '62', '2', '28', 'P+I', '83206', '6', 'North Anthonyfort', 'Apr', 0, 0, '2024-04-07'),
(45, 'Cline, Graham and Miller', 'price-grimes.com', 'Full Stack Developer', '3', '72', '54', '8', '54', 'I', '107792', '4', 'Port Travisberg', 'Feb', 1, 1, '2024-04-06'),
(46, 'Carlson and Sons', 'avila.com', 'Hardware Eng', '5', '70', '63', '3', '60', 'P+I', '65668', '7', 'Port Jillian', 'Jun', 0, 0, '2024-04-08'),
(47, 'Wright-Shaw', 'gonzalez.com', 'SDE', '6', '51', '59', '4', '33', 'P+I', '108606', '3', 'Port Michaelfurt', 'Nov', 1, 1, '2024-04-06'),
(48, 'Nichols-Roberts', 'tapia.com', 'Manager', '5', '64', '66', '9', '35', 'P+I', '85473', '4', 'West Josephstad', 'Nov', 0, 1, '2024-04-19'),
(49, 'Butler-Cline', 'turner.biz', 'Software Engineer', '5', '75', '57', '6', '40', 'I', '54079', '8', 'New Ellenfurt', 'July', 0, 0, '2024-04-24'),
(50, 'George Ltd', 'fuentes-larson.com', 'DevOps', '6', '55', '62', '9', '30', 'P', '109659', '4', 'Baileyview', 'Feb', 1, 1, '2024-04-14'),
(51, 'Mclaughlin LLC', 'johnson.com', 'Software Engineer', '5', '77', '53', '2', '22', 'P+I', '99946', '4', 'West Michelle', 'Jan', 0, 1, '2024-04-13'),
(52, 'Rios-Brown', 'harris.com', 'Hardware Eng', '6', '74', '70', '5', '60', 'I', '93162', '2', 'South Paul', 'Aug', 1, 0, '2024-04-18'),
(53, 'Curtis, Thomas and Meyers', 'mcconnell-palmer.info', 'Trainee', '6', '63', '53', '9', '48', 'P', '95090', '8', 'Joshuaton', 'Jun', 0, 1, '2024-04-07'),
(54, 'Andrews PLC', 'thomas.com', 'Software Engineer', '3', '65', '59', '5', '13', 'P+I', '52916', '2', 'Hessfurt', 'Nov', 1, 1, '2024-04-29'),
(55, 'Wilson, Brennan and Bond', 'green.com', 'DevOps', '6', '73', '72', '4', '14', 'P', '70299', '9', 'Ninaport', 'May', 0, 0, '2024-04-05'),
(56, 'Barber-Gutierrez', 'sanchez.biz', 'Trainee', '8', '73', '65', '2', '39', 'P', '61591', '2', 'Brockport', 'July', 0, 1, '2024-04-04'),
(57, 'Thompson LLC', 'matthews.org', 'Full Stack Developer', '5', '79', '67', '4', '18', 'P', '44433', '2', 'East Nataliechester', 'Oct', 0, 1, '2024-04-30'),
(58, 'Sellers, Richardson and Ruiz', 'williams.com', 'Manager', '6', '67', '71', '2', '41', 'P', '42871', '7', 'Antonioberg', 'Sep', 1, 0, '2024-04-25'),
(59, 'Nguyen and Sons', 'johnson.com', 'Hardware Eng', '7', '56', '76', '7', '35', 'P', '86414', '8', 'Raymondstad', 'May', 0, 0, '2024-04-30'),
(60, 'Fisher, Miller and Gray', 'clay.com', 'Trainee', '4', '79', '60', '6', '43', 'P+I', '97685', '9', 'Alexisview', 'Dec', 1, 0, '2024-04-10'),
(61, 'James, Young and Escobar', 'lindsey-morris.info', 'Trainee', '7', '57', '79', '9', '58', 'P+I', '89906', '7', 'Port Debbie', 'Feb', 1, 0, '2024-04-27'),
(62, 'Marquez, Jackson and Romero', 'lee.biz', 'Software Engineer', '3', '65', '69', '4', '36', 'P+I', '79798', '8', 'North Amy', 'Apr', 1, 1, '2024-05-02'),
(63, 'Little PLC', 'whitaker.biz', 'DevOps', '3', '71', '79', '9', '33', 'P+I', '116664', '7', 'New Vanessa', 'Mar', 1, 1, '2024-04-23'),
(64, 'Benjamin, Jackson and Shannon', 'morris-roberts.com', 'Hardware Eng', '9', '66', '76', '7', '36', 'P', '78670', '6', 'Erichaven', 'July', 0, 0, '2024-04-04'),
(65, 'Collins, Garcia and Smith', 'perez-williams.com', 'Hardware Eng', '6', '67', '50', '9', '49', 'P+I', '53631', '3', 'West Ashley', 'July', 0, 1, '2024-04-30'),
(66, 'Best, Miller and Mills', 'stewart-mercer.org', 'SDE', '6', '63', '51', '6', '57', 'I', '73726', '3', 'East Beth', 'May', 0, 1, '2024-05-02'),
(67, 'Cook Inc', 'washington.net', 'DevOps', '4', '64', '54', '9', '23', 'P', '42778', '4', 'New Brianfort', 'Oct', 1, 1, '2024-04-16'),
(68, 'Warner, Wheeler and Brady', 'hoffman-mccall.com', 'DevOps', '8', '55', '74', '2', '37', 'P', '66499', '8', 'Port Jillchester', 'Dec', 0, 0, '2024-04-29'),
(69, 'Valentine Ltd', 'ray-lewis.com', 'Hardware Eng', '9', '61', '75', '7', '23', 'I', '98776', '4', 'Summerstown', 'Dec', 1, 0, '2024-04-11'),
(70, 'Daugherty and Sons', 'rollins.biz', 'Hardware Eng', '2', '66', '79', '2', '31', 'P', '84263', '5', 'New Donnaport', 'July', 0, 0, '2024-04-07'),
(71, 'Smith, Walls and Sanders', 'castro-garcia.net', 'Full Stack Developer', '2', '69', '54', '8', '60', 'I', '119063', '5', 'East Denise', 'Nov', 1, 0, '2024-04-05'),
(72, 'Moore, Malone and Calhoun', 'martin.com', 'Hardware Eng', '8', '74', '60', '5', '12', 'P', '106766', '7', 'Port Christina', 'Dec', 1, 1, '2024-04-23'),
(73, 'Morgan-Moore', 'hawkins.com', 'Trainee', '8', '52', '70', '7', '9', 'I', '66630', '7', 'Port Ashley', 'Apr', 0, 1, '2024-04-04'),
(74, 'Huber, Todd and Cook', 'castro.com', 'Full Stack Developer', '8', '63', '54', '6', '33', 'P', '112133', '6', 'New Jacquelineland', 'Dec', 0, 0, '2024-04-28'),
(75, 'Lewis-Diaz', 'kim-hardy.org', 'Full Stack Developer', '4', '74', '61', '3', '18', 'I', '90981', '7', 'Lake Meganburgh', 'Apr', 0, 1, '2024-04-29'),
(76, 'Cortez-Perez', 'peterson.com', 'Trainee', '7', '63', '50', '3', '50', 'P+I', '111099', '6', 'East Todd', 'July', 1, 0, '2024-04-15'),
(77, 'Rangel and Sons', 'jones.com', 'Software Engineer', '3', '57', '68', '4', '43', 'P', '99815', '2', 'Davidchester', 'Jan', 0, 1, '2024-04-14'),
(78, 'Simpson-Park', 'ross.org', 'Hardware Eng', '7', '59', '80', '9', '28', 'I', '84465', '8', 'West Gabrielburgh', 'Mar', 0, 0, '2024-04-24'),
(79, 'Bryant Group', 'brady.com', 'Manager', '5', '68', '57', '4', '38', 'P+I', '60492', '9', 'West Georgeton', 'Nov', 0, 1, '2024-04-06'),
(80, 'Meyer-Peters', 'grant-abbott.com', 'SDE', '6', '50', '65', '9', '16', 'I', '61496', '9', 'North Jose', 'Apr', 0, 0, '2024-04-10'),
(81, 'Doyle, Shields and Thomas', 'wood.com', 'Software Engineer', '6', '76', '74', '5', '19', 'P', '78946', '5', 'New Elizabethhaven', 'Apr', 1, 1, '2024-04-28'),
(82, 'Kerr-Porter', 'acosta-kennedy.com', 'SDE', '5', '64', '67', '6', '36', 'P', '102247', '2', 'Martintown', 'May', 1, 1, '2024-04-13'),
(83, 'Duncan, Miller and Doyle', 'perez.org', 'SDE', '9', '74', '68', '5', '44', 'P', '58215', '7', 'East Brandon', 'Mar', 0, 0, '2024-04-06'),
(84, 'Myers-Gardner', 'williams-johnson.com', 'SDE', '3', '79', '71', '5', '46', 'I', '72812', '8', 'Grayton', 'Jan', 0, 1, '2024-04-09'),
(85, 'Mooney PLC', 'mitchell-barrett.com', 'Software Engineer', '3', '53', '51', '2', '17', 'P', '97002', '4', 'Jillport', 'Sep', 0, 0, '2024-04-19'),
(86, 'Watson, Barker and Lewis', 'gray.com', 'Manager', '8', '77', '52', '6', '54', 'P', '117786', '8', 'Stephenview', 'Aug', 1, 1, '2024-04-28'),
(87, 'Hale PLC', 'hernandez.com', 'SDE', '2', '77', '74', '2', '26', 'P+I', '83285', '2', 'North Sandrastad', 'Mar', 0, 1, '2024-04-08'),
(88, 'Johnson-Mcdaniel', 'gonzales-vincent.com', 'Trainee', '2', '71', '75', '6', '50', 'P', '118898', '3', 'Jenniferton', 'Aug', 1, 1, '2024-04-18'),
(89, 'Stout-Orr', 'zamora-garner.biz', 'Hardware Eng', '6', '56', '57', '6', '43', 'I', '98506', '8', 'North Jennifermouth', 'Feb', 0, 1, '2024-04-23'),
(90, 'Lee, Martinez and Stone', 'steele.biz', 'Software Engineer', '7', '61', '63', '8', '50', 'P', '85130', '5', 'Markburgh', 'Jun', 0, 0, '2024-04-05'),
(91, 'Sawyer, Schroeder and Richards', 'jones-baker.org', 'Software Engineer', '4', '59', '80', '3', '44', 'P+I', '61419', '8', 'South Courtney', 'Apr', 1, 1, '2024-04-14'),
(92, 'Fitzgerald-Perkins', 'gibson.org', 'Trainee', '2', '57', '54', '7', '45', 'I', '76176', '3', 'Jamesland', 'Mar', 1, 0, '2024-04-15'),
(93, 'Townsend, Norris and Hernandez', 'edwards.biz', 'DevOps', '8', '78', '52', '2', '35', 'P', '74827', '5', 'Stephanieberg', 'Oct', 0, 1, '2024-04-28'),
(94, 'Kelly Group', 'bowman.com', 'SDE', '2', '53', '56', '5', '58', 'P+I', '72555', '8', 'East Lisa', 'Jun', 1, 0, '2024-04-27'),
(95, 'Castillo Inc', 'thompson-edwards.org', 'SDE', '4', '53', '64', '4', '27', 'P', '116526', '6', 'Daybury', 'Jan', 0, 1, '2024-05-02'),
(96, 'Carter-Griffith', 'lee.com', 'Trainee', '3', '61', '79', '8', '58', 'I', '58509', '8', 'Ericaburgh', 'Nov', 0, 1, '2024-04-12'),
(97, 'Guerrero, Smith and Newton', 'nelson.com', 'Hardware Eng', '6', '67', '63', '8', '52', 'P', '116349', '2', 'South Amy', 'Feb', 0, 0, '2024-04-16'),
(98, 'Mclaughlin, Stephens and Barber', 'sullivan-bradley.com', 'DevOps', '2', '74', '52', '2', '33', 'P', '82066', '5', 'South Blake', 'Jan', 1, 0, '2024-04-29'),
(99, 'Gonzalez-Porter', 'fernandez.com', 'Software Engineer', '4', '66', '73', '3', '32', 'P', '79386', '4', 'Smithbury', 'May', 1, 1, '2024-04-21'),
(100, 'Rivera, Briggs and Johnston', 'villa.info', 'Trainee', '9', '63', '57', '5', '51', 'I', '85362', '7', 'Lopezland', 'Sep', 0, 0, '2024-04-26'),
(101, 'Knapp-Garrett', 'walker-walsh.net', 'Trainee', '8', '65', '54', '0', '59', 'P', '103881', '6', 'Mcintoshview', 'Nov', 1, 1, '2024-04-24'),
(102, 'Coleman and Sons', 'williams.com', 'Full Stack Developer', '6', '50', '75', '1', '35', 'P', '84183', '8', 'South Gailfurt', 'Jun', 1, 1, '2024-04-30'),
(103, 'Mann, Sherman and Herrera', 'wells-james.com', 'DevOps', '9', '79', '54', '2', '9', 'P+I', '109091', '7', 'Ninaview', 'July', 1, 0, '2024-04-06'),
(104, 'Vega, Durham and Santos', 'hernandez.com', 'Full Stack Developer', '7', '50', '61', '6', '22', 'I', '51306', '8', 'Terryville', 'Oct', 1, 0, '2024-04-22'),
(105, 'Cooper-Shah', 'ingram-daniel.info', 'SDE', '2', '77', '79', '7', '39', 'P+I', '78147', '3', 'Powersfurt', 'July', 0, 0, '2024-04-17'),
(106, 'Mitchell Ltd', 'murray.com', 'SDE', '7', '58', '51', '5', '22', 'P+I', '50450', '9', 'South Lisatown', 'Jan', 0, 0, '2024-04-29'),
(107, 'Rojas LLC', 'hall.com', 'Manager', '4', '64', '53', '9', '52', 'P+I', '116037', '7', 'Brewermouth', 'Mar', 0, 1, '2024-04-27'),
(108, 'Jones Inc', 'wright-jones.com', 'Hardware Eng', '9', '69', '50', '5', '28', 'P+I', '45159', '2', 'Tracyshire', 'Jan', 0, 0, '2024-04-17'),
(109, 'Pollard, Hill and Carrillo', 'elliott.net', 'Manager', '7', '69', '61', '3', '22', 'P', '117088', '4', 'Bryanhaven', 'Feb', 1, 1, '2024-05-02'),
(110, 'Wagner, Jimenez and Bailey', 'lam.com', 'SDE', '5', '72', '60', '2', '38', 'P', '77485', '2', 'Rogersfurt', 'Jun', 0, 0, '2024-04-04'),
(111, 'Nelson, Cole and Graham', 'wheeler.info', 'SDE', '9', '50', '55', '3', '59', 'I', '68452', '2', 'Nataliestad', 'Feb', 1, 1, '2024-04-04'),
(112, 'Williams, Martin and Singleton', 'hanson.org', 'Trainee', '6', '77', '57', '8', '51', 'P+I', '80377', '8', 'Gonzalezton', 'Nov', 1, 1, '2024-04-14'),
(113, 'Brandt, Bennett and Acosta', 'anderson.com', 'Software Engineer', '3', '68', '58', '5', '59', 'P+I', '60416', '5', 'Holmeschester', 'Jan', 1, 1, '2024-04-21'),
(114, 'Stevens, Reid and Schroeder', 'mcgee.com', 'Trainee', '6', '53', '80', '0', '21', 'P+I', '116456', '8', 'Port Aliciafurt', 'May', 0, 1, '2024-04-30'),
(115, 'Robertson Inc', 'moon.com', 'Trainee', '2', '53', '74', '1', '51', 'I', '63664', '5', 'East Lindsayborough', 'Sep', 0, 1, '2024-04-11'),
(116, 'Davis PLC', 'boyle-wright.com', 'Trainee', '6', '68', '62', '3', '15', 'P+I', '113113', '3', 'Port Nathanchester', 'Dec', 1, 0, '2024-05-01'),
(117, 'Kane-Webb', 'anderson-nixon.org', 'Full Stack Developer', '7', '72', '51', '3', '21', 'P', '56781', '2', 'Harveyville', 'Jan', 1, 0, '2024-05-01'),
(118, 'Taylor-Hodge', 'wood.com', 'Hardware Eng', '2', '58', '78', '2', '31', 'P', '115439', '6', 'Howardton', 'Jan', 1, 1, '2024-04-13'),
(119, 'Flores-Stephenson', 'fernandez-richardson.net', 'Hardware Eng', '7', '56', '58', '8', '17', 'P', '40667', '7', 'Maryfort', 'Nov', 0, 1, '2024-04-07'),
(120, 'West-Jones', 'johnson.org', 'Full Stack Developer', '2', '62', '73', '7', '10', 'P+I', '78856', '4', 'South Brittanyview', 'Jan', 0, 0, '2024-04-20'),
(121, 'Snyder Inc', 'allen-rhodes.net', 'SDE', '8', '70', '62', '2', '42', 'P+I', '64929', '3', 'West Laura', 'Sep', 1, 1, '2024-04-06'),
(122, 'Leonard, Fisher and Martin', 'moore-cummings.com', 'Software Engineer', '9', '53', '56', '5', '24', 'P+I', '63785', '3', 'Port Zachary', 'Oct', 1, 0, '2024-04-28'),
(123, 'Bolton-Thomas', 'clark-cantrell.org', 'Software Engineer', '5', '68', '76', '0', '52', 'P', '44396', '2', 'Craigchester', 'Oct', 0, 1, '2024-04-16'),
(124, 'Rodriguez, Miranda and Manning', 'simpson.com', 'Trainee', '6', '72', '73', '9', '22', 'I', '110425', '7', 'South Kimberly', 'Mar', 1, 1, '2024-05-02'),
(125, 'Jordan Group', 'contreras.org', 'Manager', '5', '50', '76', '4', '41', 'I', '49623', '9', 'West Phillip', 'Feb', 1, 0, '2024-04-12'),
(126, 'Martin Inc', 'tran-flores.biz', 'SDE', '2', '66', '63', '3', '37', 'P', '118472', '3', 'North Joseph', 'Nov', 1, 0, '2024-04-22'),
(127, 'Smith-Davis', 'wilson.com', 'Full Stack Developer', '9', '61', '64', '8', '32', 'I', '112713', '6', 'West William', 'Jun', 0, 0, '2024-04-10'),
(128, 'Patrick, Olson and Anderson', 'carter-romero.org', 'Full Stack Developer', '7', '60', '80', '1', '43', 'P+I', '79895', '9', 'Tiffanyview', 'Aug', 1, 1, '2024-04-08'),
(129, 'Frederick and Sons', 'luna-santos.com', 'Software Engineer', '4', '57', '52', '5', '9', 'I', '72400', '6', 'Allisonton', 'Nov', 0, 0, '2024-05-01'),
(130, 'Brown, Aguirre and Little', 'harrison.com', 'DevOps', '9', '72', '60', '5', '20', 'P+I', '114836', '2', 'Amandachester', 'Mar', 1, 0, '2024-04-30'),
(131, 'Nichols Inc', 'hooper.com', 'Full Stack Developer', '5', '51', '64', '3', '14', 'P+I', '97804', '7', 'New Stevenside', 'Dec', 0, 0, '2024-04-12'),
(132, 'Parker, Bryant and Harris', 'wilson.org', 'Hardware Eng', '2', '52', '59', '7', '18', 'P', '89222', '5', 'Ginaville', 'May', 1, 1, '2024-04-22'),
(133, 'Lopez Group', 'hall.com', 'DevOps', '5', '63', '61', '8', '49', 'P', '73669', '3', 'New Katherine', 'Aug', 0, 0, '2024-04-06'),
(134, 'Romero PLC', 'owens.com', 'Full Stack Developer', '4', '74', '54', '0', '60', 'I', '93222', '2', 'Millshaven', 'Jun', 1, 1, '2024-04-27'),
(135, 'Keller, Stewart and Smith', 'rogers.com', 'Full Stack Developer', '4', '65', '73', '3', '58', 'I', '100004', '8', 'Lake Lisa', 'Jun', 0, 0, '2024-04-07'),
(136, 'Spencer, Sims and Gutierrez', 'brown-hernandez.com', 'SDE', '9', '77', '74', '6', '45', 'P+I', '69779', '8', 'Port Josephbury', 'Mar', 0, 1, '2024-04-04'),
(137, 'Gonzalez-Hardy', 'jordan.com', 'Manager', '6', '66', '58', '1', '44', 'P', '111487', '5', 'North Rebekah', 'Oct', 0, 0, '2024-04-06'),
(138, 'Nguyen-Hubbard', 'wagner.com', 'SDE', '2', '57', '64', '9', '15', 'I', '93915', '9', 'Lake Adam', 'Jan', 1, 1, '2024-04-21'),
(139, 'Richardson, Leonard and Thomas', 'davidson-scott.com', 'Software Engineer', '4', '78', '62', '9', '34', 'P', '104619', '4', 'South Lori', 'Jan', 0, 0, '2024-04-15'),
(140, 'Park, Berger and Fernandez', 'jennings.info', 'Hardware Eng', '5', '61', '65', '1', '24', 'I', '97716', '7', 'Rangelchester', 'Nov', 1, 0, '2024-04-13'),
(141, 'Lucero Ltd', 'brady.com', 'Software Engineer', '5', '54', '71', '9', '40', 'P', '59026', '5', 'Murphyland', 'July', 1, 0, '2024-04-05'),
(142, 'White-Shaw', 'cooper-howe.org', 'Hardware Eng', '5', '57', '64', '5', '33', 'P', '82016', '3', 'West Anneville', 'Feb', 1, 1, '2024-04-12'),
(143, 'Carter and Sons', 'morris-black.info', 'Software Engineer', '2', '56', '59', '9', '57', 'P', '118797', '8', 'Dixonland', 'Aug', 1, 1, '2024-04-08'),
(144, 'Sutton-Taylor', 'wilson.com', 'Manager', '9', '79', '60', '6', '36', 'P+I', '118525', '5', 'South Randy', 'Dec', 0, 0, '2024-04-05'),
(145, 'Santiago and Sons', 'gonzalez.com', 'Manager', '2', '56', '74', '5', '43', 'P+I', '105730', '7', 'Scottbury', 'Mar', 1, 1, '2024-04-26'),
(146, 'Mejia Ltd', 'houston-livingston.com', 'Hardware Eng', '8', '63', '68', '8', '16', 'I', '71324', '8', 'Wilsonside', 'Jan', 1, 0, '2024-04-09'),
(147, 'Good-Rogers', 'aguirre.com', 'Hardware Eng', '7', '62', '68', '5', '54', 'P+I', '44393', '5', 'Port Valeriemouth', 'Jun', 1, 1, '2024-04-20'),
(148, 'Barber, Sanchez and Smith', 'sutton-singh.biz', 'Software Engineer', '2', '62', '52', '2', '21', 'P+I', '44520', '5', 'Loganberg', 'Oct', 0, 1, '2024-04-04'),
(149, 'Reyes Inc', 'weaver.net', 'Software Engineer', '3', '66', '72', '6', '55', 'P+I', '45033', '9', 'New Laura', 'Dec', 1, 1, '2024-04-23'),
(150, 'Page-Raymond', 'lee.com', 'DevOps', '6', '72', '60', '1', '24', 'P', '93691', '7', 'Powellberg', 'Apr', 1, 1, '2024-04-23'),
(151, 'Elliott, Palmer and Houston', 'mayer.com', 'Software Engineer', '5', '58', '59', '9', '18', 'P', '91470', '4', 'Port Rachael', 'Nov', 0, 1, '2024-04-06'),
(152, 'Wilson Group', 'brooks-williamson.org', 'Hardware Eng', '9', '52', '65', '5', '60', 'I', '83466', '3', 'Larsonbury', 'Jan', 0, 0, '2024-04-07'),
(153, 'Johnson and Sons', 'jones.com', 'Software Engineer', '2', '71', '75', '6', '47', 'I', '76513', '4', 'Martinezbury', 'Apr', 1, 0, '2024-04-07'),
(154, 'Pratt, Rodriguez and Williams', 'ramirez-sampson.com', 'Manager', '6', '77', '51', '4', '26', 'I', '104443', '2', 'Port Debraview', 'Dec', 1, 0, '2024-04-25'),
(155, 'Schmidt-Park', 'johnson-johnson.com', 'SDE', '4', '74', '78', '2', '13', 'P', '75621', '8', 'Anitastad', 'Oct', 1, 0, '2024-04-21'),
(156, 'Norman-Smith', 'johnson-davis.com', 'Manager', '8', '77', '73', '8', '53', 'I', '115624', '4', 'Kyleland', 'May', 0, 0, '2024-04-11'),
(157, 'Freeman, Rosales and Martinez', 'rodriguez.com', 'Full Stack Developer', '8', '80', '75', '5', '26', 'I', '93855', '4', 'East Julie', 'Apr', 1, 0, '2024-04-15'),
(158, 'Huber Group', 'watson.info', 'Trainee', '9', '57', '53', '5', '11', 'P', '93151', '8', 'New Josephchester', 'Apr', 0, 0, '2024-04-19'),
(159, 'Lloyd, Hamilton and Spencer', 'morales.com', 'Full Stack Developer', '6', '51', '74', '2', '21', 'I', '110493', '5', 'Ericafurt', 'Oct', 0, 0, '2024-04-13'),
(160, 'Williams Ltd', 'schwartz.com', 'Manager', '3', '77', '73', '8', '49', 'P+I', '42086', '9', 'Julieshire', 'Dec', 0, 0, '2024-04-11'),
(161, 'Lopez LLC', 'davis-tyler.com', 'Software Engineer', '4', '78', '58', '4', '12', 'P+I', '91985', '8', 'Port Robert', 'Apr', 1, 0, '2024-04-06'),
(162, 'Martinez Ltd', 'harvey-wilson.biz', 'Manager', '6', '62', '68', '6', '47', 'P+I', '56499', '4', 'Port Keith', 'May', 1, 1, '2024-04-18'),
(163, 'Leblanc, Olson and Ramirez', 'hernandez.com', 'SDE', '7', '80', '78', '4', '20', 'I', '61058', '4', 'North Oscar', 'May', 1, 0, '2024-05-01'),
(164, 'Mckee-Ford', 'bullock.com', 'Manager', '8', '65', '76', '1', '49', 'P', '94361', '7', 'New Stephenville', 'Sep', 1, 1, '2024-04-18'),
(165, 'Ingram-Knight', 'olsen-bailey.info', 'DevOps', '9', '56', '68', '9', '43', 'I', '46610', '4', 'Lake Devonhaven', 'Apr', 0, 0, '2024-04-22'),
(166, 'Davis Group', 'lopez-shaw.info', 'Full Stack Developer', '3', '50', '63', '8', '14', 'I', '82574', '9', 'Port Juan', 'Jan', 0, 1, '2024-04-22'),
(167, 'Powers, Wilson and Moses', 'castro-wilson.biz', 'SDE', '2', '54', '72', '2', '16', 'I', '92583', '6', 'Timothyton', 'Sep', 1, 0, '2024-04-24'),
(168, 'Harris Inc', 'perez.com', 'SDE', '7', '67', '52', '4', '11', 'P', '77670', '2', 'Lake Kimberly', 'Nov', 0, 1, '2024-04-27'),
(169, 'Rogers-Martin', 'blankenship-harris.net', 'Software Engineer', '7', '63', '58', '9', '22', 'P', '89392', '5', 'North Stephen', 'Oct', 0, 1, '2024-04-09'),
(170, 'Larson, Reynolds and Lopez', 'patel-adams.org', 'Manager', '8', '59', '63', '2', '39', 'P+I', '76380', '7', 'New Jared', 'Mar', 0, 1, '2024-04-20'),
(171, 'Moreno Ltd', 'boyd.info', 'Software Engineer', '6', '57', '55', '7', '53', 'I', '49728', '8', 'North Jeffrey', 'Oct', 1, 0, '2024-04-20'),
(172, 'Bradley-Romero', 'johnston.com', 'DevOps', '9', '64', '77', '1', '14', 'I', '104126', '5', 'South Noahview', 'Feb', 0, 1, '2024-04-29'),
(173, 'Sanchez, Chambers and Wilson', 'cruz.com', 'Trainee', '7', '70', '50', '7', '12', 'I', '65757', '4', 'Robertsfort', 'Nov', 0, 1, '2024-04-26'),
(174, 'Brown-Barnes', 'shields.biz', 'SDE', '5', '58', '60', '2', '10', 'P', '86394', '5', 'East Connie', 'Apr', 0, 1, '2024-04-30'),
(175, 'Allen PLC', 'taylor.biz', 'DevOps', '4', '78', '54', '1', '26', 'P+I', '97062', '2', 'Lake David', 'Feb', 0, 0, '2024-04-10'),
(176, 'Stevens PLC', 'evans.com', 'Trainee', '7', '58', '80', '7', '17', 'P', '117689', '4', 'West Micheal', 'Jan', 0, 0, '2024-04-14'),
(177, 'Short-Lucero', 'roberts.com', 'Full Stack Developer', '6', '62', '77', '4', '35', 'P+I', '85162', '9', 'New Joseview', 'May', 0, 1, '2024-04-19'),
(178, 'Wilson, Garrett and Bond', 'duncan-holt.net', 'Trainee', '7', '75', '56', '7', '41', 'P+I', '79865', '9', 'East Cheryl', 'Feb', 0, 1, '2024-04-14'),
(179, 'Lyons-Lee', 'hall-young.net', 'Trainee', '9', '69', '80', '3', '20', 'I', '103177', '6', 'Scottfurt', 'Mar', 0, 0, '2024-04-20'),
(180, 'Nelson-Rivera', 'freeman.net', 'SDE', '8', '70', '60', '5', '37', 'P', '47239', '3', 'Khanberg', 'Dec', 1, 1, '2024-04-04'),
(181, 'Lyons-Reed', 'ibarra.com', 'Full Stack Developer', '5', '63', '77', '6', '55', 'P', '62827', '2', 'Lake Curtis', 'Oct', 0, 1, '2024-04-04'),
(182, 'Rodgers-Young', 'miller.com', 'Hardware Eng', '8', '77', '62', '0', '35', 'P', '84765', '3', 'Brianaton', 'July', 1, 0, '2024-04-25'),
(183, 'Anderson, Johnson and Johnson', 'watkins.biz', 'SDE', '3', '51', '61', '2', '21', 'P', '115048', '3', 'Angelatown', 'Apr', 1, 0, '2024-04-07'),
(184, 'Maldonado-Rice', 'martinez.com', 'Full Stack Developer', '5', '66', '62', '1', '43', 'I', '81494', '5', 'Lake Christopherbury', 'May', 1, 0, '2024-04-26'),
(185, 'Copeland Inc', 'conley.com', 'Manager', '9', '75', '61', '5', '49', 'P+I', '101566', '9', 'Woodbury', 'May', 1, 0, '2024-04-29'),
(186, 'Carr, Walker and Dawson', 'patterson.info', 'Full Stack Developer', '5', '53', '54', '2', '51', 'P+I', '64298', '7', 'West John', 'Dec', 1, 1, '2024-05-02'),
(187, 'Newton-Taylor', 'martinez-ortiz.info', 'Hardware Eng', '8', '79', '63', '0', '36', 'P', '64628', '3', 'South Hectorton', 'Sep', 1, 1, '2024-04-26'),
(188, 'Wu Inc', 'williams.net', 'Software Engineer', '8', '79', '55', '9', '44', 'P+I', '62620', '8', 'South Cindy', 'Sep', 0, 0, '2024-04-15'),
(189, 'Stafford PLC', 'freeman-reynolds.net', 'Software Engineer', '6', '56', '68', '3', '49', 'P', '60081', '6', 'Crystalville', 'Aug', 0, 0, '2024-04-12'),
(190, 'Brown-Miller', 'anderson.com', 'Manager', '5', '59', '64', '9', '29', 'P', '51579', '6', 'Ballland', 'Nov', 1, 0, '2024-04-26'),
(191, 'Buchanan-Mcintyre', 'herrera-blair.com', 'SDE', '4', '80', '56', '6', '47', 'I', '50472', '3', 'Jamesmouth', 'Sep', 0, 1, '2024-04-15'),
(192, 'Miller, Lewis and Holloway', 'weaver-wade.info', 'SDE', '2', '60', '55', '0', '35', 'P+I', '89307', '2', 'Clarkestad', 'Aug', 1, 1, '2024-04-28'),
(193, 'Johnson, Morgan and Underwood', 'brady.com', 'Hardware Eng', '9', '78', '67', '6', '25', 'P', '102152', '9', 'New Zacharyburgh', 'May', 0, 0, '2024-04-11'),
(194, 'Roberts-Dawson', 'mcknight.com', 'Full Stack Developer', '4', '61', '70', '5', '47', 'P+I', '47592', '9', 'Parkerburgh', 'Jun', 0, 0, '2024-04-18'),
(195, 'Smith, Cline and Moore', 'hicks.com', 'Software Engineer', '2', '80', '79', '0', '57', 'I', '42479', '5', 'East Rogermouth', 'Aug', 0, 1, '2024-04-16'),
(196, 'Alexander, Bradley and Gonzales', 'hancock.com', 'Software Engineer', '5', '52', '54', '4', '28', 'P+I', '63480', '4', 'South Scott', 'Oct', 1, 1, '2024-04-21'),
(197, 'White, Moore and Martin', 'shaw.info', 'Software Engineer', '7', '51', '77', '0', '29', 'I', '107194', '6', 'Port Bryan', 'July', 0, 0, '2024-04-09'),
(198, 'Nunez LLC', 'alvarez.com', 'DevOps', '3', '79', '64', '3', '20', 'P', '72987', '4', 'Fernandezland', 'July', 1, 1, '2024-04-06'),
(199, 'Singleton-Rogers', 'price-marsh.com', 'DevOps', '8', '76', '61', '8', '10', 'P+I', '71991', '2', 'Patriciaborough', 'Feb', 1, 1, '2024-04-24'),
(200, 'Padilla, Adams and Macias', 'turner-smith.com', 'Full Stack Developer', '3', '51', '75', '0', '37', 'P+I', '96195', '8', 'Lindseystad', 'Apr', 0, 1, '2024-04-05');

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
(10, 'student123', '2024-04-03 08:49:37');

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

-- --------------------------------------------------------

--
-- Table structure for table `student_offer`
--

CREATE TABLE `student_offer` (
  `so_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `offer_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `backlogs` varchar(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`sid`, `username`, `name`, `college_id`, `addr`, `mobile_no`, `email_1`, `email_2`, `guardian_name`, `gender`, `category`, `dob`, `pwd`, `blood_group`, `marks_10`, `marks_12`, `program`, `degree`, `degree_type`, `dept`, `special_dept`, `cgpa_1`, `cgpa_2`, `cgpa_3`, `cgpa_4`, `cgpa`, `backlogs`) VALUES
(2, 'student123', 'Nihar', '2023PCP5317', 'Ashiyana Mangalam Kalwar Jaipur', '8050106439', 'niharkajla28@gmail.com', 'niharkajla28@gmail.com', 'Kamal', 'Male', 'General', '1995-10-28', 0, 'O+', '88', '85', 'PG', 'M.Tech', 'Full Time', 'Computer Science and Engineering', 'Computer Science and Engineering', '8', '9.5', '7', '0', '8.167', '1');

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
(2, 'student123', '$2b$12$Bh5s9POB849bOIFnEhwXle1SncaRuxHvNJp3zDJblGzBq/8A9QadK', 0);

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
  ADD PRIMARY KEY (`so_id`);

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
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_company_reg`
--
ALTER TABLE `student_company_reg`
  MODIFY `scr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_offer`
--
ALTER TABLE `student_offer`
  MODIFY `so_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_company_reg`
--
ALTER TABLE `student_company_reg`
  ADD CONSTRAINT `student_company_reg_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student_table` (`sid`),
  ADD CONSTRAINT `student_company_reg_ibfk_2` FOREIGN KEY (`cno`) REFERENCES `company` (`cno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
