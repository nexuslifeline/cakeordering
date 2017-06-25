/* SQL Manager Lite for MySQL                              5.6.3.49012 */
/* ------------------------------------------------------------------- */
/* Host     : localhost                                                */
/* Port     : 3306                                                     */
/* Database : cakeordering                                             */


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'latin1' */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `cakeordering`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `cakeordering`;

/* Structure for the `cake_layer_1` table : */

CREATE TABLE `cake_layer_1` (
  `cake_layer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `cake_description` VARCHAR(755) COLLATE latin1_swedish_ci DEFAULT '',
  `image_path` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT '',
  PRIMARY KEY USING BTREE (`cake_layer_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `cake_layer_2` table : */

CREATE TABLE `cake_layer_2` (
  `cake_layer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT '',
  `image_path` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT '',
  PRIMARY KEY USING BTREE (`cake_layer_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `cake_layer_3` table : */

CREATE TABLE `cake_layer_3` (
  `cake_layer_id` INTEGER(11) DEFAULT NULL,
  `desciption` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT '',
  `image_path` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB
CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `cake_layer_4` table : */

CREATE TABLE `cake_layer_4` (
  `cake_layer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT NULL,
  `image_path` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cake_layer_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `cake_layer_5` table : */

CREATE TABLE `cake_layer_5` (
  `cake_layer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT NULL,
  `image_path` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cake_layer_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `cake_orders` table : */

CREATE TABLE `cake_orders` (
  `cake_order_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `cake_structure` TEXT COLLATE latin1_swedish_ci,
  `cost` DECIMAL(11,4) DEFAULT 0.0000,
  `customer_id` INTEGER(11) DEFAULT 0,
  `estimated_pickedup` DATE DEFAULT '0000-00-00',
  `date_ordered` DATETIME DEFAULT '0000-00-00 00:00:00',
  `date_finalized` DATETIME DEFAULT '0000-00-00 00:00:00',
  `finalized_by` INTEGER(11) DEFAULT 0,
  `is_finalized` TINYINT(4) DEFAULT 0,
  `date_pickedup` DATE DEFAULT '0000-00-00',
  `is_pickedup` TINYINT(4) DEFAULT 0,
  PRIMARY KEY USING BTREE (`cake_order_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `customers` table : */

CREATE TABLE `customers` (
  `customer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `cust_lname` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  `cust_fname` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  `cust_mname` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  `cust_address` VARCHAR(755) COLLATE latin1_swedish_ci DEFAULT '',
  `cust_mobile` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  `security_code` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT '',
  `user_name` VARCHAR(155) COLLATE latin1_swedish_ci DEFAULT '',
  `user_pword` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  PRIMARY KEY USING BTREE (`customer_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `other_toppings` table : */

CREATE TABLE `other_toppings` (
  `topping_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT '',
  `image_path` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`topping_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `payments` table : */

CREATE TABLE `payments` (
  `payment_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `or_no` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT '',
  `date_paid` DATE DEFAULT '0000-00-00',
  `customer_id` INTEGER(11) DEFAULT 0,
  `cake_order_id` INTEGER(11) DEFAULT 0,
  `notes` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT '',
  PRIMARY KEY USING BTREE (`payment_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/* Structure for the `user_accounts` table : */

CREATE TABLE `user_accounts` (
  `user_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  `user_lname` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  `address` VARCHAR(1000) COLLATE latin1_swedish_ci DEFAULT '',
  `email` VARCHAR(255) COLLATE latin1_swedish_ci DEFAULT '',
  `contact_no` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT '',
  `birth_date` DATE DEFAULT '0000-00-00',
  PRIMARY KEY USING BTREE (`user_id`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci'
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;