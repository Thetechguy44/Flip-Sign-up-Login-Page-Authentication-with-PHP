-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 01:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new1`
--

-- --------------------------------------------------------

--
-- Table structure for table `fill_in`
--

CREATE TABLE `fill_in` (
  `id` int(100) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fill_in`
--

INSERT INTO `fill_in` (`id`, `Fname`, `Lname`, `email`, `password`) VALUES
(1, 'yahaya', 'gana', 'gana01@gmail.com', '1234'),
(2, 'Muhammad', 'Yahaya', 'yahaya@gmail.com', 'gana'),
(3, 'Mahira', 'Gana', 'Mahira@gmail.com', 'Mahira');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` bigint(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginsign`
--

CREATE TABLE `loginsign` (
  `id` int(100) NOT NULL,
  `user_id` bigint(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginsign`
--

INSERT INTO `loginsign` (`id`, `user_id`, `fullname`, `email`, `password`, `date`) VALUES
(5, 8465273, 'Muhammad Gana', 'Yahaya@gmail.com', 'Gana', '2023-01-04 13:46:04'),
(6, 9223372036854775807, 'Yahaya Gana', 'Gana01@gmail.com', '1234', '2023-01-05 03:32:42'),
(7, 98527217759, 'Aliyu Abubakar', 'Aliyu11@gmail.com', '1234', '2023-01-05 03:49:40'),
(8, 89082077, 'mustapha sani', 'mustapha067@gmail.com', 'mustapha067', '2023-03-01 10:24:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fill_in`
--
ALTER TABLE `fill_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginsign`
--
ALTER TABLE `loginsign`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fill_in`
--
ALTER TABLE `fill_in`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginsign`
--
ALTER TABLE `loginsign`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
