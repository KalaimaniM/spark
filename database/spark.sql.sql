-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2021 at 12:24 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17281863_spark`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accon` int(100) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` bigint(100) NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accon`, `username`, `phone`, `email`, `date`, `amount`) VALUES
(1, 'saikalai', 9081234567, 'kalaimani@gmail.com', '2021-07-21', 46300),
(2, 'prawin', 9734567212, 'prawin123@gmail.com', '2021-07-21', 50000),
(3, 'Kavimani', 954123674, 'kavi453@gmail.com', '2021-07-21', 54356),
(4, 'Kavimani', 954123674, 'kavi@gmail.com', '2021-07-21', 55356),
(5, 'chilla', 9872345712, 'chilla123@gmail.com', '2021-07-21', 28000),
(6, 'kalaimaniM', 9086752345, 'sathyak123@gmail.com', '2021-07-21', 30000),
(7, 'Nesan', 8881234768, 'Nesan@gmail.com', '2021-07-21', 44400),
(8, 'Magesh', 7823456712, 'magesh@gmail.com', '2021-07-21', 19600);

-- --------------------------------------------------------

--
-- Table structure for table `transa`
--

CREATE TABLE `transa` (
  `transid` int(100) NOT NULL,
  `s_id` int(100) NOT NULL,
  `sname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `semail` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rid` int(100) NOT NULL,
  `rname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `remail` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(100) NOT NULL,
  `location_` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transa`
--

INSERT INTO `transa` (`transid`, `s_id`, `sname`, `semail`, `rid`, `rname`, `remail`, `amount`, `location_`, `date`) VALUES
(1, 2, 'prawin', 'prawin123@gmail.com', 1, 'saikalai', 'kalaimani@gmail.com', 300, 'ponneri', '2021-07-21 03:23:03'),
(2, 1, 'saikalai', 'kalaimani@gmail.com', 4, 'Kavimani', 'kavi@gmail.com', 500, 'Ponneri', '2021-07-21 03:29:43'),
(3, 1, 'saikalai', 'kalaimani@gmail.com', 4, 'Kavimani', 'kavi@gmail.com', 500, 'Ponneri', '2021-07-21 03:29:43'),
(4, 5, 'chilla', 'chilla123@gmail.com', 2, 'prawin', 'prawin123@gmail.com', 2000, 'trichy', '2021-07-21 07:04:22'),
(5, 7, 'Nesan', 'Nesan@gmail.com', 6, 'kalaimaniM', 'sathyak123@gmail.com', 3000, 'Chennai', '2021-07-21 08:25:49'),
(6, 8, 'Magesh', 'magesh@gmail.com', 7, 'Nesan', 'Nesan@gmail.com', 400, 'vellore', '2021-07-21 08:35:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accon`);

--
-- Indexes for table `transa`
--
ALTER TABLE `transa`
  ADD PRIMARY KEY (`transid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accon` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transa`
--
ALTER TABLE `transa`
  MODIFY `transid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
