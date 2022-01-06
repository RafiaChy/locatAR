-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2021 at 08:19 PM
-- Server version: 10.3.32-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reaversd_locatar`
--

-- --------------------------------------------------------

--
-- Table structure for table `go_data`
--

CREATE TABLE `go_data` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `latitude` varchar(32) NOT NULL,
  `longitude` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `fblink` varchar(255) NOT NULL,
  `weblink` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `go_data`
--

INSERT INTO `go_data` (`id`, `title`, `latitude`, `longitude`, `description`, `subtitle`, `fblink`, `weblink`, `number`) VALUES
(1, '28 James Street', '52.995419', '-2.194270', 'Home', 'UK', '', 'http://reaversdomain.com', ''),
(2, 'James St', '52.995459', '-2.194381', 'asd', '', '', '', ''),
(3, 'asd', 'asd', 'asdasd', 'asd', 'asd', '', 'asd', 'asd'),
(4, 'Test', '', '', 'Test', 'https://reaversdomain.com', 'Test', 'Test', 'Test'),
(5, '', '52.99533', '-2.194499', '', '', '', '', ''),
(6, 'Home', '52.9954', '-2.19447', 'the place where I live', 'home', '', 'Https://reaversdomain.com', ''),
(7, 'Twst', '52.99536', '-2.194511', 'teat', 'twst', 'ugxkgx', 'hgxjgx', 'guxugx'),
(8, 'Keele University', '53.0017', '-2.272172', 'Keele University', 'Keele', '', 'www.google.com', ''),
(9, 'Keele', '53.00194', '-2.272193', '', '', '', '', ''),
(10, 'Sanmar Garden Grove', '', '', 'My house', 'home sweet home', '...', '...', '01319209012');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `go_data`
--
ALTER TABLE `go_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `go_data`
--
ALTER TABLE `go_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
