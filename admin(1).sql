-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 11:50 AM
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
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_cate`
--

CREATE TABLE `add_cate` (
  `cattid` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_cate`
--

INSERT INTO `add_cate` (`cattid`, `photo`, `categoryname`, `added_date`) VALUES
(1, 'upload/car_category/lam.jpeg', 'lambargini', '2024-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `add_sub`
--

CREATE TABLE `add_sub` (
  `carid` int(11) NOT NULL,
  `cattid` int(11) NOT NULL,
  `carphoto` varchar(255) NOT NULL,
  `carname` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `avaiblity` varchar(255) NOT NULL,
  `manu_year` varchar(255) NOT NULL,
  `running` varchar(255) NOT NULL,
  `varients` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_sub`
--

INSERT INTO `add_sub` (`carid`, `cattid`, `carphoto`, `carname`, `price`, `avaiblity`, `manu_year`, `running`, `varients`, `date`) VALUES
(1, 1, 'upload/car/lam.jpeg', 'newcar1', '11000000', 'available', '2003', '60000km', 'diesel', '2024-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel`
--

CREATE TABLE `adminpanel` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel`
--

INSERT INTO `adminpanel` (`id`, `email`, `password`) VALUES
(1, 'solankidrashti@gmail.com', 'drashti@1234'),
(2, 'admin@gmail.com', 'admin@1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_cate`
--
ALTER TABLE `add_cate`
  ADD PRIMARY KEY (`cattid`);

--
-- Indexes for table `add_sub`
--
ALTER TABLE `add_sub`
  ADD PRIMARY KEY (`carid`);

--
-- Indexes for table `adminpanel`
--
ALTER TABLE `adminpanel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_cate`
--
ALTER TABLE `add_cate`
  MODIFY `cattid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_sub`
--
ALTER TABLE `add_sub`
  MODIFY `carid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminpanel`
--
ALTER TABLE `adminpanel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
