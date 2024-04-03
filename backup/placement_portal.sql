-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 10:42 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `log_id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `marks_10` varchar(10) DEFAULT NULL,
  `marks_12` varchar(10) DEFAULT NULL,
  `program` varchar(5) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `degree_type` varchar(50) DEFAULT NULL,
  `dept` varchar(200) DEFAULT NULL,
  `special_dept` varchar(200) DEFAULT NULL,
  `cgpa_1` varchar(5) DEFAULT NULL,
  `cgpa_2` varchar(5) DEFAULT NULL,
  `cgpa_3` varchar(5) DEFAULT NULL,
  `cgpa_4` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `ad_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_company_reg`
--
ALTER TABLE `student_company_reg`
  MODIFY `scr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
