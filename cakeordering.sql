-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2017 at 05:50 AM
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
(1, 'Ube Cake', 'Best Seller, Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598246fab55f8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59824703eac38.png', 200, 1, 0),
(3, 'Cheese', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824c324da28.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982476c5a963.png', 340, 1, 0),
(4, 'Chocolate Cake', 'Rectangle Cake', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824788e5981.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982478fe459b.png', 300, 1, 0),
(5, 'Bubble Gum Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598247b769885.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598247bc6a165.png', 200, 1, 0);

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
(1, 'Ube Cake', 'Best Seller, Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598246fab55f8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59824703eac38.png', 200, 1, 0),
(3, 'Cheese', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824c324da28.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982476c5a963.png', 340, 1, 0),
(4, 'Chocolate Cake', 'Rectangle Cake', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824788e5981.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982478fe459b.png', 300, 1, 0),
(5, 'Bubble Gum Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598247b769885.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598247bc6a165.png', 200, 1, 0);

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
(1, 'Ube Cake', 'Best Seller, Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598246fab55f8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59824703eac38.png', 200, 1, 0),
(3, 'Cheese', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824c324da28.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982476c5a963.png', 340, 1, 0),
(4, 'Chocolate Cake', 'Rectangle Cake', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824788e5981.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982478fe459b.png', 300, 1, 0),
(5, 'Bubble Gum Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598247b769885.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598247bc6a165.png', 200, 1, 0);

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
(1, 'Ube Cake', 'Best Seller, Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598246fab55f8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59824703eac38.png', 200, 1, 0),
(3, 'Cheese', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824c324da28.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982476c5a963.png', 340, 1, 0),
(4, 'Chocolate Cake', 'Rectangle Cake', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824788e5981.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982478fe459b.png', 300, 1, 0),
(5, 'Bubble Gum Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598247b769885.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598247bc6a165.png', 200, 1, 0);

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
(1, 'Ube Cake', 'Best Seller, Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598246fab55f8.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/59824703eac38.png', 200, 1, 0),
(3, 'Cheese', 'Round Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824c324da28.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982476c5a963.png', 340, 1, 0),
(4, 'Chocolate Cake', 'Rectangle Cake', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824788e5981.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/5982478fe459b.png', 300, 1, 0),
(5, 'Bubble Gum Cake', 'Rectangle Shape', 'http://localhost:8012/cakeordering/backend/assets/images/topping/598247b769885.png', 'http://localhost:8012/cakeordering/backend/assets/images/cake/598247bc6a165.png', 200, 1, 0);

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

--
-- Dumping data for table `cake_orders`
--

INSERT INTO `cake_orders` (`cake_order_id`, `cake_structure`, `suggestion_box`, `cost`, `customer_id`, `estimated_pickedup`, `order_status`, `date_ordered`, `date_finalized`, `finalized_by`, `is_finalized`, `date_pickedup`, `is_pickedup`, `is_active`, `is_deleted`) VALUES
(1, '<div id=\"cake-canvas-1\">\n                                       <div id=\"cake-canvas-layer-5\"><img data-layer-price=\"0\" src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"1\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981ceed353a0.png\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-4\"><img data-layer-price=\"200\" src=\"http://localhost:8012/cakeordering/backend/assets/images/topping/598247b769885.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"1\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981ce90cef07.png\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-3\"><img data-layer-price=\"200\" src=\"http://localhost:8012/cakeordering/backend/assets/images/topping/598246fab55f8.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"1\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981ce90cef07.png\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-2\"><img data-layer-price=\"340\" src=\"http://localhost:8012/cakeordering/backend/assets/images/topping/59824c324da28.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"1\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cda937afc.png\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-1\"><img data-layer-price=\"300\" src=\"http://localhost:8012/cakeordering/backend/assets/images/topping/59824788e5981.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"1\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cda937afc.png\" class=\"img-responsive img2 ab\"></div>\n                                    </div>', 'Make twice', '20000.0000', 1, '2017-08-02', 'paid', '2017-08-02 11:34:07', '0000-00-00 00:00:00', 0, 0, '2017-08-15', 0, 1, 0),
(2, 'ddd', 'dd', '99999.0000', 1, '0000-00-00', 'cancel', '2017-08-02 11:34:07', '0000-00-00 00:00:00', 0, 0, '2017-08-02', 0, 1, 0),
(4, '\n                                    <div id=\"cake-canvas-1\">\n                                       <div id=\"cake-canvas-layer-5\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img1 ab\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-4\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img1 ab\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-3\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img1 ab\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-2\"><img data-layer-price=\"0\" src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"1\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cda937afc.png\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-1\"><img data-layer-price=\"300\" src=\"http://localhost:8012/cakeordering/backend/assets/images/topping/59824788e5981.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img2 ab\"></div>\n                                    </div>\n                                 ', 'Test', '301.0000', 1, '2017-08-07', 'pending', '2017-08-03 11:35:18', '0000-00-00 00:00:00', 0, 0, '1970-01-01', 0, 1, 0),
(5, '\n                                    <div id=\"cake-canvas-1\">\n                                       <div id=\"cake-canvas-layer-5\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img1 ab\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-4\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img1 ab\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-3\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img1 ab\"><img data-layer-price=\"0\" src=\"\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-2\"><img data-layer-price=\"200\" src=\"http://localhost:8012/cakeordering/backend/assets/images/topping/598247b769885.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"2\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cd6b2cb4f.png\" class=\"img-responsive img2 ab\"></div>\n                                       <div id=\"cake-canvas-layer-1\"><img data-layer-price=\"200\" src=\"http://localhost:8012/cakeordering/backend/assets/images/topping/598246fab55f8.png\" class=\"img-responsive img1 ab\"><img data-layer-price=\"1\" src=\"http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cee471e46.png\" class=\"img-responsive img2 ab\"></div>\n                                    </div>\n                                 ', 'SSSS', '403.0000', 1, '2017-08-08', 'pending', '2017-08-03 11:38:47', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 1, 0);

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
(1, 'Jose', 'Rizal', 'Protacio', 'Lunete Part', '09999999', '2017-08-16', 'vx', 'vx', 'customer1', 'joserizal@gmail.com', 'e2ea3c6b50c654e7c809c252b97d94386fb283fc', 'http://localhost:8012/cakeordering/backend/assets/images/cust/59829c91bc6a9.png', 1, 0),
(2, 'd', 'd', NULL, NULL, '2', '1970-01-01', '', '2d77d', '2', 'd', 'da4b9237bacccdf19c0760cab7aec4a8359010b0', '', 1, 0),
(3, 'x', 'xx', 'xx', 'xx', 'xx', '2017-08-17', '', '7c6a3', 'xx', 'xx', 'dd7b7b74ea160e049dd128478e074ce47254bde8', 'http://localhost:8012/cakeordering/backend/assets/images/cust/59816df16c13e.png', 1, 0);

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
(1, 'Apple', 'Apple', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824d380e6d6.png', 20, 1, 0),
(2, 'Cherry', 'Sweet', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824d52411cd.png', 10, 1, 0),
(3, 'Grape', 'Sweet', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824d66503e6.png', 10, 1, 0),
(4, 'Cheese', 'Cheese', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824d958703b.png', 10, 1, 0),
(5, 'Five Candle', 'Five Candle', 'http://localhost:8012/cakeordering/backend/assets/images/topping/59824de4d386e.png', 10, 1, 0);

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
(1, 'Floral', '12', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cc290aa92.png', 12, 0, 1),
(2, NULL, NULL, NULL, NULL, 0, 1),
(3, '2', '2', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cd6b2cb4f.png', 2, 1, 0),
(4, '11', '1', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cda937afc.png', 1, 1, 0),
(5, '1', '1', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cdb590a3e.png', 1, 0, 1),
(6, '1', '1', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cdbdbe79d.png', 1, 1, 0),
(7, 'x', '1', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981ce90cef07.png', 1, 1, 0),
(8, 'q', 'q', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cee471e46.png', 1, 1, 0),
(9, '1', '1', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981ceed353a0.png', 1, 1, 0),
(10, '1', '1', 'http://localhost:8012/cakeordering/backend/assets/images/side_decoration/5981cef3e9a5d.png', 1, 1, 0);

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
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cake_layer_2`
--
ALTER TABLE `cake_layer_2`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cake_layer_3`
--
ALTER TABLE `cake_layer_3`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cake_layer_4`
--
ALTER TABLE `cake_layer_4`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cake_layer_5`
--
ALTER TABLE `cake_layer_5`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cake_layer_availability`
--
ALTER TABLE `cake_layer_availability`
  MODIFY `cake_layer_availability_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cake_orders`
--
ALTER TABLE `cake_orders`
  MODIFY `cake_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `other_toppings`
--
ALTER TABLE `other_toppings`
  MODIFY `topping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `side_decorations`
--
ALTER TABLE `side_decorations`
  MODIFY `side_decoration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
