-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 06:15 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodesequelize`
--

-- --------------------------------------------------------

--
-- Table structure for table `addressbook`
--

CREATE TABLE `addressbook` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pinCode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addressbook`
--

INSERT INTO `addressbook` (`id`, `title`, `addressLine1`, `addressLine2`, `country`, `state`, `city`, `pinCode`) VALUES
(1, 'my address', 'addressLine1', 'addressLine2', 'uk', 'gujrat', 'rajkot', '362260'),
(2, 'my address changed', 'addressLine1', 'addressLine2', 'uk', 'gujrat', 'rajkot', '362260'),
(3, 'my address2', 'addressLine1', 'addressLine2', 'uk', 'gujrat', 'rajkot', '362260');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `profile`) VALUES
(1, 'sagar', 'h123@gmail.com', '$2b$10$I0VTYdgSHmmz87SlCio0N.zCeeXbX6c1vlLmA2Iy49d3paTHiig8u', 'male', 'a247c36268cf39fe26649eede400ca76'),
(2, 'hiren', 'h4556@gmail.com', '$2b$10$/ZxVhG8TBgxdtFdkPT92o.nWNwA3OmSmmGZh0eWmg0qxiSNiKa/OO', 'male', '8205b41ce9536cb729066f1a2b12e617'),
(3, 'sagar', 'h12345@gmail.com', '$2b$10$08nGKHF33g0wOxjNyi1NCOqa6S9dTTn35ZmU5Qd/Q45bjtA0a8bfq', 'male', '129f1b9671985b5d0eacaa90c7f2964f'),
(4, 'sagar', 'h45@gmail.com', '$2b$10$lOCrs9ikjPvt/KSKhi2ZDOVHhHcd.gxiQK5Vcyg4nx90ktQsNo2X2', 'male', '6206aac01288bc51075d0a4212ecea45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addressbook`
--
ALTER TABLE `addressbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addressbook`
--
ALTER TABLE `addressbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
