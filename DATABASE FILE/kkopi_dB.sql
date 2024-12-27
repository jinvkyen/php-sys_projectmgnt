-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 12:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkopi_dB`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52'),
(2, 'ayen', 'b0d49b41baf73376866cb6617179867e', 'ayenjtt.1902@gmail.com', '', '2023-11-23 03:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Caramel Iced Amerikano', 'Black Coffee Base', 39.00, '655e3c4aaee5f.jpg'),
(2, 3, 'Match Milktea', 'Matcha grass comes with pearls', 39.00, '655e3dd572a91.jpg'),
(3, 7, 'Taro Milktea', 'Comes with Pearls', 39.00, '655eb8fc03ce9.jpg'),
(4, 2, 'Kkopi Barako', 'Black Coffee Base', 39.00, '655ea92df3cef.jpg'),
(5, 1, 'Hot Chocolate', 'Irresistible blend of rich cocoa', 39.00, '655e43f110c7e.jpg'),
(6, 7, 'Caramel Macchiato Latte', 'Comes with Caramel Syrup ', 39.00, '655eb99c4e110.jpg'),
(7, 2, 'Chocolate Duo', 'Comes with Pearls', 39.00, '655e44e282ded.jpg'),
(8, 2, 'Grapes', 'Comes with Nata', 39.00, '655e45439d6b1.jpg'),
(9, 3, 'Chocolate Milktea', 'Comes with Pearls', 39.00, '655e457db8ec8.jpg'),
(11, 3, 'Kkopi Latte', 'Black Coffee with Creamer', 39.00, '655e4607ab1e9.jpg'),
(12, 3, 'Wintermelon Milktea', 'Comes with Pearls', 39.00, '655e4666780ba.jpg'),
(13, 7, 'Vanilla Iced Amerikano', 'Black Coffee Base', 39.00, '655eb94a13be9.jpg'),
(14, 7, 'Wintermelon Milktea', 'Comes with Pearls', 39.00, '655eb9c9d6c1b.jpg'),
(15, 7, 'Pastillas Latte', 'Creamy Coffee with Pastillas', 39.00, '655eb9ba6d907.jpg'),
(16, 7, 'Cookie Monster', 'Cookies & Cream and Chocolate', 39.00, '655eb8e2f413d.jpg'),
(17, 1, 'Wintermelon Milk Tea', 'Wintermelon milk tea syrup with boba.', 39.00, '655e4804df889.jpg'),
(18, 1, 'Hazelnut Iced Amerikano', 'Black Coffee Base with Hazelnut Syrup', 39.00, '655e483c9763b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 13, 'in process', 'pls wait', '2023-11-22 17:26:52'),
(14, 14, 'in process', 'Please wait your item', '2023-11-22 18:33:46'),
(15, 14, 'in process', 'Please wait your item', '2023-11-22 18:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'KKOPI.TEA Imus Branch', 'kkopi.teamus@mail.com', '3547854700', 'https://kkopitea.com/', '11am', '7pm', 'mon-sat', '  NIA Road, Imus, Cavite  ', '655e0b1d9a0f3.jpg', '2023-11-22 14:07:25'),
(2, 2, 'KKOPI.TEA Bucandala Branch', 'kkopi.teamus@mail.com', '0557426406', 'https://kkopitea.com/', '10am', '6pm', 'mon-sun', 'Bucandala 3 Imus Cavite', 'bucandala.jpg', '2023-11-22 13:48:48'),
(3, 3, 'KKOPI.TEA Alapan 1b Branch', 'kkopi.teamus@mail.com', '1458745855', 'https://kkopitea.com/', '11am', '7pm', 'mon-fri', ' Unit 3C,EVR Building, Alapan St, 1B, Imus, Cavite ', '655e1713e6001.jpg', '2023-11-22 14:58:27'),
(7, 5, 'KKOPI.TEA Jade St. Branch', 'kkopi.teamus@mail.com', '1458745855', 'https://www.facebook.com/p/KKOPItea-Malagasang-1G-Imus-Cavite-100087482963228/', '12pm', '5pm', 'Mon-Sat', 'Block 41 Lot 78 Jade Residences Brgy. Malagasang 1G. Imus, Cavite', '655eb8276f7b7.jpg', '2023-11-23 02:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Imus', '2023-11-22 14:48:20'),
(2, 'Bucandala', '2023-11-22 14:48:37'),
(3, 'Alapan 1B', '2023-11-22 14:50:44'),
(5, 'Jade St.', '2023-11-22 14:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, 'ayenjtt', 'ayen', 'tipon', 'ayenjtt.1902@gmail.com', '0997886543', 'e10adc3949ba59abbe56e057f20f883e', 'ewan', 1, '2023-11-21 00:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(14, 7, 'Match Milktea', 1, 39.00, 'in process', '2023-11-22 18:33:46'),
(15, 7, 'Kkopi Latte', 1, 39.00, NULL, '2023-11-22 18:31:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
