-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 11:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopcase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `session_id` varchar(200) DEFAULT NULL,
  `product_name` varchar(200) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `price` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `session_id`, `product_name`, `image`, `price`, `amount`) VALUES
(105, 32, 0, 'rkkqr1sf1o168gfut7j14e39ud', 'Ốp lưng Galaxy Solid Printing TPU Cá sấu', 'https://cdn.tgdd.vn/Products/Images/60/289976/op-lung-galaxy-a13-nhua-deo-solid-printing-i-tpu-jm-ca-sau-0-600x600.jpg', 160000, 1),
(107, 32, 30, NULL, 'Ốp lưng Galaxy Solid Printing TPU Cá sấu', 'https://cdn.tgdd.vn/Products/Images/60/289976/op-lung-galaxy-a13-nhua-deo-solid-printing-i-tpu-jm-ca-sau-0-600x600.jpg', 160000, 1),
(108, 46, 2, NULL, 'Ốp Trung Quốc', 'https://pub-b30d4c98c76a47fcb3455c5fbb3ee778.r2.dev/2023/03/%E1%BB%90P-L%C6%AFNG-IPHONE-G%E1%BA%A4U-D%C3%82U-LOTSO-12.jpg', 300000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cate_name`, `status`) VALUES
(1, 'IPHONE', 1),
(2, 'SAMSUNG', 1),
(3, 'OPPO', 1),
(4, 'REALME', 1),
(5, 'XIAOMI', 1),
(6, 'Những loại ốp lưng khác', 1),
(17, 'ốp điện thoại', 1),
(18, 'CCC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `content` varchar(500) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `content`, `time`, `status`) VALUES
(8, 'Admin', '123', 'hh', 'xin chao', '2024-04-19 06:46:16', 0),
(9, 'Admin', '123', 'hh', 'xin chao', '2023-05-30 06:46:22', 0),
(10, 'wfwf', 'wf', 'wfwf', 'wfwf', '2024-06-01 16:17:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `subject_name` text NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(500) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `session_id`, `name`, `phone`, `email`, `address`, `product_id`, `product_name`, `price`, `amount`, `total`, `thoigian`, `status`) VALUES
(33, 30, NULL, 'Fong', '0123456258', 'fong@gmail.com', 'Binh Tan', 31, 'Ốp lưng Galaxy JM Thỏ trắng', 170000, 1, 170000, '2024-06-01 09:17:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL DEFAULT '''Tất cả dòng điện thoại''',
  `view` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `product_name`, `price`, `image`, `description`, `view`, `status`) VALUES
(28, 1, 'Ốp lưng iPhone Silicon OSMIA ', 70000, 'https://cdn.tgdd.vn/Products/Images/60/265783/op-13-pro-max-nhua-cung-vien-deo-arden-osmia-1.-600x600.jpg', ' Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 47, 1),
(29, 1, 'Ốp lưng iPhone SILICONE CASE JM ', 80000, 'https://cdn.tgdd.vn/Products/Images/60/265872/op-lung-iphone-13-silicon-osmia-1.-600x600.jpg', ' Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 30, 1),
(30, 2, 'Ốp lưng Galaxy Nhựa dẻo Clear Pocket Printing', 150000, 'https://cdn.tgdd.vn/Products/Images/60/289978/op-lung-galaxy-a13-nhua-deo-clear-pocket-printing-tpu-jm-tho-hong-0-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 266, 1),
(31, 2, 'Ốp lưng Galaxy JM Thỏ trắng', 170000, 'https://cdn.tgdd.vn/Products/Images/60/289977/op-lung-galaxy-a23-nhua-deo-solid-printing-i-tpu-jm-tho-trang-0-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 307, 1),
(32, 2, 'Ốp lưng Galaxy Solid Printing TPU Cá sấu', 160000, 'https://cdn.tgdd.vn/Products/Images/60/289976/op-lung-galaxy-a13-nhua-deo-solid-printing-i-tpu-jm-ca-sau-0-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 159, 1),
(34, 2, 'Ốp lưng Galaxy A04 Nhựa dẻo Samsung', 200000, 'https://cdn.tgdd.vn/Products/Images/60/289873/op-lung-galaxy-a04-4g-nhua-deo-samsung-den-trong-chinh-hang-thumb-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 130, 1),
(35, 3, 'Ốp lưng Oppo Nhựa Carbon Fibre TPU COSANO', 250000, 'https://cdn.tgdd.vn/Products/Images/60/235298/op-lung-oppo-a15-nhua-deo-carbon-fibre-tpu-cosano-1-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 32, 1),
(36, 3, 'Ốp lưng OPPO Nhựa Nake slim JM', 300000, 'https://cdn.tgdd.vn/Products/Images/60/235300/op-lung-oppo-a15-nhua-deo-carbon-fibre-tpu-cosano-1-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 22, 1),
(37, 3, 'Ốp lưng Oppo Nhựa dẻo Vigour Carbon Fiber', 350000, 'https://cdn.tgdd.vn/Products/Images/60/235299/op-lung-oppo-a15-nhua-deo-line-pattern-tpu-cosano-1-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 70, 1),
(38, 3, 'Ốp lưng OPPO Nhựa dẻo Shockproof TPU JM', 400000, 'https://cdn.tgdd.vn/Products/Images/60/235478/op-lung-oppo-a15-nhua-deo-simo-soft-jm-den-1-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 34, 1),
(39, 4, 'Ốp lưng realme Nhựa dẻo Sandy TPU MEEKER', 15000, 'https://cdn.tgdd.vn/Products/Images/60/228611/op-lung-realme-c11-deo-sandy-tpu-meeker-xam-den-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 35, 1),
(40, 4, 'Ốp lưng realme Nhựa dẻo Artifical Silicone MEEKER', 20000, 'https://cdn.tgdd.vn/Products/Images/60/276407/op-lung-nhua-deo-realme-c35-tpu-techlife-1.-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 84, 1),
(41, 4, 'Ốp lưng realme Nhựa dẻo Luggage TPU MEEKER', 25000, 'https://cdn.tgdd.vn/Products/Images/60/228613/op-lung-realme-c11-nhua-deo-luggage-tpu-meeker-den-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 26, 1),
(42, 4, 'Ốp lưng realme Nhựa dẻo TPU realme TechLife ', 10000, 'https://cdn.tgdd.vn/Products/Images/60/281380/op-lung-realme-c35-nhua-deo-tpu-realme-techlife-tim-1-3-600x600.jpg', 'Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 64, 1),
(43, 1, 'Ốp lưng iPhone Nhựa dẻo WAVW SWEEIT TPU JM', 100000, 'https://cdn.tgdd.vn/Products/Images/60/265870/op-iphone-13-pro-max-nhua-gradient-fresh-cosano-1.-600x600.jpg', ' Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 35, 1),
(44, 1, 'Ốp lưng iPhone Nhựa cứng viền dẻo Arden OSMIA', 120000, 'https://cdn.tgdd.vn/Products/Images/60/265868/op-iphone-13-pro-max-nhua-deo-clear-beauty-cosano-1-600x600.jpg', ' Ốp lưng bảo vệ điện thoại chống trầy xước, va chạm.', 16, 1),
(46, 5, 'Ốp Trung Quốc', 300000, 'https://pub-b30d4c98c76a47fcb3455c5fbb3ee778.r2.dev/2023/03/%E1%BB%90P-L%C6%AFNG-IPHONE-G%E1%BA%A4U-D%C3%82U-LOTSO-12.jpg', 'Tất cả dòng điện thoại', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image`, `status`) VALUES
(1, 'Slider mới 1', 'https://cdn.shopify.com/s/files/1/2513/0866/files/print-on-demand-phone-case_-silicone.jpg?v=1665369331', 1),
(2, 'slider 2 ', 'https://cdn.shopify.com/s/files/1/2513/0866/files/print-on-demand-phone-case_-glass.jpg?v=1665369296', 1),
(3, 'Slider 3', 'https://cdn.shopify.com/s/files/1/2513/0866/files/print-on-demand-phone-case_-luminious.jpg?v=1665369242', 1),
(4, 'slider 4', 'https://cdn.shopify.com/s/files/1/2513/0866/files/print-on-demand-phone-case_-flash.jpg?v=1665369205', 1),
(5, 'slider 5', 'https://cdn.shopify.com/s/files/1/2513/0866/files/print-on-demand-phone-case_2.jpg?v=1665369160', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `role`) VALUES
(2, 'admin', 'admin@gmail.com', '4297f44b13955235245b2497399d7a93', '0123456789', 'Việt Nam', 1),
(30, 'Fong', 'fong@gmail.com', '50ae8117cc94e9a90e7b6869bd7ae55b', '0123456258', 'Binh Tan', 0);

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
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
