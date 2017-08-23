-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2017 at 03:33 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake`
--

CREATE TABLE `cake` (
  `cake_id` int(11) NOT NULL,
  `cake_name` varchar(10000) DEFAULT '',
  `cake_description` varchar(755) DEFAULT '',
  `image_path` varchar(1000) DEFAULT '',
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cake_layer_1`
--

CREATE TABLE `cake_layer_1` (
  `cake_id` int(11) NOT NULL,
  `cake_name` varchar(10000) DEFAULT '',
  `cake_description` varchar(755) DEFAULT '',
  `image_path` varchar(1000) DEFAULT '',
  `top_view` text,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cake_layer_1`
--

INSERT INTO `cake_layer_1` (`cake_id`, `cake_name`, `cake_description`, `image_path`, `top_view`, `price`, `is_active`, `is_deleted`) VALUES
(4, 'Cheese Cake', 'Cheese Cake', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065ab8f6f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065fc1ca3.png', 100, 1, 0),
(5, 'Caramel Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983067cb3064.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830683a18cf.png', 120, 1, 0),
(6, 'Pandan Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983069de7c86.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306a44059d.png', 120, 1, 0),
(7, 'Bubble Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306b6d565f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306bbb4241.png', 300, 1, 0),
(8, 'Chocolate Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d59c7bd.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d9c0379.png', 300, 1, 0),
(9, 'Buko Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306ef19b38.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830703400fe.png', 200, 1, 0),
(10, 'Strawberry Cake', 'Round Shape , Sweet', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071546dc8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071b427d2.png', 200, 1, 0),
(11, 'Coffee', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073586c02.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073be54a9.png', 100, 1, 0),
(12, 'Drew berry Cake ', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307535e8df.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307593bf70.png', 200, 1, 0),
(13, 'Ube Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307836a364.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983078798049.png', 200, 1, 0),
(14, 'Ube Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830799dbecf.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307a13e6a1.png', 200, 1, 0),
(15, 'Drew berry Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307b972f4f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307bfbf1f9.png', 200, 1, 0),
(16, 'Coffee Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307d64b1d3.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307dc06c73.png', 200, 1, 0),
(17, 'Caramel Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f1aeeb0.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f934dd3.png', 200, 1, 0),
(18, 'Chocolate Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081366e70.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081795550.png', 200, 1, 0),
(19, 'Buko Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983083577817.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308565eacf.png', 200, 1, 0),
(20, 'Pandan Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308656a4e5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983086ab7034.png', 2000, 1, 0),
(21, 'Melon Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983087f0d421.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983088f8ab04.png', 200, 1, 0),
(22, 'Cheese Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ad45577.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308b17892b.png', 1000, 1, 0),
(23, 'Bubble Gum Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308c5aa2f5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ca0b2fd.png', 200, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cake_layer_2`
--

CREATE TABLE `cake_layer_2` (
  `cake_id` int(11) NOT NULL,
  `cake_name` varchar(10000) DEFAULT '',
  `cake_description` varchar(755) DEFAULT '',
  `image_path` varchar(1000) DEFAULT '',
  `top_view` text,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cake_layer_2`
--

INSERT INTO `cake_layer_2` (`cake_id`, `cake_name`, `cake_description`, `image_path`, `top_view`, `price`, `is_active`, `is_deleted`) VALUES
(4, 'Cheese Cake', 'Cheese Cake', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065ab8f6f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065fc1ca3.png', 100, 1, 0),
(5, 'Caramel Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983067cb3064.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830683a18cf.png', 120, 1, 0),
(6, 'Pandan Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983069de7c86.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306a44059d.png', 120, 1, 0),
(7, 'Bubble Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306b6d565f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306bbb4241.png', 300, 1, 0),
(8, 'Chocolate Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d59c7bd.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d9c0379.png', 300, 1, 0),
(9, 'Buko Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306ef19b38.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830703400fe.png', 200, 1, 0),
(10, 'Strawberry Cake', 'Round Shape , Sweet', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071546dc8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071b427d2.png', 200, 1, 0),
(11, 'Coffee', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073586c02.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073be54a9.png', 100, 1, 0),
(12, 'Drew berry Cake ', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307535e8df.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307593bf70.png', 200, 1, 0),
(13, 'Ube Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307836a364.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983078798049.png', 200, 1, 0),
(14, 'Ube Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830799dbecf.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307a13e6a1.png', 200, 1, 0),
(15, 'Drew berry Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307b972f4f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307bfbf1f9.png', 200, 1, 0),
(16, 'Coffee Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307d64b1d3.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307dc06c73.png', 200, 1, 0),
(17, 'Caramel Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f1aeeb0.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f934dd3.png', 200, 1, 0),
(18, 'Chocolate Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081366e70.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081795550.png', 200, 1, 0),
(19, 'Buko Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983083577817.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308565eacf.png', 200, 1, 0),
(20, 'Pandan Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308656a4e5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983086ab7034.png', 2000, 1, 0),
(21, 'Melon Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983087f0d421.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983088f8ab04.png', 200, 1, 0),
(22, 'Cheese Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ad45577.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308b17892b.png', 1000, 1, 0),
(23, 'Bubble Gum Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308c5aa2f5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ca0b2fd.png', 200, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cake_layer_3`
--

CREATE TABLE `cake_layer_3` (
  `cake_id` int(11) NOT NULL,
  `cake_name` varchar(10000) DEFAULT '',
  `cake_description` varchar(755) DEFAULT '',
  `image_path` varchar(1000) DEFAULT '',
  `top_view` text,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cake_layer_3`
--

INSERT INTO `cake_layer_3` (`cake_id`, `cake_name`, `cake_description`, `image_path`, `top_view`, `price`, `is_active`, `is_deleted`) VALUES
(4, 'Cheese Cake', 'Cheese Cake', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065ab8f6f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065fc1ca3.png', 100, 1, 0),
(5, 'Caramel Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983067cb3064.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830683a18cf.png', 120, 1, 0),
(6, 'Pandan Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983069de7c86.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306a44059d.png', 120, 1, 0),
(7, 'Bubble Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306b6d565f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306bbb4241.png', 300, 1, 0),
(8, 'Chocolate Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d59c7bd.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d9c0379.png', 300, 1, 0),
(9, 'Buko Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306ef19b38.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830703400fe.png', 200, 1, 0),
(10, 'Strawberry Cake', 'Round Shape , Sweet', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071546dc8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071b427d2.png', 200, 1, 0),
(11, 'Coffee', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073586c02.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073be54a9.png', 100, 1, 0),
(12, 'Drew berry Cake ', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307535e8df.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307593bf70.png', 200, 1, 0),
(13, 'Ube Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307836a364.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983078798049.png', 200, 1, 0),
(14, 'Ube Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830799dbecf.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307a13e6a1.png', 200, 1, 0),
(15, 'Drew berry Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307b972f4f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307bfbf1f9.png', 200, 1, 0),
(16, 'Coffee Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307d64b1d3.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307dc06c73.png', 200, 1, 0),
(17, 'Caramel Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f1aeeb0.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f934dd3.png', 200, 1, 0),
(18, 'Chocolate Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081366e70.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081795550.png', 200, 1, 0),
(19, 'Buko Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983083577817.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308565eacf.png', 200, 1, 0),
(20, 'Pandan Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308656a4e5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983086ab7034.png', 2000, 1, 0),
(21, 'Melon Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983087f0d421.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983088f8ab04.png', 200, 1, 0),
(22, 'Cheese Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ad45577.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308b17892b.png', 1000, 1, 0),
(23, 'Bubble Gum Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308c5aa2f5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ca0b2fd.png', 200, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cake_layer_4`
--

CREATE TABLE `cake_layer_4` (
  `cake_id` int(11) NOT NULL,
  `cake_name` varchar(10000) DEFAULT '',
  `cake_description` varchar(755) DEFAULT '',
  `image_path` varchar(1000) DEFAULT '',
  `top_view` text,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cake_layer_4`
--

INSERT INTO `cake_layer_4` (`cake_id`, `cake_name`, `cake_description`, `image_path`, `top_view`, `price`, `is_active`, `is_deleted`) VALUES
(4, 'Cheese Cake', 'Cheese Cake', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065ab8f6f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065fc1ca3.png', 100, 1, 0),
(5, 'Caramel Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983067cb3064.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830683a18cf.png', 120, 1, 0),
(6, 'Pandan Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983069de7c86.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306a44059d.png', 120, 1, 0),
(7, 'Bubble Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306b6d565f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306bbb4241.png', 300, 1, 0),
(8, 'Chocolate Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d59c7bd.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d9c0379.png', 300, 1, 0),
(9, 'Buko Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306ef19b38.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830703400fe.png', 200, 1, 0),
(10, 'Strawberry Cake', 'Round Shape , Sweet', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071546dc8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071b427d2.png', 200, 1, 0),
(11, 'Coffee', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073586c02.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073be54a9.png', 100, 1, 0),
(12, 'Drew berry Cake ', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307535e8df.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307593bf70.png', 200, 1, 0),
(13, 'Ube Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307836a364.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983078798049.png', 200, 1, 0),
(14, 'Ube Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830799dbecf.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307a13e6a1.png', 200, 1, 0),
(15, 'Drew berry Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307b972f4f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307bfbf1f9.png', 200, 1, 0),
(16, 'Coffee Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307d64b1d3.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307dc06c73.png', 200, 1, 0),
(17, 'Caramel Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f1aeeb0.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f934dd3.png', 200, 1, 0),
(18, 'Chocolate Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081366e70.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081795550.png', 200, 1, 0),
(19, 'Buko Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983083577817.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308565eacf.png', 200, 1, 0),
(20, 'Pandan Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308656a4e5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983086ab7034.png', 2000, 1, 0),
(21, 'Melon Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983087f0d421.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983088f8ab04.png', 200, 1, 0),
(22, 'Cheese Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ad45577.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308b17892b.png', 1000, 1, 0),
(23, 'Bubble Gum Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308c5aa2f5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ca0b2fd.png', 200, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cake_layer_5`
--

CREATE TABLE `cake_layer_5` (
  `cake_id` int(11) NOT NULL,
  `cake_name` varchar(10000) DEFAULT '',
  `cake_description` varchar(755) DEFAULT '',
  `image_path` varchar(1000) DEFAULT '',
  `top_view` text,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cake_layer_5`
--

INSERT INTO `cake_layer_5` (`cake_id`, `cake_name`, `cake_description`, `image_path`, `top_view`, `price`, `is_active`, `is_deleted`) VALUES
(4, 'Cheese Cake', 'Cheese Cake', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065ab8f6f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983065fc1ca3.png', 100, 1, 0),
(5, 'Caramel Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983067cb3064.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830683a18cf.png', 120, 1, 0),
(6, 'Pandan Cake', 'Round', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983069de7c86.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306a44059d.png', 120, 1, 0),
(7, 'Bubble Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306b6d565f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306bbb4241.png', 300, 1, 0),
(8, 'Chocolate Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d59c7bd.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306d9c0379.png', 300, 1, 0),
(9, 'Buko Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598306ef19b38.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830703400fe.png', 200, 1, 0),
(10, 'Strawberry Cake', 'Round Shape , Sweet', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071546dc8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983071b427d2.png', 200, 1, 0),
(11, 'Coffee', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073586c02.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983073be54a9.png', 100, 1, 0),
(12, 'Drew berry Cake ', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307535e8df.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307593bf70.png', 200, 1, 0),
(13, 'Ube Cake', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307836a364.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983078798049.png', 200, 1, 0),
(14, 'Ube Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59830799dbecf.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307a13e6a1.png', 200, 1, 0),
(15, 'Drew berry Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307b972f4f.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307bfbf1f9.png', 200, 1, 0),
(16, 'Coffee Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307d64b1d3.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307dc06c73.png', 200, 1, 0),
(17, 'Caramel Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f1aeeb0.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598307f934dd3.png', 200, 1, 0),
(18, 'Chocolate Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081366e70.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983081795550.png', 200, 1, 0),
(19, 'Buko Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983083577817.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308565eacf.png', 200, 1, 0),
(20, 'Pandan Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308656a4e5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983086ab7034.png', 2000, 1, 0),
(21, 'Melon Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983087f0d421.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5983088f8ab04.png', 200, 1, 0),
(22, 'Cheese Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ad45577.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308b17892b.png', 1000, 1, 0),
(23, 'Bubble Gum Cake', 'Rectangle', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308c5aa2f5.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598308ca0b2fd.png', 200, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cake_layer_availability`
--

CREATE TABLE `cake_layer_availability` (
  `cake_layer_availability_id` int(11) NOT NULL,
  `cake_id` int(11) DEFAULT '0',
  `layer_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cake_orders`
--

CREATE TABLE `cake_orders` (
  `cake_order_id` int(11) NOT NULL,
  `cake_structure` text,
  `suggestion_box` text,
  `cost` decimal(11,4) DEFAULT '0.0000',
  `customer_id` int(11) DEFAULT '0',
  `estimated_pickedup` date DEFAULT '0000-00-00',
  `order_status` varchar(1000) DEFAULT '',
  `date_ordered` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_finalized` datetime DEFAULT '0000-00-00 00:00:00',
  `finalized_by` int(11) DEFAULT '0',
  `is_finalized` tinyint(4) DEFAULT '0',
  `date_pickedup` date DEFAULT '0000-00-00',
  `is_pickedup` tinyint(4) DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `cust_lname` varchar(255) DEFAULT '',
  `cust_fname` varchar(255) DEFAULT '',
  `cust_mname` varchar(255) DEFAULT '',
  `address` varchar(755) DEFAULT '',
  `contact_no` varchar(255) DEFAULT '',
  `cust_bdate` date DEFAULT '0000-00-00',
  `security_code` varchar(100) DEFAULT '',
  `cust_vcode` text,
  `cust_uname` varchar(155) DEFAULT '',
  `cust_email` varchar(255) DEFAULT '',
  `cust_pword` varchar(255) DEFAULT '',
  `cust_photo` varchar(10000) DEFAULT '',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `cust_lname`, `cust_fname`, `cust_mname`, `address`, `contact_no`, `cust_bdate`, `security_code`, `cust_vcode`, `cust_uname`, `cust_email`, `cust_pword`, `cust_photo`, `is_active`, `is_deleted`) VALUES
(1, 'Jose', 'Rizal', 'Protacio', 'Lunete Part', '09999999', '2017-08-16', 'vx', 'vx', 'customer1', 'joserizal@gmail.com', 'e2ea3c6b50c654e7c809c252b97d94386fb283fc', 'http://localhost:8012/cakeordering/backend/assets/images/cust/59829c91bc6a9.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `other_toppings`
--

CREATE TABLE `other_toppings` (
  `topping_id` int(11) NOT NULL,
  `topping_name` varchar(1000) DEFAULT '',
  `topping_description` varchar(1000) DEFAULT '',
  `image_path` varchar(1000) DEFAULT NULL,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_toppings`
--

INSERT INTO `other_toppings` (`topping_id`, `topping_name`, `topping_description`, `image_path`, `price`, `is_active`, `is_deleted`) VALUES
(8, 'Cande 1', 'Cande 1', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830d23b69fa.png', 10, 1, 0),
(9, 'Cande 1', 'Cande 1', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830d3b04146.png', 10, 1, 0),
(10, 'Rose Candy', 'Rose Candy', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830d533365e.png', 10, 1, 0),
(11, 'Apple', 'Apple', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830d72c053d.png', 10, 1, 0),
(12, 'Banana', 'Banana', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830d7d28d8c.png', 100, 1, 0),
(13, 'Cherry', 'Cherry', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830d880d477.png', 10, 1, 0),
(14, 'Stawberry', 'Stawberry', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830d9aae21c.png', 100, 1, 0),
(15, 'Pearl', 'Pearl', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830daca2db6.png', 10, 1, 0),
(16, 'Flower', 'Flower', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830dbe72804.png', 10, 1, 0),
(17, 'Coat Grapes', 'Coat Grapes', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59830dd1b66db.png', 100, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `or_no` varchar(100) DEFAULT '',
  `date_paid` datetime DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) DEFAULT '0',
  `cake_order_id` int(11) DEFAULT '0',
  `notes` varchar(1000) DEFAULT '',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ready_cake`
--

CREATE TABLE `ready_cake` (
  `ready_cake_id` int(11) NOT NULL,
  `ready_cake_name` varchar(10000) DEFAULT '',
  `ready_cake_description` varchar(755) DEFAULT '',
  `image_path` varchar(1000) DEFAULT '',
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ready_cake`
--

INSERT INTO `ready_cake` (`ready_cake_id`, `ready_cake_name`, `ready_cake_description`, `image_path`, `price`, `is_active`, `is_deleted`) VALUES
(7, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59830e957a9d7.jpg', 100, 1, 0),
(8, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59830ea14455b.jpg', 1000, 1, 0),
(9, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59830ea864df9.jpg', 100, 1, 0),
(10, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59830eb259cd2.jpg', 100, 1, 0),
(11, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59830eb97191c.jpg', 100, 0, 1),
(12, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59830ec68d931.jpg', 1, 1, 0),
(13, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59830f26c753e.jpg', 100, 1, 0),
(14, 'Birthday Cake', 'Birthday Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/5983158f04791.jpg', 100, 1, 0),
(15, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315ace51a9.jpg', 100, 1, 0),
(16, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315b7cee9d.jpg', 100, 1, 0),
(17, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315bf08e62.jpg', 100, 1, 0),
(18, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315c6ecb7d.jpg', 100, 1, 0),
(19, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315cddc0c2.jpg', 1000, 1, 0),
(20, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315d4bb47e.jpg', 100, 1, 0),
(21, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315dbc4644.jpg', 1000, 1, 0),
(22, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315e2dbfb5.jpg', 100, 1, 0),
(23, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315e979617.jpg', 100, 1, 0),
(24, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315f45d060.jpg', 100, 1, 0),
(25, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598315faef0ca.jpg', 100, 1, 0),
(26, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59831601049d6.jpg', 100, 1, 0),
(27, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/598316071f3d6.jpg', 100, 1, 0),
(28, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/5983160dd9ec6.jpg', 100, 1, 0),
(29, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/59831614b0cf9.jpg', 100, 1, 0),
(30, 'Wedding Cake', 'Wedding Cake', 'http://localhost:8012/cakeordering/backend/assets/images/ready_cake/5983161aef59d.jpg', 100, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ready_cake_orders`
--

CREATE TABLE `ready_cake_orders` (
  `ready_cake_order_id` int(11) NOT NULL,
  `suggestion_box` text,
  `ready_cake_id` int(11) DEFAULT '0',
  `cost` decimal(11,4) DEFAULT '0.0000',
  `customer_id` int(11) DEFAULT '0',
  `estimated_pickedup` date DEFAULT '0000-00-00',
  `order_status` varchar(1000) DEFAULT '',
  `date_ordered` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_finalized` datetime DEFAULT '0000-00-00 00:00:00',
  `finalized_by` int(11) DEFAULT '0',
  `is_finalized` tinyint(4) DEFAULT '0',
  `date_pickedup` date DEFAULT '0000-00-00',
  `is_pickedup` tinyint(4) DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ready_cake_orders`
--

INSERT INTO `ready_cake_orders` (`ready_cake_order_id`, `suggestion_box`, `ready_cake_id`, `cost`, `customer_id`, `estimated_pickedup`, `order_status`, `date_ordered`, `date_finalized`, `finalized_by`, `is_finalized`, `date_pickedup`, `is_pickedup`, `is_active`, `is_deleted`) VALUES
(10, 'Testing', 17, '100.0000', 1, '2017-08-17', 'pending', '2017-08-03 20:57:53', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `side_decorations`
--

CREATE TABLE `side_decorations` (
  `side_decoration_id` int(11) NOT NULL,
  `side_decoration_name` varchar(1000) DEFAULT '',
  `side_decoration_description` varchar(1000) DEFAULT '',
  `image_path` varchar(1000) DEFAULT NULL,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `side_decorations`
--

INSERT INTO `side_decorations` (`side_decoration_id`, `side_decoration_name`, `side_decoration_description`, `image_path`, `price`, `is_active`, `is_deleted`) VALUES
(14, 'Blue Flower', 'Blue Flower', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830def2a1d0.png', 100, 1, 0),
(15, 'Bubble', 'Bubble', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830dfaed860.png', 10, 1, 0),
(16, 'Building', 'Building', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e0583fcc.png', 100, 1, 0),
(17, 'Green Flower', 'Green Flower', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e1198405.png', 100, 1, 0),
(18, 'Pearl', 'Pearl', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e2003543.png', 100, 1, 0),
(19, 'Pink Flower', 'Pink Flower', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e29d4e49.png', 100, 1, 0),
(20, 'Rainbow Candy', 'Rainbow Candy', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e3fc9556.png', 100, 1, 0),
(21, 'Red Rose', 'Red Rose', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e5195baa.png', 100, 1, 0),
(22, 'Stem', 'Stem', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e5fbb7f2.png', 100, 1, 0),
(23, 'Violet Candy', 'Violet Candy', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/59830e6743b00.png', 100, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `user_account_id` int(11) NOT NULL,
  `user_fname` varchar(255) DEFAULT '',
  `user_mname` varchar(255) DEFAULT '',
  `user_lname` varchar(255) DEFAULT '',
  `user_uname` varchar(255) DEFAULT '',
  `user_pword` varchar(255) DEFAULT '',
  `address` varchar(1000) DEFAULT '',
  `user_email` varchar(255) DEFAULT '',
  `contact_no` varchar(100) DEFAULT '',
  `user_bdate` date DEFAULT '0000-00-00',
  `is_deleted` int(1) DEFAULT '0',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `user_photo` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`user_account_id`, `user_fname`, `user_mname`, `user_lname`, `user_uname`, `user_pword`, `address`, `user_email`, `contact_no`, `user_bdate`, `is_deleted`, `is_active`, `user_photo`) VALUES
(14, 'admin', 'admin', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'admin', 'admin', '2017-07-26', 0, 1, '../../assets-apps/img/anonymous-icon.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake`
--
ALTER TABLE `cake`
  ADD PRIMARY KEY (`cake_id`) USING BTREE;

--
-- Indexes for table `cake_layer_1`
--
ALTER TABLE `cake_layer_1`
  ADD PRIMARY KEY (`cake_id`) USING BTREE;

--
-- Indexes for table `cake_layer_2`
--
ALTER TABLE `cake_layer_2`
  ADD PRIMARY KEY (`cake_id`) USING BTREE;

--
-- Indexes for table `cake_layer_3`
--
ALTER TABLE `cake_layer_3`
  ADD PRIMARY KEY (`cake_id`) USING BTREE;

--
-- Indexes for table `cake_layer_4`
--
ALTER TABLE `cake_layer_4`
  ADD PRIMARY KEY (`cake_id`) USING BTREE;

--
-- Indexes for table `cake_layer_5`
--
ALTER TABLE `cake_layer_5`
  ADD PRIMARY KEY (`cake_id`) USING BTREE;

--
-- Indexes for table `cake_layer_availability`
--
ALTER TABLE `cake_layer_availability`
  ADD PRIMARY KEY (`cake_layer_availability_id`);

--
-- Indexes for table `cake_orders`
--
ALTER TABLE `cake_orders`
  ADD PRIMARY KEY (`cake_order_id`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Indexes for table `other_toppings`
--
ALTER TABLE `other_toppings`
  ADD PRIMARY KEY (`topping_id`) USING BTREE;

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`) USING BTREE;

--
-- Indexes for table `ready_cake`
--
ALTER TABLE `ready_cake`
  ADD PRIMARY KEY (`ready_cake_id`) USING BTREE;

--
-- Indexes for table `ready_cake_orders`
--
ALTER TABLE `ready_cake_orders`
  ADD PRIMARY KEY (`ready_cake_order_id`) USING BTREE;

--
-- Indexes for table `side_decorations`
--
ALTER TABLE `side_decorations`
  ADD PRIMARY KEY (`side_decoration_id`) USING BTREE;

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`user_account_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cake`
--
ALTER TABLE `cake`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cake_layer_1`
--
ALTER TABLE `cake_layer_1`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `cake_layer_2`
--
ALTER TABLE `cake_layer_2`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `cake_layer_3`
--
ALTER TABLE `cake_layer_3`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `cake_layer_4`
--
ALTER TABLE `cake_layer_4`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `cake_layer_5`
--
ALTER TABLE `cake_layer_5`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `cake_layer_availability`
--
ALTER TABLE `cake_layer_availability`
  MODIFY `cake_layer_availability_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cake_orders`
--
ALTER TABLE `cake_orders`
  MODIFY `cake_order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `other_toppings`
--
ALTER TABLE `other_toppings`
  MODIFY `topping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ready_cake`
--
ALTER TABLE `ready_cake`
  MODIFY `ready_cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ready_cake_orders`
--
ALTER TABLE `ready_cake_orders`
  MODIFY `ready_cake_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `side_decorations`
--
ALTER TABLE `side_decorations`
  MODIFY `side_decoration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
