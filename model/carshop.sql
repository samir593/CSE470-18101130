-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 03:44 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'afridi', 'afridi@gmail.com', '123', '01688329189', 'Dhaka', 'chabby.jpg', '::1'),
(6, 'afri', 'afri@gmail.com', '456', '01688329188', 'apollo', 'chabby.jpg', '::1'),
(7, 'Subhi Bhuiyan', 'subhi@yahoo.com', 'boss', '0122536645', 'Banani', 'chabby.jpg', '::1'),
(8, 'fahim', 'fahim@gmail.com', '159', '0122536645', 'Banani', 'chabby.jpg', '::1'),
(9, 'zinat', 'zinat@gmail.com', 'pioneer', '01711195039', 'bashundhara,dhaka', 'chabby.jpg', '::1'),
(10, 'baby', 'baby@gmail.com', 'bogra', '01711195039', 'bashundhara', 'chabby.jpg', '::1'),
(11, 'MMA Rakib', 'mma@yahoo.com', 'rakib', '0122536645', 'Gulshan', '67484305_2657935470923684_7283012757207646208_n.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `amount` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `amount`, `qty`, `order_date`) VALUES
(2, 7, 25000, 1, '2019-08-06 03:10:16'),
(3, 7, 8000, 4, '2019-08-06 03:10:16'),
(4, 7, 18000, 3, '2019-08-06 03:10:16'),
(5, 8, 13500, 3, '2019-08-06 03:24:09'),
(6, 9, 6000, 3, '2019-08-06 16:51:42'),
(7, 9, 9000, 1, '2019-08-06 16:51:43'),
(8, 9, 77500, 5, '2019-08-06 16:51:43'),
(9, 7, 6000, 5, '2019-08-06 17:02:14'),
(10, 10, 50000, 2, '2019-08-07 13:58:27'),
(11, 10, 12000, 2, '2019-08-07 13:58:27'),
(12, 10, 30000, 3, '2019-08-07 13:58:27'),
(13, 11, 18600, 3, '2019-08-08 04:53:52'),
(14, 11, 10000, 2, '2019-08-08 04:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(20) NOT NULL,
  `p_cat_id` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img` text NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `date`, `product_title`, `product_img`, `product_price`, `product_desc`) VALUES
(3, 1, '2019-08-04 07:46:14', 'Black Horse 300CC', '01-01-black horse 300cc.jpg', '25000', 'Brilliantly engineered.It gives a fantastic mileage and a nice bike riding experience.'),
(4, 2, '2019-08-04 07:46:24', 'Autovogue', '02-01-Autovogue.jpg', '2000', 'Made specially for the hilly roads and give really good performance.'),
(5, 4, '2019-08-04 07:46:34', 'Pocket', '04-01-Pocket.jpg', '5000', 'Fantastic exhausts for the price and really easy to install.'),
(6, 3, '2019-08-04 07:46:45', 'Rose', '05-09-Rose.jpg', '6000', 'It might be on the expensive side but it is worth every penny as it is the best pair of brakes. '),
(7, 3, '2019-08-04 07:46:55', 'York', '05-04-York.jpg', '1200', 'Very cheap and very effective.'),
(8, 1, '2019-08-04 07:47:07', 'Loncin 250CC', '01-03-LONCIN 250CC.jpg', '15000', 'Great engine for the price.It can be installed on any bike'),
(9, 2, '2019-08-04 07:47:16', 'Venyll', '02-05-Venyll.jpg', '2500', 'Fantastic suspension for the price.'),
(10, 5, '2019-08-04 07:47:27', 'Becka', '03-01-Becka.jpg', '10000', 'Nice pair of wheels for extremely reasonable price.'),
(12, 1, '2019-08-04 07:47:40', 'Civic 100CC', '01-02-civic 100cc.jpg', '10000', 'Performs superbly and it gives a very good mileage.'),
(13, 1, '2019-08-04 07:47:56', 'Loncin CBT250', '01-04-MODIFIED LONCIN CBT250.jpg', '12000', 'It is a very powerful engine and at the same time very fuel efficient.'),
(14, 1, '2019-08-04 07:48:08', 'motorcycle-engine', '01-05-motorcycle-engine.jpg', '9000', 'Good engine in a very affordable price.'),
(15, 1, '2019-08-04 07:48:17', 'Questa 200CC', '01-06-questa 200cc.jpg', '12500', 'Great engine and easy installation.This engine can be installed on any bike. '),
(16, 1, '2019-08-04 07:48:28', 'Ultima Black Chorme', '01-07-ULTIMA BLACK CHROME ENGINES LL.jpg', '18500', 'Very powerful engine and easy installation.'),
(17, 1, '2019-08-04 07:48:36', 'Zongshen 110CC', '01-08-ZONGSHEN 110C.jpg', '9500', 'Very familiar engine.It can be installed on any bike and installation is very easy.'),
(18, 5, '2019-08-04 07:48:48', 'Bykra', '03-04-Bykra.jpg', '1000', 'Great for offroad riding.'),
(19, 5, '2019-08-04 07:48:57', 'Supercosa', '03-02-Supercosa.jpg', '16000', 'These wheels are very good looking and at the same have very good grips.'),
(20, 4, '2019-08-04 07:49:05', 'AGH', '04-06-AGH.jpg', '6200', 'Very good exhaust for the price and very easy to install.'),
(21, 1, '2019-08-06 02:02:16', 'Zongshen 250CC', '01-09-ZONGSHEN 250CC.jpg', '15500', 'Extreamly powerful engine.Build specially for hilly riding.'),
(22, 2, '2019-08-06 02:04:40', 'Ramell', '02-02-Ramell.jpg', '7500', 'Very good suspension.Made for specially for the bikes having over 150CC engines.'),
(23, 2, '2019-08-06 02:07:40', 'Pretzel', '02-03-Pretzel.jpg', '5800', 'This European pair of suspension is one of the bests in the world. '),
(24, 2, '2019-08-06 02:10:46', 'Yamaha', '02-04-Yamaha.jpg', '4500', 'Nice pair of suspensions in a very affordable price.'),
(25, 2, '2019-08-06 02:14:49', 'Ryx', '02-06-Ryx.jpg', '6000', 'This suspension is specially made for sports bikes. '),
(26, 2, '2019-08-06 02:17:05', 'Mixel', '02-07-Mixel.jpg', '6500', 'Very easy to install and very much effective.'),
(27, 2, '2019-08-06 02:18:28', 'SCZ', '02-08-SCZ.jpg', '2500', 'Build specially for the scooters.'),
(28, 2, '2019-08-06 02:20:04', 'Reaload', '02-09-Reload.jpg', '4200', 'Very easy to install.These pair of suspensions can be installed on any motorbike.'),
(29, 3, '2019-08-06 02:22:53', 'Weld', '05-01-Weld.jpg', '2600', 'Nice and effective pair of breaks.'),
(30, 3, '2019-08-06 02:24:37', 'Kytt', '05-02-Kytt.jpg', '3200', 'Good pair of breaks.'),
(31, 3, '2019-08-06 16:48:10', 'Levin', '05-03-Levin.jpg', '1200', 'Very good and wallet-friendly.'),
(32, 3, '2019-08-06 02:31:02', 'Brook', '05-05-Brook.jpg', '1300', 'This pair of breaks are specially made for sports bike. '),
(33, 4, '2019-08-06 03:04:24', 'Yella', '04-08-Yella.jpg', '4200', 'Very good exhausts.'),
(34, 5, '2019-08-06 03:33:39', 'Parkett', '03-09-Parkett.jpg', '2500', 'very good wheels specially for offroad riding.'),
(35, 5, '2019-08-06 03:36:44', 'Diablo', '03-03-Diablo.jpg', '3500', 'Nice pair of wheels'),
(36, 5, '2019-08-06 03:38:30', 'Yull', '03-06-Yull.jpg', '2000', 'Good for regular uses.'),
(37, 5, '2019-08-06 03:42:45', 'ScootG', '03-05-ScootG.jpg', '5000', 'Superb wheel for sports motorbikes. '),
(38, 5, '2019-08-06 03:45:00', 'Umep', '03-07-Umep.jpg', '1500', 'Affordable wheels for offroad bikes.'),
(39, 5, '2019-08-06 03:46:16', 'Fenn', '03-08-Fenn.jpg', '3000', 'It has good grips.'),
(40, 4, '2019-08-06 03:52:43', 'PocketAZ', '04-02-PocketAZ.jpg', '7400', 'Good noisefree exhaust will give you a soothing ride.'),
(41, 4, '2019-08-06 03:54:33', 'PocketXY', '04-03-PocketXY.jpg', '7000', 'Good exhaust'),
(42, 4, '2019-08-06 03:55:36', 'Rebel', '04-04-Rebel.jpg', '8600', 'Rebel for a rebellious ride.'),
(43, 4, '2019-08-06 03:59:13', 'CMX', '04-05-CMX.jpg', '4600', 'Good for the noise loving peeps.'),
(44, 4, '2019-08-06 04:01:11', 'PocketBY', '04-07-PocketBY.jpg', '6700', 'Rare and affordable'),
(45, 4, '2019-08-06 04:02:53', 'Prix', '04-09-Prix.jpg', '7200', 'This converts carbon-di-oxide to oxygen.Nice eco-friendly exhaust..');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`) VALUES
(1, 'Engine'),
(2, 'Suspension'),
(3, 'Breaks'),
(4, 'Exhaust'),
(5, 'Wheels');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 's1', 's3.jpg'),
(2, 's2', 's1.jpg'),
(3, 's3', 's2.jpg'),
(4, 's4', 's4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
