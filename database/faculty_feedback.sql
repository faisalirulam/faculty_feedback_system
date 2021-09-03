-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 01:23 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faculty_feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_name`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `mobile`, `message`, `date`) VALUES
(5, 'MUHAMMED FAISAL PJ', 'faisalirulam@gmail.com', 7034278131, '', '2020-02-02 10:30:28'),
(6, 'AJAS FRANCIS', 'ajasfrank@gmail.com', 9207604553, '', '2020-02-05 10:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `name`, `designation`, `department`, `status`, `email`, `password`, `mobile`, `date`) VALUES
(29, 'Baiju', 'HOD', 'BSC', 'PERMANENT', 'baiju@gmail.com', 'baiju', 9847815813, '2020-03-06 17:08:28'),
(30, 'Vineesha M S', 'Teacher', 'BSC', 'GUEST', 'vineesha@gmail.com', 'vineesha', 9544795595, '2020-03-06 17:11:01'),
(31, 'Sheeba', 'Teacher', 'BSC', 'GUEST', 'sheeba@gmail.com', 'sheeba', 9895670977, '2020-03-06 17:12:10'),
(32, 'Athulya', 'Teacher', 'BSC', 'GUEST', 'athulya@gmail.com', 'athulya', 9655977530, '2020-03-06 17:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `qs1` enum('5','4','3','2','1') NOT NULL,
  `qs2` enum('5','4','3','2','1') NOT NULL,
  `qs3` enum('5','4','3','2','1') NOT NULL,
  `qs4` enum('5','4','3','2','1') NOT NULL,
  `qs5` enum('5','4','3','2','1') NOT NULL,
  `qs6` enum('5','4','3','2','1') NOT NULL,
  `qs7` enum('5','4','3','2','1') NOT NULL,
  `qs8` enum('5','4','3','2','1') NOT NULL,
  `qs9` enum('5','4','3','2','1') NOT NULL,
  `qs10` enum('5','4','3','2','1') NOT NULL,
  `qs11` enum('5','4','3','2','1') NOT NULL,
  `qs12` enum('5','4','3','2','1') NOT NULL,
  `qs13` enum('5','4','3','2','1') NOT NULL,
  `qs14` enum('5','4','3','2','1') NOT NULL,
  `qs15` enum('5','4','3','2','1') NOT NULL,
  `qs16` enum('5','4','3','2','1') NOT NULL,
  `qs17` text NOT NULL,
  `total` int(11) NOT NULL,
  `average` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `faculty_id`, `qs1`, `qs2`, `qs3`, `qs4`, `qs5`, `qs6`, `qs7`, `qs8`, `qs9`, `qs10`, `qs11`, `qs12`, `qs13`, `qs14`, `qs15`, `qs16`, `qs17`, `total`, `average`, `date`) VALUES
(1020, 'amal@gmail.com', 'baiju@gmail.com', '4', '4', '4', '5', '5', '5', '3', '3', '3', '5', '4', '5', '5', '4', '4', '4', 'Good', 67, 4.1875, '2020-03-06'),
(1022, 'amal@gmail.com', 'sheeba@gmail.com', '3', '4', '4', '5', '5', '5', '4', '4', '4', '3', '5', '5', '4', '4', '4', '4', '\r\ngood', 67, 4.1875, '2020-03-06'),
(1023, 'ajay@gmail.com', 'baiju@gmail.com', '4', '4', '4', '5', '5', '5', '4', '3', '3', '4', '5', '5', '5', '4', '4', '4', '\r\ngood', 68, 4.25, '2020-03-06'),
(1024, 'ajay@gmail.com', 'vineesha@gmail.com', '4', '4', '4', '5', '5', '5', '5', '4', '4', '3', '3', '4', '5', '5', '4', '4', '\r\ngood', 68, 4.25, '2020-03-06'),
(1025, 'ajay@gmail.com', 'athulya@gmail.com', '4', '4', '4', '5', '5', '5', '3', '3', '4', '4', '4', '4', '5', '5', '3', '4', '\r\ngood', 66, 4.125, '2020-03-06'),
(1026, 'aravind@gmail.com', 'baiju@gmail.com', '4', '4', '5', '5', '5', '4', '3', '3', '4', '5', '5', '4', '4', '4', '4', '4', '\r\nhi', 67, 4.1875, '2020-03-06'),
(1027, 'aravind@gmail.com', 'vineesha@gmail.com', '4', '4', '4', '3', '3', '3', '3', '5', '5', '5', '4', '4', '4', '4', '4', '4', '\r\ngood', 63, 3.9375, '2020-03-06'),
(1028, 'aravind@gmail.com', 'sheeba@gmail.com', '4', '4', '4', '3', '3', '3', '5', '5', '5', '5', '4', '3', '4', '4', '4', '4', '\r\n', 64, 4, '2020-03-06'),
(1029, 'aravind@gmail.com', 'athulya@gmail.com', '4', '4', '3', '5', '3', '5', '3', '4', '4', '5', '4', '5', '4', '4', '4', '5', '\r\n', 66, 4.125, '2020-03-06'),
(1030, 'shameem@gmail.com', 'baiju@gmail.com', '4', '4', '4', '3', '3', '5', '5', '5', '5', '5', '5', '5', '5', '4', '4', '5', '\r\n', 71, 4.4375, '2020-03-06'),
(1031, 'shameem@gmail.com', 'vineesha@gmail.com', '4', '4', '4', '4', '4', '3', '3', '3', '5', '5', '5', '5', '4', '4', '3', '5', '\r\n', 65, 4.0625, '2020-03-06'),
(1032, 'shameem@gmail.com', 'sheeba@gmail.com', '3', '3', '3', '4', '4', '4', '4', '5', '5', '5', '5', '4', '4', '4', '5', '5', '\r\n', 67, 4.1875, '2020-03-06'),
(1033, 'shameem@gmail.com', 'athulya@gmail.com', '5', '5', '5', '3', '3', '3', '3', '4', '4', '4', '3', '4', '4', '3', '3', '4', '\r\n', 60, 3.75, '2020-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `name`, `email`, `password`, `mobile`, `programme`, `semester`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(135, 'Ajay Joseph', 'ajay@gmail.com', '29e457082db729fa1059d4294ede3909', 9078665544, 'BSC', 'vi', 'm', 'reading', 'person.jpg', '2000-05-10', '2020-03-06 17:16:01'),
(136, 'Amal Babu', 'amal@gmail.com', '16b5480e7b6e68607fe48815d16b5d6d', 7994566766, 'BSC', 'vi', 'm', 'reading,others', 'person1.jpg', '1999-07-10', '2020-03-06 17:18:55'),
(137, 'Aravind Menon', 'aravind@gmail.com', 'b691c96a0e0e2674df4943221d5b4767', 9089776655, 'BSC', 'vi', 'm', 'reading', 'person5.jpg', '2000-05-20', '2020-03-06 17:19:58'),
(138, 'Shameemudheen', 'shameem@gmail.com', 'e67e8d2c4138085fa9a48e30cb0eb580', 9946557788, 'BSC', 'vi', 'm', 'reading', 'person1.jpg', '1999-06-12', '2020-03-06 17:21:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`),
  ADD UNIQUE KEY `UNIQUE` (`email`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD UNIQUE KEY `UNIQUE` (`email`);
ALTER TABLE `student` ADD FULLTEXT KEY `NAME` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1034;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
