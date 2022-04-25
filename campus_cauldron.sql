-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 11:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus_cauldron`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(55) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminname`, `email`, `password`, `id`) VALUES
('Mahima Rai', 'raimuskan101@gmail.com', 'mahi', 6),
('Rati Gupta', 'guptarati2001@gmail.com', '1234', 7),
('Ritesh Rai', 'riteshrai447@gmail.com', '123', 9),
('Admin', 'admin@gmail.com', 'admin', 10),
('Ashutosh Dwivedi', 'dwivedi.ash007@gmail.com', 'hello', 11),
('Kshitij Sharma', 'sharmakshitij250@gmail.com', 'world', 12);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(11) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `club_logo` mediumblob NOT NULL,
  `club_info` varchar(255) NOT NULL,
  `club_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `club_logo`, `club_info`, `club_link`) VALUES
(5, 'LSC', 0x313630373333363338344c53432e6a7067, 'Literary Sub Council', 'https://m.facebook.com/lscbiet/'),
(6, 'CODE', 0x31363037333339373935434f44452e706e67, 'Club Of DEvelopers', 'https://github.com/codebiet'),
(10, 'Cultural Sub Council', 0x313630373436313331304353432e6a7067, 'A cultural council for students of BIET', 'bietjhs.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `council_name` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_link` varchar(255) NOT NULL,
  `event_info` varchar(255) NOT NULL,
  `event_img` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `council_name`, `event_date`, `event_link`, `event_info`, `event_img`) VALUES
(13, 'Prabhanjan', 'Sports Sub Councl', '25/2/2020', 'prabhanjan.org', '#Aspire to Conquer', 0x3136303735363732313353706f7274732e6a7067),
(14, 'Utsav', 'Cultural Sub Council', '25/3/2021', 'bietjhs.ac.in', 'The largest fest for Bencolites', 0x3136303735363734363375747361762e6a7067),
(15, 'Abhinandan', 'Cultural Sub Council', '5/9/2020', 'bietjhs.ac.in', 'The welcome party for all freshers', 0x31363037353637353937616268696e616e64616e2e6a7067),
(16, 'Sopan', 'Literary Sub Council', '28/01.2020', 'bietjhs.ac.in', 'Compete to be Champion, Wizkid or Penman', 0x31363037353638313236736f7061616e2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(1200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`) VALUES
(1, 'Is this a good question?', 'This is an answer.'),
(5, 'Is this the official website of BIET, Jhansi?', 'No, it is a website managed and created by students as a project.'),
(6, 'Are there links provided along with the clubs and councils given?', 'Yes, the logos of clubs and councils direct to their official web pages.');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `date` varchar(20) NOT NULL,
  `npdf` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `title`, `date`, `npdf`) VALUES
(12, 'Regarding Scholarship Session 2020-21', '05/12/2020', '1607460204Document-38_051220.pdf'),
(13, 'BIET Central Library', '28/08/2020', '1607460389Notice-280820.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `q_and_a`
--

CREATE TABLE `q_and_a` (
  `id` int(5) NOT NULL,
  `question` varchar(2000) NOT NULL,
  `ques_approved` tinyint(1) DEFAULT NULL,
  `ques_answered` tinyint(1) NOT NULL,
  `answer` varchar(10000) NOT NULL,
  `ans_approved` tinyint(1) DEFAULT NULL,
  `ans_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `q_and_a`
--

INSERT INTO `q_and_a` (`id`, `question`, `ques_approved`, `ques_answered`, `answer`, `ans_approved`, `ans_by`) VALUES
(15, 'What are some of the interesting places to visit in BIET, Jhansi?', 1, 1, 'Some of the interesting places to visit are Jhansi Fort, Garhmau lake, BU, Orchha Fort, Shree Ram Raja Temple, and many more.', 1, 'User'),
(16, 'Which of the branches are self-financed in BIET, Jhansi?', 1, 1, 'Information Technology and Electrical Engineering are the self financed branches of BIET, Jhansi.', 1, 'User'),
(17, 'How many councils are there for student activity in BIET, Jhansi?', 1, 1, 'There are 4 councils.', 1, 'User'),
(18, 'What is the hostel curfew timings?', 1, 1, 'The evening curfew timings for girls, hostels is 6:30 pm whereas for boys , it is 8:00 pm.', 1, 'User'),
(19, 'How many canteens are there in the campus?', 1, 1, 'There is one general store located near CBI bank where students can buy things of daily need.', 1, 'User'),
(25, 'Where are Bencolites nowadays?', 1, 1, 'Due to the current pandemic situation, the Bencolites are locked in their homes.', 1, 'User'),
(27, 'As a newly admitted student of BIET Jhansi, what can I expect in the initial days after reaching?', 1, 0, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(20) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `password`, `phone`) VALUES
(1, 'Madhav', 'kumarmadhav1920@gmail.com', 'qwerty', 2147483647)
-- (2, 'Ashutosh', 'dwivedi.ash007@gmail.com', 'ashu', 2147483647),
-- (3, 'Barfi', 'barfi@gmail.com', 'barfi', 2147483647),
-- (4, 'Samose ke Chacha', 'samosekiid@gmail.com', 'samosa', 2147483647),
-- (7, 'User', 'user@gmail.com', 'user', 1234567890);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `q_and_a`
--
ALTER TABLE `q_and_a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `q_and_a`
--
ALTER TABLE `q_and_a`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
