-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 08:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vacations`
--
CREATE DATABASE IF NOT EXISTS `vacations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vacations`;

-- --------------------------------------------------------

--
-- Table structure for table `followedvacations`
--

DROP TABLE IF EXISTS `followedvacations`;
CREATE TABLE `followedvacations` (
  `vacationId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `username`, `password`, `isAdmin`) VALUES
(13, 'daniel11', 'dany11', 'daniel11', 'efdcc2a9bcf824444edc1f56241f3f0aa68affb28f44a06f11', 0),
(14, 'daniel12', 'dany12', 'daniel12', 'e63af571e5d8afb37ff87807ef2f4dad16a4facc39b0a39e97fcdd77c8a878a0c6233f2b3ddb55394ff36c93d7d3d5fc14109678020592d40c9e2a5d910ee3d3', 1),
(15, '1', 'as1', 'moishe', '13f844fced059ded593d654e2c5aafcbd8c28db73ce03c19f328da8966e1a751611121a80c2772c12d953b290362051dbc01e40f76c37d32ef60b8955da7f68a', 0),
(16, '1', '1', 'a', '3475d5986e5ae95a1fb3118cb5fac1550881e588bd711c79e13df0ff51b81c38887410e7ab33c1b201b45e7e854ef719dec5de86ad5e8b6b8335d589f599a42d', 0),
(17, 'd', 'd', 'normaluser', '073adba02839aa82af85134ef1ddc1baff7635f42c2f9e29173dd9a3a6c2be62d6833e9132d387b46714119f1c7fc7448e64a56d19baf25df5406feaa3871a62', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vacationslist`
--

DROP TABLE IF EXISTS `vacationslist`;
CREATE TABLE `vacationslist` (
  `vacationId` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `picturePath` varchar(50) NOT NULL,
  `flightDate` datetime NOT NULL,
  `returnDate` datetime NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacationslist`
--

INSERT INTO `vacationslist` (`vacationId`, `description`, `destination`, `picturePath`, `flightDate`, `returnDate`, `price`) VALUES
(353, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ', 'Jerusalem', '2e3d9a01-144d-4de4-98f7-77b9092c9cb5.jpg', '2020-11-20 00:00:00', '2020-12-21 00:00:00', 300),
(355, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillu', 'Rome', 'b3d75364-2385-4ef0-959f-aa0415c59be0.jpg', '2020-08-20 00:00:00', '2020-08-22 00:00:00', 300),
(356, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillu', 'Paris', '6ca08470-9579-4feb-95fa-a9970c83352c.jpg', '2020-08-17 01:38:10', '2020-08-27 00:00:00', 3999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followedvacations`
--
ALTER TABLE `followedvacations`
  ADD KEY `vacationId` (`vacationId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `vacationslist`
--
ALTER TABLE `vacationslist`
  ADD PRIMARY KEY (`vacationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vacationslist`
--
ALTER TABLE `vacationslist`
  MODIFY `vacationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followedvacations`
--
ALTER TABLE `followedvacations`
  ADD CONSTRAINT `followedvacations_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `followedvacations_ibfk_2` FOREIGN KEY (`vacationId`) REFERENCES `vacationslist` (`vacationId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
