-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2017 at 02:32 PM
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
-- Table structure for table `agreements`
--

CREATE TABLE `agreements` (
  `agreement_id` int(11) NOT NULL,
  `agreement_message` text,
  `is_set` varchar(255) DEFAULT 'no',
  `is_active` int(11) DEFAULT '1',
  `is_deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `agreements`
--

INSERT INTO `agreements` (`agreement_id`, `agreement_message`, `is_set`, `is_active`, `is_deleted`) VALUES
(13, 'This is a sample messge', NULL, 1, 0);

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
(45, 'Cheese Cake', 'This is a sample description', '../../backend/assets/images/cake/59a3682f9de73.png', '../../backend/assets/images/cake/59a368398f29b.png', 100, 1, 0),
(46, 'Ube Cake', 'Test', '../../backend/assets/images/cake/59a40512a4ca1.png', '../../backend/assets/images/cake/59a40518cd62f.png', 100, 1, 0),
(47, 'Pandan Cake', 'Test', '../../backend/assets/images/cake/59a40530bb5ac.png', '../../backend/assets/images/cake/59a40536a6b00.png', 100, 1, 0);

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
-- Table structure for table `cake_templates`
--

CREATE TABLE `cake_templates` (
  `cake_template_id` int(11) NOT NULL,
  `cake_template_name` varchar(10000) DEFAULT '',
  `cake_template_description` varchar(755) DEFAULT '',
  `front_view` text,
  `rear_view` text,
  `estimated_price` double DEFAULT '0',
  `serving_details` text,
  `actual_price` double DEFAULT '0',
  `customer_id` int(11) DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_verified` int(11) DEFAULT '0',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cake_templates`
--

INSERT INTO `cake_templates` (`cake_template_id`, `cake_template_name`, `cake_template_description`, `front_view`, `rear_view`, `estimated_price`, `serving_details`, `actual_price`, `customer_id`, `is_active`, `is_verified`, `is_deleted`) VALUES
(1, 'My Cake 1', NULL, '<a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 220.111px; top: 69.1111px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59a4002fce02f.png\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 172.111px; top: 227.111px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59a4002fce02f.png\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 258.212px; top: 302.208px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59a4002fce02f.png\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 154.111px; top: 333.111px;\"><img height=\"50px\" src=\"../../backend/assets/images/topping/59a36b5e7213a.png\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 62.1111px; top: 284.111px;\"><img height=\"50px\" src=\"../../backend/assets/images/topping/59a36b5e7213a.png\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 141.111px; top: 25.1111px;\"><img height=\"50px\" src=\"../../backend/assets/images/topping/59a36b5e7213a.png\"></a>\n                              <div class=\"layer5\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40512a4ca1.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer4\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40512a4ca1.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer3\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40530bb5ac.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"../../backend/assets/images/side_decoration/59a36b0f5736e.png\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer2\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40512a4ca1.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer1\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a3682f9de73.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                           ', '<a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 192.111px; top: 107.111px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59a4002fce02f.png\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 113.212px; top: 105.208px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59a4002fce02f.png\"></a>\n                              <div class=\"layer5\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40512a4ca1.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer4\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40512a4ca1.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer3\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40530bb5ac.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer2\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a40512a4ca1.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"../../backend/assets/images/side_decoration/59a4064d742db.png\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                              <div class=\"layer1\">\n                                 <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59a3682f9de73.png\" class=\"img-responsive\"></div>\n                                 <div class=\"decor-box\">\n                                    <img src=\"../../backend/assets/images/side_decoration/59a4066f7fded.png\" class=\"img-responsive decors\">\n                                 </div>\n                              </div>\n                           ', NULL, NULL, NULL, 1, 1, 0, 0);

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
-- Table structure for table `flavors`
--

CREATE TABLE `flavors` (
  `flavor_id` int(11) NOT NULL,
  `flavor_name` varchar(1000) DEFAULT '',
  `flavor_description` varchar(1000) DEFAULT '',
  `image_path` varchar(1000) DEFAULT NULL,
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `flavors`
--

INSERT INTO `flavors` (`flavor_id`, `flavor_name`, `flavor_description`, `image_path`, `price`, `is_active`, `is_deleted`) VALUES
(5, 'Chocolate Flavor', 'This is a sample description', '../../backend/assets/images/flavors/59a36b7f0a7b1.png', 200, 1, 0),
(6, 'Cheese', '', '../../backend/assets/images/flavors/59a404b63f27c.png', 30, 1, 0);

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
(18, 'Apple', 'This is a sample description', '../../backend/assets/images/topping/59a36b5e7213a.png', 50, 1, 0),
(19, 'Rose Candy', 'This is a sample description', '../../backend/assets/images/topping/59a3ff4f9a9b9.png', 10, 1, 0);

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
(31, '6th Birthday Cake Style 1', 'This is a sample description', '../../backend/assets/images/ready_cake/59a3689a968b9.jpg', 350, 1, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `servings`
--

CREATE TABLE `servings` (
  `serving_id` int(11) NOT NULL,
  `serving_description` text,
  `layers` int(11) DEFAULT '1',
  `size` text,
  `price` double DEFAULT '0',
  `image_path` text,
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `servings`
--

INSERT INTO `servings` (`serving_id`, `serving_description`, `layers`, `size`, `price`, `image_path`, `is_active`, `is_deleted`) VALUES
(18, '26 servings 18 w/o top', 2, '6\",4\"', 0, NULL, 1, 0),
(19, '50 servings 32 w/o top', 2, '8\",4\"', 0, NULL, 1, 0),
(20, '82 servings 50 w/o top', 2, '8\",10\"', 0, NULL, 1, 0),
(21, '58 servings 50 w/o top', 3, '8\",6\",4\"', 0, NULL, 1, 0),
(22, '100 servings 82 w/o top', 3, '10\",8\",6\"', 0, NULL, 1, 0),
(23, '130 servings 112 w/o top', 3, '12\",9\",6\"', 0, NULL, 1, 0),
(24, '166 servings 148 w/o top', 3, '14\",10\",6\"', 0, NULL, 1, 0),
(25, '172 servings 154 w/o top', 4, '12\",10\",8\",6\"', 0, NULL, 1, 0),
(26, '20 servings 14 w/o top', 2, '6\",4\"', 0, NULL, 1, 0),
(27, '40 servings 26 w/o top', 2, '8\",6\"', 0, NULL, 1, 0),
(28, '64 servings 38 w/o top ', 2, '10\",8\"', 0, NULL, 1, 0),
(29, '46 servings 40 w/o top ', 3, '8\",6\",4\"', 0, NULL, 1, 0),
(30, '78 servings 64 w/o top', 3, '10\",8\",6\"', 0, NULL, 1, 0),
(31, '100 servings 86 w/o top', 3, '12\",9\",6\"', 0, NULL, 1, 0),
(32, '128 servings 114 w/o top', 3, '14\",10\",6\"', 0, NULL, 1, 0),
(33, '134 servings 120 w/o top', 4, '12\",10\",8\",6\"', 0, NULL, 1, 0),
(34, '210 servings 196 w/o top', 5, '14\",12\",10\",8\",6\"', 0, NULL, 1, 0),
(35, '20 servings 14 w/o top', 1, '8\"', 0, NULL, 1, 0);

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
(24, 'Red Roses', 'This is a sample description', '../../backend/assets/images/side_decoration/59a36b0f5736e.png', 50, 1, 0),
(25, 'q', 'v', '../../backend/assets/images/side_decoration/59a4064d742db.png', 1, 1, 0),
(26, '1', '1', '../../backend/assets/images/side_decoration/59a4065b78cd4.png', 1, 1, 0),
(27, 'q', 'q', '../../backend/assets/images/side_decoration/59a4066f7fded.png', 8, 1, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `user_graphics`
--

CREATE TABLE `user_graphics` (
  `graphic_id` int(11) NOT NULL,
  `graphic_name` varchar(1000) DEFAULT '',
  `graphic_description` varchar(1000) DEFAULT '',
  `image_path` varchar(1000) DEFAULT NULL,
  `customer_id` int(11) DEFAULT '0',
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_graphics`
--

INSERT INTO `user_graphics` (`graphic_id`, `graphic_name`, `graphic_description`, `image_path`, `customer_id`, `price`, `is_active`, `is_deleted`) VALUES
(1, 'Flower', 'Sample', '../../backend/assets/images/user_graphics/59a4002fce02f.png', 1, 10, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agreements`
--
ALTER TABLE `agreements`
  ADD PRIMARY KEY (`agreement_id`);

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
-- Indexes for table `cake_templates`
--
ALTER TABLE `cake_templates`
  ADD PRIMARY KEY (`cake_template_id`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Indexes for table `flavors`
--
ALTER TABLE `flavors`
  ADD PRIMARY KEY (`flavor_id`) USING BTREE;

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
-- Indexes for table `servings`
--
ALTER TABLE `servings`
  ADD PRIMARY KEY (`serving_id`) USING BTREE;

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
-- Indexes for table `user_graphics`
--
ALTER TABLE `user_graphics`
  ADD PRIMARY KEY (`graphic_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agreements`
--
ALTER TABLE `agreements`
  MODIFY `agreement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cake`
--
ALTER TABLE `cake`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cake_layer_1`
--
ALTER TABLE `cake_layer_1`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
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
-- AUTO_INCREMENT for table `cake_templates`
--
ALTER TABLE `cake_templates`
  MODIFY `cake_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `flavors`
--
ALTER TABLE `flavors`
  MODIFY `flavor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `other_toppings`
--
ALTER TABLE `other_toppings`
  MODIFY `topping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ready_cake`
--
ALTER TABLE `ready_cake`
  MODIFY `ready_cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `ready_cake_orders`
--
ALTER TABLE `ready_cake_orders`
  MODIFY `ready_cake_order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servings`
--
ALTER TABLE `servings`
  MODIFY `serving_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `side_decorations`
--
ALTER TABLE `side_decorations`
  MODIFY `side_decoration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_graphics`
--
ALTER TABLE `user_graphics`
  MODIFY `graphic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
