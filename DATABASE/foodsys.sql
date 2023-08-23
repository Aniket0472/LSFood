-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 05:18 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(1, 'Veg'),
(2, 'Non-Veg'),
(3, 'Fast-Food'),
(4, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(1, 1, 'Vada pav', 12, 'upload/vada pav_1654751878.jpg'),
(2, 1, 'Kurma Puri',25 , 'upload/kurmapuri_1654751953.jpg'),
(3, 1, 'Kachori',15, 'upload/kachori_1654751988.jpg'),
(4, 1, 'Dabeli', 10, 'upload/dabeli_1654752005.jpg'),
(5, 1, 'Panipuri',25 , 'upload/panipuri_1654752029.jpg'),
(6, 1, 'Pav Bhaji',35 , 'upload/Pav Bhaji_1654752056.jpg'),
(7, 1, 'Idli -Wada ',25 , 'upload/idli-wada_1654752085.png'),
(8, 1, 'Chat',18, 'upload/chat_1654752106.jpg'),
(9, 1, 'Samosa',12, 'upload/samosa_1654752129.jpg'),
(10,1, 'Bhaji',25 , 'upload/bhaji_1654752149.jpg'),
(11,1, 'Missal',30 , 'upload/Missal1_1654752175.jpg'),
(12,1, 'Pohe',12 , 'upload/pohe_1654752205.jpg'),
(13,2, 'Chicken 65', 100, 'upload/chicken65_1654753559.jpg'),
(14,2, 'Chicken Biryani',100 , 'upload/chickenbiryani_1654753626.jpg'),
(15,2, 'Chicken Lolipop',80 , 'upload/chickenlolipop_1654753677.jpg'),
(16,2, 'Chicken Roll',70 , 'upload/chickenroll_1654753707.jpg'),
(17,2, 'Chicken Tandoori',70 , 'upload/chickentandoori_1654753746.jpg'),
(18,2, 'Egg Bhurji',70 , 'upload/eggsbhurji_1654753890.jpg'),
(19,2, 'Egg Omelette',50 , 'upload/omelette_1654753972.jpg'),
(20,2, 'Boiled Egg',45 , 'upload/boiledegg_1654754015.jpg'),
(21,3, 'Burger',25 , 'upload/burger_1654754428.jpg'),
(22,3, 'French Fries',30 , 'upload/french fries_1654754458.jpg'),
(23,3, 'Pizza',250 , 'upload/pizza_1654754491.jpg'),
(24,3, 'Roasted Sandwich',40 , 'upload/roasted sandwitch_1654754530.jpg'),
(25,3, 'Combo Pack',150 , 'upload/combo_1654754569.jpg'),
(26,3, 'Momos',30 , 'upload/momos_1654755308.jpg'),
(27,4, 'Tea',5 , 'upload/tea_1654755550.jpg'),
(28,4, 'Lemon Tea',12 , 'upload/lemontea_1654755582.jpg'),
(29,4, 'Black Tea',15 , 'upload/blacktea_1654755604.jpg'),
(30,4, 'Coffee',10 , 'upload/coffee_1654755625.jpg'),
(31,4, 'sarabat',7 , 'upload/sarabat_1654755649.jpg'),
(32,4, 'Juice',20 , 'upload/juice_1654755669.jpg'),
(33,4, 'Lassi',15 , 'upload/lassi_1654755687.jpg'),
(34,4, 'Cold Coffee',50 , 'upload/coldcoffee_1654755712.jpg'),
(35,4, 'Coca Cola',25 , 'upload/cocacola_1654755755.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
`purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`) VALUES
(1, 'Rushikesh Kore', 250, '2022-06-09 12:00:23');


-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE IF NOT EXISTS `purchase_detail` (
`pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(1,1,10,10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
 ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
 ADD PRIMARY KEY (`pdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
