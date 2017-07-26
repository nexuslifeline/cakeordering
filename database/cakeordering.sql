-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2017 at 04:32 AM
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
  `cost` decimal(11,4) DEFAULT '0.0000',
  `customer_id` int(11) DEFAULT '0',
  `estimated_pickedup` date DEFAULT '0000-00-00',
  `date_ordered` datetime DEFAULT '0000-00-00 00:00:00',
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
(1, 'Rizal', 'Jose', 'P', 'Luneta', '099999999999', '2017-07-06', '', '086a9', 'customer1', 'rizal@gmail.com', 'e2ea3c6b50c654e7c809c252b97d94386fb283fc', '', 1, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `or_no` varchar(100) DEFAULT '',
  `date_paid` date DEFAULT '0000-00-00',
  `customer_id` int(11) DEFAULT '0',
  `cake_order_id` int(11) DEFAULT '0',
  `notes` varchar(1000) DEFAULT '',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(14, 'admin', 'admin', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'admin', 'admin', '2017-07-26', 0, 1, '');

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
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cake_layer_2`
--
ALTER TABLE `cake_layer_2`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cake_layer_3`
--
ALTER TABLE `cake_layer_3`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cake_layer_4`
--
ALTER TABLE `cake_layer_4`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cake_layer_5`
--
ALTER TABLE `cake_layer_5`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `topping_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
