-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 12:02 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 27, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets'),
(4, 'Smart Phones', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 2, 'gaming pc ', '', 'gaming-pc', 10000, 'gaming-pc.jpg', '2020-06-14', 10),
(31, 1, 'HP 350 G1', '<ul>\r\n	<li>Display diagonal: 15.6 inch</li>\r\n	<li>Processor: 3558U 1.7 GHz</li>\r\n	<li>Internal memory: 4 GB DDR3L-SDRAM</li>\r\n	<li>Graphics: Intel HD Graphics</li>\r\n	<li>Storage: 500 GB HDD</li>\r\n	<li>Battery: 41 Wh</li>\r\n	<li>Weight: 2.3 kg</li>\r\n</ul>\r\n', 'hp-350-g1', 1000, 'hp-350-g1.jpg', '2020-06-14', 2),
(32, 2, 'Acer pc', '', 'acer-pc', 10000, 'acer-pc.jpg', '2020-06-13', 4),
(33, 1, 'dell inspiron 5535 A10 Laptop', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Storage</td>\r\n			<td>1 TB HDD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor</td>\r\n			<td>AMD Quad-Core A10 APU</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>15.6&quot; (39.62 cm) display, 1366 x 768 px</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ram</td>\r\n			<td>8 GB DDR3 RAM</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'dell-inspiron-5535-a10-laptop', 500, 'dell-inspiron-5535-a10-laptop.jpg', '2020-06-15', 2),
(34, 4, 'xiaomi Redmi Note 7', '<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"5\" scope=\"row\">DISPLAY</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n			<td>IPS LCD capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/xiaomi_redmi_note_7-9513.php#\" onclick=\"helpW(\'h_dsize.htm\');\">Size</a></td>\r\n			<td>6.3 inches, 97.4 cm2&nbsp;(~81.4% screen-to-body ratio)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n			<td>1080 x 2340 pixels, 19.5:9 ratio (~409 ppi density)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n			<td>Corning Gorilla Glass 5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'xiaomi-redmi-note-7', 200, 'xiaomi-redmi-note-7.jpg', '2020-06-12', 2),
(35, 1, 'Asus ZenBook Pro', '<p><strong>ROG Zephyrus G14 14&quot; Gaming Laptop - AMD Ryzen 9 - 16GB Memory - NVIDIA GeForce RTX 2060 Max-Q - 1TB SSD - Moonlight White</strong></p>\r\n', 'asus-zenbook-pro', 1100, 'asus-zenbook-pro.jpg', '2020-06-15', 4),
(36, 4, 'Iphone 11 pro', '', 'iphone-11-pro', 1754, 'iphone-11-pro.jpg', '2020-06-12', 6),
(37, 1, 'gaming laptop', '', 'gaming-laptop', 1000, 'gaming-laptop.jpg', '2020-06-13', 22),
(38, 3, 'Apple iPad Pro', '', 'apple-ipad-pro', 1, 'apple-ipad-pro.jpg', '2020-06-15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Thiet', '', '', 'thanos1.jpg', 1, '', 'HWsCPfI4yhqV5Ze', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(27, 'taher@gmail.com', '$2y$10$BiTVPfuw/6qvbCX5fvcXeur01kJNBbTe/pe/8kfiS7yagGif1YLQ6', 0, 'taher', 'nazr', '', '', '', 1, 'd76DwqS1iuRb', '', '2020-06-13'),
(28, 'yoyo@gmail.com', '$2y$10$8j2CFHobliN/EMI0QTbbFOY1X5v7LTdtnU6ptM3dnKzpgsUR.WIJi', 0, 'yoyo', 'you', '', '', '', 1, 'CoVz7t4BKwr9', '', '2020-06-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
