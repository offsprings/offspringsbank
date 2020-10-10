-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2020 at 08:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `probank`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_site`
--

CREATE TABLE `about_site` (
  `id` int(1) NOT NULL,
  `about` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `privacy_policy` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_site`
--

INSERT INTO `about_site` (`id`, `about`, `terms`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '2020-02-09 08:42:14', '2020-02-09 07:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$XH3iJ2/4W6l0342WIW0hheV6N635XmpGGbOx3dofQsq0TSgNtdKYO', '', '2020-02-13 14:03:56', '2020-02-13 13:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `admin_bank`
--

CREATE TABLE `admin_bank` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bank_name` varchar(128) NOT NULL,
  `address` text NOT NULL,
  `swift` varchar(32) NOT NULL,
  `iban` varchar(32) NOT NULL,
  `acct_no` varchar(15) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_bank`
--

INSERT INTO `admin_bank` (`id`, `name`, `bank_name`, `address`, `swift`, `iban`, `acct_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Boomchart', 'Citi bank', 'Somewhere in uk', '5444', '5678876', '12345678982', 1, '2020-02-10 15:14:07', '2020-02-10 14:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` double NOT NULL,
  `details` text NOT NULL,
  `type` int(2) NOT NULL,
  `seen` int(2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `reference` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `user_id`, `amount`, `details`, `type`, `seen`, `status`, `reference`, `created_at`, `updated_at`) VALUES
(10, 26, 100, 'Acct:2590216976, Date:2020-02-01 12:15:56, CR Amt:100,\n                             Bal:202, Ref:1580559356, Desc: Bank transfer', 2, 0, 1, '1580559356', '2020-02-01 11:15:56', '2020-02-01 11:15:56'),
(11, 11, 105, 'Acct:2134742865, Date:2020-02-01 12:15:56, DR Amt:100,\n                             Bal:27493, Ref:1580559356, Desc: Bank transfer', 1, 1, 1, '1580559356', '2020-02-01 12:24:40', '2020-02-01 11:24:40'),
(12, 11, 1035, 'Acct:2134742865, Date:2020-02-02 08:05:23, DR Amt:1000,\n                            Bal:24493, Ref:1580630723, Desc: Bank transfer', 1, 1, 1, '1580630723', '2020-02-15 16:36:48', '2020-02-15 15:36:48'),
(13, 11, 299, 'Acct:2134742865, Date:2020-02-14 13:34:05, CR Amt:299,\n        Bal:21450, Ref:1581687245, Desc:fvdffd', 2, 1, 1, '1581687245', '2020-02-15 16:36:48', '2020-02-15 15:36:48'),
(14, 11, 299, 'Acct:2134742865, Date:2020-02-14 13:34:41, CR Amt:299,\n        Bal:21749, Ref:1581687281, Desc:fvdffd', 2, 1, 1, '1581687281', '2020-02-15 16:36:48', '2020-02-15 15:36:48'),
(15, 11, 299, 'Acct:2134742865, Date:2020-02-14 13:35:26, CR Amt:299,\n        Bal:22048, Ref:1581687327, Desc:fvdffd', 2, 1, 1, '1581687327', '2020-02-15 16:36:48', '2020-02-15 15:36:48'),
(16, 11, 557, 'Acct:2134742865, Date:2020-02-14 13:41:04, CR Amt:557,\n        Bal:21491, Ref:1581687665, Desc:jhsxsvhvk', 1, 1, 1, '1581687665', '2020-02-15 16:36:48', '2020-02-15 15:36:48'),
(17, 11, 1000, 'Acct:2134742865, Date:2020-02-18 10:19:26, CR Amt:1000,\n        Bal:22391, Ref:1582021167, Desc:weg', 2, 0, 1, '1582021167', '2020-02-18 09:19:26', '2020-02-18 09:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `name` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `iban` varchar(32) DEFAULT NULL,
  `swift` varchar(32) DEFAULT NULL,
  `acct_no` varchar(32) DEFAULT NULL,
  `acct_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `user_id`, `name`, `address`, `iban`, `swift`, `acct_no`, `acct_name`, `created_at`, `updated_at`) VALUES
(2, 11, 'UBA', 'No. 7 Sekupang Batam, No. 7 Sekupang Batam', 'Bdbdnndjd', 'SDEGHT', '43567890475', 'Boomchart', '2020-02-01 00:11:13', '2020-01-31 23:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfer`
--

CREATE TABLE `bank_transfer` (
  `id` int(11) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_transfer`
--

INSERT INTO `bank_transfer` (`id`, `user_id`, `amount`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 50, 'sfgfff', '1569010693.png', 1, '2020-01-29 08:12:36', '0000-00-00 00:00:00'),
(3, 11, 50, 'kbkjb', '1572108075.jpg', 1, '2020-01-29 08:12:36', '0000-00-00 00:00:00'),
(4, 11, 200, 'kldfnkdnk', '1572109546.jpg', 1, '2020-01-29 08:12:36', '0000-00-00 00:00:00'),
(6, 11, 2000, 'ldkdld', '1572109768.jpg', 1, '2020-01-29 08:12:36', '0000-00-00 00:00:00'),
(7, 11, 50, 'lfvknfk', '1576804990.png', 2, '2020-02-15 08:12:47', '2020-02-15 07:12:47'),
(8, 11, 1000, 'dddd', '1580298376_user.jpg', 2, '2020-02-15 08:12:22', '2020-02-15 07:12:22'),
(9, 11, 2, 'gfhgjhfg', '1581811325_user.jpg', 0, '2020-02-15 23:02:05', '2020-02-15 23:02:05'),
(10, 11, 2, 'gfhgjhfg', '1581811421_user.jpg', 0, '2020-02-15 23:03:41', '2020-02-15 23:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(32) NOT NULL,
  `name` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `zip_code` int(32) NOT NULL,
  `postal_code` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `country`, `state`, `mobile`, `zip_code`, `postal_code`, `address`, `created_at`, `updated_at`) VALUES
(3, 'Histol', 'Indonesia', 'Georgia', '43567865433567', 4365443, '3454447567', 'Hell', '2020-02-09 09:38:48', '2020-02-09 08:38:48'),
(4, 'Bilson', 'Antigua & Barbuda', 'Georgia', '13245678786', 300216, '2423', 'Sekupang Batamg', '2020-01-27 19:49:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(32) NOT NULL,
  `image` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(2) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, '1.png', 'Capterra', 1, '2020-02-15 07:33:23', '0000-00-00 00:00:00'),
(2, '2.png', 'crowd', 1, '2020-02-15 07:34:40', '0000-00-00 00:00:00'),
(3, '3.png', 'Getapp', 1, '2020-02-15 07:34:53', '0000-00-00 00:00:00'),
(4, '4.png', 'softwareadvice', 1, '2020-02-15 07:35:08', '0000-00-00 00:00:00'),
(5, '5.png', 'trustpilot', 1, '2020-02-15 07:35:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `mobile`, `email`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(3, 'Castro Marvel', '+2349072963268', 'castrowebfirm@gmail.com', 'jbhbh', 0, '2020-01-31 16:21:57', '0000-00-00 00:00:00'),
(4, 'Castro Marvel', '+2349072963268', 'castrowebfirm@gmail.com', 'hkvvh', 0, '2020-01-31 16:21:57', '0000-00-00 00:00:00'),
(5, 'Castro Marvel', '+2349072963268', 'castrowebfirm@gmail.com', 'jjggggg', 0, '2020-01-31 16:21:57', '0000-00-00 00:00:00'),
(7, 'ddd', '22345678987654', 'i@c.com', 'arty', 0, '2020-02-24 19:03:32', '2020-02-24 19:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(32) NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency`, `name`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(2, 'Dollars', 'USD', '$', 1, '2020-02-09 10:07:22', '2020-02-09 09:07:22'),
(3, 'Afghanis', 'AFN', '?', 0, '2020-02-09 10:07:17', '2020-02-09 09:07:17'),
(4, 'Pesos', 'ARS', '$', 0, '2020-02-09 10:07:22', '2020-02-09 09:07:22'),
(5, 'Guilders', 'AWG', 'ƒ', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(6, 'Dollars', 'AUD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(7, 'New Manats', 'AZN', '???', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(8, 'Dollars', 'BSD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(9, 'Dollars', 'BBD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(10, 'Rubles', 'BYR', 'p.', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(11, 'Euro', 'EUR', '€', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(12, 'Dollars', 'BZD', 'BZ$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(13, 'Dollars', 'BMD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(14, 'Bolivianos', 'BOB', '$b', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(15, 'Convertible Marka', 'BAM', 'KM', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(16, 'Pula', 'BWP', 'P', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(17, 'Leva', 'BGN', '??', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(18, 'Reais', 'BRL', 'R$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(19, 'Pounds', 'GBP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(20, 'Dollars', 'BND', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(21, 'Riels', 'KHR', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(22, 'Dollars', 'CAD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(23, 'Dollars', 'KYD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(24, 'Pesos', 'CLP', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(26, 'Pesos', 'COP', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(27, 'Colón', 'CRC', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(28, 'Kuna', 'HRK', 'kn', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(29, 'Pesos', 'CUP', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(30, 'Koruny', 'CZK', 'K?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(31, 'Kroner', 'DKK', 'kr', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(32, 'Pesos', 'DOP ', 'RD$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(33, 'Dollars', 'XCD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(34, 'Pounds', 'EGP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(35, 'Colones', 'SVC', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(36, 'Pounds', 'FKP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(37, 'Dollars', 'FJD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(38, 'Cedis', 'GHC', '¢', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(39, 'Pounds', 'GIP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(40, 'Quetzales', 'GTQ', 'Q', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(41, 'Pounds', 'GGP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(42, 'Dollars', 'GYD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(43, 'Lempiras', 'HNL', 'L', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(44, 'Dollars', 'HKD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(45, 'Forint', 'HUF', 'Ft', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(46, 'Kronur', 'ISK', 'kr', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(47, 'Rupees', 'INR', 'Rp', 0, '2020-02-09 10:07:17', '2020-02-09 09:07:17'),
(48, 'Rupiahs', 'IDR', 'Rp', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(49, 'Rials', 'IRR', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `payment_id` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `token` int(11) NOT NULL,
  `trans_id` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `user_id`, `amount`, `payment_id`, `date`, `status`, `token`, `trans_id`, `details`) VALUES
(29, 11, '100', '2', '2019-08-16 13:27:35', 0, 242331, '', ''),
(30, 11, '1000000', '2', '2019-08-29 05:18:12', 0, 1567048693, 'zMwZ8WWAasBqbeu7hmMK', 'Paid'),
(31, 11, '0', 'Bitcoin', '2019-09-06 17:55:51', 0, 1567785352, 'xpAGtoelWiDdPVgiBMGr', 'Domain purchase');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `try` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `gateway_id`, `amount`, `charge`, `usd`, `btc_amo`, `btc_wallet`, `trx`, `status`, `try`, `created_at`, `updated_at`) VALUES
(87, 11, 105, '100', '6', '1.33', '0', '', '1572789068', 0, 0, '2019-11-03 13:51:08', '2019-11-03 13:51:08'),
(88, 11, 103, '20', '2.2', '0.28', '0', '', '1573393209', 0, 0, '2019-11-10 13:40:09', '2019-11-10 13:40:09'),
(89, 11, 103, '200', '4', '2.55', '0', '', '1573394937', 0, 0, '2019-11-10 14:08:56', '2019-11-10 14:08:56'),
(90, 11, 101, '100', '3.031', '1.29', '0', '', '1574860698', 0, 0, '2019-11-27 13:18:17', '2019-11-27 13:18:17'),
(91, 11, 101, '100', '3.031', '1.29', '0', '', '1580304951', 0, 0, '2020-01-29 13:35:50', '2020-01-29 13:35:50'),
(92, 11, 501, '100', '1.5', '1.27', '0', '', 'MMmlllzaEM0Zroui', 0, 0, '2020-01-29 12:52:09', '2020-01-29 12:52:09'),
(93, 11, 501, '100', '1.5', '1.27', '0', '', 'OeB5oJDkC7JnxQFT', 0, 0, '2020-01-29 12:57:31', '2020-01-29 12:57:31'),
(94, 11, 501, '100', '1.5', '1.27', '0', '', 'Jr1lsNOGglwXinsp', 0, 0, '2020-01-29 13:03:27', '2020-01-29 13:03:27'),
(95, 11, 106, '1000', '33', '12.91', '0', '', 'kKGW1iqRTmTWHllp', 0, 0, '2020-01-29 13:04:47', '2020-01-29 13:04:47'),
(96, 11, 501, '2', '1.01', '0.04', '0', '', '8sS6DIORc1Z8kjZe', 0, 0, '2020-01-29 13:19:27', '2020-01-29 13:19:27'),
(97, 11, 501, '2', '1.01', '0.04', '0', '', 'BCD7rw5KOp2VTKZe', 0, 0, '2020-01-29 13:22:06', '2020-01-29 13:22:06'),
(98, 11, 106, '100', '6', '1.33', '0', '', 'e8gJKDqMU0zalZDC', 0, 0, '2020-01-29 13:30:40', '2020-01-29 13:30:40'),
(99, 11, 106, '100', '6', '1.33', '0', '', 'rhhWwMm8wQH09I6f', 0, 0, '2020-01-29 13:31:58', '2020-01-29 13:31:58'),
(100, 11, 501, '100', '1.5', '1.27', '0', '', 'UoSJbDqIQpPp1p9P', 0, 0, '2020-01-29 13:38:25', '2020-01-29 13:38:25'),
(101, 11, 501, '100', '1.5', '1.27', '0', '', 'zLXt2jBIwrcQkG3a', 0, 0, '2020-01-29 13:40:04', '2020-01-29 13:40:04'),
(102, 11, 501, '100', '1.5', '1.27', '0', '', '624aCkdsIg1k9bEs', 0, 0, '2020-01-29 13:49:45', '2020-01-29 13:49:45'),
(103, 11, 501, '100', '1.5', '1.27', '0', '', '3ej4ZxGmsHaVj6Ge', 0, 0, '2020-01-29 13:53:25', '2020-01-29 13:53:25'),
(104, 11, 501, '100', '1.5', '1.27', '0', '', 'Z1aiC8yVIHJ0SXbT', 0, 0, '2020-01-29 13:53:34', '2020-01-29 13:53:34'),
(105, 11, 501, '100', '1.5', '1.27', '0', '', 'EhfGNDh7ZTU6pn6A', 0, 0, '2020-01-29 13:55:14', '2020-01-29 13:55:14'),
(106, 11, 501, '100', '1.5', '1.27', '0', '', 'Mcek5x1qLHF7Ykkv', 0, 0, '2020-01-29 13:56:31', '2020-01-29 13:56:31'),
(107, 11, 501, '100', '1.5', '1.27', '0', '', 'v6TaMy0f8rTY0w9J', 0, 0, '2020-01-29 13:58:30', '2020-01-29 13:58:30'),
(108, 11, 501, '100', '1.5', '1.27', '0', '', 'VBF48U3g46gVCM7G', 0, 0, '2020-01-29 13:59:57', '2020-01-29 13:59:57'),
(109, 11, 501, '100', '1.5', '1.27', '0', '', 'J4iJuUjqZ3gJUz6m', 0, 0, '2020-01-29 14:00:07', '2020-01-29 14:00:07'),
(110, 11, 501, '100', '1.5', '1.27', '0', '', 'UYlQptUdmFQbrzcc', 0, 0, '2020-01-29 14:01:19', '2020-01-29 14:01:19'),
(111, 11, 501, '100', '1.5', '1.27', '0', '', 'HnThOEeMzbfd7cio', 0, 0, '2020-01-29 14:03:41', '2020-01-29 14:03:41'),
(112, 11, 501, '100', '1.5', '1.27', '0', '', 'zYQ1DlZu9tdAPuVF', 0, 0, '2020-01-29 14:13:53', '2020-01-29 14:13:53'),
(113, 11, 501, '100', '1.5', '1.27', '0', '', '7vUqnlPZGtbBxYyb', 0, 0, '2020-01-29 14:14:07', '2020-01-29 14:14:07'),
(114, 11, 106, '100', '6', '1.33', '0', '', 'V6r9RQl2RiFgqc6w', 0, 0, '2020-01-29 15:42:07', '2020-01-29 15:42:07'),
(115, 11, 101, '1000', '25.711', '12.82', '0', '', 'vVNTpGpViBrRAg0v', 0, 0, '2020-01-29 19:06:04', '2020-01-29 19:06:04'),
(116, 11, 102, '1000', '12', '12.65', '0', '', 'OMtvfHDow1D9upNk', 0, 0, '2020-01-29 19:08:38', '2020-01-29 19:08:38'),
(117, 11, 104, '1000', '33', '12.91', '0', '', 'eJManq6d5TtLyABM', 0, 0, '2020-01-29 19:08:59', '2020-01-29 19:08:59'),
(118, 11, 101, '20', '1.0150000000000001', '0.26', '0', '', 'xKGXX0DY5njXIU20', 0, 0, '2020-01-29 19:09:24', '2020-01-29 19:09:24'),
(119, 11, 102, '20', '2.2', '0.28', '0', '', 'Xl4syFgz1TUTtedk', 0, 0, '2020-01-29 19:12:47', '2020-01-29 19:12:47'),
(120, 11, 104, '20', '3.6', '0.3', '0', '', 'QoLddZ7HuqaR16xT', 0, 0, '2020-01-29 19:13:28', '2020-01-29 19:13:28'),
(121, 11, 101, '20', '1.0150000000000001', '0.26', '0', '', 'TnDCcNbulCgYlRMb', 0, 0, '2020-01-29 19:13:57', '2020-01-29 19:13:57'),
(122, 11, 104, '20', '3.6', '0.3', '0', '', 'wi5bhUTZqXFpAiH8', 0, 0, '2020-01-29 19:19:57', '2020-01-29 19:19:57'),
(123, 11, 102, '20', '2.2', '0.28', '0', '', 'oGo3jZ0cM3JeKbrg', 0, 0, '2020-01-29 19:20:25', '2020-01-29 19:20:25'),
(124, 11, 505, '1000', '25.71', '12.82', '0.00136791', '3PXYwHBqHr455qDctGx4RKcrfiamsP1Fnn', 'DKe96L6fNiGwsNBC', 0, 0, '2020-01-29 19:21:51', '2020-01-29 19:24:43'),
(125, 11, 501, '1000', '6', '12.58', '0', '', 'PTeQkdZlDpCEZ0rg', 0, 0, '2020-01-29 19:31:01', '2020-01-29 19:31:01'),
(126, 11, 108, '40', '4.2', '0.55', '0', '', 'C7cPwWKO3UdeQ3rC', 2, 0, '2020-01-29 19:54:41', '2020-02-15 07:04:18'),
(127, 11, 108, '1000', '33', '12.91', '0', '', '1580332281', 0, 0, '2020-01-29 21:11:21', '2020-01-29 21:11:21'),
(128, 11, 107, '1000', '33', '12.91', '0', '', 'hRR8tmMGuPOvdtJ2', 1, 0, '2020-01-29 20:15:24', '2020-02-15 06:56:06'),
(129, 11, 106, '1000', '33', '12.91', '0', '', 'uFbRVcA4zqHsJ9bv', 0, 0, '2020-01-29 20:23:00', '2020-01-29 20:23:00'),
(130, 11, 103, '20', '2.2', '0.28', '0', '', '60sdY8Btx03Qae5x', 0, 0, '2020-01-30 06:36:42', '2020-01-30 06:36:42'),
(132, 11, 103, '100', '3', '1.29', '0', '', 'a2hRUbCb6W9K2mEX', 0, 0, '2020-02-15 13:49:01', '2020-02-15 13:49:01'),
(133, 11, 107, '1000', '33', '12.91', '0', '', 'zImE6H5GHjchywA3', 0, 0, '2020-02-15 13:58:31', '2020-02-15 13:58:31'),
(134, 11, 103, '100', '3', '1.29', '0', '', 'PQuYYWeHMgZUfLN5', 0, 0, '2020-02-15 13:58:41', '2020-02-15 13:58:41'),
(135, 11, 103, '1000', '12', '12.65', '0', '', 'fQhhtbFctYKvfN57', 0, 0, '2020-02-15 22:15:31', '2020-02-15 22:15:31'),
(136, 11, 103, '200', '4', '2.55', '0', '', 'nLI3n7GOsZouZIJX', 0, 0, '2020-02-18 09:17:16', '2020-02-18 09:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

CREATE TABLE `etemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `esender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `esender`, `mobile`, `emessage`, `smsapi`, `created_at`, `updated_at`) VALUES
(1, 'support@boomchart.com.ng', '+1234567890', '<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\">\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\"><br />\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\"><br />\r\n<div style=\"margin-left: 20px; margin-right: 20px;\"><span style=\"font-size: large;\">Hi {{name}},<br /></span>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br />\r\n<p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br /><strong>BOOMCHART</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=****&sender=LetsMine&SMSText={{message}}&GSM={{number}}&type=longSMS', '2018-01-09 23:45:09', '2020-02-13 08:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(32) NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(43, 'What is corporate internate banking?', '<p>Corporate internet banking is a secure online banking platform that enables cutomers make transfers to anyone in the world, 24 hours a day, 7 days a week</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00'),
(44, 'Can i update my account details from any branch?', '<p>Yes account update requsests can be made at any of the branches</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00'),
(45, 'How long does it take before my account becomes inactive?', '<p>Accounts become dormant after 6 months of inactivity</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00'),
(46, 'Is it possible to open an account in the coutry and operate the account while out of the country?', '<p>Yes, the account can be operated through any of our internet banking solution.</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `gateimg`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', 'paypal.png', '5', '1000', '0.511', '2.52', '80', 'melindadavies318@gmail.comq', '', 1, NULL, '2018-06-21 11:59:34'),
(102, 'PerfectMoney', 'Perfect Money', 'perfectmoney.png', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', 1, NULL, '2018-05-20 11:58:59'),
(103, 'Stripe', 'Stripe', 'stripe.png', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', 1, NULL, '2018-05-20 11:58:59'),
(104, 'Skrill', 'Skrill', 'skrill.png', '10', '50000', '3', '3', '80', 'demoqco@sun-fish.com', 'TheSoftKing', 1, NULL, '2018-05-20 12:01:09'),
(106, 'Voguepay', 'Voguepay', 'voguepay.png', '10', '50000', '3', '3', '80', '', 'sk_test_4eC39HqLyjWDarjtT1zdp7dc', 1, NULL, '2018-05-20 12:01:09'),
(107, 'Paystack', 'Paystack', 'paystack.png', '10', '50000', '3', '3', '80', 'pk_live_293d04f581857487ef9b5cd8cd0f843f7728c3be', NULL, 1, NULL, '2020-02-09 21:34:23'),
(108, 'Flutterwave', 'Flutterwave', 'flutterwave.png', '10', '50000', '3', '3', '80', 'FLWPUBK-9d9b4497a12c8226930c91c8cb23b81b-X', 'FLWSECK-9e6d77c844c0533ca612bef7539c2727-X', 1, NULL, '2018-05-20 12:01:09'),
(501, 'Blockchain.info', 'Blockchain', 'blockchain.png', '1', '20000', '1', '0.5', '80', 'a5f1cf3b6b418fc6304ff7e186041b73c19c2d3e16dedac6c1cafa64704d1e2e', 'xpub6CjfQJqY6Ctz1ccjTpVR7NAqKAKgJ5XDbpbxM2MTRUhznBXoE7Lo8NW749FNZheLfC9EcqAh2RRRtjbQ2ztxXJmiwVnQZNWJxgfeFSphpQM', 1, NULL, '2020-02-09 21:33:48'),
(505, 'CoinPayment - BTC', 'CoinPayment', 'coinpayment.png', '1', '50000', '0.51', '2.52', '80', '77f90f5d5cb242bec85eb1f4ec2e5cec6afee88ed0896965bb19887811040b2a', 'dDe9E59433F702a7220c8c71460500DAc023E199BF95d556d1cF4d8bE90609c0', 1, NULL, '2018-05-31 09:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `int_transfer`
--

CREATE TABLE `int_transfer` (
  `id` int(32) NOT NULL,
  `ref_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `details` text NOT NULL,
  `status` int(2) NOT NULL,
  `type` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `int_transfer`
--

INSERT INTO `int_transfer` (`id`, `ref_id`, `user_id`, `amount`, `details`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 1573196064, 11, 200, 'Acct name:LuciferBank name:CodexAddress:Su hotel sajuma USwift:SDEGHTIban:2184657324', 0, 1, '2020-02-02 08:01:37', '0000-00-00 00:00:00'),
(2, 1573196064, 11, 35, 'Acct name:LuciferBank name:CodexAddress:Su hotel sajuma USwift:SDEGHTIban:2184657324', 1, 2, '2020-02-02 08:01:37', '0000-00-00 00:00:00'),
(3, 1573196130, 11, 100, 'Acct name:Lucifer Bank name:Codex Address:Su hotel sajuma U Swift:SDEGHT Iban:2184657324', 0, 1, '2020-02-02 08:01:37', '0000-00-00 00:00:00'),
(4, 1573196130, 11, 35, 'Acct name:Lucifer Bank name:Codex Address:Su hotel sajuma U Swift:SDEGHT Iban:2184657324', 1, 2, '2020-02-02 08:01:37', '0000-00-00 00:00:00'),
(5, 1573196224, 11, 50, 'Acct name:Lucifer, Bank name:Codex, Address:Su hotel sajuma U, Swift:SDEGHT, Iban:2184657324', 2, 1, '2020-02-02 08:01:37', '0000-00-00 00:00:00'),
(6, 1573196224, 11, 35, 'Acct name:Lucifer, Bank name:Codex, Address:Su hotel sajuma U, Swift:SDEGHT, Iban:2184657324', 1, 2, '2020-02-02 08:01:37', '0000-00-00 00:00:00'),
(7, 1579545521, 11, 235, 'Acct name:Biggy, Bank name:Codex, Address:Su hotel sajuma UI, Swift:SDEGHT, Iban:5678876', 0, 1, '2020-02-02 08:01:37', '0000-00-00 00:00:00'),
(8, 1580630723, 11, 1000, 'Acct name:eree, Bank name:Codex, Address:Su hotel sajuma UI, Swift:SDEGHT, Iban:5643456', 1, 1, '2020-02-13 14:54:38', '2020-02-13 13:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `reference` int(32) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `user_id`, `amount`, `status`, `reference`, `details`, `created_at`, `updated_at`) VALUES
(1, 11, '4540', 2, 1579448184, 'djchdh', '2020-01-31 12:47:55', '2020-01-31 11:47:55'),
(2, 11, '1100', 2, 1579724899, 'School fees', '2020-02-18 10:17:49', '2020-02-18 09:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(32) NOT NULL,
  `image_link` varchar(128) NOT NULL,
  `image_link2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image_link`, `image_link2`, `created_at`, `updated_at`) VALUES
(1, 'images/logo_1581808448.png', 'images/favicon_1581808515.jpg', '2020-02-15 23:15:15', '2020-02-15 22:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(32) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` varchar(32) NOT NULL,
  `updated_at` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'AML Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>', 1, '2019-07-31 11:43:14', '2019-11-11 01:21:30'),
(6, 'Diversity', '<header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<h1>Diversity</h1>\r\n<p>Individuals. Ideas. Inspiration. Yes, we\'re open</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<div>\r\n<p>Diversity and inclusion matter in our business. An inclusive and diverse workforce makes us better leaders and contributes to a more innovative, dynamic and, ultimately, more successful company. And, variety helps us meet the needs of our diverse client base.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col1textimage\">Inclusiveness</h2>\r\n<div>\r\n<p>We promote inclusion and encourage open dialogue to draw out everyone\'s opinions and perspectives. We recognize a diverse range of contributions to keep our people energetic, engaged and inspired. And we are a signatory to the UN Standards of Conduct for Business regarding tackling LGBTI discrimination around the world.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col2textimage\">Flexibility</h2>\r\n<div>\r\n<p>We offer a modern, flexible working environment. We work where and how it\'s most appropriate according to individual, role and team requirements.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2020-02-15 23:02:32', '2020-02-16 20:47:41'),
(7, 'Sponsoring', '<div class=\"pageheadline pageheadline__base\">\r\n<h2 class=\"pageheadline__title\"><span class=\"pageheadline__hl pageheadline__hl--xsmall\">The big picture</span></h2>\r\n</div>\r\n<div class=\"leadtext leadtext__base\">\r\n<div class=\"leadtext__rte\">\r\n<p>We&rsquo;re passionate about supporting the places where we live and work. Through our long-standing sponsorships of motor sports and contemporary art, we connect with communities in new and exciting ways every day. It&rsquo;s our way of understanding how the world works, one pit stop and brush stroke at a time.</p>\r\n</div>\r\n</div>', 1, '2020-02-15 23:06:08', '2020-02-15 23:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'ronnie@gmail.com', 'IFsbuBWs5ZgZcoQGMivzLXy8XCvOne', '2018-05-16 01:28:41', NULL),
(2, 'ronnie@gmail.com', 'fHkcBEMW78ef43pmSswx8kVHqLcgDx', '2018-05-23 00:19:47', NULL),
(3, 'ronnie@gmail.com', 'tNPjzNUcsdEYeSPCutmDy8VfbECMUY', '2018-05-23 00:28:28', NULL),
(4, 'ronniearea@gmail.com', 'GXtEiyl8MGzNwMR5tNdRCEI7dTyuVX', '2018-05-27 16:02:22', NULL),
(5, 'abirkhan75@gmail.com', 'Z6sHQHOATk5fluqi0vAJeyqzEd0ZXz', '2018-05-27 05:54:38', NULL),
(6, 'haha@haha.co', 'IDx0BrjOWN6p0FGFpmOdgG6wrdtqO2', '2018-05-28 21:20:01', NULL),
(7, 'haha@haha.co', 'dD4UFej2PEFSEmBil48SJPw1l2zUSv', '2018-05-28 21:26:54', NULL),
(8, 'haha@haha.co', 'gbchqenwrcLnZPhzdjAtpR92V8vwwm', '2018-05-28 21:51:15', NULL),
(9, 'ronniearea@gmail.com', 'aDcOh1kIodnZh7xS1PIfWsQhMpgMdz', '2018-07-07 00:17:52', NULL),
(10, 'ronniearea@gmail.com', 'f1cIXMOls67f0fZTNgrabFt2gz1Tm3', '2018-07-07 00:18:43', NULL),
(11, 'ronniearea@gmail.com', 'otlQ1ZqDnK3fG4ppUJzah8vML0hbWZ', '2018-08-10 22:45:31', NULL),
(12, 'ronniearea@gmail.com', 'voucnaTSJ9zVb68fE89HFlTxpFV5ci', '2018-11-10 06:32:43', NULL),
(13, 'user@test.com', '4eUH4Lgx90OC18eXcDnlczyHNWcr2B', '2020-01-31 10:14:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `percent` varchar(32) NOT NULL,
  `min_deposit` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `percent`, `min_deposit`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Starter pack', '10', 0, 999, 1, '2020-02-12 19:24:13', '2020-02-12 18:24:13'),
(7, 'Premium pack', '12.5', 999, 1999, 1, '2020-01-30 23:47:13', '0000-00-00 00:00:00'),
(10, 'Gold pack', '15', 1999, 2999, 1, '2020-01-30 23:47:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `plan_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `profit` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `trx` varchar(16) NOT NULL,
  `end_date` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profits`
--

INSERT INTO `profits` (`id`, `user_id`, `plan_id`, `amount`, `profit`, `status`, `trx`, `end_date`, `date`, `created_at`, `updated_at`) VALUES
(84, 11, 6, 20, '1.5123287671232877', 1, '1578535322', '2021-01-31 00:13:53', '2020-01-31 00:13:53', '2020-02-23 23:24:37', '2020-02-23 22:24:37'),
(86, 11, 7, 500, '98.63013698630137', 1, '1578587513', '2021-01-06 00:13:53', '2020-01-06 00:13:53', '2020-02-23 23:24:37', '2020-02-23 22:24:37'),
(87, 11, 6, 2, '0.15123287671232877', 1, 'movKAYyaKqQnArWp', '2021-01-31 00:13:53', '2020-01-31 00:13:53', '2020-02-23 23:24:37', '2020-02-23 22:24:37'),
(88, 11, 10, 2000, '503.01369863013696', 1, 'gQgVDo7DfQ5vkALX', '2021-01-03 00:13:53', '2020-01-03 00:13:53', '2020-02-23 23:24:37', '2020-02-23 22:24:37'),
(89, 11, 6, 50, '3.780821917808219', 1, 'XzmB9IooWR5F3FvT', '2021-01-31 00:13:53', '2020-01-31 00:13:53', '2020-02-23 23:24:37', '2020-02-23 22:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `reply_support`
--

CREATE TABLE `reply_support` (
  `id` int(32) NOT NULL,
  `ticket_id` int(32) NOT NULL,
  `reply` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_support`
--

INSERT INTO `reply_support` (`id`, `ticket_id`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(1, 888883, 'hello', 0, '2020-02-14 09:02:40', '0000-00-00 00:00:00'),
(2, 888883, 'We are working on your issue', 0, '2020-02-14 09:02:40', '0000-00-00 00:00:00'),
(3, 888883, 'hi', 0, '2020-02-14 08:20:58', '2020-02-14 08:20:58'),
(4, 888883, 'sdfg', 1, '2020-02-15 13:47:56', '2020-02-15 13:47:56'),
(5, 888883, 'sdfg', 1, '2020-02-15 13:48:46', '2020-02-15 13:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `image_link` varchar(32) DEFAULT NULL,
  `review` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `occupation`, `image_link`, `review`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Jason Well', 'Forex trader', 'update_1581806819.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 1, '2020-02-15 22:46:59', '2020-02-15 21:46:59'),
(12, 'JacK Mill', 'Market analyst', 'update_1581806843.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 1, '2020-02-15 22:47:23', '2020-02-15 21:47:23'),
(13, 'Micheal Pete', 'Forex analyst', 'update_1581806792.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 1, '2020-02-15 22:46:32', '2020-02-15 21:46:32'),
(14, 'Big brother', 'Web developer', 'update_1581806914.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 1, '2020-02-15 22:48:34', '2020-02-15 21:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `target` varchar(255) NOT NULL,
  `end_date` varchar(32) NOT NULL,
  `reference` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`id`, `user_id`, `amount`, `target`, `end_date`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(9, 11, '200', 'Holiday', '2020-01-31', 1579731439, 1, '2020-01-31 00:33:01', '2020-01-30 23:33:01'),
(10, 11, '20', 'Christmas', '2020-01-31', 1580153630, 1, '2020-01-31 00:33:01', '2020-01-30 23:33:01'),
(11, 11, '20', 'School fees', '2020-01-31', 1580153680, 1, '2020-01-31 00:07:11', '2020-01-30 23:07:11'),
(12, 11, '500', 'Rent', '2020-03-24', 1580219625, 1, '2020-01-31 00:33:01', '2020-01-30 23:33:01'),
(13, 11, '2000', 'School fees', '2020-02-19', 1581349123, 1, '2020-02-10 15:42:08', '2020-02-10 14:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(32) NOT NULL,
  `title` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Wealth Management', 'Probank offers high net worth and affluent individuals around the world a complete range of tailored advice and investment services. Our spectrum ranges from investment management to estate planning and corporate finance advice', '2020-02-14 17:30:07', '2020-02-14 17:30:07'),
(2, 'Asset Management', 'Probank offers investment capabilities across traditional and alternative asset classes for private clients, intermediaries and institutional investors', '2020-02-14 17:30:28', '2020-02-14 17:30:28'),
(3, 'Investment Bank', 'A global financial services firm with a focused model built around clients and their needs, with an emphasis on informed advice, tailored ideas and solutions and best-in-class execution.', '2020-02-14 17:30:47', '2020-02-14 17:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(32) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `site_name` varchar(200) DEFAULT NULL,
  `site_desc` text DEFAULT NULL,
  `tawk_id` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `mobile` varchar(128) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `balance_reg` int(32) DEFAULT NULL,
  `email_notify` int(2) DEFAULT NULL,
  `sms_notify` int(2) DEFAULT NULL,
  `kyc` int(2) DEFAULT NULL,
  `transfer_charge` int(32) DEFAULT NULL,
  `transfer_chargex` int(32) DEFAULT NULL,
  `upgrade_fee` varchar(200) DEFAULT NULL,
  `loan_interest` int(32) DEFAULT NULL,
  `email_verification` int(2) DEFAULT NULL,
  `sms_verification` int(2) DEFAULT NULL,
  `registration` int(2) DEFAULT NULL,
  `withdraw_charge` varchar(191) DEFAULT NULL,
  `collateral_percent` int(32) DEFAULT NULL,
  `py_scheme` int(2) DEFAULT 0,
  `loan` int(2) DEFAULT 0,
  `save` int(2) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `site_name`, `site_desc`, `tawk_id`, `email`, `mobile`, `address`, `balance_reg`, `email_notify`, `sms_notify`, `kyc`, `transfer_charge`, `transfer_chargex`, `upgrade_fee`, `loan_interest`, `email_verification`, `sms_verification`, `registration`, `withdraw_charge`, `collateral_percent`, `py_scheme`, `loan`, `save`, `created_at`, `updated_at`) VALUES
(1, 'Bank, budget and earn 35x the national average.', 'Probank', 'Start banking, budgeting, and saving up to 1.90% APY when you open an FDIC-Insured Protected Goals Account.', NULL, 'support@boomchart.com.ng', '+1234567894, +2345666666', 'Somewhere in new york london', 2, 0, 0, 1, 5, 10, '200', 10, 1, 1, 1, '3', 50, 1, 1, 1, '2020-02-16 07:09:52', '2020-02-16 06:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(32) NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `image_link` varchar(32) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `body`, `image_link`, `status`) VALUES
(1, 'Fastest way to transfer money', 'we believe that the beauty of life lies in the little things that give us a better expression of ourselves, make us more social and connect emotionally', '1574025349.jpg', 1),
(2, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1572813037.jpg', 1),
(3, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1572813073.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(2) NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://facebook.com/', '2020-02-09 08:09:22', '2020-02-09 07:09:22'),
(2, 'instagram', 'https://instagram.com/', '2020-01-24 22:09:58', '0000-00-00 00:00:00'),
(3, 'twitter', 'https://twitter.com/', '2020-01-24 22:09:58', '0000-00-00 00:00:00'),
(4, 'skype', NULL, '2020-02-15 22:59:58', '2020-02-15 21:59:58'),
(5, 'pinterest', NULL, '2020-02-15 23:00:20', '2020-02-15 22:00:20'),
(7, 'linkedin', NULL, '2020-02-15 23:00:07', '2020-02-15 22:00:07'),
(8, 'youtube', NULL, '2020-02-15 22:59:48', '2020-02-15 21:59:48'),
(9, 'whatsapp', 'https://whatsapp.com/', '2020-02-09 08:09:38', '2020-02-09 07:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user@test.com', '2020-01-24 23:29:30', '2020-01-24 23:29:30'),
(2, 'freakboss3@gmail.com', '2020-01-24 23:32:13', '2020-01-24 23:32:13'),
(3, 'c@c.com', '2020-01-24 23:33:58', '2020-01-24 23:33:58'),
(4, 'naninick27@gmail.com', '2020-01-25 06:01:15', '2020-01-25 06:01:15'),
(5, 'inyamachidi355@gmail.com', '2020-01-25 06:12:24', '2020-01-25 06:12:24'),
(6, 'fish@castro.com', '2020-01-25 06:13:50', '2020-01-25 06:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(32) NOT NULL,
  `subject` text NOT NULL,
  `priority` varchar(8) NOT NULL,
  `message` text NOT NULL,
  `status` int(2) NOT NULL,
  `user_id` int(32) NOT NULL,
  `ticket_id` int(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `subject`, `priority`, `message`, `status`, `user_id`, `ticket_id`, `created_at`, `updated_at`) VALUES
(5, 'Dispute Guide', 'Low', 'Hello', 0, 11, 888883, '2020-02-13 22:58:48', '0000-00-00 00:00:00'),
(7, 'Nsbsbs', 'High', 'eeweeeeeee', 0, 11, 1581775991, '2020-02-15 13:13:10', '2020-02-15 13:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(32) NOT NULL,
  `ref_id` int(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `sender_id` int(32) NOT NULL,
  `receiver_id` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `type` int(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `ref_id`, `amount`, `sender_id`, `receiver_id`, `status`, `type`, `created_at`, `updated_at`) VALUES
(20, 1573405019, '25', 11, 17, 2, 1, '2019-11-10 16:56:59', '0000-00-00 00:00:00'),
(21, 1573405044, '26', 11, 17, 1, 1, '2019-11-10 16:57:23', '0000-00-00 00:00:00'),
(22, 1573405044, '5', 11, 17, 1, 2, '2019-11-10 17:01:39', '0000-00-00 00:00:00'),
(23, 1573405378, '200', 11, 17, 2, 1, '2019-11-10 17:02:58', '0000-00-00 00:00:00'),
(25, 1579359300, '105', 11, 17, 1, 1, '2020-01-18 14:55:00', '0000-00-00 00:00:00'),
(26, 1579359481, '20', 11, 17, 1, 1, '2020-01-18 14:58:01', '0000-00-00 00:00:00'),
(27, 1579364933, '2', 11, 25, 1, 1, '2020-01-18 16:28:52', '0000-00-00 00:00:00'),
(28, 1579545274, '100', 11, 17, 1, 1, '2020-01-20 18:34:33', '0000-00-00 00:00:00'),
(29, 1580559356, '100', 11, 26, 1, 1, '2020-02-01 11:15:56', '2020-02-01 11:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `tran_acct`
--

CREATE TABLE `tran_acct` (
  `id` int(32) NOT NULL,
  `amount` float NOT NULL,
  `type` int(2) NOT NULL,
  `ref` int(32) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `seen` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tran_acct`
--

INSERT INTO `tran_acct` (`id`, `amount`, `type`, `ref`, `content`, `user_id`, `date`, `seen`) VALUES
(1, 0, 1, 1573889534, 'Acct:, Date:2019-11-16 08:32:13, CR Amt:, Bal:0. Ref:1573889534', 0, '2019-11-16 08:32:13', 0),
(2, 50, 1, 1573889662, 'Acct:2134742865, Date:2019-11-16 08:34:21, CR Amt:50, Bal:5503. Ref:1573889662, Desc:master card', 11, '2019-11-16 08:34:21', 1),
(3, 50, 2, 1573889732, 'Acct:2134742865, Date:2019-11-16 08:35:32, DR Amt:50, Bal:5453, Ref:1573889732, Desc:Car expenses', 11, '2019-11-16 08:35:32', 1),
(4, 100, 1, 1573895137, 'Acct:2134742865, Date:2019-11-16 10:05:36, CR Amt:100, Bal:5553, Ref:1573895137, Desc:Mastercard', 11, '2019-11-16 10:05:36', 1),
(5, 100, 1, 1573895175, 'Acct:2134742865, Date:2019-11-16 10:06:14, CR Amt:100, Bal:5653, Ref:1573895175, Desc:Mastercard', 11, '2019-11-16 10:06:14', 1),
(6, 100, 1, 1573895244, 'Acct:2134742865, Date:2019-11-16 10:07:23, CR Amt:100, Bal:5753, Ref:1573895244, Desc:Mastercard', 11, '2019-11-16 10:07:23', 1),
(7, 100, 1, 1573895345, 'Acct:2134742865, Date:2019-11-16 10:09:04, CR Amt:100, Bal:5853, Ref:1573895345, Desc:Mastercard', 11, '2019-11-16 10:09:04', 1),
(8, 100, 1, 1573895452, 'Acct:2134742865, Date:2019-11-16 10:10:52, CR Amt:100, Bal:5953, Ref:1573895452, Desc:Mastercard', 11, '2019-11-16 10:10:52', 1),
(9, 100, 1, 1573895517, 'Acct:2134742865, Date:2019-11-16 10:11:56, CR Amt:100, Bal:6053, Ref:1573895517, Desc:Mastercard', 11, '2019-11-16 10:11:56', 1),
(10, 100, 1, 1573895571, 'Acct:2134742865, Date:2019-11-16 10:12:50, CR Amt:100, Bal:6153, Ref:1573895571, Desc:Mastercard', 11, '2019-11-16 10:12:50', 1),
(11, 200, 2, 1573895614, 'Acct:2134742865, Date:2019-11-16 10:13:33, DR Amt:200, Bal:5953, Ref:1573895614, Desc:Filmhouse', 11, '2019-11-16 10:13:33', 1),
(12, 200, 1, 1573895645, 'Acct:2134742865, Date:2019-11-16 10:14:04, CR Amt:200, Bal:6153, Ref:1573895645, Desc:Filmhouse', 11, '2019-11-16 10:14:04', 1),
(13, 200, 1, 1574019906, 'Acct:2134742865, Date:2019-11-17 20:45:06, CR Amt:200, Bal:6353, Ref:1574019906, Desc:jkdm', 11, '2019-11-17 20:45:06', 1),
(14, 200, 1, 1574023300, 'Acct:2134742865, Date:2019-11-17 21:41:39, CR Amt:200, Bal:6553, Ref:1574023300, Desc:jkdm', 11, '2019-11-17 21:41:39', 1),
(15, 1000, 2, 1574023525, 'Acct:2134742865, Date:2019-11-17 21:45:24, DR Amt:1000, Bal:5553, Ref:1574023525, Desc:transfer charges', 11, '2019-11-17 21:45:24', 1),
(16, 490, 1, 1574023605, 'Acct:2134742865, Date:2019-11-17 21:46:45, CR Amt:490, Bal:6043, Ref:1574023605, Desc:Transfer charges', 11, '2019-11-17 21:46:45', 1),
(17, 1000, 1, 1579549865, 'Acct:2134742865, Date:2020-01-20 20:51:05, CR Amt:1000, Bal:6100, Ref:1579549865, Desc:Tax bonuses', 11, '2020-01-20 20:51:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `id` int(8) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `cat_id` int(32) NOT NULL,
  `views` int(32) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `title`, `details`, `image`, `cat_id`, `views`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Budget for Your Winter Trip to Cancun', '<p>It may be cold at home, but winter months are the peak season for Caribbean beaches, and for good reason: With beautiful scenery, tropical weather, and a dazzling array of adventure opportunities, a trip to sunny Mexico can be the perfect cure for the winter blues.</p>', 'post_1581767808.jpg', 2, 3, 1, '2020-02-16 16:12:34', '2020-02-16 15:12:34'),
(10, 'We are still choosing to help you grow your money and your confidence', '<p>We don&rsquo;t have a crystal ball, and can&rsquo;t predict when rates will change again, but we wanted to clearly communicate what&rsquo;s happening today. We believe that maintaining our high Protected Goals Account rates&mdash;and rewarding the choice to save&mdash;will help our customers continue to feel confident with their money.</p>', 'post_1581231667.jpg', 2, 2, 1, '2020-02-16 15:30:51', '2020-02-16 14:30:51'),
(11, 'Prioritize your savings goals based on what you really want.', '<p>You know you should be saving, but what should you save for first? Prioritizing your savings goals can be confusing. Here&rsquo;s how to sift through it all.</p>', 'post_1581231686.jpg', 2, 1, 1, '2020-02-16 15:15:06', '2020-02-16 14:15:06'),
(12, 'Foresight is 20/20: Bring Your Financial Future Into Focus', '<p>Forget hindsight&mdash;this decade, foresight is 20/20. It&rsquo;s a new year, and time for a new financial focus. Read on to see how Simple&rsquo;s built-in budgeting tools can help you plan a financial future so bright, you gotta wear shades.</p>', 'post_1581245829.jpg', 3, 0, 1, '2020-02-15 09:40:33', '2020-02-15 08:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `trending_cat`
--

CREATE TABLE `trending_cat` (
  `id` int(8) NOT NULL,
  `categories` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending_cat`
--

INSERT INTO `trending_cat` (`id`, `categories`, `created_at`, `updated_at`) VALUES
(2, 'Inspiration', '2020-01-24 22:13:56', '0000-00-00 00:00:00'),
(3, 'Company', '2020-01-24 22:13:56', '0000-00-00 00:00:00'),
(4, 'Engineering', '2020-01-24 22:13:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ui_design`
--

CREATE TABLE `ui_design` (
  `id` int(11) NOT NULL,
  `s6_title` text NOT NULL,
  `s7_title` text NOT NULL,
  `s7_body` text NOT NULL,
  `s7_image` varchar(32) NOT NULL,
  `s6_body` text NOT NULL,
  `s5_title` text NOT NULL,
  `s5_body` text NOT NULL,
  `s4_title` text NOT NULL,
  `s4_body` text NOT NULL,
  `s4_image` varchar(32) NOT NULL,
  `s3_title` text NOT NULL,
  `s3_body` text NOT NULL,
  `s3_image` varchar(32) NOT NULL,
  `s2_image` varchar(32) NOT NULL,
  `s2_title` text NOT NULL,
  `s2_body` text NOT NULL,
  `s1_title` text NOT NULL,
  `header_title` text NOT NULL,
  `header_body` text NOT NULL,
  `nav_type` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ui_design`
--

INSERT INTO `ui_design` (`id`, `s6_title`, `s7_title`, `s7_body`, `s7_image`, `s6_body`, `s5_title`, `s5_body`, `s4_title`, `s4_body`, `s4_image`, `s3_title`, `s3_body`, `s3_image`, `s2_image`, `s2_title`, `s2_body`, `s1_title`, `header_title`, `header_body`, `nav_type`, `created_at`, `updated_at`) VALUES
(1, 'Get an account that suits you', 'What our client say about us', 'Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Ac felis donec et odio pellentesque diam volutpat commodo. Tristique magna sit amet purus gravida quis blandit.', 'section4_1581766093.png', 'We want to create superior value for our clients, shareholders and employees. And we want to stand out as a winner in our industry: for our expertise, advice and execution, our contribution to society, our work environment, and our business success.', 'Build your savings without even trying.', 'Turn on Round-up Rules and start saving up effortlessly. Whenever you make a purchase, Goals make it easy to save for the things you want or want to do. There’s no need for spreadsheets or extra apps to budget and track your money.', 'Make plans for what to do, not what’s due.', 'Set up your recurring expenses (think power bill, cable, internet) in our app, and we\'ll do the work of saving for them each month. When you know your bills are covered, you can focus on the fun parts of having money—like saving for a trip to Japan and buying that new bike.', 'section3_1581869693.png', 'What are your goals?', 'Whatever stage of life you’re at, we can guide you through the opportunities and challenges you face. Your investment goals may be different, but here are some examples of the sort of questions our wealth planners can help you answer.', 'section2_1581766025.png', 'section1_1581765438.png', 'Financial intermediaries', 'Our solutions for independent financial advisors and wealth managers include research, infrastructure and a broad range of products and services.We offers high net worth and affluent individuals around the world a complete range of tailored advice and investment services. Our spectrum ranges from investment management to estate planning and corporate finance advice, in addition to specific wealth management products and services.', 'Market leaders use app to reach their brand & business.', 'Probank. The bank for banks', 'We help banks to extend their offers and transform their cost structures. Services include market intelligence, business execution, liquidity provision, processing and client servicing.', 1, '2020-02-16 16:14:53', '2020-02-16 15:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `image` varchar(32) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(64) NOT NULL,
  `balance` varchar(32) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `country` varchar(191) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `ip_address` varchar(32) NOT NULL,
  `last_login` varchar(32) DEFAULT NULL,
  `kyc_link` varchar(32) DEFAULT NULL,
  `kyc_status` int(2) NOT NULL DEFAULT 0,
  `acct_no` varchar(32) NOT NULL,
  `pin` varchar(32) NOT NULL DEFAULT '0000',
  `upgrade` int(2) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) NOT NULL,
  `sms_code` varchar(191) NOT NULL,
  `phone_verify` tinyint(4) NOT NULL,
  `email_verify` tinyint(4) NOT NULL,
  `email_time` datetime NOT NULL,
  `phone_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `image`, `email`, `name`, `balance`, `password`, `phone`, `country`, `status`, `ip_address`, `last_login`, `kyc_link`, `kyc_status`, `acct_no`, `pin`, `upgrade`, `remember_token`, `zip_code`, `address`, `city`, `created_at`, `updated_at`, `verification_code`, `sms_code`, `phone_verify`, `email_verify`, `email_time`, `phone_time`) VALUES
(11, 'user', '1581766827_user.jpg', 'user@test.com', 'Julius Boom', '22391', '$2y$10$Mu4K74ihiCpF8qyBKk58F.94ek4zqePxAdtkjXmr12aUOHfmNG4B6', '123456789', 'United States', 0, '::1', '2020-02-23 23:24:31', '1580485233_user.jpg', 1, '2134742865', '1234', 1, '', '300383', 'Su hotel sajuma UI', 'Georgia', '2020-01-26 16:37:07', '2020-02-23 22:24:31', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Julis24', '1567960569.jpg', 'bigboss@ng.com', 'Julis Caesar', '148883', '$2y$10$HE2MiiKPyhufdFxg6SH5f.p9tX0l43YtjrSze9.hrtsATQM9Dgc9C', '+907 332 963 268', '', 0, '::1', '2019-09-07 22:51:53', '', 0, '2124747687', '0', 0, '', '', '', '', '2020-01-26 16:37:07', '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'dsdd', '', 'a@boom.com', 'dvds', '2', '$2y$10$Ag1P06TBBMM50igFwMDUs.zcRdlEkp3GkgV/BE8aSpEMIJqtbDYGG', '+456 787 65', '', 0, '::1', '', '', 0, '2147483647', '0', 0, '', '', '', '', '2020-01-26 16:37:07', '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'kjhgfd', '', 'v@boom.com', 'ghjhg', '4', '$2y$10$dfOfCsP8rfsB8iDzSTElcuFLlWcH3S3/RqOjLmrTGK./AZltMLBw2', '+567 897 654 ', '', 0, '::1', '', '', 0, '2111601879', '0', 0, '', '', '', '', '2020-01-26 16:37:07', '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'boobrr', NULL, 'user2@test.com', 'Julius32 Boom1', '102', '$2y$10$69Z26JFikl6HD5/2NqwGv.JztYOI9BNzezD7AY3jrELYc.CtbEXTO', '2345568333', NULL, 0, '::1', NULL, NULL, 0, '2590216976', '0', 0, NULL, NULL, NULL, NULL, '2020-01-31 08:21:20', '2020-02-01 11:15:56', 'YCGWL4', '7DZMKP', 1, 1, '2020-01-31 09:26:20', '2020-01-31 09:26:20'),
(27, 'boobee', NULL, 'freakboss3@gmail.com', 'Julius Boom', '2', '$2y$10$U8lD.EmJczPoMbcfrQqoguwurqXoFU8mwvlNISvP3r4jiJsF3DIra', '2345568555', NULL, 0, '::1', NULL, NULL, 0, '2740860446', '0', 0, NULL, NULL, NULL, NULL, '2020-01-31 08:24:59', '2020-02-14 16:05:44', 'PKQVTM', 'SNGJ46', 1, 1, '2020-01-31 09:29:59', '2020-01-31 09:29:59'),
(29, 'sdfdsvffdjhh', NULL, 'fnk@s.com', 'gdjhcgdvhcd', '2', '$2y$10$gJBL7.9f6HoCMEGJ3QfptuTuN4YG7TqKvFF0lnWMgb9VZ231cnFhW', '72655656754', NULL, 0, '::1', '2020-02-16 07:32:37', NULL, 0, '2667154802', '0000', 0, NULL, NULL, NULL, NULL, '2020-02-16 06:31:55', '2020-02-16 06:35:48', 'H5EMZP', 'CPRIPP', 1, 1, '2020-02-16 07:36:55', '2020-02-16 07:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_address`
--

CREATE TABLE `wallet_address` (
  `id` int(32) NOT NULL,
  `coin_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `date` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_address`
--

INSERT INTO `wallet_address` (`id`, `coin_id`, `user_id`, `address`, `date`) VALUES
(10, 3, 1, '45678hfjk6789yughgjk8', '2019-07-28 22:04:33'),
(13, 3, 11, '45678hfjk6789yughgjk8', '2019-08-16 20:59:55'),
(14, 12, 11, '45678hfjk6789yughgjk8', '2019-09-15 21:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `winfo`
--

CREATE TABLE `winfo` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `w_id` int(32) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winfo`
--

INSERT INTO `winfo` (`id`, `user_id`, `w_id`, `details`) VALUES
(1, 10, 7, '5d687c278a3356ff31768421e77b9cdfd');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawm`
--

CREATE TABLE `withdrawm` (
  `id` int(32) NOT NULL,
  `method` varchar(128) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawm`
--

INSERT INTO `withdrawm` (`id`, `method`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Bitcoin	', 0, '2020-01-30 08:25:31', '0000-00-00 00:00:00'),
(11, 'Litecoin', 0, '2020-01-30 08:25:31', '0000-00-00 00:00:00'),
(12, 'Bitcoin Cash', 0, '2020-01-30 08:25:31', '0000-00-00 00:00:00'),
(14, 'Stellar', 1, '2020-02-09 14:12:15', '2020-02-09 13:12:15'),
(15, 'Dash', 1, '2020-02-09 14:12:25', '2020-02-09 13:12:25'),
(16, 'Paypal', 1, '2020-02-09 14:12:34', '2020-02-09 13:12:34'),
(17, 'Perfect money', 1, '2020-02-09 14:13:12', '2020-02-09 13:13:12'),
(18, 'Skrill', 1, '2020-02-09 14:13:07', '2020-02-09 13:13:07'),
(19, 'Payu', 1, '2020-02-09 14:13:02', '2020-02-09 13:13:02'),
(20, 'Voguepay', 1, '2020-02-09 14:12:58', '2020-02-09 13:12:58'),
(21, 'Flutter wave', 1, '2020-02-09 14:12:04', '2020-02-09 13:12:04'),
(22, 'Paystack', 1, '2020-02-09 14:03:58', '2020-02-09 13:03:58'),
(23, 'Ethereum', 1, '2020-02-09 13:11:46', '2020-02-09 13:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `w_history`
--

CREATE TABLE `w_history` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `coin_id` varchar(32) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `w_history`
--

INSERT INTO `w_history` (`id`, `user_id`, `amount`, `status`, `coin_id`, `details`, `created_at`, `updated_at`) VALUES
(63, 11, 40, 2, '17', '73264978628967', '2020-01-30 08:31:49', '0000-00-00 00:00:00'),
(64, 11, 20, 1, '22', 'Merchant Id 123456', '2020-01-30 08:31:49', '0000-00-00 00:00:00'),
(65, 11, 1000, 1, '20', 'sdfghf', '2020-02-09 13:43:15', '2020-02-09 12:43:15'),
(66, 11, 2320, 2, '22', 'dcdfff', '2020-02-09 13:43:44', '2020-02-09 12:43:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_site`
--
ALTER TABLE `about_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_bank`
--
ALTER TABLE `admin_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reference` (`reference`),
  ADD KEY `reference_2` (`reference`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etemplates`
--
ALTER TABLE `etemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `int_transfer`
--
ALTER TABLE `int_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_support`
--
ALTER TABLE `reply_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tran_acct`
--
ALTER TABLE `tran_acct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_cat`
--
ALTER TABLE `trending_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ui_design`
--
ALTER TABLE `ui_design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_address`
--
ALTER TABLE `wallet_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winfo`
--
ALTER TABLE `winfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawm`
--
ALTER TABLE `withdrawm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `w_history`
--
ALTER TABLE `w_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_bank`
--
ALTER TABLE `admin_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `etemplates`
--
ALTER TABLE `etemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `int_transfer`
--
ALTER TABLE `int_transfer`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `reply_support`
--
ALTER TABLE `reply_support`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tran_acct`
--
ALTER TABLE `tran_acct`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trending_cat`
--
ALTER TABLE `trending_cat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ui_design`
--
ALTER TABLE `ui_design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wallet_address`
--
ALTER TABLE `wallet_address`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `winfo`
--
ALTER TABLE `winfo`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawm`
--
ALTER TABLE `withdrawm`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `w_history`
--
ALTER TABLE `w_history`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
