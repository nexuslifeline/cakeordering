-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2017 at 03:43 PM
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
(13, '<span style=\"font-weight: bold;\">This is a sample messge</span>', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cake_layer`
--

CREATE TABLE `cake_layer` (
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
-- Dumping data for table `cake_layer`
--

INSERT INTO `cake_layer` (`cake_id`, `cake_name`, `cake_description`, `image_path`, `top_view`, `price`, `is_active`, `is_deleted`) VALUES
(5, 'Cheese Cake', 'Cheese Cake', '../../backend/assets/images/cake/59b503cc0acde.png', '../../backend/assets/images/cake/59b503cf996b3.png', 100, 1, 0),
(6, 'Pandan Cake', 'Pandan Cake', '../../backend/assets/images/cake/59b503edc28f2.png', '../../backend/assets/images/cake/59b503f116ae7.png', 100, 1, 0),
(7, 'Ube Cake', 'Ube Cake', '../../backend/assets/images/cake/59b5040229039.png', '../../backend/assets/images/cake/59b50406bc246.png', 120, 1, 0);

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
  `snapshot_front` text NOT NULL,
  `snapshot_rear` text NOT NULL,
  `tbl_details` text,
  `estimated_price` double DEFAULT '0',
  `estimated_picktup_date` date DEFAULT '0000-00-00',
  `serving_details` text,
  `suggestion_box` text,
  `dedication_details` text,
  `actual_price` double DEFAULT '0',
  `customer_id` int(11) DEFAULT '0',
  `status` varchar(1000) DEFAULT 'for assessment',
  `is_active` int(1) DEFAULT '1',
  `is_verified` int(11) DEFAULT '0',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cake_templates`
--

INSERT INTO `cake_templates` (`cake_template_id`, `cake_template_name`, `cake_template_description`, `front_view`, `rear_view`, `snapshot_front`, `snapshot_rear`, `tbl_details`, `estimated_price`, `estimated_picktup_date`, `serving_details`, `suggestion_box`, `dedication_details`, `actual_price`, `customer_id`, `status`, `is_active`, `is_verified`, `is_deleted`) VALUES
(4, 'My Template 1', 'This is a sample template', '<a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 164px; top: 275px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59b506d709ee5.png\" class=\"get-price\" data-price=\"0\" data-itemname=\"Github\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 87px; top: 285px;\"><img height=\"50px\" src=\"../../backend/assets/images/topping/59b5043ac4817.png\" class=\"get-price\" data-price=\"10\" data-itemname=\"Apple\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 39px; top: 267px;\"><img height=\"50px\" src=\"../../backend/assets/images/topping/59b50424f3c9a.png\" class=\"get-price\" data-price=\"10\" data-itemname=\"Blue Flower\"></a> <div class=\"layer5\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b5040229039.png\" class=\"img-responsive\" id=\"l-item5\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5049d22768.png\" class=\"img-responsive decors\" id=\"d-item5\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer4\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503edc28f2.png\" class=\"img-responsive\" id=\"l-item4\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5049d22768.png\" class=\"img-responsive decors\" id=\"d-item4\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer3\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive \" id=\"l-item3\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5048d9a3ec.png\" class=\"img-responsive decors \" id=\"d-item3\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer2\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503edc28f2.png\" class=\"img-responsive \" id=\"l-item2\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5048d9a3ec.png\" class=\"img-responsive decors\" id=\"d-item2\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer1\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" id=\"l-item1\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors\" id=\"d-item1\" data-price=\"0\" data-itemname=\" \"> </div></div>', '<a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 26px; top: 269px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59b506d709ee5.png\" class=\"get-price\" data-price=\"0\" data-itemname=\"Github\"></a><a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 215px; top: 270px;\"><img height=\"50px\" src=\"../../backend/assets/images/user_graphics/59b506d709ee5.png\" class=\"get-price\" data-price=\"0\" data-itemname=\"Github\"></a> <div class=\"layer5\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b5040229039.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item10\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer4\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503edc28f2.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5049d22768.png\" class=\"img-responsive decors \" id=\"d-item9\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer3\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\"\"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5049d22768.png\" class=\"img-responsive decors\" id=\"d-item8\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer2\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503edc28f2.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5049d22768.png\" class=\"img-responsive decors\" id=\"d-item7\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer1\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b5048d9a3ec.png\" class=\"img-responsive decors\" id=\"d-item6\" data-price=\"0\" data-itemname=\" \"> </div></div>', '', '', ' <div class=\"row\"> <div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-gen-info\"> <tbody><tr> <td>Cake Name :</td><td colspan=\"2\" id=\"c-cn\">My Template 1</td></tr><tr> <td>Cake Description :</td><td colspan=\"2\" id=\"c-desc\">This is a sample template</td></tr><tr> <td>Size &amp; Serving :</td><td id=\"c-size\">5 - Layer | Size : 14\",12\",10\",8\",6\" | 210 servings 196 w/o top</td><td id=\"c-size-p\">0</td></tr><tr> <td>General Flavor :</td><td id=\"c-flav\">Strawberry</td><td id=\"c-flav-p\">50</td></tr><tr> <td>Dedication Details :</td><td colspan=\"2\" id=\"c-dedi\">Happy birthday to you </td></tr><tr> <td>Estimated Price :</td><td colspan=\"2\" id=\"c-eprice\">1130</td></tr><tr> <td>Actual Price :</td><td colspan=\"2\" id=\"c-aprice\"></td></tr><tr> <td>Estimated Pick up date :</td><td colspan=\"2\" id=\"c-edate\">09/08/2017</td></tr><tr> <td>Suggestion</td><td colspan=\"2\" id=\"c-suggestion\">This is a sample suggestion</td></tr></tbody></table> </div><div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-front-rear\"> <tbody><tr> <td colspan=\"3\">Front View and Rear View Layer Style Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-l1\">Cheese Cake</td><td id=\"c-p1\">100</td></tr><tr class=\"tool-2\"> <td>Layer 2</td><td id=\"c-l2\">Pandan Cake</td><td id=\"c-p2\">100</td></tr><tr class=\"tool-3\"> <td>Layer 3</td><td id=\"c-l3\">Cheese Cake</td><td id=\"c-p3\">100</td></tr><tr class=\"tool-4\"> <td>Layer 4</td><td id=\"c-l4\">Pandan Cake</td><td id=\"c-p4\">100</td></tr><tr class=\"tool-5\"> <td>Layer 5</td><td id=\"c-l5\">Ube Cake</td><td id=\"c-p5\">120</td></tr></tbody></table> </div></div><div class=\"row\"> <div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-front\"> <tbody><tr> <td colspan=\"3\">Front View Decoration Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-fd1\">Red Rose</td><td id=\"c-fdp1\">10</td></tr><tr class=\"tool-2\"> <td>Layer 2</td><td id=\"c-fd2\">Bubbles Candy</td><td id=\"c-fdp2\">10</td></tr><tr class=\"tool-3\"> <td>Layer 3</td><td id=\"c-fd3\">Bubbles Candy</td><td id=\"c-fdp3\">10</td></tr><tr class=\"tool-4\"> <td>Layer 4</td><td id=\"c-fd4\">Pearl Candy</td><td id=\"c-fdp4\">100</td></tr><tr class=\"tool-5\"> <td>Layer 5</td><td id=\"c-fd5\">Pearl Candy</td><td id=\"c-fdp5\">100</td></tr><tr class=\"row-top\"> <td colspan=\"3\">Toppings</td></tr><tr class=\"d-row\"><td></td><td>Github</td><td>0</td></tr><tr class=\"d-row\"><td></td><td>Apple</td><td>10</td></tr><tr class=\"d-row\"><td></td><td>Blue Flower</td><td>10</td></tr></tbody></table> </div><div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-rear\"> <tbody><tr> <td colspan=\"3\">Rear View Decoration Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-rd1\">Bubbles Candy</td><td id=\"c-rdp1\">10</td></tr><tr class=\"tool-2\"> <td>Layer 2</td><td id=\"c-rd2\">Pearl Candy</td><td id=\"c-rdp2\">100</td></tr><tr class=\"tool-3\"> <td>Layer 3</td><td id=\"c-rd3\">Pearl Candy</td><td id=\"c-rdp3\">100</td></tr><tr class=\"tool-4\"> <td>Layer 4</td><td id=\"c-rd4\">Pearl Candy</td><td id=\"c-rdp4\">100</td></tr><tr class=\"tool-5\"> <td>Layer 5</td><td id=\"c-rd5\"> </td><td id=\"c-rdp5\">0</td></tr><tr class=\"row-top\"> <td colspan=\"3\">Toppings</td></tr><tr class=\"d-row\"><td></td><td \'=\"\">Github</td><td>0</td></tr><tr class=\"d-row\"><td></td><td \'=\"\">Github</td><td>0</td></tr></tbody></table> </div></div>', 1130, '2017-09-08', NULL, 'This is a sample suggestion', 'Happy birthday to you ', 1200, 2, 'verified', 1, 0, 0),
(5, 'My Template 2', 'My Template 2', '<a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 106px; top: 20px;\"><img height=\"50px\" src=\"../../backend/assets/images/topping/59b50424f3c9a.png\" class=\"get-price\" data-price=\"10\" data-itemname=\"Blue Flower\"></a> <div class=\"layer5\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" id=\"l-item5\" data-price=\"0\" data-itemname=\" \" style=\"display: none;\"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item5\" data-price=\"0\" data-itemname=\" \" style=\"display: none;\"> </div></div><div class=\"layer4\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" id=\"l-item4\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors\" id=\"d-item4\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"> </div></div><div class=\"layer3\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive \" id=\"l-item3\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors \" id=\"d-item3\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"> </div></div><div class=\"layer2\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive \" id=\"l-item2\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors\" id=\"d-item2\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"> </div></div><div class=\"layer1\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" id=\"l-item1\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors\" id=\"d-item1\" data-price=\"0\" data-itemname=\" \"> </div></div>', '<a class=\"dg ui-draggable ui-draggable-handle\" style=\"z-index: 999; position: absolute; left: 124px; top: 24px;\"><img height=\"50px\" src=\"../../backend/assets/images/topping/59b5043ac4817.png\" class=\"get-price\" data-price=\"10\" data-itemname=\"Apple\"></a> <div class=\"layer5\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \" style=\"display: none;\"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item10\" data-price=\"0\" data-itemname=\" \" style=\"display: none;\"> </div></div><div class=\"layer4\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors \" id=\"d-item9\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"> </div></div><div class=\"layer3\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\"\" style=\"display: block;\"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors\" id=\"d-item8\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"> </div></div><div class=\"layer2\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors\" id=\"d-item7\" data-price=\"0\" data-itemname=\" \" style=\"display: block;\"> </div></div><div class=\"layer1\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"../../backend/assets/images/side_decoration/59b50475c440f.png\" class=\"img-responsive decors\" id=\"d-item6\" data-price=\"0\" data-itemname=\" \"> </div></div>', '', '', ' <div class=\"row\"> <div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-gen-info\"> <tbody><tr> <td>Cake Name :</td><td colspan=\"2\" id=\"c-cn\">My Template 2</td></tr><tr> <td>Cake Description :</td><td colspan=\"2\" id=\"c-desc\">My Template 2</td></tr><tr> <td>Size &amp; Serving :</td><td id=\"c-size\">4 - Layer | Size : 12\",10\",8\",6\" | 134 servings 120 w/o top</td><td id=\"c-size-p\">0</td></tr><tr> <td>General Flavor :</td><td id=\"c-flav\">Strawberry</td><td id=\"c-flav-p\">50</td></tr><tr> <td>Dedication Details :</td><td colspan=\"2\" id=\"c-dedi\">This is a sample text</td></tr><tr> <td>Estimated Price :</td><td colspan=\"2\" id=\"c-eprice\">550</td></tr><tr> <td>Actual Price :</td><td colspan=\"2\" id=\"c-aprice\"></td></tr><tr> <td>Estimated Pick up date :</td><td colspan=\"2\" id=\"c-edate\">09/30/2017</td></tr><tr> <td>Suggestion</td><td colspan=\"2\" id=\"c-suggestion\">This is a sample text</td></tr></tbody></table> </div><div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-front-rear\"> <tbody><tr> <td colspan=\"3\">Front View and Rear View Layer Style Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-l1\">Cheese Cake</td><td id=\"c-p1\">100</td></tr><tr class=\"tool-2\" style=\"display: table-row;\"> <td>Layer 2</td><td id=\"c-l2\">Cheese Cake</td><td id=\"c-p2\">100</td></tr><tr class=\"tool-3\" style=\"display: table-row;\"> <td>Layer 3</td><td id=\"c-l3\">Cheese Cake</td><td id=\"c-p3\">100</td></tr><tr class=\"tool-4\" style=\"display: table-row;\"> <td>Layer 4</td><td id=\"c-l4\">Cheese Cake</td><td id=\"c-p4\">100</td></tr><tr class=\"tool-5\" style=\"display: none;\"> <td>Layer 5</td><td id=\"c-l5\"> </td><td id=\"c-p5\">0</td></tr></tbody></table> </div></div><div class=\"row\"> <div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-front\"> <tbody><tr> <td colspan=\"3\">Front View Decoration Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-fd1\">Red Rose</td><td id=\"c-fdp1\">10</td></tr><tr class=\"tool-2\" style=\"display: table-row;\"> <td>Layer 2</td><td id=\"c-fd2\">Red Rose</td><td id=\"c-fdp2\">10</td></tr><tr class=\"tool-3\" style=\"display: table-row;\"> <td>Layer 3</td><td id=\"c-fd3\">Red Rose</td><td id=\"c-fdp3\">10</td></tr><tr class=\"tool-4\" style=\"display: table-row;\"> <td>Layer 4</td><td id=\"c-fd4\">Red Rose</td><td id=\"c-fdp4\">10</td></tr><tr class=\"tool-5\" style=\"display: none;\"> <td>Layer 5</td><td id=\"c-fd5\"> </td><td id=\"c-fdp5\">0</td></tr><tr class=\"row-top\"> <td colspan=\"3\">Toppings</td></tr><tr class=\"d-row\"><td></td><td>Blue Flower</td><td>10</td></tr></tbody></table> </div><div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-rear\"> <tbody><tr> <td colspan=\"3\">Rear View Decoration Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-rd1\">Red Rose</td><td id=\"c-rdp1\">10</td></tr><tr class=\"tool-2\" style=\"display: table-row;\"> <td>Layer 2</td><td id=\"c-rd2\">Red Rose</td><td id=\"c-rdp2\">10</td></tr><tr class=\"tool-3\" style=\"display: table-row;\"> <td>Layer 3</td><td id=\"c-rd3\">Red Rose</td><td id=\"c-rdp3\">10</td></tr><tr class=\"tool-4\" style=\"display: table-row;\"> <td>Layer 4</td><td id=\"c-rd4\">Red Rose</td><td id=\"c-rdp4\">10</td></tr><tr class=\"tool-5\" style=\"display: none;\"> <td>Layer 5</td><td id=\"c-rd5\"> </td><td id=\"c-rdp5\">0</td></tr><tr class=\"row-top\"> <td colspan=\"3\">Toppings</td></tr><tr class=\"d-row\"><td></td><td \'=\"\">Apple</td><td>10</td></tr></tbody></table> </div></div>', 550, '2017-09-30', NULL, 'This is a sample text', 'This is a sample text', 1220, 1, 'verified', 1, 0, 0),
(6, 'T', 'Tet', ' <div class=\"layer5\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" id=\"l-item5\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item5\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer4\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" id=\"l-item4\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item4\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer3\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive \" id=\"l-item3\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors \" id=\"d-item3\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer2\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive \" id=\"l-item2\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item2\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer1\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" id=\"l-item1\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item1\" data-price=\"0\" data-itemname=\" \"> </div></div>', ' <div class=\"layer5\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item10\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer4\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors \" id=\"d-item9\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer3\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\"\"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item8\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer2\"> <div class=\"layer-box\"><img src=\"../../backend/assets/images/cake/59b503cc0acde.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item7\" data-price=\"0\" data-itemname=\" \"> </div></div><div class=\"layer1\"> <div class=\"layer-box\"><img src=\"../../assets-apps/img/basecake/base.png\" class=\"img-responsive\" data-price=\"0\" data-itemname=\" \"></div><div class=\"decor-box\"> <img src=\"\" class=\"img-responsive decors\" id=\"d-item6\" data-price=\"0\" data-itemname=\" \"> </div></div>', '', '', ' <div class=\"row\"> <div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-gen-info\"> <tbody><tr> <td>Cake Name :</td><td colspan=\"2\" id=\"c-cn\">T</td></tr><tr> <td>Cake Description :</td><td colspan=\"2\" id=\"c-desc\">Tet</td></tr><tr> <td>Size &amp; Serving :</td><td id=\"c-size\">5 - Layer | Size : 14\",12\",10\",8\",6\" | 210 servings 196 w/o top</td><td id=\"c-size-p\">0</td></tr><tr> <td>General Flavor :</td><td id=\"c-flav\"></td><td id=\"c-flav-p\"></td></tr><tr> <td>Dedication Details :</td><td colspan=\"2\" id=\"c-dedi\">tet</td></tr><tr> <td>Estimated Price :</td><td colspan=\"2\" id=\"c-eprice\">200</td></tr><tr> <td>Actual Price :</td><td colspan=\"2\" id=\"c-aprice\"></td></tr><tr> <td>Estimated Pick up date :</td><td colspan=\"2\" id=\"c-edate\">09/30/2017</td></tr><tr> <td>Suggestion</td><td colspan=\"2\" id=\"c-suggestion\">tete</td></tr></tbody></table> </div><div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-front-rear\"> <tbody><tr> <td colspan=\"3\">Front View and Rear View Layer Style Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-l1\"> </td><td id=\"c-p1\">0</td></tr><tr class=\"tool-2\"> <td>Layer 2</td><td id=\"c-l2\">Cheese Cake</td><td id=\"c-p2\">100</td></tr><tr class=\"tool-3\"> <td>Layer 3</td><td id=\"c-l3\">Cheese Cake</td><td id=\"c-p3\">100</td></tr><tr class=\"tool-4\"> <td>Layer 4</td><td id=\"c-l4\"> </td><td id=\"c-p4\">0</td></tr><tr class=\"tool-5\"> <td>Layer 5</td><td id=\"c-l5\"> </td><td id=\"c-p5\">0</td></tr></tbody></table> </div></div><div class=\"row\"> <div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-front\"> <tbody><tr> <td colspan=\"3\">Front View Decoration Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-fd1\"> </td><td id=\"c-fdp1\">0</td></tr><tr class=\"tool-2\"> <td>Layer 2</td><td id=\"c-fd2\"> </td><td id=\"c-fdp2\">0</td></tr><tr class=\"tool-3\"> <td>Layer 3</td><td id=\"c-fd3\"> </td><td id=\"c-fdp3\">0</td></tr><tr class=\"tool-4\"> <td>Layer 4</td><td id=\"c-fd4\"> </td><td id=\"c-fdp4\">0</td></tr><tr class=\"tool-5\"> <td>Layer 5</td><td id=\"c-fd5\"> </td><td id=\"c-fdp5\">0</td></tr><tr class=\"row-top\"> <td colspan=\"3\">Toppings</td></tr></tbody></table> </div><div class=\"col-lg-6\"> <table class=\"table table-responsive tbl-rear\"> <tbody><tr> <td colspan=\"3\">Rear View Decoration Details</td></tr><tr> <td>#</td><td>Name</td><td>Price</td></tr><tr class=\"tool-1\"> <td>Layer 1</td><td id=\"c-rd1\"> </td><td id=\"c-rdp1\">0</td></tr><tr class=\"tool-2\"> <td>Layer 2</td><td id=\"c-rd2\"> </td><td id=\"c-rdp2\">0</td></tr><tr class=\"tool-3\"> <td>Layer 3</td><td id=\"c-rd3\"> </td><td id=\"c-rdp3\">0</td></tr><tr class=\"tool-4\"> <td>Layer 4</td><td id=\"c-rd4\"> </td><td id=\"c-rdp4\">0</td></tr><tr class=\"tool-5\"> <td>Layer 5</td><td id=\"c-rd5\"> </td><td id=\"c-rdp5\">0</td></tr><tr class=\"row-top\"> <td colspan=\"3\">Toppings</td></tr></tbody></table> </div></div>', 200, '2017-09-30', NULL, 'tete', 'tet', NULL, 1, 'assessment', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text,
  `category_description` text,
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `is_active`, `is_deleted`) VALUES
(3, 'Birthday Cake', 'This is a sample description', 1, 0),
(4, 'Wedding Cake', 'This is a sample description', 1, 0);

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
(1, 'Jose', 'Rizal', 'Protacio', 'Lunete Part', '09999999', '2017-08-16', 'vx', 'vx', 'customer1', 'joserizal@gmail.com', 'e2ea3c6b50c654e7c809c252b97d94386fb283fc', '../../backend/assets/images/cust/59b507ec260ea.png', 1, 0),
(2, 'customer2', 'customer2', 'customer2', 'customer2', '123456789', '2017-09-30', '', 'a89a6', 'customer2', 'customer2@gmail.com', '80dae43ddfcfbd7a5e75b83260eab8fd35fd6778', '../../backend/assets/images/cust/59b506586b968.png', 1, 0),
(3, 'c', 'c', NULL, NULL, '09052037350', '1970-01-01', '', 'b2bab', 'c', 'c', '84a516841ba77a5b4648de2cd0dfcb30ea46dbb4', '', 0, 0);

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
(5, 'Chocolate Flavor', 'Chocolate Flavor', '../../backend/assets/images/flavors/59b504e9b2f10.png', 50, 1, 0),
(6, 'Strawberry Flavor', 'Strawberry Flavor', '../../backend/assets/images/flavors/59b504fc355ae.png', 50, 1, 0),
(7, 'Grape Flavor', 'Grape Flavor', '../../backend/assets/images/flavors/59b505136d274.png', 100, 1, 0),
(8, 'Cheese Flavor', 'Cheese Flavor', '../../backend/assets/images/flavors/59b505266d216.png', 50, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `grand_price` decimal(11,4) DEFAULT '0.0000',
  `estimated_pickedup` date DEFAULT '0000-00-00',
  `suggestion_box` text,
  `order_status` varchar(1000) DEFAULT '',
  `payment_method` text,
  `reference_no` varchar(1000) DEFAULT '',
  `date_ordered` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_pickedup` date DEFAULT '0000-00-00',
  `is_pickedup` tinyint(4) DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `grand_price`, `estimated_pickedup`, `suggestion_box`, `order_status`, `payment_method`, `reference_no`, `date_ordered`, `date_pickedup`, `is_pickedup`, `is_active`, `is_deleted`) VALUES
(1, NULL, NULL, '1970-01-01', NULL, 'pending', NULL, 'not yet approved', '2017-09-13 21:42:19', '0000-00-00', 0, 1, 0),
(2, NULL, NULL, '1970-01-01', NULL, 'pending', NULL, 'not yet approved', '2017-09-13 21:43:20', '0000-00-00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details_cc`
--

CREATE TABLE `order_details_cc` (
  `order_details_cc_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `qty_c` int(11) DEFAULT '0',
  `cake_template_id` int(11) DEFAULT '0',
  `u_price_c` double DEFAULT '0',
  `t_price_c` double DEFAULT '0',
  `suggestion_box_cc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `order_details_rc`
--

CREATE TABLE `order_details_rc` (
  `order_details_rc_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `ready_cake_id` int(11) DEFAULT '0',
  `u_price` double DEFAULT '0',
  `t_price` double DEFAULT '0',
  `suggestion_box_rc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
(14, 'Blue Flower', 'Blue Flower', '../../backend/assets/images/topping/59b50424f3c9a.png', 10, 1, 0),
(15, 'Apple', 'Apple', '../../backend/assets/images/topping/59b5043ac4817.png', 10, 1, 0),
(16, 'Candle 1', 'Candle 1', '../../backend/assets/images/topping/59b5044e5f2b0.png', 5, 1, 0),
(17, 'Grape 1', 'Grape 1', '../../backend/assets/images/topping/59b50461182e0.png', 10, 1, 0);

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
  `category_id` int(11) DEFAULT '0',
  `image_path` varchar(1000) DEFAULT '',
  `price` double DEFAULT '0',
  `is_active` int(1) DEFAULT '1',
  `is_deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ready_cake`
--

INSERT INTO `ready_cake` (`ready_cake_id`, `ready_cake_name`, `ready_cake_description`, `category_id`, `image_path`, `price`, `is_active`, `is_deleted`) VALUES
(9, 'Birthday Cake 1', 'Birthday Cake 1', 3, '../../backend/assets/images/ready_cake/59b505441d402.jpg', 400, 1, 0),
(10, 'Wedding Cake 1', 'Wedding Cake 1', 4, '../../backend/assets/images/ready_cake/59b50575c288c.jpg', 700, 1, 0);

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
(9, 'Red Rose', 'Red Rose', '../../backend/assets/images/side_decoration/59b50475c440f.png', 10, 1, 0),
(10, 'Green Flower 1', 'Green Flower 1', '../../backend/assets/images/side_decoration/59b5048232742.png', 10, 1, 0),
(11, 'Bubbles Candy', 'Bubbles Candy', '../../backend/assets/images/side_decoration/59b5048d9a3ec.png', 10, 1, 0),
(12, 'Pearl Candy', 'Pearl Candy', '../../backend/assets/images/side_decoration/59b5049d22768.png', 100, 1, 0),
(13, 'Building Candy', 'Building Candy', '../../backend/assets/images/side_decoration/59b504a83a2ac.png', 10, 1, 0);

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
(14, 'Rodrigo', 'Roa', 'Duterte', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Davao', 'admin@gmail.com', '1234567890', '1990-01-28', 0, 1, '../../backend/assets/images/user/59b505ec542d1.png'),
(15, 'admin2', 'admin2', 'admin2', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', 'admin2', 'admin2@gmail.com', '1234567890', '2017-09-30', 0, 1, '');

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
(2, 'Github', 'This is a sample picture', '../../backend/assets/images/user_graphics/59b506d709ee5.png', 2, 0, 1, 0),
(3, 'Dribble', 'This is sample graphics', '../../backend/assets/images/user_graphics/59b50af014a88.png', 1, 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agreements`
--
ALTER TABLE `agreements`
  ADD PRIMARY KEY (`agreement_id`);

--
-- Indexes for table `cake_layer`
--
ALTER TABLE `cake_layer`
  ADD PRIMARY KEY (`cake_id`) USING BTREE;

--
-- Indexes for table `cake_templates`
--
ALTER TABLE `cake_templates`
  ADD PRIMARY KEY (`cake_template_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE;

--
-- Indexes for table `order_details_cc`
--
ALTER TABLE `order_details_cc`
  ADD PRIMARY KEY (`order_details_cc_id`);

--
-- Indexes for table `order_details_rc`
--
ALTER TABLE `order_details_rc`
  ADD PRIMARY KEY (`order_details_rc_id`);

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
-- AUTO_INCREMENT for table `cake_layer`
--
ALTER TABLE `cake_layer`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cake_templates`
--
ALTER TABLE `cake_templates`
  MODIFY `cake_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `flavors`
--
ALTER TABLE `flavors`
  MODIFY `flavor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order_details_cc`
--
ALTER TABLE `order_details_cc`
  MODIFY `order_details_cc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_details_rc`
--
ALTER TABLE `order_details_rc`
  MODIFY `order_details_rc_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `ready_cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `servings`
--
ALTER TABLE `servings`
  MODIFY `serving_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `side_decorations`
--
ALTER TABLE `side_decorations`
  MODIFY `side_decoration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_graphics`
--
ALTER TABLE `user_graphics`
  MODIFY `graphic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
