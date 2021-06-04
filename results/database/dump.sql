-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2021 at 11:36 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'cat 1'),
(2, 'cat 2'),
(3, 'cat 3');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `address` varchar(128) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Infos about each customer';

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `tel`, `address`, `postal_code`, `city`) VALUES
(1, 'Chuck', 'Noris', '33-45251020', '25, Rue des canards', '38100', 'Grenoble'),
(2, 'Charlize ', 'Theron', '33-45252254', '2, Avenue du Port', '69100', 'Lyon'),
(3, 'Ryan', 'Gosling', '33-07451263', '5, Rue du Canal', '34400', 'Marseillan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `customer_id`, `number`) VALUES
(1, '2021-06-04 15:31:51', 1, 'order00001'),
(2, '2021-06-01 16:44:00', 1, 'order00002'),
(3, '2021-06-02 16:46:32', 2, 'order00003'),
(4, '2021-05-31 09:21:56', 2, 'order00004'),
(5, '2021-06-04 09:23:56', 2, 'order00005');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `quantity`, `order_id`, `product_id`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 4),
(3, 1, 2, 12),
(4, 2, 2, 10),
(5, 1, 2, 1),
(6, 1, 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `weight` int(11) NOT NULL,
  `avaliable` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `weight`, `avaliable`, `category_id`, `quantity`) VALUES
(1, 'A - SuperX', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum.', 100, 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/fc33e56b-ca55-4a57-97b0-21e26f44d8a8/chaussure-de-tennis-pour-surface-dure-nikecourt-air-zoom-gp-turbo-naomi-osaka-pour-q9nBzL.png', 1000, 1, 1, 10),
(3, 'A - AmazingX', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum.', 100, 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/382028/03/sv01/fnd/EEA/fmt/png/Baskets-Wild-Rider-Rollin\'-JR', 1000, 1, 1, 10),
(4, 'B - kidX', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum.', 10, 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/375736/01/sv01/fnd/EEA/fmt/png/Baskets-PUMA-x-SNOOPY-ET-LES-PEANUTS-Mirage-Mox-b%C3%A9b%C3%A9', 500, 1, 1, 1),
(5, 'B - KidX2', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum.', 10, 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/375736/02/sv01/fnd/EEA/fmt/png/Baskets-PUMA-x-SNOOPY-ET-LES-PEANUTS-Mirage-Mox-b%C3%A9b%C3%A9', 500, 1, 1, 1),
(6, 'C - GreatX', 'Lorem ipsum Lorem ipsum Lorem ipsum  Lorem ipsum Lorem ipsum.', 10000, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/l/t/lt102655_1.jpg', 500, 0, 1, 1),
(7, 'C - GreatX2', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum.', 1000, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 500, 0, 1, 1),
(8, 'D - B22', 'lorem ipsum.', 1300, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 500, 1, 2, 0),
(9, 'D - B223', 'Lorem ipsum.', 1300, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 500, 1, 2, 0),
(10, 'E - C33', 'Lorem ipsum.', 50, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 1200, 1, 2, 2),
(11, 'E - C355', 'Lorem ipsum.', 50, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 1200, 1, 2, 2),
(12, 'F - G55', 'Lorem ipsum.', 500, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 1200, 1, 3, 5),
(13, 'F - G77', 'Lorem ipsum.', 500, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 1200, 1, 3, 5),
(14, 'F - H50', 'Lorem ipsum.', 500, 'https://www.veja-store.com/media/catalog/product/cache/4d7748d1b22d0fb94b201facf22cdd0f/c/l/cl012481_1.jpg', 1200, 1, 3, 5);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
