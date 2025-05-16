-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 16, 2025 at 07:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `email`, `name`, `password`, `role`) VALUES
(1, 'sanji@gmail.com', 'Sanjeevani Patil', '$2y$10$jFp9t9UuY44eiuMyl9yji.kwCvWeWEf19Xo0Uh5WSe1FU3ZCu/TIu', 'Principle'),
(2, 'rushi@gmail.com', 'Rushi Satpute', '$2y$10$fQAxlnH/UIPOU29JdphyuuXTlH6Cfsnbi2jRYfN7u.hbS/YZTz6tu', 'Admin'),
(3, 'vighnesh@gmail.com', 'Vighnesh Sondkar', '$2y$10$ggYa4rB8Az3CE3ZBnmdiOuRqcNl5DSKEhQOwYKzCfbmt.0XCMroMu', 'Super Admin'),
(4, 'sanjeevanipatil2001@gmail.com', 'Sanjeevani Patil', '$2y$10$8/peKvtEMWW4Kf8tyXPGHeXSIencMPjx.I70wS4vaRuUpMw2CkBdu', 'Principle'),
(5, 'arpita@gmail.com', 'Arpita', '$2y$10$ze9BM5U/siUlhTXiErNqnOxoI6bZ76FIN8GrSWFooFJ2Rls5It7a.', 'Principle');

-- --------------------------------------------------------

--
-- Table structure for table `campus_quarters`
--

