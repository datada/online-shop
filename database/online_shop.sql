-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 09:31 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(16, 'Áo sơ mi', 'ao-so-mi', 1, 0, 'Áo sơ mi', 'Áo sơ mi', '2016-08-01 08:53:11', '2016-08-01 08:53:11'),
(17, 'Áo sơ mi ngắn tay', 'ao-so-mi-ngan-tay', 2, 16, 'Áo sơ mi ngắn tay', 'Áo sơ mi ngắn tay', '2016-08-01 08:53:42', '2016-08-01 08:53:42'),
(18, 'Áo sơ mi dài tay', 'ao-so-mi-dai-tay', 3, 16, 'Áo sơ mi dài tay', 'Áo sơ mi dài tay', '2016-08-01 08:54:01', '2016-08-01 08:54:01'),
(19, 'Áo polo', 'ao-polo', 4, 0, 'Áo polo', 'Áo polo', '2016-08-01 08:54:22', '2016-08-01 08:54:22'),
(20, 'Áo T-shirt', 'ao-t-shirt', 5, 0, 'Áo T-shirt', 'Áo T-shirt', '2016-08-01 08:54:42', '2016-08-01 08:54:42'),
(21, 'Quần tây', 'quan-tay', 6, 0, 'Quần tây', 'Quần tây', '2016-08-01 08:55:25', '2016-08-01 08:55:25'),
(22, 'Quần kaki', 'quan-kaki', 7, 0, 'Quần kaki', 'Quần kaki', '2016-08-01 08:55:46', '2016-08-01 08:55:46'),
(23, 'Quần short', 'quan-short', 8, 0, 'Quần short', 'Quần short', '2016-08-01 08:56:07', '2016-08-01 08:56:07'),
(24, 'Quần jean', 'quan-jean', 9, 0, 'Quần jean', 'Quần jean', '2016-08-01 08:56:24', '2016-08-01 08:56:24'),
(25, 'Phụ kiện', 'phu-kien', 10, 0, 'Phụ kiện', 'Phụ kiện', '2016-08-01 08:56:44', '2016-08-01 08:56:44'),
(26, 'Cà vạt', 'ca-vat', 11, 25, 'Cà vạt', 'Cà vạt', '2016-08-01 08:57:56', '2016-08-01 08:57:56'),
(27, 'Tất', 'tat', 12, 25, 'Tất', 'Tất', '2016-08-01 08:58:10', '2016-08-01 08:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_07_041211_create_cates_table', 1),
('2016_07_07_042014_create_products_table', 1),
('2016_07_07_042609_create_product_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `intro`, `content`, `image`, `keywords`, `description`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(1, 'SƠ MI CASUAL COTTON-POLY CARO', 'so-mi-casual-cotton-poly-caro', 365000, '', '', '3347.png', '', '  ', 2, 17, '2016-08-01 09:01:27', '2016-08-01 09:01:27'),
(2, 'Sơ mi ngắn tay - Casual - Caro đỏ trắng', 'so-mi-ngan-tay---casual---caro-do-trang', 339000, '', '', '4461.jpg', '', '  ', 2, 17, '2016-08-01 09:06:07', '2016-08-01 09:06:07'),
(3, 'SƠ MI NGẮN TAY - CASUAL - XANH ĐẬM CARO ĐỎ TRẮNG', 'so-mi-ngan-tay---casual---xanh-dam-caro-do-trang', 339000, '', '', '4469.jpg', '', '  ', 2, 17, '2016-08-01 09:07:39', '2016-08-01 09:07:39'),
(4, 'SƠ MI NGẮN TAY - CASUAL - XANH CARO ĐỎ TRẮNG', 'so-mi-ngan-tay---casual---xanh-caro-do-trang', 339000, '', '', '4456.jpg', '', '  ', 2, 17, '2016-08-01 09:12:00', '2016-08-01 09:12:00'),
(5, 'SƠ MI NGẮN TAY - CASUAL - XANH CARO VÀNG TRẮNG', 'so-mi-ngan-tay---casual---xanh-caro-vang-trang', 339000, '', '', '4477.jpg', '', '  ', 2, 17, '2016-08-01 09:13:03', '2016-08-01 09:13:03'),
(6, 'Sơ mi Casual Dobby fabric caro A1', 'so-mi-casual-dobby-fabric-caro-a1', 365000, '', '', '0022.jpg', '', '  ', 2, 17, '2016-08-01 09:14:14', '2016-08-01 09:14:14'),
(7, 'Sơ mi Casual Dobby fabric caro A2', 'so-mi-casual-dobby-fabric-caro-a2', 365000, '', '', '9947.jpg', '', '    ', 2, 17, '2016-08-01 09:16:12', '2016-08-01 09:16:12'),
(9, 'Sơ mi Casual Dobby fabric caro A3', 'so-mi-casual-dobby-fabric-caro-a3', 365000, '', '', '9961.jpg', '', '  ', 2, 17, '2016-08-01 10:40:16', '2016-08-01 10:40:16'),
(10, 'Sơ mi Casual Dobby fabric caro A4', 'so-mi-casual-dobby-fabric-caro-a4', 365000, '', '', '9952.jpg', '', '    ', 2, 17, '2016-08-01 10:41:19', '2016-08-01 10:44:41'),
(11, 'Sơ mi Casual Dobby fabric caro A5', 'so-mi-casual-dobby-fabric-caro-a5', 365000, '', '', '9018.jpg', '', '    ', 2, 17, '2016-08-01 10:43:43', '2016-08-01 10:43:43'),
(12, 'SƠ MI REGULAR FIT COTTON CARO B1', 'so-mi-regular-fit-cotton-caro-b1', 469000, '', '', '0853.png', '', '    ', 2, 18, '2016-08-01 10:47:17', '2016-08-01 10:47:17'),
(13, 'SƠ MI REGULAR FIT COTTON CARO B2', 'so-mi-regular-fit-cotton-caro-b2', 469000, '', '', '0848.png', '', '  ', 2, 18, '2016-08-01 10:48:24', '2016-08-01 10:48:24'),
(14, 'SƠ MI REGULAR FIT COTTON CARO B3', 'so-mi-regular-fit-cotton-caro-b3', 469000, '', '', '8463.png', '', '  ', 2, 18, '2016-08-01 10:49:16', '2016-08-01 10:49:16'),
(15, 'ÁO POLO CASUAL - REGULAR FIT - SỌC ĐỎ XANH', 'ao-polo-casual---regular-fit---soc-do-xanh', 295000, '', '', '4452.jpg', '', '  ', 2, 19, '2016-08-01 10:50:57', '2016-08-01 10:50:57'),
(16, 'ÁO POLO CASUAL - CLASSIC - TRẮNG TRƠN MÀU', 'ao-polo-casual---classic---trang-tron-mau', 225000, '', '', '3991.jpg', '', '    ', 2, 19, '2016-08-01 10:54:02', '2016-08-01 10:54:02'),
(17, 'ÁO POLO CASUAL - REGULAR FIT - SỌC XANH ĐỎ', 'ao-polo-casual---regular-fit---soc-xanh-do', 295000, '', '', '4444.jpg', '', '  ', 2, 19, '2016-08-01 10:55:19', '2016-08-01 10:55:19'),
(18, 'ÁO THUN BODY COTTON IN HÌNH T1', 'ao-thun-body-cotton-in-hinh-t1', 285000, '', '', 'ACT_0007.png', '', '    ', 2, 20, '2016-08-01 10:57:02', '2016-08-01 10:57:02'),
(19, 'ÁO THUN BODY COTTON IN HÌNH T2', 'ao-thun-body-cotton-in-hinh-t2', 285000, '', '', 'ACT_0006.png', '', '    ', 2, 20, '2016-08-01 10:57:42', '2016-08-01 10:57:42'),
(20, 'ÁO THUN BODY COTTON IN HÌNH T3', 'ao-thun-body-cotton-in-hinh-t3', 285000, '', '', 'ACT_0005.png', '', '    ', 2, 20, '2016-08-01 10:58:19', '2016-08-01 10:58:19'),
(21, 'ÁO THUN BODY COTTON IN HÌNH T4', 'ao-thun-body-cotton-in-hinh-t4', 285000, '', '', 'ACT_0004.png', '', '  ', 2, 20, '2016-08-01 10:58:42', '2016-08-01 10:58:42'),
(22, 'ÁO THUN BODY COTTON IN HÌNH T5', 'ao-thun-body-cotton-in-hinh-t5', 285000, '', '', 'ACT_0003.png', '', '    ', 2, 20, '2016-08-01 10:59:06', '2016-08-02 01:52:44'),
(23, 'QUẦN TÂY 0PLY - REGULAR FIT - XANH', 'quan-tay-0ply---regular-fit---xanh', 409000, '', '', '4423.jpg', '', '  ', 2, 21, '2016-08-01 11:00:48', '2016-08-01 11:00:48'),
(24, 'QUẦN TÂY 0PLY - REGULAR FIT - ĐEN', 'quan-tay-0ply---regular-fit---den', 409000, '', '', '4419.jpg', '', '  ', 2, 21, '2016-08-01 11:01:26', '2016-08-01 11:01:26'),
(25, 'QUẦN TÂY 0PLY - REGULAR FIT - XÁM', 'quan-tay-0ply---regular-fit---xam', 370000, '', '', '160412-1.jpg', '', '  ', 2, 21, '2016-08-01 11:02:09', '2016-08-01 11:02:09'),
(26, 'QUẦN KHAKI THỜI TRANG – SLIMFIT - XANH BIỂN', 'quan-khaki-thoi-trang-–-slimfit---xanh-bien', 535000, '', '', '1602580-1.jpg', '', '  ', 2, 22, '2016-08-01 11:03:15', '2016-08-01 11:03:15'),
(27, 'QUẦN KHAKI THỜI TRANG - SLIMFIT - ĐEN TRƠN', 'quan-khaki-thoi-trang---slimfit---den-tron', 535000, '', '', '1601000-1.jpg', '', '  ', 2, 22, '2016-08-01 11:04:04', '2016-08-01 11:04:04'),
(28, 'QUẦN KHAKI THỜI TRANG - SLIMFIT - XANH LÁ TRƠN', 'quan-khaki-thoi-trang---slimfit---xanh-la-tron', 535000, '', '', '1600980-1.jpg', '', '  ', 2, 22, '2016-08-01 11:04:42', '2016-08-01 11:04:42'),
(29, 'QUẦN JEANS TENCEL BASIC XANH ĐẬM', 'quan-jeans-tencel-basic-xanh-dam', 479000, '', '', '3759.jpg', '', '  ', 2, 24, '2016-08-01 11:05:46', '2016-08-01 11:05:46'),
(30, 'QUẦN JEANS TENCEL BASIC WASH XANH NHẠT', 'quan-jeans-tencel-basic-wash-xanh-nhat', 479000, '', '', '3749.jpg', '', '  ', 2, 24, '2016-08-01 11:06:30', '2016-08-01 11:06:30'),
(31, 'QUẦN SHORT CASUAL - REGULAR FIT - PLAIN TRƠN S1', 'quan-short-casual---regular-fit---plain-tron-s1', 353000, '', '', '9671.jpg', '', '  ', 2, 23, '2016-08-01 11:09:36', '2016-08-01 11:09:36'),
(32, 'QUẦN SHORT CASUAL - REGULAR FIT - PLAIN TRƠN S2', 'quan-short-casual---regular-fit---plain-tron-s2', 353000, '', '', '9683.jpg', '', '  ', 2, 23, '2016-08-01 11:10:20', '2016-08-01 11:10:20'),
(33, 'QUẦN SHORT CASUAL - REGULAR FIT - PLAIN TRƠN S3', 'quan-short-casual---regular-fit---plain-tron-s3', 353000, '', '', '9674.jpg', '', '    ', 2, 23, '2016-08-01 11:11:44', '2016-08-01 11:11:44'),
(34, 'VỚ BAMBOO CỔ THẤP NOVELTY - TRẮNG', 'vo-bamboo-co-thap-novelty---trang', 50000, '', '', '4360.jpg', '', '  ', 2, 27, '2016-08-01 11:12:44', '2016-08-01 11:12:44'),
(35, 'VỚ CỔ THẤP NOVELTY - XANH ĐEN', 'vo-co-thap-novelty---xanh-den', 45000, '', '', '4369.jpg', '', '    ', 2, 27, '2016-08-01 11:13:24', '2016-08-01 11:13:24'),
(36, 'VỚ CỔ THẤP NOVELTY - MÀU XÁM', 'vo-co-thap-novelty---mau-xam', 45000, '', '', '4371.jpg', '', '  ', 2, 27, '2016-08-01 11:13:44', '2016-08-01 11:13:44'),
(37, 'CÀ VẠT DOBBY SILK SỌC', 'ca-vat-dobby-silk-soc', 99000, '', '', '5269.jpg', '', '  ', 2, 26, '2016-08-01 11:15:16', '2016-08-01 11:15:16'),
(38, 'CÀ VẠT DRESSED SATIN', 'ca-vat-dressed-satin', 147000, '', '', '51.jpg', '', '  ', 2, 26, '2016-08-01 11:16:00', '2016-08-01 11:16:00'),
(39, 'CÀ VẠT DRESSED DOBBY', 'ca-vat-dressed-dobby', 99000, '', '', '48.jpg', '', '  ', 2, 26, '2016-08-01 11:16:39', '2016-08-01 11:16:39'),
(40, 'QUẦN JEANS SLIMSTRAIGHT XANH ĐẬM', 'quan-jeans-slimstraight-xanh-dam', 479000, '', '', '3764.jpg', '', '    ', 2, 24, '2016-08-02 05:46:08', '2016-08-02 05:46:08'),
(41, 'QUẦN SHORT CASUAL CLASSIC TWILL FABRIC TRƠN MÀU', 'quan-short-casual-classic-twill-fabric-tron-mau', 275000, '', '', '0048.jpg', '', '    ', 2, 23, '2016-08-02 05:48:32', '2016-08-02 05:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(5, '4462.jpg', 2, '2016-08-01 09:06:07', '2016-08-01 09:06:07'),
(6, '4392.jpg', 2, '2016-08-01 09:06:07', '2016-08-01 09:06:07'),
(8, '4470.jpg', 3, '2016-08-01 09:07:39', '2016-08-01 09:07:39'),
(9, '4390.jpg', 3, '2016-08-01 09:07:39', '2016-08-01 09:07:39'),
(11, '4457.jpg', 4, '2016-08-01 09:12:01', '2016-08-01 09:12:01'),
(12, '4403.jpg', 4, '2016-08-01 09:12:01', '2016-08-01 09:12:01'),
(14, '4479.jpg', 5, '2016-08-01 09:13:03', '2016-08-01 09:13:03'),
(15, '4395.jpg', 5, '2016-08-01 09:13:03', '2016-08-01 09:13:03'),
(17, '0020.jpg', 6, '2016-08-01 09:14:15', '2016-08-01 09:14:15'),
(18, '0021.jpg', 6, '2016-08-01 09:14:15', '2016-08-01 09:14:15'),
(21, '9947.jpg', 7, '2016-08-01 09:16:12', '2016-08-01 09:16:12'),
(22, '9948.jpg', 7, '2016-08-01 09:16:12', '2016-08-01 09:16:12'),
(23, '9901.jpg', 7, '2016-08-01 09:16:13', '2016-08-01 09:16:13'),
(25, '9960.jpg', 9, '2016-08-01 10:40:16', '2016-08-01 10:40:16'),
(26, '9962.jpg', 9, '2016-08-01 10:40:16', '2016-08-01 10:40:16'),
(27, '9916.jpg', 9, '2016-08-01 10:40:16', '2016-08-01 10:40:16'),
(29, '9951.jpg', 10, '2016-08-01 10:41:19', '2016-08-01 10:41:19'),
(30, '9953.jpg', 10, '2016-08-01 10:41:19', '2016-08-01 10:41:19'),
(33, '9017.jpg', 11, '2016-08-01 10:43:43', '2016-08-01 10:43:43'),
(34, '8924.jpg', 11, '2016-08-01 10:43:43', '2016-08-01 10:43:43'),
(35, '9907.jpg', 10, '2016-08-01 10:44:41', '2016-08-01 10:44:41'),
(37, '0854.png', 12, '2016-08-01 10:47:17', '2016-08-01 10:47:17'),
(38, '0857.png', 12, '2016-08-01 10:47:17', '2016-08-01 10:47:17'),
(39, '0730.png', 12, '2016-08-01 10:47:17', '2016-08-01 10:47:17'),
(41, '0849.png', 13, '2016-08-01 10:48:25', '2016-08-01 10:48:25'),
(42, '0850.png', 13, '2016-08-01 10:48:25', '2016-08-01 10:48:25'),
(43, '0734.png', 13, '2016-08-01 10:48:25', '2016-08-01 10:48:25'),
(45, '8466.png', 14, '2016-08-01 10:49:16', '2016-08-01 10:49:16'),
(46, '8467.png', 14, '2016-08-01 10:49:16', '2016-08-01 10:49:16'),
(47, 'mau-so-mi-02.png', 14, '2016-08-01 10:49:16', '2016-08-01 10:49:16'),
(49, '4453.jpg', 15, '2016-08-01 10:50:57', '2016-08-01 10:50:57'),
(50, '4405.jpg', 15, '2016-08-01 10:50:57', '2016-08-01 10:50:57'),
(52, '3992.jpg', 16, '2016-08-01 10:54:02', '2016-08-01 10:54:02'),
(53, '3993.jpg', 16, '2016-08-01 10:54:02', '2016-08-01 10:54:02'),
(55, '4445.jpg', 17, '2016-08-01 10:55:19', '2016-08-01 10:55:19'),
(56, '4407.jpg', 17, '2016-08-01 10:55:19', '2016-08-01 10:55:19'),
(58, '4424.jpg', 23, '2016-08-01 11:00:49', '2016-08-01 11:00:49'),
(60, '4420.jpg', 24, '2016-08-01 11:01:26', '2016-08-01 11:01:26'),
(62, '160412-2.jpg', 25, '2016-08-01 11:02:09', '2016-08-01 11:02:09'),
(64, '1602580-2.jpg', 26, '2016-08-01 11:03:15', '2016-08-01 11:03:15'),
(66, '1601000-2.jpg', 27, '2016-08-01 11:04:04', '2016-08-01 11:04:04'),
(68, '1600980-2.jpg', 28, '2016-08-01 11:04:42', '2016-08-01 11:04:42'),
(70, '3760.jpg', 29, '2016-08-01 11:05:46', '2016-08-01 11:05:46'),
(72, '3751.jpg', 30, '2016-08-01 11:06:30', '2016-08-01 11:06:30'),
(74, '9672.jpg', 31, '2016-08-01 11:09:36', '2016-08-01 11:09:36'),
(75, '9657.jpg', 31, '2016-08-01 11:09:36', '2016-08-01 11:09:36'),
(77, '9684.jpg', 32, '2016-08-01 11:10:20', '2016-08-01 11:10:20'),
(78, '9648.jpg', 32, '2016-08-01 11:10:20', '2016-08-01 11:10:20'),
(80, '9676.jpg', 33, '2016-08-01 11:11:44', '2016-08-01 11:11:44'),
(81, '9655.jpg', 33, '2016-08-01 11:11:44', '2016-08-01 11:11:44'),
(83, '5265.jpg', 37, '2016-08-01 11:15:16', '2016-08-01 11:15:16'),
(84, '5273.jpg', 37, '2016-08-01 11:15:16', '2016-08-01 11:15:16'),
(86, '52.jpg', 38, '2016-08-01 11:16:00', '2016-08-01 11:16:00'),
(87, '53.jpg', 38, '2016-08-01 11:16:00', '2016-08-01 11:16:00'),
(89, '49.jpg', 39, '2016-08-01 11:16:39', '2016-08-01 11:16:39'),
(90, '50.jpg', 39, '2016-08-01 11:16:39', '2016-08-01 11:16:39'),
(91, '3769.jpg', 40, '2016-08-02 05:46:08', '2016-08-02 05:46:08'),
(92, '0047.jpg', 41, '2016-08-02 05:48:32', '2016-08-02 05:48:32'),
(94, '9965.jpg', 41, '2016-08-02 05:49:29', '2016-08-02 05:49:29'),
(95, '3168.png', 1, '2016-12-12 16:56:19', '2016-12-12 16:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `password_md5` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`, `password_md5`) VALUES
(2, 'admin', '$2y$10$cYHg0UBvtva.Q9d6ALK.xeg12EhNeIHyBAskZ/wzTqZsmNUKJeBsK', 'admin@gmail.com', 2, 'ajJm1Yd4c8iWvWa332mCAgSnIMGht4z5ElJSxll8PVKERD21VwdoBrKophhk', '2016-07-28 19:45:25', '2016-12-12 23:39:19', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'member', '$2y$10$5/cTYfRUlhjOO8j6QNbu8uBsr6Y7dpJPDZvqV/36cvGRSKsETSAMW', 'member@gmail.com', 1, 'WjHjW8Fi00PfiCWt806vT4iDdzJaspE4JTc1eMNg', '2016-07-28 19:46:15', '2016-07-28 19:46:15', ''),
(4, 'super', '$2y$10$0A5JOYC8MqYmeZP0lFadXuL7nod5q8j2rsaGN8fiK.AQTBNHjy4tK', 'super@gmail.com', 3, 'WjHjW8Fi00PfiCWt806vT4iDdzJaspE4JTc1eMNg', '2016-07-28 21:06:37', '2016-07-28 21:06:37', ''),
(6, 's', '$2y$10$4pFvKmL4OmA8UVB1R0o.5OIw3/SjkyTU./HKr70FdhhfoxFsyKoi2', 's@gmail.com', 2, 'VY8fgD1SnND2JqIF2IT7LjorB1UaCembkt0V0AZu', '2016-12-12 23:31:22', '2016-12-12 23:31:22', ''),
(8, 'ad@gmail.com', '$2y$10$3k7eT8tdU9PDtHLdK/7OdeBT5sCY5oBVekRO.Hav25XX73Scklzmu', 'ad@gmail.com', 2, 'VY8fgD1SnND2JqIF2IT7LjorB1UaCembkt0V0AZu', '2016-12-13 00:35:17', '2016-12-13 00:38:23', ''),
(10, 'abc', '', 'abc@abc.com', 1, NULL, '2016-12-13 08:24:03', '2016-12-13 08:24:03', '900150983cd24fb0d6963f7d28e17f72');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cates_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
