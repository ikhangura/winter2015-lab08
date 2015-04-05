-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2015 at 07:52 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `secrets`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1038d6e6a27228207da963d18b45f4e0da9fde36', '127.0.0.1', 1428212669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231323632373b),
('1749c46cb2d0b6c6dbee96d5a5f5533eaf60d3a0', '127.0.0.1', 1428212815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231323830343b7573657249447c733a323a226d6d223b757365724e616d657c733a353a226d69636b79223b75736572526f6c657c733a353a2261646d696e223b),
('348a1a4c7ba43ca471caf65d63f56134c8d0a7fd', '127.0.0.1', 1428211142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231313132323b),
('52d1ab540344f295307771030b26d966097b6e63', '127.0.0.1', 1428211046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231313034363b),
('6c63bbb94205ab6ca4a07dc476995e1606bc9076', '127.0.0.1', 1428212952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231323934383b),
('9d5ad04f9dcbdcb874c2885f686bd36fbc275fb6', '127.0.0.1', 1428210353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231303335333b),
('9e76f3e729a23467b537aa076cf79533951b939b', '127.0.0.1', 1428212569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231323536303b),
('a833a62a563e9f1db85e0b63731067b076923a0f', '127.0.0.1', 1428212880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231323836383b7573657249447c733a323a226464223b757365724e616d657c733a363a22646f6e616c64223b75736572526f6c657c733a343a2275736572223b),
('e67a29ddd7e9babf687ceee872bcfad99584ae0c', '127.0.0.1', 1428211817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313432383231313830383b);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `role`) VALUES
('dd', 'donald', '$2y$10$Rga7t2AYnyhJs5kQIWcDEu5V/x12jOeB5fp1ZivYu5fGQIjODDdVK', 'user'),
('mm', 'micky', '$2y$10$MDR86Btj9Iwzc9rQ.HxP1O3SSrcS1G1kEwBqh67QwMVgS8/NmH7y.', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`id`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;