CREATE TABLE `campus_quarters` (
  `campus_quarter_id` int(11) NOT NULL,
  `campus_name` varchar(50) DEFAULT NULL,
  `block_name` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `building` int(11) DEFAULT NULL,
  `total_quarters` int(11) DEFAULT NULL,
  `allotted_quarters` int(11) DEFAULT NULL,
  `vacancies` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campus_quarters`
--

INSERT INTO `campus_quarters` (`campus_quarter_id`, `campus_name`, `block_name`, `type`, `building`, `total_quarters`, `allotted_quarters`, `vacancies`, `remarks`) VALUES
(1, 'Vadgaon Campus', 'South Block', 'I (3 BHK)', 4, 6, 2, 4, ''),
(2, 'Vadgaon Campus', 'South Block', 'II (2 BHK)', 2, 24, 24, 0, ''),
(3, 'Vadgaon Campus', 'West Block', 'I (3 BHK)', 2, 2, 2, 0, ''),
(4, 'Vadgaon Campus', 'West Block', 'II (2 BHK)', 1, 12, 12, 0, ''),
(5, 'Vadgaon Campus', 'West Block', 'III (1 BHK)', 1, 13, 11, 2, ''),
(6, 'Vadgaon Campus', 'West Block', 'V (2 BHK)', 1, 6, 4, 2, 'Flat No. 04, Reserve for Guests   Flat No. 06, Reserve for GH'),
(7, 'Vadgaon Campus', 'North Block', 'II (2 BHK)', 2, 24, 24, 0, ''),
(8, 'Vadgaon Campus', 'Central Block', 'IV (1 RK)', 4, 64, 64, 0, ''),
(9, 'Ambegaon Campus', 'Shivneri Block', 'III (1 BHK)', 1, 8, 8, 0, ''),
(10, 'Ambegaon Campus', 'Ambegaon Block', 'II (2 BHK)', 2, 38, 36, 2, 'Flat No. 201 Reserve for Guests   Flat No 119 (Vacant)'),
(11, 'Ambegaon Campus', 'Ambegaon Block', 'III (1 BHK)', 4, 64, 64, 0, ''),
(12, 'Ambegaon Campus', 'Ambegaon Block', 'IV (1 RK)', 9, 154, 154, 0, ''),
(13, 'Narhe', '1', '1', 1, 16, 15, 1, 'Flat No 4 is reserved for guest'),
(17, 'Katraj', 'A', '1 BHK', 1, 24, 20, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_det`
--

CREATE TABLE `emp_det` (
  `emp_det_id` int(10) NOT NULL,
  `emp_nature` varchar(32) NOT NULL,
  `years_of_service` int(10) NOT NULL,
  `job_responsibilities` varchar(32) NOT NULL,
  `fac_id_fk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_det`
--

INSERT INTO `emp_det` (`emp_det_id`, `emp_nature`, `years_of_service`, `job_responsibilities`, `fac_id_fk`) VALUES
(1, 'Temporary', 1, 'Java Professor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_documents`
--

CREATE TABLE `faculty_documents` (
  `id` int(11) NOT NULL,
  `fac_id_fk` int(11) NOT NULL,
  `proof_of_employment` varchar(255) DEFAULT NULL,
  `identity_proof` varchar(255) DEFAULT NULL,
  `proof_of_family` varchar(255) DEFAULT NULL,
  `medical_certificates` varchar(255) DEFAULT NULL,
  `other_documents` varchar(255) DEFAULT NULL,
  `declaration_form` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_documents`
--

INSERT INTO `faculty_documents` (`id`, `fac_id_fk`, `proof_of_employment`, `identity_proof`, `proof_of_family`, `medical_certificates`, `other_documents`, `declaration_form`) VALUES
(1, 1, 'vighnesh@gmail.com_Screenshot (6).png', 'vighnesh@gmail.com_Screenshot (8).png', 'vighnesh@gmail.com_Screenshot (11).png', 'vighnesh@gmail.com_Screenshot 2025-04-15 191133.png', 'vighnesh@gmail.com_Screenshot (2).png', 'vighnesh@gmail.com_Screenshot (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_login`
--

CREATE TABLE `faculty_login` (
  `fac_id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_login`
--

INSERT INTO `faculty_login` (`fac_id`, `name`, `email`, `password`) VALUES
(1, 'Vighnesh Sondkar', 'vighnesh@gmail.com', '$2y$10$oIPnT2iav/CDpV7.nMg/veOuzbGD6QmEOUyQmPbeDRQ0Nsvejm7mq'),
(3, 'Vedant', 'vedant@gmail.com', '$2y$10$TrWLxJBHeJmb1cBf5hW77.YEElEs59Mw97Knl7slAyYPkBawFf8Ei'),
(4, 'krushna', 'krushna@gmail.com', '$2y$10$BAYou4MhLrCFtsOJJbvPneKxtQ0ll1XRSNhwlbZt9P1oQSgcMsZmu');

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `fm_id` int(11) NOT NULL,
  `fm_name` varchar(255) NOT NULL,
  `fm_relation` varchar(100) DEFAULT NULL,
  `fm_age` int(11) DEFAULT NULL,
  `fm_occupation` varchar(100) DEFAULT NULL,
  `fam_det_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`fm_id`, `fm_name`, `fm_relation`, `fm_age`, `fm_occupation`, `fam_det_id_fk`) VALUES
(1, 'Vilas Sondkar', 'Father', 62, 'Service', 1),
(2, 'Vijaya Sondkar', 'Mother', 57, 'House wife', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fam_det`
--

CREATE TABLE `fam_det` (
  `fam_det_id` int(10) NOT NULL,
  `marital_status` varchar(32) NOT NULL,
  `medical_condition` varchar(512) NOT NULL,
  `medical_details` varchar(511) NOT NULL,
  `disabilities` varchar(512) NOT NULL,
  `disabilities_details` varchar(511) NOT NULL,
  `fac_id_fk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fam_det`
--

INSERT INTO `fam_det` (`fam_det_id`, `marital_status`, `medical_condition`, `medical_details`, `disabilities`, `disabilities_details`, `fac_id_fk`) VALUES
(1, 'single', 'no', '', 'no', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'Vighnesh Sondkar', 'vighnesh@gmail.com', 'System is lag', 'the system is lagging in some part please fix it', '2025-04-16 06:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintenance_id` int(11) NOT NULL,
  `campus_name` varchar(100) NOT NULL,
  `block_name` varchar(100) NOT NULL,
  `quarter_type` varchar(50) NOT NULL,
  `flat_no` varchar(50) NOT NULL,
  `resident_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `maintenance_reason` text NOT NULL,
  `request_date` date NOT NULL DEFAULT curdate(),
  `status` enum('Pending','Completed','Rejected') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `emp_id` varchar(20) NOT NULL,
  `name` varchar(32) NOT NULL,
  `designation` varchar(32) NOT NULL,
  `department` varchar(32) NOT NULL,
  `institute` varchar(50) NOT NULL,
  `date_of_joining` date NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `email` varchar(32) NOT NULL,
  `street_add` varchar(64) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip_code` int(10) NOT NULL,
  `fac_id_fk` int(10) DEFAULT NULL,
  `principle_status` enum('Pending','Approved','Declined') DEFAULT 'Pending',
  `admin_status` enum('Pending','Approved','Declined') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`emp_id`, `name`, `designation`, `department`, `institute`, `date_of_joining`, `phone_no`, `email`, `street_add`, `city`, `state`, `zip_code`, `fac_id_fk`, `principle_status`, `admin_status`) VALUES
('emp001', 'Vighnesh Sondkar', 'Student', 'MCA', 'SIOM', '2025-04-15', '7507717661', 'vighnesh@gmail.com', 'Morebaug, Katraj', 'Pune', 'Maharashtra', 411046, 1, 'Approved', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `quat_perf`
--

CREATE TABLE `quat_perf` (
  `quat_perf_id` int(10) NOT NULL,
  `quarter_type` varchar(20) NOT NULL,
  `reason` varchar(512) NOT NULL,
  `preferred_location` varchar(32) NOT NULL,
  `fac_id_fk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quat_perf`
--

INSERT INTO `quat_perf` (`quat_perf_id`, `quarter_type`, `reason`, `preferred_location`, `fac_id_fk`) VALUES
(1, '1bhk', 'I have 2 family memers', 'Near SIOM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `resident_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `flat_no` varchar(50) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `campus_quarter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`resident_id`, `name`, `email`, `flat_no`, `designation`, `department`, `institute`, `campus_quarter_id`) VALUES
(1, 'Vighnesh Sondkar', 'vighnesh@gmail.com', '101', 'Student', 'MCA', 'SIOM', 1),
(2, '', '', '101', '', '', '', 5),
(3, '', '', '102', '', '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `campus_quarters`
--
ALTER TABLE `campus_quarters`
  ADD PRIMARY KEY (`campus_quarter_id`);

--
-- Indexes for table `emp_det`
--
ALTER TABLE `emp_det`
  ADD PRIMARY KEY (`emp_det_id`),
  ADD UNIQUE KEY `fac_id_fk_2` (`fac_id_fk`),
  ADD KEY `fac_id_fk` (`fac_id_fk`);

--
-- Indexes for table `faculty_documents`
--
ALTER TABLE `faculty_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fac_id_fk` (`fac_id_fk`);

--
-- Indexes for table `faculty_login`
--
ALTER TABLE `faculty_login`
  ADD PRIMARY KEY (`fac_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`fm_id`),
  ADD KEY `fam_det_id_fk` (`fam_det_id_fk`);

--
-- Indexes for table `fam_det`
--
ALTER TABLE `fam_det`
  ADD PRIMARY KEY (`fam_det_id`),
  ADD UNIQUE KEY `fac_id_fk_2` (`fac_id_fk`),
  ADD KEY `fac_id_fk` (`fac_id_fk`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintenance_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `fac_id_fk_2` (`fac_id_fk`),
  ADD KEY `fac_id_fk` (`fac_id_fk`);

--
-- Indexes for table `quat_perf`
--
ALTER TABLE `quat_perf`
  ADD PRIMARY KEY (`quat_perf_id`),
  ADD UNIQUE KEY `fac_id_fk_2` (`fac_id_fk`),
  ADD KEY `fac_id_fk` (`fac_id_fk`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`resident_id`),
  ADD KEY `campus_quarters_id_fk` (`campus_quarter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campus_quarters`
--
ALTER TABLE `campus_quarters`
  MODIFY `campus_quarter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `emp_det`
--
ALTER TABLE `emp_det`
  MODIFY `emp_det_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty_documents`
--
ALTER TABLE `faculty_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty_login`
--
ALTER TABLE `faculty_login`
  MODIFY `fac_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `fm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fam_det`
--
ALTER TABLE `fam_det`
  MODIFY `fam_det_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintenance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quat_perf`
--
ALTER TABLE `quat_perf`
  MODIFY `quat_perf_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `resident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_det`
--
ALTER TABLE `emp_det`
  ADD CONSTRAINT `fac_id_fk_ed` FOREIGN KEY (`fac_id_fk`) REFERENCES `faculty_login` (`fac_id`);

--
-- Constraints for table `faculty_documents`
--
ALTER TABLE `faculty_documents`
  ADD CONSTRAINT `faculty_documents_ibfk_1` FOREIGN KEY (`fac_id_fk`) REFERENCES `faculty_login` (`fac_id`);

--
-- Constraints for table `family_members`
--
ALTER TABLE `family_members`
  ADD CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`fam_det_id_fk`) REFERENCES `fam_det` (`fam_det_id`);

--
-- Constraints for table `fam_det`
--
ALTER TABLE `fam_det`
  ADD CONSTRAINT `fac_id_fk_1` FOREIGN KEY (`fac_id_fk`) REFERENCES `faculty_login` (`fac_id`);

--
-- Constraints for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD CONSTRAINT `fac_id_fk` FOREIGN KEY (`fac_id_fk`) REFERENCES `faculty_login` (`fac_id`);

--
-- Constraints for table `quat_perf`
--
ALTER TABLE `quat_perf`
  ADD CONSTRAINT `fac_id_fk_qp` FOREIGN KEY (`fac_id_fk`) REFERENCES `faculty_login` (`fac_id`);

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `campus_quarters_id_fk` FOREIGN KEY (`campus_quarter_id`) REFERENCES `campus_quarters` (`campus_quarter_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
