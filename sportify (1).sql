-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 05:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportify`
--

-- --------------------------------------------------------

--
-- Table structure for table `cricket`
--

CREATE TABLE `cricket` (
  `cricket_id` int(11) NOT NULL,
  `team1` varchar(20) NOT NULL,
  `team2` varchar(20) NOT NULL,
  `score1` varchar(10) DEFAULT '0',
  `wicket1` varchar(10) DEFAULT '0',
  `score2` varchar(10) DEFAULT '0',
  `wicket2` varchar(10) DEFAULT '0',
  `over1` varchar(10) DEFAULT '0',
  `over2` varchar(10) DEFAULT 'Yet to Bat',
  `info` varchar(50) DEFAULT '',
  `up_date` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL,
  `team1_players` varchar(500) NOT NULL,
  `team2_players` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cricket`
--

INSERT INTO `cricket` (`cricket_id`, `team1`, `team2`, `score1`, `wicket1`, `score2`, `wicket2`, `over1`, `over2`, `info`, `up_date`, `date`, `team1_players`, `team2_players`) VALUES
(1, 'INFT', 'CMPN', '178', '5', '174', '8', '20.0', '20.0', 'Target: 179 runs of 120 balls', 'INFT won by 4 runs', '2022-05-07 06:20:01', 'inft1, inft2, inft3, inft4, inft5, inft6, inft7, inft8, inft9, inft10, inft11', 'cmpn1, cmpn2, cmpn3, cmpn4, cmpn5, cmpn6, cmpn7, cmpn8, cmpn9, cmpn10, cmpn11'),
(2, 'EXTC', 'ETRX', '1', '0', '0', '0', '0.1', 'Yet to bat', '', 'ETRX won the toss and choosed Bowling', '2022-05-07 08:00:59', 'extc1, extc2, extc3, extc4, extc5, extc6, extc7, extc8, extc9, extc10, extc11', 'etrx1, etrx2, etrx3, etrx4, etrx5, etrx6, etrx7, etrx8, etrx9, etrx10, etrx11');

-- --------------------------------------------------------

--
-- Table structure for table `cricket_details`
--

CREATE TABLE `cricket_details` (
  `cricket_details_id` int(11) NOT NULL,
  `team1_players` varchar(500) NOT NULL,
  `team2_players` varchar(500) NOT NULL,
  `cricket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cricket_details`
--

INSERT INTO `cricket_details` (`cricket_details_id`, `team1_players`, `team2_players`, `cricket_id`) VALUES
(1, 'inft1, inft2, inft3, inft4, inft5, inft6, inft7, inft8, inft9, inft10, inft11', 'cmpn1, cmpn2, cmpn3, cmpn4, cmpn5, cmpn6, cmpn7, cmpn8, cmpn9, cmpn10, cmpn11', 1),
(2, 'extc1, extc2, extc3, extc4, extc5, extc6, extc7, extc8, extc9, extc10, extc11', 'etrx1, etrx2, etrx3, etrx4, etrx5, etrx6, etrx7, etrx8, etrx9, etrx10, etrx11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  `council_role` varchar(50) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `contact`, `year`, `branch`, `role`, `council_role`, `password`, `status`) VALUES
(1, 'Ghanishtha Talele', 'ghanishthatalele@gmail.com', 8010092360, '2nd Year', 'INFT', 'Viewer', NULL, 'Ghanishtha@123', NULL),
(2, 'Aaman Bhowmick', 'aaman.bhowmick21@gmail.com', 9653632755, '2nd Year', 'INFT', 'Viewer', NULL, 'AamanB@123', NULL),
(3, 'Aditi Miniyar', 'aditiminiyar@gmail.com', 7499254914, '2nd Year', 'INFT', 'Viewer', NULL, 'AditiM@123', NULL),
(4, 'Admin', 'admin@gmail.com', 9876543210, 'Faculty', 'Faculty', 'Admin', 'Sports Head', 'Admin@123', NULL),
(5, 'Bhowmick Aaman', 'aaman@gmail.com', 9653632751, '2nd Year', 'INFT', 'Council', 'Junior', 'Aaman@123', 'Active'),
(6, 'Talele Ghanishtha', 'ghanishtha@gmail.com', 9879879872, '3rd Year', 'INFT', 'Council', 'Senior', 'Ghanishtha123', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `id` int(11) NOT NULL,
  `sports_name` varchar(50) NOT NULL,
  `sports_info` varchar(400) NOT NULL,
  `sports_img` varchar(50) NOT NULL,
  `sports_slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `sports_name`, `sports_info`, `sports_img`, `sports_slug`) VALUES
(1, 'Cricket', 'Cricket is the most popular sport in India by far, and is played almost everywhere in the country. The Board of Control for Cricket in India (BCCI) is the governing body of Indian cricket and conduct all domestic tournaments and select the members Indian national cricket team.\r\n\r\n', 'cricket_1.png', 'cricket'),
(2, 'Badminton', 'Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. Although it may be played with larger teams, the most common forms of the game are \"singles\" (with one player per side) and \"doubles\" (with two players per side).', 'badminton_1.jpg', 'badminton'),
(3, 'Carrom', 'Carrom is a tabletop game of South Asian origin. The game is very popular in the Indian subcontinent, and is known by various names in different languages. In South Asia, many clubs and cafés hold regular tournaments. Carrom is very commonly played by families, including children.', 'carrom_1.jpeg', 'carrom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cricket`
--
ALTER TABLE `cricket`
  ADD PRIMARY KEY (`cricket_id`);

--
-- Indexes for table `cricket_details`
--
ALTER TABLE `cricket_details`
  ADD PRIMARY KEY (`cricket_details_id`),
  ADD KEY `cricket_id` (`cricket_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cricket`
--
ALTER TABLE `cricket`
  MODIFY `cricket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cricket_details`
--
ALTER TABLE `cricket_details`
  MODIFY `cricket_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cricket_details`
--
ALTER TABLE `cricket_details`
  ADD CONSTRAINT `cricket_details_ibfk_1` FOREIGN KEY (`cricket_id`) REFERENCES `cricket` (`cricket_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
