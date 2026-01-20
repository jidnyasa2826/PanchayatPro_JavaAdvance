-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 12:16 PM
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
-- Database: `panchayatdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `id` int(11) NOT NULL,
  `citizenname` varchar(100) NOT NULL,
  `citizenaddress` varchar(200) NOT NULL,
  `citizencontact` int(15) NOT NULL,
  `citizenemail` varchar(100) NOT NULL,
  `citizenpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`id`, `citizenname`, `citizenaddress`, `citizencontact`, `citizenemail`, `citizenpassword`) VALUES
(1, 'jid', 'hhghswhuuhsijsjks', 123, 'jid@gmail.com', '098'),
(7, 'jid', 'hejw', 87654, 'a@gmail.com', '987'),
(8, 'ij', 'uhygtfr', 908765, 'm@gmail.com', '12');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `citizenid` int(11) DEFAULT NULL,
  `complainttext` text DEFAULT NULL,
  `complaintsdate` date DEFAULT NULL,
  `complaintsstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `citizenid`, `complainttext`, `complaintsdate`, `complaintsstatus`) VALUES
(1, 7, 'oikujyhtgrfdsdrftgyhu7io8iujhygtrfeds', '2025-07-16', 'approved'),
(2, 1, 'iujhygtfds', '2025-07-16', 'Approved'),
(8, 1, 'fgbhjn', '2025-07-16', 'Approved'),
(9, 1, 'oiuytrew', '2025-07-16', 'Approved'),
(10, 1, 'sxdcfgvbh', '2025-07-16', 'Approved'),
(11, 7, 'sdfcvgbhnj', '2025-07-16', 'Approved'),
(103, 8, 'sedftghjk', '2025-07-16', 'Approved'),
(104, 1, 'hii i am bored', '2025-07-17', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `noticestitle` varchar(150) DEFAULT NULL,
  `noticescontent` text DEFAULT NULL,
  `noticespublishdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `noticestitle`, `noticescontent`, `noticespublishdate`) VALUES
(1, 'wwwwwwwwwwww', 'eeeeeeeeeee', '2025-07-02'),
(9, 'w', 'q', '2025-07-02'),
(10, 'hgfvdcxz', 'juhgf', '2025-07-11'),
(11, 'w', 'hgfrd', '2025-07-11'),
(12, '9iu8y7t6r', 'opiuyt', '2025-07-04'),
(13, 'uytrejuhy', 'okijuhygrfd', '2025-07-31'),
(14, 'eserrt', 'dttyhu', '2025-07-23'),
(15, 'hii', '0987654321', '2025-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `id` int(11) NOT NULL,
  `officername` varchar(100) DEFAULT NULL,
  `officerdesignation` varchar(100) DEFAULT NULL,
  `officercontact` int(15) DEFAULT NULL,
  `officeremail` varchar(100) DEFAULT NULL,
  `officerpassword` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`id`, `officername`, `officerdesignation`, `officercontact`, `officeremail`, `officerpassword`) VALUES
(95, 'ji', 'dty', 897876, 'om@gmail.com', '0987'),
(96, 'ommm', 'abd', 1234, 'ji@gmail.com', '9876');

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` int(11) NOT NULL,
  `schemestitle` varchar(150) DEFAULT NULL,
  `schemesdescription` text DEFAULT NULL,
  `schemeslaunchdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `schemestitle`, `schemesdescription`, `schemeslaunchdate`) VALUES
(1, 'dw', NULL, '2025-07-17'),
(2, 'iujhygtf', 'uyhtgfr', '2025-07-10'),
(3, 'dw', 'fg', '2025-07-10'),
(4, 'ed', 'dcfgvhbn', '2025-07-10'),
(5, 'e', 'rdtfgyh', '2025-07-03'),
(6, 'jid', 'sedrftgyhuji', '2025-07-24'),
(7, 'jiddfgh', 'sedrftgyhuji', '2025-07-24'),
(8, 'uhygtfr', 'uhygt', '2025-08-01'),
(9, 'dw', 'ytre', '2025-07-25'),
(10, 'rty', 'sdftgyhjk', '2025-07-19'),
(11, 'gyu', 'ygyuuh', '2025-07-08'),
(12, '222', 'hi guyssssssssssssssssssssssssssssssssssssssssssssssss', '2025-07-25'),
(13, 'hi', 'hiiii', '2025-07-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citizen`
--
ALTER TABLE `citizen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`citizenid`) REFERENCES `citizen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
