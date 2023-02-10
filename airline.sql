-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 09:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `f_no` varchar(20) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `f_src` varchar(20) NOT NULL,
  `f_dest` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`f_no`, `f_name`, `f_src`, `f_dest`) VALUES
('JA501', 'Jet Airways', 'Mumbai', 'Sydney'),
('EM909', 'Fly Emirates', 'Chennai', 'Singapore'),
('AI504', 'Air India', 'Ahmedabad', 'London'),
('AI873', 'Air India', 'London', 'Mumbai'),
('EM547', 'Emirates', 'Abu Dhabi', 'Goa'),
('BR432', 'British Airways', 'New york', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `P_id` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `mno` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `f_no` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`P_id`, `Fname`, `Lname`, `age`, `mno`, `email`, `password`, `f_no`) VALUES
(6, 'ANANTHU', 'D', 26, '8075659992', 'ananthudev123@gmail.com', 'godgodgod', 'EM909');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `t_no` int(30) NOT NULL,
  `p_id` int(30) NOT NULL,
  `t_fare` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`t_no`, `p_id`, `t_fare`) VALUES
(19116, 1, 30000),
(12934, 2, 45000),
(19115, 3, 50000),
(12876, 4, 300000),
(19001, 5, 300000),
(1234, 9, 10000),
(1234, 9, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`P_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
