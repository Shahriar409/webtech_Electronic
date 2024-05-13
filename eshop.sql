-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2024 at 10:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `attendance_date`, `status`) VALUES
(6, 2, '2024-05-11', 1),
(7, 2, '2024-05-11', 1),
(8, 5, '2024-05-12', 1),
(9, 2, '2024-05-12', 1),
(10, 2, '2024-05-13', 1),
(11, 9, '2024-05-13', 1),
(12, 5, '2024-05-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `salary` int(11) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `fullName`, `email`, `password`, `phone`, `address`, `gender`, `salary`, `approval_status`) VALUES
(2, 'Anamul', 'email@ad.com', 'zaqmlp', '01946988659', 'Kuril, Dhaka', 'make', 99999, 0),
(5, 'adfasdf', '2rfas@fc.ocm', 'fasdf', 'fasdfasdfas', 'asdfasdfas', 'male', 999999, 0),
(7, 'fasdf', 'asdfasd@adsf.com', '2222', 'fasdfasdf', 'sdfasdf', 'male', 33333, 0),
(8, 'Md. ajmain', 'gvgh@gmail.com', '123', '01770567567', 'Police Line Primary School Gate, Dinajpur Sadar', 'male', 999, 0),
(9, 'gg', 'gg@gmail.com', 'gg', '008888', 'banani', 'male', 1200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `empId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `description`, `empId`) VALUES
(1, 'fasdfasdf', 1),
(2, 'fasdfas', 1),
(3, 'fasdfasdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `securityQuestion` varchar(255) NOT NULL,
  `securityAnswer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `username`, `email`, `password`, `address`, `phone`, `securityQuestion`, `securityAnswer`) VALUES
(1, 'Khalek', '', 'khalek.01@gmail.com', 'khalek', 'khalek Bari Road', '01999999999', '', ''),
(2, 'Malek', '', 'malek.01@gmail.com', 'malek', 'Malek Bari', '01888888888', '', ''),
(3, 'Balek', '', 'balek.03@gmail.com', 'balek', 'Balek Bari Road', '01777777777', '', ''),
(4, 'Dhalek', '', 'dhalek.04@gmail.com', 'dhalek', 'Dhalek Bari Road', '01666666666', '', ''),
(5, 'Md. Shahriar Alam', 'siam00', '', '$2y$10$KWW22Gc32LKar1atk1983eCDQ1.QepxKXVZtTsttP9ZSgCQN.7ROK', 'Police Line Primary School Gate, Dinajpur Sadar', '01770803333', 'pet', '$2y$10$RGxiXArs6Fjj2n8fS15oxexve8KrY0wnN.UVu1EHP0/vUOF3CN712'),
(6, 'Md. Shahriar Alam', 'test', 'shahriar52@gmail.com', '$2y$10$TyWPX8HhIdJUW/VDAcQ48.QmMSxme8jCP7AGDHKe80dPU.JvymWnO', 'Police Line Primary School Gate, Dinajpur Sadar', '01770803409', 'school', 'ddddd'),
(7, 'Saykat', 'saykat', 'saykat@gmail.com', '$2y$10$c/2th8dW74HbN52PLDue9Oq511PTwA8VD/eiaVFPqAhlJddv5hFVu', 'dhaka', '44444444444', 'school', 'dddddd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employee_id` (`employee_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
