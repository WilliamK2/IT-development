-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2019 at 08:43 AM
-- Server version: 5.7.25-0ubuntu0.16.04.2-log
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2201613130210`
--

-- --------------------------------------------------------

--
-- Table structure for table `seat_information`
--

CREATE TABLE `seat_information` (
  `seat_id` int(11) NOT NULL,
  `name` varchar(23) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(23) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_number` varchar(23) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_information`
--

CREATE TABLE `ticket_information` (
  `ticket_id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `price` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_number` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `train_information`
--

CREATE TABLE `train_information` (
  `train_id` int(11) NOT NULL,
  `station` varchar(34) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_station` varchar(34) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distances` varchar(34) COLLATE utf8mb4_unicode_ci NOT NULL,
  `load` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_card` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seat_information`
--
ALTER TABLE `seat_information`
  ADD PRIMARY KEY (`seat_id`);

--
-- Indexes for table `ticket_information`
--
ALTER TABLE `ticket_information`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `train_information`
--
ALTER TABLE `train_information`
  ADD PRIMARY KEY (`train_id`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seat_information`
--
ALTER TABLE `seat_information`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_information`
--
ALTER TABLE `ticket_information`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `train_information`
--
ALTER TABLE `train_information`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
