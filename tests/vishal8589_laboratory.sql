-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 03:07 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vishal8589_laboratory`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_member`
--

CREATE TABLE `cart_member` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `family_member_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1=>package,2=>parameter,3=>profile',
  `parameter` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_member`
--

INSERT INTO `cart_member` (`id`, `user_id`, `family_member_id`, `type_id`, `type`, `parameter`, `created_at`, `updated_at`) VALUES
(52, 12, 15, 4, 2, 3, '2022-01-27 13:41:23', '2022-01-27 13:41:23'),
(53, 12, 15, 4, 2, 3, '2022-01-27 13:41:33', '2022-01-27 13:41:33'),
(54, 13, 19, 2, 3, 1, '2022-04-08 18:24:56', '2022-04-08 18:24:56'),
(121, 1, 35, 13, 3, 1, '2023-02-28 12:24:08', '2023-02-28 12:24:08'),
(122, 1, 35, 13, 3, 1, '2023-02-28 12:24:20', '2023-02-28 12:24:20'),
(128, 49, 49, 3, 3, 1, '2023-02-28 12:47:58', '2023-02-28 12:47:58'),
(129, 49, 49, 3, 3, 1, '2023-02-28 12:48:24', '2023-02-28 12:48:24'),
(152, 1, 2, 1, 3, 4, '2023-03-06 05:34:08', '2023-03-06 05:34:08'),
(161, 1, 35, 7, 3, 1, '2023-03-06 06:27:18', '2023-03-06 06:27:18'),
(163, 1, 35, 1, 1, 6, '2023-03-06 06:35:16', '2023-03-06 06:35:16'),
(165, 3, 2, 11, 3, 1, '2023-03-07 06:44:28', '2023-03-07 06:44:28'),
(167, 5, 51, 5, 1, 17, '2023-03-07 06:54:47', '2023-03-07 06:54:47'),
(168, 3, 3, 2, 1, 8, '2023-03-07 06:58:57', '2023-03-07 06:58:57'),
(169, 3, 1, 2, 1, 8, '2023-03-07 06:59:04', '2023-03-07 06:59:04'),
(170, 3, 3, 2, 1, 8, '2023-03-07 06:59:04', '2023-03-07 06:59:04'),
(171, 3, 1, 2, 1, 8, '2023-03-07 07:00:01', '2023-03-07 07:00:01'),
(172, 3, 52, 2, 1, 8, '2023-03-07 07:01:24', '2023-03-07 07:01:24'),
(173, 3, 52, 2, 1, 8, '2023-03-07 07:02:14', '2023-03-07 07:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Health Risk', '16370424101569349004.png', 0, '2021-09-25 00:47:59', '2021-11-16 06:00:10'),
(2, 'Habits', '1637042398472648155.png', 0, '2021-09-25 00:49:54', '2021-11-16 05:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Buffalo', 0, '2021-09-25 01:02:34', '2021-09-25 01:02:34'),
(2, 'Rochester', 0, '2021-09-25 01:03:19', '2021-09-25 01:03:19'),
(3, 'Syracuse', 0, '2021-09-25 01:03:24', '2021-09-25 01:03:24'),
(4, 'Albany', 0, '2021-09-25 01:03:32', '2021-09-25 01:03:32'),
(5, 'New Rochelle', 0, '2021-09-25 01:03:40', '2021-09-25 01:03:40'),
(6, 'Mount Vernon', 0, '2021-09-25 01:03:48', '2021-09-25 01:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_member`
--

CREATE TABLE `family_member` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `mobile_no` varchar(250) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `relation` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_member`
--

INSERT INTO `family_member` (`id`, `name`, `mobile_no`, `age`, `email`, `dob`, `relation`, `gender`, `user_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Hetal', '1234567890', 24, 'hetal@gmail.com', '1997-08-04', 'Self', 'Female', 3, '2021-10-12 13:09:53', '2021-10-09 08:50:13', NULL),
(2, 'Rameshbhai', '9219214040', 48, 'ramesh@gmail.com', '1972-03-17', 'Parent', 'Male', 3, '2022-01-27 09:28:50', '2021-10-11 12:35:52', NULL),
(3, 'vishal', '2135465654', 32, 'vishal@gmail.com', '1989-08-05', 'Friend', 'Male', 3, '2022-01-10 04:16:46', '2022-01-10 04:16:46', NULL),
(4, 'John Due', '+919904444091', 24, 'johndue@gmail.com', '1997-08-04', 'Friend', 'Male', 3, '2022-01-20 07:01:39', '2022-01-20 07:01:39', NULL),
(5, 'Hetal', '91233555580855', 24, 'hetal@gmail.com', '1997-01-24 00:00:00.000', 'Friend', 'Female', 0, '2022-01-27 10:58:01', '2022-01-27 08:23:24', '2022-01-27 10:58:01'),
(6, 'Hitasha', '58089632580', 22, 'hit@gmail.com', '2022-01-27 00:00:00.000', 'Child', 'Female', 0, '2022-01-27 10:18:39', '2022-01-27 08:25:51', '2022-01-27 10:18:39'),
(7, 'Manveer', '5885622444785', 22, 'man@gmail.com', '2022-01-27 00:00:00.000', 'Self', 'Male', 0, '2022-01-27 10:03:05', '2022-01-27 08:29:17', '2022-01-27 10:03:05'),
(8, 'Sam', '454544949757', 22, 'sam@gmail.com', '2022-01-27 00:00:00.000', 'Parent', 'Male', 0, '2022-01-27 10:20:40', '2022-01-27 10:19:21', '2022-01-27 10:20:40'),
(9, 'Hetal', '91233555580855', 24, 'hetal@gmail.com', '0000-00-00', 'Child', 'Female', 0, '2022-01-27 10:49:52', '2022-01-27 10:24:05', '2022-01-27 10:49:52'),
(10, 'Hetal', '91233555580855', 25, 'hetal@gmail.com', '0000-00-00', 'Child', 'Male', 0, '2022-01-27 10:46:32', '2022-01-27 10:24:18', '2022-01-27 10:46:32'),
(11, 'Ram', '25588009665', 22, 'ram@gmail.com', '2022-01-27 00:00:00.000', 'Grand parent', 'Male', 0, '2022-01-27 10:59:27', '2022-01-27 10:59:27', NULL),
(12, 'Jimmy', '589632580888', 22, 'jimmy@gmail.com', '2022-01-27 00:00:00.000', 'Friend', 'Male', 0, '2022-01-27 12:42:14', '2022-01-27 11:00:16', '2022-01-27 12:42:14'),
(13, 'Wanda', '5809966325888', 22, 'wanda@gmail.com', '2022-01-27 00:00:00.000', 'Friend', 'Male', 0, '2022-01-27 11:01:51', '2022-01-27 11:01:51', NULL),
(14, 'Vision', '254848497687', 35, 'v@gmail.com', '0000-00-00', 'Parent', 'Male', 0, '2022-01-27 12:42:04', '2022-01-27 12:41:49', NULL),
(15, 'john wick', '112243378', 23, 'johnwick@gmail.com', '2016-01-01 00:00:00.000', 'Sibling', 'Male', 12, '2022-01-27 13:41:07', '2022-01-27 13:41:07', NULL),
(16, 'Jaz', '51515464887575', 22, 'jaz@gmail.com', '2022-01-03 00:00:00.000', 'Spouse', 'Female', 9, '2022-01-28 03:56:21', '2022-01-28 03:56:21', NULL),
(17, 'Wanda', '5454676978754', 12, 'wanda@gmail.com', '2022-01-03 00:00:00.000', 'Child', 'Male', 9, '2022-01-28 03:56:51', '2022-01-28 03:56:51', NULL),
(18, 'Tannu', '848676679657', 22, 'tannu@gmail.com', '0000-00-00', 'Parent', 'Female', 9, '2022-01-31 03:39:14', '2022-01-28 03:57:17', NULL),
(19, 'teste', '3333555555', 50, 'teste@teste.com', '2010-01-01', 'Self', 'Male', 13, '2022-04-08 18:24:48', '2022-04-08 18:24:48', NULL),
(20, 'sunny', '99', 22, 'su@gaja.djdj', '12-7-2022', 'Self', 'Male', 35, '2022-07-26 07:09:25', '2022-07-25 07:09:06', '2022-07-26 07:09:25'),
(21, 'Bina', '99998888887', 45, 'bina@gmail.com', '7-7-1975', 'Mother', 'Female', 35, '2022-07-26 08:50:13', '2022-07-25 08:55:19', '2022-07-26 08:50:13'),
(22, 'Pankan', '8855223366', 46, 'pankaj@gmail.com', '16-7-1967', 'Father', 'Male', 35, '2022-07-26 08:50:09', '2022-07-25 09:00:43', '2022-07-26 08:50:09'),
(23, 'muni', '9988556633', 18, 'muni@gmail.com', '15-7-2003', 'Daughter', 'Female', 35, '2022-07-26 07:08:55', '2022-07-26 06:38:20', '2022-07-26 07:08:55'),
(24, 'muna', '9988776655', 22, 'muna@gmail.com', '5-7-2000', 'Self', 'Male', 35, '2022-07-26 07:12:05', '2022-07-26 07:11:01', '2022-07-26 07:12:05'),
(25, 'muna', '9988776655', 22, 'muna@gmail.com', '7-6-2000', 'Self', 'Male', 35, '2022-07-26 07:13:58', '2022-07-26 07:13:26', '2022-07-26 07:13:58'),
(26, 'muna', '9988776655', 22, 'muna@gmail.com', '10-7-2000', 'Self', 'Male', 35, '2022-07-26 08:48:44', '2022-07-26 07:14:15', '2022-07-26 08:48:44'),
(27, 'sunny', '9904788946', 22, 'sunnypatel.sp212@gmail.com', '12-7-2022', 'Other', 'Male', 35, '2022-07-26 08:41:15', '2022-07-26 07:23:22', '2022-07-26 08:41:15'),
(28, 'sunny', '9904788946', 22, 'sunny@gmail.com', '4-7-2000', 'Other', 'Male', 35, '2022-07-26 08:43:15', '2022-07-26 08:42:04', '2022-07-26 08:43:15'),
(29, 'Sunny', '9904788946', 22, 'sunny@gmajl.com', '3-7-2000', 'Other', 'Male', 35, '2022-07-26 08:50:04', '2022-07-26 08:46:44', '2022-07-26 08:50:04'),
(30, 'sunny', '9999999999', 22, 'sunny@gmail.com', '3-7-2000', 'Self', 'Male', 35, '2022-07-26 09:02:06', '2022-07-26 09:02:06', NULL),
(31, 'Jhon', '9999999999', 25, 'jhon@gmail.com', '18-7-2022', 'Friend', 'Male', 35, '2022-07-27 13:03:57', '2022-07-27 13:03:57', NULL),
(32, 'john', '1234567890', 19, 'john@gmail.com', '2-1-2023', 'Self', 'Male', 36, '2023-01-02 07:15:50', '2023-01-02 07:15:50', NULL),
(33, 'Vishal', '7875128576785', 27, 'son@gmail.com', '4-1-2012', 'Son', 'Male', 36, '2023-01-13 05:04:08', '2023-01-02 11:16:18', NULL),
(34, 'demk', '9988776655', 20, 'demo@gmail.com', '1-1-2023', 'Self', 'Male', 44, '2023-01-02 14:48:34', '2023-01-02 14:48:34', NULL),
(35, 'test', '11111111111', 18, 'test@gmail.com', '18/11/2001', 'hindu', 'male', 1, '2023-01-03 06:07:58', '2023-01-03 06:07:58', NULL),
(36, 'John', '9696969696', 23, 'johndue@gmail.com', '24-12-1999', 'Self', 'Male', 46, '2023-01-04 11:00:22', '2023-01-04 11:00:22', NULL),
(37, 'john Due', '12121212122', 27, 'johnuser@gmail.com', '12-1-1989', 'Mother', 'Male', 46, '2023-01-13 04:09:42', '2023-01-12 06:34:59', NULL),
(38, 'Jordan', '9595959595', 32, 'Jordan@gmail.com', '17-1-1991', 'Parent', 'Male', 46, '2023-01-13 04:16:25', '2023-01-13 04:11:23', NULL),
(39, 'Michael Henry', '9797979797', 26, 'mitchaelhenry@gmail.com', '19-5-1994', 'Friend', 'Male', 36, '2023-01-13 04:56:15', '2023-01-13 04:56:15', NULL),
(40, 'Christopher Campbell', '9898989898', 36, 'christophercampbell@gmail.com', '29-12-1987', 'Uncle', 'Male', 36, '2023-01-13 04:57:36', '2023-01-13 04:57:36', NULL),
(41, 'Julian Wan', '9192929192', 45, 'julianwan@gmail.com', '19-2-1983', 'Father', 'Male', 36, '2023-01-13 04:58:43', '2023-01-13 04:58:43', NULL),
(42, 'demo2', '987654321', 44, 'demo2@gmail.com', '6-2-2023', 'Self', 'Male', 44, '2023-02-09 06:05:45', '2023-02-09 06:05:41', '2023-02-09 06:05:45'),
(43, 'demk2', '978467', 43, 'demo2@gmail.com', '6-2-2023', 'Parent', 'Male', 44, '2023-02-09 06:09:31', '2023-02-09 06:09:28', '2023-02-09 06:09:31'),
(44, 'John', '9876543210', 45, 'john@gmail.com', '10-2-1977', 'Parent', 'Male', 4, '2023-02-15 12:57:49', '2023-02-15 12:57:49', NULL),
(45, 'Edward Anser', '9595959595', 26, 'edwardanser@gmail.com', '16-2-1995', 'Friend', 'Male', 4, '2023-02-16 08:40:29', '2023-02-16 08:40:29', NULL),
(46, 'Mitchel Jonson', '9696969696', 35, 'mitchel45@gmail.com', '13-2-1985', 'Uncle', 'Male', 4, '2023-02-16 08:41:32', '2023-02-16 08:41:32', NULL),
(47, 'Amily Smith', '9494949494', 15, 'amily66@gmail.com', '10-2-2005', 'Daughter', 'Female', 4, '2023-02-16 08:42:44', '2023-02-16 08:42:37', NULL),
(48, 'sena', '1234567890', 40, 'sena@gmail.com', '2016-01-07', 'Spouse', 'Male', 49, '2023-02-28 12:47:15', '2023-02-28 12:47:15', NULL),
(49, 'roza', '1234567890', 60, 'roza@gmail.com', '1961-05-02', 'Parent', 'Male', 49, '2023-02-28 12:47:54', '2023-02-28 12:47:54', NULL),
(50, 'Jony', '9595959595', 45, 'jony@gmail.com', '15-3-1973', 'Parent', 'Male', 50, '2023-03-06 06:05:05', '2023-03-06 06:05:05', NULL),
(51, 'test', '+91 7947062328', 21, '123@gmail.com', '2001-10-24', 'Spouse', 'Male', 5, '2023-03-07 06:46:47', '2023-03-07 06:46:47', NULL),
(52, 'test', '+91 1231231231', 21, 'admin@gmail.com', '2001-06-15', 'Self', 'Female', 3, '2023-03-07 07:01:18', '2023-03-07 07:01:18', NULL),
(53, 'test', '+91 1231231231', 21, '123@gmail.com', '2009-06-24', 'Self', 'Male', 6, '2023-03-07 07:10:42', '2023-03-07 07:10:42', NULL),
(54, 'John', '9876543210', 25, 'john@gmail.com', '16-3-1995', 'Self', 'Male', 4, '2023-03-20 07:25:16', '2023-03-20 06:53:10', '2023-03-20 07:25:16'),
(55, 'John Due', '9876543210', 35, 'johndue@gmail.com', '14-3-1985', 'Friend', 'Male', 51, '2023-03-20 07:13:29', '2023-03-20 07:13:29', NULL),
(56, 'Michel', '9876543210', 35, 'mitchel@gmail.com', '17-3-1983', 'Self', 'Male', 4, '2023-03-20 07:17:33', '2023-03-20 07:17:33', NULL),
(57, 'Lucas', '9876543210', 26, 'lucas@gmail.com', '16-3-1994', 'Friend', 'Male', 4, '2023-03-20 07:27:07', '2023-03-20 07:27:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ratting` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `ratting`, `order_id`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 2, 'Very professional team Excellent service all staff are very good', '2021-11-02 12:38:11', '2021-11-02 07:08:11', '2021-11-02 07:08:11'),
(2, 4, NULL, 124, 'We ordered for testing at home for full family. It was very smooth. The technician Swapnil was very professional', '17-01-2022 10:45:29', '2022-01-17 17:15:29', '2022-01-17 17:15:29'),
(3, 46, '5', 60, 'Excellent support by wardboys for hassle free experience while handling CT & MRI scanning process. ', '17-01-2022 10:45:41', '2022-01-17 17:15:41', '2022-01-17 17:15:41'),
(4, 4, '5', 92, 'Clinico service excellent. Geeta Madam communicated very well. Fast action with appointment for MRI.report within an Hour.', '27-07-2022 10:09:00', '2022-07-27 22:09:00', '2022-07-27 22:09:00'),
(5, 46, '4', 64, ' Its always been good experience with clinico hassle free procedure...organised one...staff is v cooperative....would recommended this for any type of blood test under 1 roof.', '27-07-2022 10:14:50', '2022-07-27 22:14:50', '2022-07-27 22:14:50'),
(7, 35, '2', 42, 'Clinico is a very good pathology lab, and scan centre. The people here are helpful, professional, and friendly, something that is difficult to find in health care sectors these days. ', '27-07-2022 10:30:25', '2022-07-27 22:30:25', '2022-07-27 22:30:25'),
(8, 4, '5', 123, 'Best Diagnostic centre in mulund..well Cooperative staff..', '27-07-2022 10:30:42', '2022-07-27 22:30:42', '2022-07-27 22:30:42'),
(9, 46, '3', 63, 'Quality of service superb. We need you to improve alround', '27-07-2022 10:31:48', '2022-07-27 22:31:48', '2022-07-27 22:31:48'),
(10, 50, '5', 125, 'Very helpful staff n ppl. Quick n satisfactory service', '02-01-2023 07:19:44', '2023-01-02 19:19:44', '2023-01-02 19:19:44'),
(11, 4, '5', 89, 'good service provid the staff take care of patients very well nice', '02-01-2023 07:21:45', '2023-01-02 19:21:45', '2023-01-02 19:21:45'),
(13, 4, '5', 122, 'A team of thorough professionals who help you with precise diagnosis.A great experience overall.', '11-01-2023 11:24:14', '2023-01-11 23:24:14', '2023-01-11 23:24:14'),
(46, 46, '4', 62, ' I would give special thanks to Swapnil, and Prashant, for doing a timely, home collection of samples for Covid-19, RT PCR tests. They are experienced, and took the samples painlessly. Moreover, they kept their promises in timely delivery of accurate reports. ', '27-07-2022 10:30:08', '2022-07-27 22:30:08', '2022-07-27 22:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2021_09_22_061410_create_category_table', 1),
(15, '2021_09_22_061618_create_subcategory_table', 1),
(16, '2021_09_22_062023_create_city_table', 1),
(17, '2021_09_25_055316_create_packages_table', 1),
(18, '2021_09_25_060703_create_package__f_r_q_s_table', 1),
(19, '2021_09_25_112201_create_parameters_table', 2),
(24, '2021_09_30_100405_create_test_details_table', 3),
(25, '2021_09_30_105625_create_profiles_table', 3),
(26, '2021_10_05_055000_create_popular_packages_table', 4),
(27, '2021_10_11_102746_create_orders_table', 5),
(28, '2021_10_11_102814_create_orders_data_table', 5),
(29, '2021_10_13_045655_create_contactuses_table', 6),
(30, '2021_10_13_045835_create_news_table', 6),
(31, '2021_10_13_045940_create_notifications_table', 6),
(32, '2021_10_18_054409_create_resetpasswords_table', 7),
(33, '2021_10_18_083713_create_reviews_table', 8),
(34, '2021_11_02_100505_create_feedback_table', 9),
(35, '2022_01_08_090056_create_tokens_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'hetaljogadiya48@gmail.com', '2021-10-13 01:31:12', '2021-10-13 01:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `feedback` int(11) NOT NULL DEFAULT 1 COMMENT '0=>done,1=>remain',
  `sample_collection_address_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `final_total` double(8,2) DEFAULT NULL,
  `status` bigint(20) NOT NULL DEFAULT 1 COMMENT '1=>pending,2=>accept,3=>reject,4=>refund,5=>collected,6=>preparing,7=>complete ',
  `orderplace_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_datetime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_datetime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_description` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_datetime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collected_datetime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_datetime` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_completed` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `manager_id`, `feedback`, `sample_collection_address_id`, `date`, `time`, `payment_method`, `token`, `subtotal`, `tax`, `final_total`, `status`, `orderplace_date`, `accept_datetime`, `reject_datetime`, `reject_description`, `refund_datetime`, `collected_datetime`, `complete_datetime`, `report`, `created_at`, `updated_at`, `is_completed`) VALUES
(1, 3, NULL, 1, 1, '2021-10-15', '18:00', 'braintree', '2zcfy60f', 349.00, 34.90, 383.90, 4, '2021-10-12 03:00:00', '', '15-10-2021 07:58:48', 'not Avilable', '15-10-2021 08:10:09', '', '', NULL, '2021-10-11 07:00:41', '2021-10-15 14:40:09', 1),
(2, 3, NULL, 1, 1, '2021-10-21', '18:00', 'stripe', 'ch_3JjNruCx9OJxsUSh1MySZYuA', 349.00, 34.90, 383.90, 7, '2021-10-12 03:10:00', '15-10-2021 06:48:53', '', NULL, '', '15-10-2021 07:35:35', '15-10-2021 07:56:45', '5010876841634367405.pdf', '2021-10-11 07:14:39', '2021-10-15 14:26:45', 1),
(3, 3, NULL, 1, 1, '2021-10-22', '16:00', 'braintree', '0ycbxvv6', 698.00, 69.80, 767.80, 2, '15-10-2021 11:47:28', '05-03-2023 09:46:48', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-15 18:17:28', '2023-03-05 21:46:48', 1),
(4, 3, NULL, 1, 1, '2021-10-16', '16:20', 'stripe', 'ch_3JlARiCx9OJxsUSh1Aasox0N', 698.00, 69.80, 767.80, 1, '15-10-2021 11:48:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-15 18:18:54', '2021-10-15 18:18:54', 1),
(5, 3, NULL, 1, 1, '2021-10-21', '16:20', 'stripe', 'ch_3JlASUCx9OJxsUSh0V7bpuVU', 698.00, 69.80, 767.80, 1, '15-10-2021 11:49:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-15 18:19:42', '2021-10-15 18:19:42', 1),
(6, 3, NULL, 1, 1, '2021-10-22', '16:50', 'paystack', '20220808111212800110168203203944947', 349.00, 34.90, 383.90, 1, '16-10-2021 12:17:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-15 18:47:45', '2022-08-08 03:24:40', 1),
(7, 3, NULL, 1, 1, '2021-10-22', '14:00', 'cod', '', 0.00, 0.00, 0.00, 1, '17-10-2021 09:33:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-17 16:03:59', '2021-10-17 16:03:59', 1),
(8, 3, NULL, 1, 1, '2021-10-22', '20:00', 'cod', '', 699.00, 69.90, 768.90, 1, '17-10-2021 09:35:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-17 16:05:02', '2021-10-17 16:05:02', 1),
(9, 3, NULL, 1, 1, '2021-10-20', '16:01', 'braintree', '2dpzr5e0', 699.00, 69.90, 768.90, 1, '18-10-2021 11:31:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-18 18:01:29', '2021-10-18 18:01:29', 1),
(10, 3, NULL, 1, 1, '2021-11-19', '16:22', 'braintree', 'j0z3qh5w', 880.00, 88.00, 968.00, 1, '10-11-2021 11:53:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-10 18:23:13', '2021-11-10 18:23:13', 1),
(11, 3, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '17-01-2022 10:33:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17 17:03:51', '2022-01-17 17:03:51', 1),
(12, 3, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '17-01-2022 10:34:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17 17:04:10', '2022-01-17 17:04:10', 1),
(13, 3, NULL, 1, 2, '2022-01-28', '15:21', 'cod', '', 1047.00, 104.70, 1151.70, 1, '19-01-2022 11:07:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19 17:37:37', '2022-01-19 17:37:37', 1),
(15, 3, NULL, 1, 2, '2022-01-28', '15:21', 'cod', '', 1047.00, 104.70, 1151.70, 1, '19-01-2022 11:08:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19 17:38:37', '2022-01-19 17:38:37', 1),
(17, 3, NULL, 1, 2, '2022-01-28', '15:21', 'cod', '', 1047.00, 104.70, 1151.70, 1, '19-01-2022 11:10:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19 17:40:14', '2022-01-19 17:40:14', 1),
(18, 3, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '30-01-2022 08:01:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-30 20:01:17', '2022-01-30 20:01:17', 1),
(21, 9, NULL, 1, 41, '2022-02-15', '12:58', 'cod', '', 398.00, 39.80, 437.80, 1, '31-01-2022 12:28:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:28:27', '2022-01-31 00:28:27', 1),
(22, 3, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:29:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:29:57', '2022-01-31 00:29:57', 1),
(23, 9, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:30:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:30:20', '2022-01-31 00:30:20', 1),
(24, 9, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:31:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:31:53', '2022-01-31 00:31:53', 1),
(25, 9, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:36:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:36:12', '2022-01-31 00:36:12', 1),
(26, 9, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:36:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:36:48', '2022-01-31 00:36:48', 1),
(27, 9, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:37:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:37:58', '2022-01-31 00:37:58', 1),
(28, 9, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:38:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:38:19', '2022-01-31 00:38:19', 1),
(29, 9, NULL, 1, 41, '2022-02-08', '22:11', 'cod', '', 698.00, 69.80, 767.80, 1, '31-01-2022 12:41:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:41:22', '2022-01-31 00:41:22', 1),
(30, 9, NULL, 1, 41, '2022-01-31', '17:50', 'cod', '', 1745.00, 174.50, 1919.50, 1, '31-01-2022 01:16:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 01:16:42', '2022-01-31 01:16:42', 1),
(31, 9, NULL, 1, 41, '2022-02-01', '13:52', 'stripe', 'ch_3KOECvCx9OJxsUSh1NSvMPNy', 698.00, 69.80, 767.80, 1, '31-01-2022 05:43:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 17:43:09', '2022-01-31 17:43:09', 1),
(32, 9, NULL, 1, 41, '2022-02-01', '10:40', 'cod', '', 2094.00, 209.40, 2303.40, 1, '31-01-2022 05:53:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 17:53:15', '2022-01-31 17:53:15', 1),
(33, 9, NULL, 1, 41, '2022-02-01', '11:30', 'braintree', 'cmhpexw0', 349.00, 34.90, 383.90, 1, '31-01-2022 06:42:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 18:42:39', '2022-01-31 18:42:39', 1),
(34, 9, NULL, 1, 43, '2022-02-01', '12:30', 'cod', '', 1446.00, 144.60, 1590.60, 1, '31-01-2022 07:38:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 19:38:05', '2022-01-31 19:38:05', 1),
(35, 9, NULL, 1, 43, '2022-02-04', '10:20', 'cod', '', 349.00, 34.90, 383.90, 1, '01-02-2022 05:50:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01 17:50:14', '2022-02-01 17:50:14', 1),
(36, 9, NULL, 1, 43, '2022-02-11', '12:10', 'stripe', 'ch_3KOcNgCx9OJxsUSh0yXhHtAS', 199.00, 19.90, 218.90, 1, '01-02-2022 07:31:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01 19:31:52', '2022-02-01 19:31:52', 1),
(37, 3, NULL, 1, 1, '2022-01-25', '20:00', 'cod', '', 698.00, 69.80, 767.80, 1, '22-07-2022 01:15:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 01:15:59', '2022-07-22 01:15:59', 1),
(38, 35, NULL, 1, 3, '2022-07-12', '18:18', 'cod', '', 1047.00, 10.00, 1057.00, 1, '22-07-2022 01:51:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 01:51:57', '2022-07-22 01:51:57', 1),
(39, 35, NULL, 1, 3, '2022-07-12', '18:18', 'cod', '', 1047.00, 10.00, 1057.00, 1, '22-07-2022 01:52:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 01:52:10', '2022-07-22 01:52:10', 1),
(40, 35, NULL, 1, 3, '2022-07-12', '18:18', 'cod', '', 698.00, 10.00, 708.00, 1, '22-07-2022 01:57:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 01:57:42', '2022-07-22 01:57:42', 1),
(41, 35, NULL, 1, 3, '2022-07-12', '18:18', 'cod', '', 0.00, 10.00, 0.00, 1, '22-07-2022 01:58:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-22 01:58:51', '2022-07-22 01:58:51', 1),
(42, 35, NULL, 1, 3, '2022-07-12', '18:18', 'cod', '', 349.00, 10.00, 359.00, 7, '22-07-2022 02:01:39', '27-07-2022 06:05:02', NULL, NULL, NULL, '27-07-2022 06:05:09', '27-07-2022 06:06:05', '3852580141658984765.pdf', '2022-07-22 02:01:39', '2022-07-27 18:06:05', 1),
(43, 35, NULL, 1, 59, '2022-07-26', '18:34', 'cod', '', 199.00, 10.00, 209.00, 3, '26-07-2022 02:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 02:05:00', '2022-07-26 02:05:00', 1),
(44, 35, NULL, 1, 60, '2022-07-28', '15:8', 'cod', '', 698.00, 10.00, 708.00, 2, '27-07-2022 10:41:21', '11-01-2023 10:31:57', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-27 22:41:21', '2023-01-11 22:31:57', 1),
(45, 36, NULL, 1, 91, '2023-01-02', '16:10', 'cod', '', 698.00, 10.00, 708.00, 1, '01-01-2023 11:41:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-01 23:41:46', '2023-01-01 23:41:46', 1),
(46, 36, NULL, 1, 91, '2023-01-02', '16:12', 'cod', '', 199.00, 10.00, 209.00, 1, '01-01-2023 11:42:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-01 23:42:20', '2023-01-01 23:42:20', 1),
(47, 36, NULL, 1, 91, '2023-01-02', '16:47', 'cod', '', 398.00, 10.00, 408.00, 1, '02-01-2023 12:17:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-02 00:17:16', '2023-01-02 00:17:16', 1),
(48, 36, NULL, 1, 91, '2023-01-02', '17:27', 'cod', '', 199.00, 10.00, 209.00, 1, '02-01-2023 12:58:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-02 00:58:10', '2023-01-02 00:58:10', 1),
(49, 46, NULL, 1, 95, '2023-01-04', '16:30', 'cod', '', 349.00, 10.00, 359.00, 1, '04-01-2023 12:10:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 00:10:29', '2023-01-04 00:10:29', 1),
(50, 46, NULL, 1, 95, '2023-01-04', '16:30', 'cod', '', 349.00, 10.00, 359.00, 1, '04-01-2023 12:11:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 00:11:12', '2023-01-04 00:11:12', 1),
(51, 46, NULL, 1, 95, '2023-01-04', '16:56', 'cod', '', 299.00, 10.00, 309.00, 1, '04-01-2023 12:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 00:27:14', '2023-01-04 00:27:14', 1),
(52, 46, NULL, 1, 1, '2023-01-04', '17:9', 'cod', '', 199.00, 10.00, 209.00, 2, '04-01-2023 12:39:54', '04-01-2023 12:44:09', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04 00:39:54', '2023-01-04 00:44:09', 1),
(53, 46, NULL, 1, 95, '2023-01-12', '12:5', 'cod', '', 897.00, 10.00, 907.00, 1, '11-01-2023 07:36:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 19:36:25', '2023-01-11 19:36:25', 1),
(54, 46, NULL, 1, 95, '2023-01-12', '12:44', 'cod', '', 199.00, 10.00, 209.00, 1, '11-01-2023 08:14:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 20:14:57', '2023-01-11 20:14:57', 1),
(55, 46, NULL, 1, 95, '2023-01-12', '12:44', 'cod', '', 199.00, 10.00, 209.00, 1, '11-01-2023 08:15:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 20:15:47', '2023-01-11 20:15:47', 1),
(56, 46, NULL, 1, 95, '2023-01-12', '12:44', 'cod', '', 0.00, 10.00, 0.00, 1, '11-01-2023 08:16:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 20:16:16', '2023-01-11 20:16:16', 1),
(57, 46, NULL, 1, 95, '2023-01-12', '12:48', 'cod', '', 149.00, 10.00, 159.00, 1, '11-01-2023 08:20:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 20:20:24', '2023-01-11 20:20:24', 1),
(58, 46, NULL, 1, 95, '2023-01-12', '12:48', 'cod', '', 0.00, 10.00, 0.00, 1, '11-01-2023 08:21:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 20:21:06', '2023-01-11 20:21:06', 1),
(59, 46, NULL, 1, 95, '2023-01-12', '12:48', 'cod', '', 0.00, 10.00, 0.00, 1, '11-01-2023 08:21:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 20:21:37', '2023-01-11 20:21:37', 1),
(60, 46, NULL, 1, 95, '2023-01-12', '12:48', 'cod', '', 0.00, 10.00, 0.00, 7, '11-01-2023 08:21:50', '15-02-2023 11:32:45', NULL, NULL, NULL, '15-02-2023 11:32:47', '15-02-2023 11:32:54', '2605474881676543574.png', '2023-01-11 20:21:50', '2023-02-15 23:32:54', 1),
(61, 46, NULL, 1, 95, '2023-01-12', '12:48', 'cod', '', 0.00, 10.00, 0.00, 1, '11-01-2023 08:22:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 20:22:18', '2023-01-11 20:22:18', 1),
(62, 46, NULL, 1, 1, '2023-01-12', '12:48', 'cod', '', 0.00, 10.00, 0.00, 7, '11-01-2023 08:22:37', '11-01-2023 11:55:31', NULL, NULL, NULL, '11-01-2023 11:55:41', '11-01-2023 11:55:49', '11007294671673520949.pdf', '2023-01-11 20:22:37', '2023-01-11 23:55:49', 1),
(63, 46, NULL, 1, 1, '2023-01-12', '12:53', 'cod', '', 299.00, 10.00, 309.00, 7, '11-01-2023 08:23:24', '11-01-2023 11:45:21', NULL, NULL, NULL, '11-01-2023 11:45:28', '11-01-2023 11:52:27', '20598333411673520747.pdf', '2023-01-11 20:23:24', '2023-01-11 23:52:27', 1),
(64, 46, NULL, 1, 1, '2023-01-11', '12:59', 'cod', '', 149.00, 10.00, 159.00, 7, '11-01-2023 08:29:14', '11-01-2023 10:34:09', NULL, NULL, NULL, '11-01-2023 10:34:17', '11-01-2023 10:34:48', '18031066061673516088.jpg', '2023-01-11 20:29:14', '2023-01-11 22:34:48', 1),
(65, 46, NULL, 1, 95, '2023-01-12', '14:27', 'cod', '', 199.00, 10.00, 209.00, 1, '11-01-2023 09:57:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 21:57:16', '2023-01-11 21:57:16', 1),
(66, 46, NULL, 1, 95, '2023-01-12', '16:14', 'cod', '', 149.00, 10.00, 159.00, 1, '11-01-2023 11:47:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 23:47:29', '2023-01-11 23:47:29', 1),
(67, 46, NULL, 1, 96, '2023-01-13', '9:41', 'cod', '', 300.00, 10.00, 310.00, 1, '12-01-2023 05:13:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 17:13:37', '2023-01-12 17:13:37', 1),
(68, 3, NULL, 1, 1, '2021-10-15', '18:00', 'cod', '', 349.00, 34.90, 383.90, 1, '08-02-2023 05:50:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 17:50:22', '2023-02-08 17:50:22', 1),
(76, 44, NULL, 1, 92, '2023-02-09', '10:53', 'cod', '', 349.00, 10.00, 359.00, 1, '08-02-2023 06:24:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 18:24:03', '2023-02-08 18:24:03', 1),
(77, 44, NULL, 1, 92, '2023-02-09', '11:8', 'cod', '', 698.00, 10.00, 708.00, 1, '08-02-2023 06:38:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 18:38:15', '2023-02-08 18:38:15', 1),
(78, 44, NULL, 1, 92, '2023-02-09', '10:16', 'cod', '', 897.00, 10.00, 907.00, 1, '08-02-2023 06:41:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 18:41:23', '2023-02-08 18:41:23', 1),
(79, 44, NULL, 1, 92, '2023-02-09', '10:16', 'cod', '', 897.00, 10.00, 907.00, 1, '08-02-2023 06:45:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 18:45:35', '2023-02-08 18:45:35', 1),
(80, 44, NULL, 1, 92, '2023-02-09', '11:18', 'cod', '', 349.00, 10.00, 359.00, 1, '08-02-2023 06:48:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 18:48:34', '2023-02-08 18:48:34', 1),
(81, 44, NULL, 1, 92, '2023-02-09', '11:21', 'cod', '', 349.00, 10.00, 359.00, 1, '08-02-2023 06:52:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 18:52:11', '2023-02-08 18:52:11', 1),
(82, 44, NULL, 1, 92, '2023-02-09', '11:23', 'cod', '', 349.00, 10.00, 359.00, 1, '08-02-2023 06:54:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 18:54:03', '2023-02-08 18:54:03', 1),
(83, 44, NULL, 1, 92, '2023-02-09', '11:38', 'cod', '', 349.00, 10.00, 359.00, 1, '08-02-2023 07:08:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 19:08:56', '2023-02-08 19:08:56', 1),
(84, 44, NULL, 1, 92, '2023-02-09', '12:17', 'cod', '', 349.00, 10.00, 359.00, 1, '08-02-2023 07:47:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-08 19:47:40', '2023-02-08 19:47:40', 1),
(85, 36, NULL, 1, 94, '2023-02-15', '18:13', 'cod', '', 578.00, 10.00, 588.00, 1, '15-02-2023 01:43:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 01:43:53', '2023-02-15 01:43:53', 1),
(86, 4, NULL, 1, 99, '2023-02-15', '18:27', 'cod', '', 199.00, 10.00, 209.00, 1, '15-02-2023 01:59:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 01:59:46', '2023-02-15 01:59:46', 1),
(87, 4, NULL, 1, 99, '2023-02-16', '14:15', 'cod', '', 949.00, 10.00, 959.00, 1, '15-02-2023 09:45:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 21:45:30', '2023-02-15 21:45:30', 1),
(88, 4, NULL, 1, 101, '2023-02-16', '15:31', 'cod', '', 888.00, 10.00, 898.00, 1, '15-02-2023 11:03:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 23:03:04', '2023-02-15 23:03:04', 1),
(89, 4, NULL, 1, 105, '2023-02-16', '15:54', 'cod', '', 888.00, 10.00, 898.00, 7, '15-02-2023 11:31:12', '15-02-2023 11:31:59', NULL, NULL, NULL, '15-02-2023 11:32:15', '15-02-2023 11:35:50', '6426119261676543750.pdf', '2023-02-15 23:31:12', '2023-02-15 23:35:50', 1),
(90, 4, NULL, 1, 105, '2023-02-28', '18:7', 'cod', '', 860.00, 10.00, 870.00, 5, '28-02-2023 01:37:38', '28-02-2023 01:45:45', NULL, NULL, NULL, '28-02-2023 01:46:01', NULL, NULL, '2023-02-28 01:37:38', '2023-02-28 01:46:01', 1),
(91, 4, NULL, 1, 103, '2023-02-28', '18:22', 'cod', '', 878.00, 10.00, 888.00, 5, '28-02-2023 01:52:13', '28-02-2023 01:52:36', NULL, NULL, NULL, '28-02-2023 01:54:08', NULL, NULL, '2023-02-28 01:52:13', '2023-02-28 01:54:08', 1),
(92, 4, NULL, 1, 105, '2023-03-01', '9:38', 'cod', '', 439.00, 10.00, 449.00, 7, '28-02-2023 05:08:18', '28-02-2023 05:15:06', NULL, NULL, NULL, '28-02-2023 05:15:38', '28-02-2023 05:18:54', '2023198411677644334.png', '2023-02-28 17:08:18', '2023-02-28 17:18:54', 1),
(93, 4, NULL, 1, 102, '2023-03-01', '9:41', 'cod', '', 639.00, 10.00, 649.00, 2, '28-02-2023 05:12:12', '28-02-2023 05:13:40', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28 17:12:12', '2023-02-28 17:13:40', 1),
(94, 4, NULL, 1, 105, '2023-03-01', '10:20', 'cod', '', 709.00, 10.00, 719.00, 1, '28-02-2023 05:50:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28 17:50:54', '2023-02-28 17:50:54', 1),
(104, 3, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:09:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:09:10', '2023-03-05 18:09:10', 1),
(105, 3, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:09:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:09:27', '2023-03-05 18:09:27', 1),
(106, 3, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:11:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:11:00', '2023-03-05 18:11:00', 1),
(107, 3, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:11:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:11:22', '2023-03-05 18:11:22', 1),
(108, 3, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:11:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:11:33', '2023-03-05 18:11:33', 1),
(109, 3, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:11:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:11:55', '2023-03-05 18:11:55', 1),
(110, 3, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:12:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:12:07', '2023-03-05 18:12:07', 1),
(111, 9, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:12:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:12:51', '2023-03-05 18:12:51', 1),
(112, 9, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:13:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:13:27', '2023-03-05 18:13:27', 1),
(113, 4, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:16:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:16:09', '2023-03-05 18:16:09', 1),
(114, 4, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 1, '05-03-2023 06:16:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:16:35', '2023-03-05 18:16:35', 1),
(115, 4, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 2, '05-03-2023 06:17:59', '05-03-2023 10:01:58', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:17:59', '2023-03-05 22:01:58', 1),
(116, 4, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 5, '05-03-2023 06:19:24', '05-03-2023 09:57:50', NULL, NULL, NULL, '05-03-2023 10:00:13', NULL, NULL, '2023-03-05 18:19:24', '2023-03-05 22:00:13', 1),
(117, 4, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 2, '05-03-2023 06:27:04', '05-03-2023 09:55:49', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:27:04', '2023-03-05 21:55:49', 1),
(118, 4, NULL, 1, 1, '2023-03-06', '10:24', 'cod', '', 349.00, 34.90, 383.90, 2, '05-03-2023 06:30:30', '05-03-2023 09:54:15', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:30:30', '2023-03-05 21:54:15', 1),
(119, 4, NULL, 1, 105, '2023-03-06', '11:4', 'cod', '', 280.00, 10.00, 290.00, 2, '05-03-2023 06:34:30', '05-03-2023 08:30:20', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-05 18:34:30', '2023-03-05 20:30:20', 1),
(120, 4, NULL, 1, 105, '2023-03-06', '11:10', 'cod', '', 299.00, 10.00, 309.00, 5, '05-03-2023 06:40:37', '05-03-2023 08:30:09', NULL, NULL, NULL, '05-03-2023 10:12:02', NULL, NULL, '2023-03-05 18:40:37', '2023-03-05 22:12:02', 1),
(121, 4, NULL, 1, 105, '2023-03-06', '11:10', 'cod', '', 299.00, 10.00, 309.00, 3, '05-03-2023 06:41:01', NULL, '05-03-2023 08:28:58', 'swdwd', NULL, NULL, NULL, NULL, '2023-03-05 18:41:01', '2023-03-05 20:28:58', 1),
(122, 4, NULL, 1, 105, '2023-03-06', '11:19', 'cod', '', 398.00, 10.00, 408.00, 7, '05-03-2023 06:49:28', '05-03-2023 08:27:51', NULL, NULL, NULL, '05-03-2023 09:52:59', '05-03-2023 09:53:08', '17998837381678092788.jpg', '2023-03-05 18:49:28', '2023-03-05 21:53:08', 1),
(123, 4, NULL, 1, 105, '2023-03-06', '11:24', 'cod', '', 230.00, 10.00, 240.00, 7, '05-03-2023 06:54:33', '05-03-2023 08:26:47', NULL, NULL, NULL, '05-03-2023 09:54:22', '05-03-2023 10:12:21', '2066966061678093941.png', '2023-03-05 18:54:33', '2023-03-05 22:12:21', 1),
(124, 4, NULL, 1, 105, '2023-03-06', '11:26', 'cod', '', 499.00, 10.00, 509.00, 7, '05-03-2023 06:56:49', '05-03-2023 08:26:34', NULL, NULL, NULL, '05-03-2023 09:48:37', '05-03-2023 09:52:41', '17807552621678092761.png', '2023-03-05 18:56:49', '2023-03-05 21:52:41', 1),
(125, 50, NULL, 1, 106, '2023-03-06', '11:35', 'cod', '', 399.00, 10.00, 409.00, 7, '05-03-2023 07:06:12', '05-03-2023 08:13:06', NULL, NULL, NULL, '05-03-2023 09:46:24', '05-03-2023 10:08:43', '17145037621678093723.sql', '2023-03-05 19:06:12', '2023-03-05 22:08:43', 1),
(126, 3, NULL, 1, NULL, '2023-03-07', '11:42', 'braintree', '44jzf4as', 698.00, 69.80, 767.80, 1, '06-03-2023 06:11:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 18:11:32', '2023-03-06 18:11:32', 1),
(127, 5, NULL, 1, 107, '2023-03-07', '13:18', 'braintree', 'baa34yjs', 1799.00, 179.90, 1978.90, 1, '06-03-2023 07:47:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 19:47:56', '2023-03-06 19:47:56', 1),
(128, 6, NULL, 1, 108, '2023-03-07', '13:47', 'braintree', '5a9a7ccf', 1799.00, 179.90, 1978.90, 1, '06-03-2023 08:16:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 20:16:36', '2023-03-06 20:16:36', 1),
(129, 4, NULL, 1, 102, '2023-03-20', '12:23', 'cod', '', 798.00, 10.00, 808.00, 1, '19-03-2023 07:53:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 19:53:45', '2023-03-19 19:53:45', 1),
(130, 4, NULL, 1, 102, '2023-03-20', '12:27', 'cod', '', 798.00, 10.00, 808.00, 1, '19-03-2023 07:57:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 19:57:48', '2023-03-19 19:57:48', 1),
(131, 51, NULL, 1, 109, '2023-03-20', '12:43', 'cod', '', 399.00, 10.00, 409.00, 1, '19-03-2023 08:14:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 20:14:27', '2023-03-19 20:14:27', 1),
(132, 4, NULL, 1, 104, '2023-03-20', '12:46', 'cod', '', 798.00, 10.00, 808.00, 1, '19-03-2023 08:16:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 20:16:33', '2023-03-19 20:16:33', 1),
(133, 4, NULL, 1, 105, '2023-03-20', '12:55', 'cod', '', 1197.00, 10.00, 1207.00, 1, '19-03-2023 08:26:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 20:26:00', '2023-03-19 20:26:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_data`
--

CREATE TABLE `orders_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `item_name` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` bigint(20) DEFAULT NULL,
  `mrp` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_data`
--

INSERT INTO `orders_data` (`id`, `order_id`, `member_id`, `item_id`, `type`, `item_name`, `parameter`, `mrp`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 3, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-11 07:00:41', '2021-10-11 07:00:41'),
(2, 2, 2, 1, 3, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-11 07:14:39', '2021-10-11 07:14:39'),
(3, 3, 1, 1, 3, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-15 18:17:28', '2021-10-15 18:17:28'),
(4, 3, 2, 1, 3, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-15 18:17:28', '2021-10-15 18:17:28'),
(5, 4, 1, 1, NULL, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-15 18:18:54', '2021-10-15 18:18:54'),
(6, 4, 2, 1, NULL, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-15 18:18:54', '2021-10-15 18:18:54'),
(7, 5, 1, 1, NULL, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-15 18:19:42', '2021-10-15 18:19:42'),
(8, 5, 2, 1, NULL, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-15 18:19:42', '2021-10-15 18:19:42'),
(9, 6, 2, 1, NULL, 'Lipid-profile', 4, 800.00, 349.00, '2021-10-15 18:47:45', '2021-10-15 18:47:45'),
(10, 8, 2, 6, NULL, 'Kidney Function Test', 2, 1000.00, 699.00, '2021-10-17 16:05:03', '2021-10-17 16:05:03'),
(11, 9, 1, 6, NULL, 'Kidney Function Test', 2, 1000.00, 699.00, '2021-10-18 18:01:29', '2021-10-18 18:01:29'),
(12, 10, 1, 13, NULL, 'Thyroid Profile-Free (FT3, FT4 &amp; TSH)', 3, 1320.00, 880.00, '2021-11-10 18:23:13', '2021-11-10 18:23:13'),
(13, 11, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-17 17:03:52', '2022-01-17 17:03:52'),
(14, 11, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-17 17:03:52', '2022-01-17 17:03:52'),
(15, 12, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-17 17:04:10', '2022-01-17 17:04:10'),
(16, 12, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-17 17:04:10', '2022-01-17 17:04:10'),
(17, 17, NULL, 1, 3, 'Lipid-profile', 4, 800.00, 349.00, '2022-01-19 17:40:14', '2022-01-19 17:40:14'),
(18, 17, NULL, 2, 3, 'Liver Function Test', 4, 800.00, 349.00, '2022-01-19 17:40:14', '2022-01-19 17:40:14'),
(19, 17, NULL, 2, 3, 'Liver Function Test', 4, 800.00, 349.00, '2022-01-19 17:40:14', '2022-01-19 17:40:14'),
(20, 18, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-30 20:01:17', '2022-01-30 20:01:17'),
(21, 18, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-30 20:01:17', '2022-01-30 20:01:17'),
(22, 21, 17, 1, 2, 'Cholesterol-Total', 0, 300.00, 300.00, '2022-01-31 00:28:27', '2022-01-31 00:28:27'),
(23, 21, 18, 1, 2, 'Cholesterol-Total', 0, 300.00, 300.00, '2022-01-31 00:28:27', '2022-01-31 00:28:27'),
(24, 22, 17, 1, 2, 'Cholesterol-Total', 0, 300.00, 300.00, '2022-01-31 00:29:57', '2022-01-31 00:29:57'),
(25, 22, 18, 1, 2, 'Cholesterol-Total', 0, 300.00, 300.00, '2022-01-31 00:29:57', '2022-01-31 00:29:57'),
(26, 23, 17, 1, 2, 'Cholesterol-Total', 0, 300.00, 300.00, '2022-01-31 00:30:20', '2022-01-31 00:30:20'),
(27, 23, 18, 1, 2, 'Cholesterol-Total', 0, 300.00, 300.00, '2022-01-31 00:30:20', '2022-01-31 00:30:20'),
(28, 24, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:31:53', '2022-01-31 00:31:53'),
(29, 24, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:31:53', '2022-01-31 00:31:53'),
(30, 25, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:36:12', '2022-01-31 00:36:12'),
(31, 25, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:36:12', '2022-01-31 00:36:12'),
(32, 26, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:36:48', '2022-01-31 00:36:48'),
(33, 26, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:36:48', '2022-01-31 00:36:48'),
(34, 27, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:37:58', '2022-01-31 00:37:58'),
(35, 27, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:37:58', '2022-01-31 00:37:58'),
(36, 28, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:38:19', '2022-01-31 00:38:19'),
(37, 28, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-01-31 00:38:19', '2022-01-31 00:38:19'),
(38, 29, 17, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 00:41:22', '2022-01-31 00:41:22'),
(39, 29, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 00:41:22', '2022-01-31 00:41:22'),
(40, 30, 16, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 01:16:42', '2022-01-31 01:16:42'),
(41, 30, 17, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 01:16:42', '2022-01-31 01:16:42'),
(42, 30, 17, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 01:16:42', '2022-01-31 01:16:42'),
(43, 30, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 01:16:42', '2022-01-31 01:16:42'),
(44, 30, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 01:16:42', '2022-01-31 01:16:42'),
(45, 31, 17, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 17:43:09', '2022-01-31 17:43:09'),
(46, 31, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 17:43:09', '2022-01-31 17:43:09'),
(47, 32, 16, 9, 1, 'Iron Studies', 1, 885.00, 885.00, '2022-01-31 17:53:15', '2022-01-31 17:53:15'),
(48, 32, 16, 9, 1, 'Iron Studies', 1, 885.00, 885.00, '2022-01-31 17:53:15', '2022-01-31 17:53:15'),
(49, 32, 16, 9, 1, 'Iron Studies', 1, 885.00, 885.00, '2022-01-31 17:53:15', '2022-01-31 17:53:15'),
(50, 32, 17, 9, 1, 'Iron Studies', 1, 885.00, 885.00, '2022-01-31 17:53:15', '2022-01-31 17:53:15'),
(51, 32, 18, 9, 1, 'Iron Studies', 1, 885.00, 885.00, '2022-01-31 17:53:15', '2022-01-31 17:53:15'),
(52, 32, 18, 9, 1, 'Iron Studies', 1, 885.00, 885.00, '2022-01-31 17:53:15', '2022-01-31 17:53:15'),
(53, 33, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 18:42:39', '2022-01-31 18:42:39'),
(54, 34, 17, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 19:38:05', '2022-01-31 19:38:05'),
(55, 34, 18, 14, 1, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2022-01-31 19:38:05', '2022-01-31 19:38:05'),
(56, 34, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 19:38:05', '2022-01-31 19:38:05'),
(57, 34, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-01-31 19:38:05', '2022-01-31 19:38:05'),
(58, 35, 18, 1, 1, 'Complete Hemogram', 6, 800.00, 800.00, '2022-02-01 17:50:14', '2022-02-01 17:50:14'),
(59, 36, 18, 5, 2, 'Calcium Total', 3, 250.00, 250.00, '2022-02-01 19:31:52', '2022-02-01 19:31:52'),
(60, 37, 1, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-07-22 01:15:59', '2022-07-22 01:15:59'),
(61, 37, 2, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-07-22 01:15:59', '2022-07-22 01:15:59'),
(62, 38, 3, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-07-22 01:51:57', '2022-07-22 01:51:57'),
(63, 38, 3, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:51:57', '2022-07-22 01:51:57'),
(64, 38, 4, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:51:57', '2022-07-22 01:51:57'),
(65, 39, 3, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-07-22 01:52:10', '2022-07-22 01:52:10'),
(66, 39, 3, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:52:10', '2022-07-22 01:52:10'),
(67, 39, 4, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:52:10', '2022-07-22 01:52:10'),
(68, 40, 3, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:57:42', '2022-07-22 01:57:42'),
(69, 40, 3, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:57:42', '2022-07-22 01:57:42'),
(70, 41, 3, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:58:51', '2022-07-22 01:58:51'),
(71, 41, 3, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 01:58:51', '2022-07-22 01:58:51'),
(72, 42, 3, 1, 1, 'Complete Hemogram', 4, 800.00, 800.00, '2022-07-22 02:01:39', '2022-07-22 02:01:39'),
(73, 43, 30, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2022-07-26 02:05:00', '2022-07-26 02:05:00'),
(74, 44, 30, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-07-27 22:41:21', '2022-07-27 22:41:21'),
(75, 44, 31, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2022-07-27 22:41:21', '2022-07-27 22:41:21'),
(76, 45, 32, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-01-01 23:41:46', '2023-01-01 23:41:46'),
(77, 45, 32, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-01-01 23:41:46', '2023-01-01 23:41:46'),
(78, 46, 32, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-01 23:42:20', '2023-01-01 23:42:20'),
(79, 47, 32, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-02 00:17:16', '2023-01-02 00:17:16'),
(80, 47, 33, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-02 00:17:16', '2023-01-02 00:17:16'),
(81, 48, 33, 14, 2, 'PCV Haematocrit', 1, 300.00, 300.00, '2023-01-02 00:58:10', '2023-01-02 00:58:10'),
(82, 49, 36, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-01-04 00:10:29', '2023-01-04 00:10:29'),
(83, 50, 36, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-01-04 00:11:12', '2023-01-04 00:11:12'),
(84, 51, 36, 28, 2, 'CRP (C Reactive Protein) Quantitative, Serum', 1, 750.00, 750.00, '2023-01-04 00:27:14', '2023-01-04 00:27:14'),
(85, 52, 36, 7, 2, 'Albumin', 1, 300.00, 300.00, '2023-01-04 00:39:54', '2023-01-04 00:39:54'),
(86, 53, 36, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-11 19:36:25', '2023-01-11 19:36:25'),
(87, 53, 36, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-01-11 19:36:25', '2023-01-11 19:36:25'),
(88, 53, 37, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-01-11 19:36:25', '2023-01-11 19:36:25'),
(89, 54, 37, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-11 20:14:57', '2023-01-11 20:14:57'),
(90, 55, 37, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-11 20:15:47', '2023-01-11 20:15:47'),
(91, 56, 37, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-11 20:16:16', '2023-01-11 20:16:16'),
(92, 57, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 20:20:24', '2023-01-11 20:20:24'),
(93, 58, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 20:21:06', '2023-01-11 20:21:06'),
(94, 59, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 20:21:37', '2023-01-11 20:21:37'),
(95, 60, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 20:21:50', '2023-01-11 20:21:50'),
(96, 61, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 20:22:18', '2023-01-11 20:22:18'),
(97, 62, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 20:22:37', '2023-01-11 20:22:37'),
(98, 63, 36, 29, 2, 'Homocysteine', 1, 2700.00, 2700.00, '2023-01-11 20:23:24', '2023-01-11 20:23:24'),
(99, 64, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 20:29:14', '2023-01-11 20:29:14'),
(100, 65, 37, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-01-11 21:57:16', '2023-01-11 21:57:16'),
(101, 66, 37, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-01-11 23:47:29', '2023-01-11 23:47:29'),
(102, 67, 38, 15, 2, 'Iron, Serum in  Gurgaon', 1, 450.00, 450.00, '2023-01-12 17:13:37', '2023-01-12 17:13:37'),
(103, 68, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 17:50:22', '2023-02-08 17:50:22'),
(104, 68, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 17:50:22', '2023-02-08 17:50:22'),
(105, 68, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 17:50:22', '2023-02-08 17:50:22'),
(106, 69, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 17:52:22', '2023-02-08 17:52:22'),
(107, 69, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 17:52:22', '2023-02-08 17:52:22'),
(108, 69, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 17:52:22', '2023-02-08 17:52:22'),
(109, 70, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 17:54:08', '2023-02-08 17:54:08'),
(110, 70, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 17:54:08', '2023-02-08 17:54:08'),
(111, 70, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 17:54:08', '2023-02-08 17:54:08'),
(112, 71, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:01:48', '2023-02-08 18:01:48'),
(113, 72, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 18:19:04', '2023-02-08 18:19:04'),
(114, 72, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:19:04', '2023-02-08 18:19:04'),
(115, 72, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:19:04', '2023-02-08 18:19:04'),
(116, 73, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 18:20:00', '2023-02-08 18:20:00'),
(117, 73, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:20:00', '2023-02-08 18:20:00'),
(118, 73, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:20:00', '2023-02-08 18:20:00'),
(119, 74, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:21:11', '2023-02-08 18:21:11'),
(120, 75, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 18:22:49', '2023-02-08 18:22:49'),
(121, 75, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:22:49', '2023-02-08 18:22:49'),
(122, 75, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:22:49', '2023-02-08 18:22:49'),
(123, 76, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:24:03', '2023-02-08 18:24:03'),
(124, 77, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:38:15', '2023-02-08 18:38:15'),
(125, 77, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:38:15', '2023-02-08 18:38:15'),
(126, 78, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 18:41:23', '2023-02-08 18:41:23'),
(127, 78, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:41:23', '2023-02-08 18:41:23'),
(128, 78, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:41:23', '2023-02-08 18:41:23'),
(129, 79, 34, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-08 18:45:35', '2023-02-08 18:45:35'),
(130, 79, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:45:35', '2023-02-08 18:45:35'),
(131, 79, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:45:35', '2023-02-08 18:45:35'),
(132, 80, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:48:34', '2023-02-08 18:48:34'),
(133, 81, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:52:11', '2023-02-08 18:52:11'),
(134, 82, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 18:54:03', '2023-02-08 18:54:03'),
(135, 83, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 19:08:56', '2023-02-08 19:08:56'),
(136, 84, 34, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-08 19:47:40', '2023-02-08 19:47:40'),
(137, 85, 40, 2, 2, 'HDL Cholesterol Direct', 1, 420.00, 420.00, '2023-02-15 01:43:53', '2023-02-15 01:43:53'),
(138, 85, 40, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-02-15 01:43:53', '2023-02-15 01:43:53'),
(139, 85, 41, 33, 2, 'T3, Free Free Tri-Iodothyronine', 1, 585.00, 585.00, '2023-02-15 01:43:53', '2023-02-15 01:43:53'),
(140, 86, 44, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-15 01:59:46', '2023-02-15 01:59:46'),
(141, 87, 44, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-15 21:45:30', '2023-02-15 21:45:30'),
(142, 87, 45, 15, 2, 'Iron, Serum in  Gurgaon', 1, 450.00, 450.00, '2023-02-15 21:45:30', '2023-02-15 21:45:30'),
(143, 87, 46, 15, 2, 'Iron, Serum in  Gurgaon', 1, 450.00, 450.00, '2023-02-15 21:45:30', '2023-02-15 21:45:30'),
(144, 88, 44, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-02-15 23:03:04', '2023-02-15 23:03:04'),
(145, 88, 45, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-02-15 23:03:04', '2023-02-15 23:03:04'),
(146, 88, 47, 4, 2, 'Triglycerides, Serum', 1, 435.00, 435.00, '2023-02-15 23:03:04', '2023-02-15 23:03:04'),
(147, 89, 44, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-02-15 23:31:12', '2023-02-15 23:31:12'),
(148, 89, 46, 4, 2, 'Triglycerides, Serum', 1, 435.00, 435.00, '2023-02-15 23:31:12', '2023-02-15 23:31:12'),
(149, 89, 46, 9, 2, 'Bilirubin Direct, Serum', 1, 300.00, 300.00, '2023-02-15 23:31:12', '2023-02-15 23:31:12'),
(150, 90, 45, 4, 2, 'Triglycerides, Serum', 1, 435.00, 435.00, '2023-02-28 01:37:38', '2023-02-28 01:37:38'),
(151, 90, 46, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-02-28 01:37:38', '2023-02-28 01:37:38'),
(152, 90, 46, 4, 2, 'Triglycerides, Serum', 1, 435.00, 435.00, '2023-02-28 01:37:38', '2023-02-28 01:37:38'),
(153, 91, 44, 11, 2, 'Absolute Eosinophil Count', 1, 270.00, 270.00, '2023-02-28 01:52:13', '2023-02-28 01:52:13'),
(154, 91, 45, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-28 01:52:13', '2023-02-28 01:52:13'),
(155, 91, 46, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-28 01:52:13', '2023-02-28 01:52:13'),
(156, 92, 44, 32, 2, 'Urobilinogen', 1, 225.00, 225.00, '2023-02-28 17:08:18', '2023-02-28 17:08:18'),
(157, 92, 45, 4, 2, 'Triglycerides, Serum', 1, 435.00, 435.00, '2023-02-28 17:08:18', '2023-02-28 17:08:18'),
(158, 93, 44, 4, 2, 'Triglycerides, Serum', 1, 435.00, 435.00, '2023-02-28 17:12:12', '2023-02-28 17:12:12'),
(159, 93, 47, 1, 3, 'Lipid-profile', 4, 800.00, 800.00, '2023-02-28 17:12:12', '2023-02-28 17:12:12'),
(160, 94, 45, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-02-28 17:50:54', '2023-02-28 17:50:54'),
(161, 94, 45, 18, 2, 'T3, Total Tri Iodothyronine in  Gurgaon', 1, 345.00, 345.00, '2023-02-28 17:50:54', '2023-02-28 17:50:54'),
(162, 94, 46, 16, 2, 'Folic Acid in  Gurgaon', 1, 900.00, 900.00, '2023-02-28 17:50:54', '2023-02-28 17:50:54'),
(163, 104, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:09:10', '2023-03-05 18:09:10'),
(164, 104, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:09:10', '2023-03-05 18:09:10'),
(165, 104, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:09:10', '2023-03-05 18:09:10'),
(166, 105, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:09:27', '2023-03-05 18:09:27'),
(167, 105, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:09:27', '2023-03-05 18:09:27'),
(168, 105, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:09:27', '2023-03-05 18:09:27'),
(169, 106, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:00', '2023-03-05 18:11:00'),
(170, 106, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:11:00', '2023-03-05 18:11:00'),
(171, 106, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:00', '2023-03-05 18:11:00'),
(172, 107, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:22', '2023-03-05 18:11:22'),
(173, 107, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:11:22', '2023-03-05 18:11:22'),
(174, 107, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:22', '2023-03-05 18:11:22'),
(175, 108, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:33', '2023-03-05 18:11:33'),
(176, 108, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:11:33', '2023-03-05 18:11:33'),
(177, 108, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:33', '2023-03-05 18:11:33'),
(178, 109, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:55', '2023-03-05 18:11:55'),
(179, 109, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:11:55', '2023-03-05 18:11:55'),
(180, 109, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:11:55', '2023-03-05 18:11:55'),
(181, 110, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:12:07', '2023-03-05 18:12:07'),
(182, 110, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:12:07', '2023-03-05 18:12:07'),
(183, 110, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:12:07', '2023-03-05 18:12:07'),
(184, 111, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:12:51', '2023-03-05 18:12:51'),
(185, 111, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:12:51', '2023-03-05 18:12:51'),
(186, 111, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:12:51', '2023-03-05 18:12:51'),
(187, 112, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:13:27', '2023-03-05 18:13:27'),
(188, 112, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:13:27', '2023-03-05 18:13:27'),
(189, 112, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:13:27', '2023-03-05 18:13:27'),
(190, 113, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:16:09', '2023-03-05 18:16:09'),
(191, 113, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:16:09', '2023-03-05 18:16:09'),
(192, 113, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:16:09', '2023-03-05 18:16:09'),
(193, 114, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:16:35', '2023-03-05 18:16:35'),
(194, 114, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:16:35', '2023-03-05 18:16:35'),
(195, 114, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:16:35', '2023-03-05 18:16:35'),
(196, 115, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:17:59', '2023-03-05 18:17:59'),
(197, 115, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:17:59', '2023-03-05 18:17:59'),
(198, 115, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:17:59', '2023-03-05 18:17:59'),
(199, 116, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:19:24', '2023-03-05 18:19:24'),
(200, 116, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:19:24', '2023-03-05 18:19:24'),
(201, 116, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:19:24', '2023-03-05 18:19:24'),
(202, 117, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:27:04', '2023-03-05 18:27:04'),
(203, 117, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:27:04', '2023-03-05 18:27:04'),
(204, 117, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:27:04', '2023-03-05 18:27:04'),
(205, 118, 45, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:30:30', '2023-03-05 18:30:30'),
(206, 118, 47, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:30:30', '2023-03-05 18:30:30'),
(207, 118, 47, 1, 2, 'Cholesterol-Total', 1, 300.00, 300.00, '2023-03-05 18:30:30', '2023-03-05 18:30:30'),
(208, 119, 45, 2, 2, 'HDL Cholesterol Direct test', 1, 420.00, 420.00, '2023-03-05 18:34:30', '2023-03-05 18:34:30'),
(209, 120, 45, 29, 2, 'Homocysteine', 1, 2700.00, 2700.00, '2023-03-05 18:40:37', '2023-03-05 18:40:37'),
(210, 121, 45, 29, 2, 'Homocysteine', 1, 2700.00, 2700.00, '2023-03-05 18:41:01', '2023-03-05 18:41:01'),
(211, 122, 44, 16, 2, 'Folic Acid in  Gurgaon', 1, 900.00, 900.00, '2023-03-05 18:49:28', '2023-03-05 18:49:28'),
(212, 122, 45, 16, 2, 'Folic Acid in  Gurgaon', 1, 900.00, 900.00, '2023-03-05 18:49:28', '2023-03-05 18:49:28'),
(213, 123, 45, 18, 2, 'T3, Total Tri Iodothyronine in  Gurgaon', 1, 345.00, 345.00, '2023-03-05 18:54:33', '2023-03-05 18:54:33'),
(214, 124, 45, 4, 3, 'Iron Studies With Ferritin', 3, 1050.00, 1050.00, '2023-03-05 18:56:49', '2023-03-05 18:56:49'),
(215, 125, 50, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-05 19:06:12', '2023-03-05 19:06:12'),
(216, 126, NULL, 1, 3, 'Lipid-profile', 4, 800.00, 349.00, '2023-03-06 18:11:32', '2023-03-06 18:11:32'),
(217, 126, NULL, 3, 3, 'Complete Hemogram', 1, 800.00, 349.00, '2023-03-06 18:11:32', '2023-03-06 18:11:32'),
(218, 127, NULL, 5, 1, 'Basic Screening Package With Iron Studies And HbA1C', 17, 6780.00, 1799.00, '2023-03-06 19:47:56', '2023-03-06 19:47:56'),
(219, 128, NULL, 5, 1, 'Basic Screening Package With Iron Studies And HbA1C', 17, 6780.00, 1799.00, '2023-03-06 20:16:36', '2023-03-06 20:16:36'),
(220, 129, 44, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 19:53:45', '2023-03-19 19:53:45'),
(221, 129, 54, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 19:53:45', '2023-03-19 19:53:45'),
(222, 130, 46, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 19:57:48', '2023-03-19 19:57:48'),
(223, 130, 47, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 19:57:48', '2023-03-19 19:57:48'),
(224, 131, 55, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 20:14:27', '2023-03-19 20:14:27'),
(225, 132, 44, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 20:16:33', '2023-03-19 20:16:33'),
(226, 132, 46, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 20:16:33', '2023-03-19 20:16:33'),
(227, 133, 44, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 20:26:00', '2023-03-19 20:26:00'),
(228, 133, 46, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 20:26:00', '2023-03-19 20:26:00'),
(229, 133, 47, 5, 3, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 3, 800.00, 800.00, '2023-03-19 20:26:00', '2023-03-19 20:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `paramter_included` bigint(20) DEFAULT NULL,
  `sample_collection` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>free,2=>paid',
  `sample_collection_fee` double(8,2) DEFAULT NULL,
  `report_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasting_time` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `fast_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_recommended_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_recommended_for_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realted_package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_report` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `short_desc`, `category_id`, `description`, `mrp`, `price`, `paramter_included`, `sample_collection`, `sample_collection_fee`, `report_time`, `fasting_time`, `fast_time`, `test_recommended_for`, `test_recommended_for_age`, `realted_package`, `lab_report`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Complete Hemogram', 'CBC, Hemogram, Complete Blood Count| CBC', 2, '<p>Complete Hemogram is a group of parameters which is used to determine overall health and detect a wide range of disorders, including anaemia, infection, inflammation and leukemia(Blood cancer) and to monitor the effectiveness of its treatment.</p>\r\n\r\n<p>Timely screening can help you in avoiding illnesses and with Healthians Complete Hemogram you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Complete Hemogram available in Gurgaon has 24 parameters that give you a clear idea of your health. You can choose Complete Hemogram available in Gurgaon or other packages better suited for you to keep your health in check.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 800.00, 349.00, 24, '1', NULL, '24 Hours', '0', NULL, 'Male', '5-99 Years', NULL, 'pack_1.pdf', NULL, '2021-09-29 05:36:26', '2023-02-16 09:32:01'),
(2, 'Healthians Basic Health Checkup', 'Basic Checkup', 9, '<p>Every Doctor advices to have basic health checkup on regular basis for early identification of likely health risks so that preventative steps can be taken in advance. Our basic health test package includes liver function test, complete hemogram test,blood sugar &amp; calcium test. These tests will help ensure your good health.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Healthians Basic Health Checkup you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Healthians Basic Health Checkup available in Gurgaon has 39 parameters that give you a clear idea of your health. You can choose Healthians Basic Health Checkup available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 1630.00, 799.00, NULL, '1', NULL, '24 Hours', '1', NULL, 'Male,Female', '5-99 Years', NULL, 'pack_2.pdf', NULL, '2021-10-16 06:08:59', '2021-10-16 06:21:06'),
(3, 'Anaemia Package', 'This health test package is required to screen individuals suffering from easy fatigability', 10, '<p>This health test package is required to screen individuals suffering from easy fatigability, lack of concentration or weakness. These are common symptoms of anaemia caused either due to nutritional deficiency, malnutrition or ongoing blood loss from the body.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Anaemia Package you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Anaemia Package available in Gurgaon has 6 parameters that give you a clear idea of your health. You can choose Anaemia Package available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 250.00, 129.00, NULL, '1', NULL, '10 Hours', '1', NULL, 'Male,Female', '5-99 Years', NULL, 'pack_3.pdf', NULL, '2021-10-16 07:33:21', '2021-10-16 07:33:54'),
(4, 'Advance Diabetes Monitoring (Senior Female)', 'Book this diabetes check-up for females and determine your risk for diabetes at home.', 11, '<p>Fasting blood sugar readings reveal important information about a person&#39;s body&#39;s blood sugar management. Blood sugar levels tend to rise for approximately an hour after eating and then fall. High fasting blood sugar levels indicate insulin resistance or diabetes, whereas unusually low fasting blood sugar levels, may indicate the use of diabetic medicines. Diabetes is a condition in which the body&#39;s capacity to generate or respond to the hormone insulin is compromised. The pancreas of people with type 1 diabetes does not produce insulin.<br />\r\nThe Blood Glucose Fasting test in Gurgaon examines your blood sugar after an overnight fast. A fasting blood sugar level of 99 mg/dL or less is considered normal, whereas 100 to 125 mg/dL suggests prediabetes and 126 mg/dL indicates diabetes. Following a diabetes diagnosis, blood glucose testing may be required to assess how effectively your disease is being controlled. A high glucose level in a diabetic individual might indicate that their diabetes isn&#39;t being treated or managed properly.</p>', 6325.00, 2665.00, NULL, '1', NULL, '24 Hours', '1', '10  Hours', 'Female', '61-99 Years', NULL, 'pack_4.pdf', NULL, '2021-10-16 09:57:30', '2021-10-16 09:58:45'),
(5, 'Basic Screening Package With Iron Studies And HbA1C', 'This basic health checkup package includes Iron Studies and HbA1c along with major tests.', 1, '<p>This basic health checkup package includes Iron Studies and HbA1c along with major tests covered under basic screening. Individuals can book this health test at home to get a complete health checkup along with tests for anaemia and diabetes.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Basic Screening Package With Iron Studies And HbA1C you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Basic Screening Package With Iron Studies And HbA1C available in Gurgaon has 87 parameters that give you a clear idea of your health. You can choose Basic Screening Package With Iron Studies And HbA1C available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 6780.00, 1799.00, NULL, '1', NULL, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', NULL, 'pack_5.pdf', NULL, '2021-10-16 10:21:56', '2023-02-16 09:32:49'),
(6, 'Healthians Extended Heart Care Package', 'blood test for heart, blood test for heart risk, blood test for heart blockage, cardiac blood tests, cardiac lab tests, cardiac panel blood test, cardiac panel test, cardiac profile blood test, cardiac risk blood test | Heart', 13, '<p>The heart being the most important body organ demands the utmost care. Heart diseases are chronic and any complication can be fatal. With Heart care package, get 70 health tests. Some of the tests in this package are Lipid, Thyroid, Iron, Liver, CRP and various others that will help in tracking your heart health. Heart health test package comes with Free Doctors consultation so that you can get answers to all of your questions.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Healthians Extended Heart Care Package you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Healthians Extended Heart Care Package available in Gurgaon has 72 parameters that give you a clear idea of your health. You can choose Healthians Extended Heart Care Package available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 11905.00, 4499.00, NULL, '1', NULL, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', NULL, 'pack_6.pdf', NULL, '2021-10-16 11:42:34', '2021-10-16 11:43:44'),
(7, 'Heart Package- Preventive', 'The heart is considered the most hardworking organ of the body. But due to various factors.', 13, '<p>The heart is considered the most hardworking organ of the body. But due to various factors and majorly lifestyle disorders the heart is at the risk of damage. With Healthians Heart Package, make sure you are not developing any heart disease with 13 important tests. These tests will check your heart status and the reports will guide you to take the necessary steps to improve your health.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Heart Package- Preventive you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Heart Package- Preventive available in Gurgaon has 13 parameters that give you a clear idea of your health. You can choose Heart Package- Preventive available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 1900.00, 499.00, NULL, '1', NULL, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', NULL, 'pack_7.pdf', NULL, '2021-10-16 11:57:43', '2021-10-16 11:59:09'),
(8, 'HPlus Basic Heart Care in  Gurgaon', 'Basic Heart Care Package, Basic Heart Test, Blood Test for Heart, Heart Checkup Package | Heart', 13, '<p>It is important that you take good care of your heart to prevent cardiovascular diseases. With the help of Healthians Basic Heart Package you can identify any risk to your heart and take preventive steps before it gets too late. This at-home health test is made up of 57 health parameters including lipid test, hemogram test and blood glucose test. Simply click the button below and book the test now. For accurate test results fasting of 10 hours is necessary.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians HPlus Basic Heart Care you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The HPlus Basic Heart Care available in Gurgaon has 57 parameters that give you a clear idea of your health. You can choose HPlus Basic Heart Care available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 2880.00, 899.00, NULL, '1', NULL, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', '1,2,3,4', 'pack_8.pdf', NULL, '2021-10-16 12:06:34', '2021-10-16 12:10:26'),
(9, 'Iron Studies', 'Iron is a mineral that the body obtains through meals such as red meat and cereals rich in vitamins and minerals.', 3, '<p>ron is a mineral that the body obtains through meals such as red meat and cereals rich in vitamins and minerals, as well as supplements. Iron is required for the production of red blood cells. Hemoglobin, a protein in your blood that helps deliver oxygen from your lungs to the rest of your body, contains iron. Iron is also necessary for the proper functioning of muscles, bone marrow, and organs. Too little or too much iron in the body can create significant health issues.<br />\r\nTo evaluate your body&#39;s iron levels, the Iron Studies test in Gurgaon detects various components in the blood. A blood test for iron can indicate if you have too much or too little of this element in your body. It can detect diseases such as anemia and iron excess. The doctor can recommend the iron studies test if you exhibit certain symptoms like headaches, weakness, and fatigue, accelerated heartbeat, abdominal pain, joint pain, tiredness, and dizziness.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Iron Studies you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Iron Studies available in Gurgaon has 4 parameters that give you a clear idea of your health. You can choose Iron Studies available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 885.00, 349.00, NULL, '1', NULL, '24 Hours', '1', NULL, 'Male,Female', '5-99 Years', NULL, 'pack_9.pdf', NULL, '2021-10-16 12:50:19', '2021-10-16 12:50:39'),
(10, 'Basic Preventive Package', 'Preventive Package Basic , Basic Preventive Package, A160, P0029', 4, '<p>Basic Health Checkup is important for early identification of likely health risks so that preventative steps can be taken in advance. Our basic medical checkup includes tests like Liver &amp; Kidney Function, Hemogram, Lipid and Blood Glucose fasting. This at-home medical package will only help in staying healthy.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Basic Preventive Package you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Basic Preventive Package available in Gurgaon has 57 parameters that give you a clear idea of your health. You can choose Basic Preventive Package available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 2880.00, 899.00, NULL, '1', NULL, '24 Hours', '1', NULL, 'Male,Female', '5-99 Years', NULL, 'pack_10.pdf', NULL, '2021-10-16 12:59:23', '2021-10-16 13:00:02'),
(11, 'Urine Routine & Microscopy', 'Urine Analysis, Urine Routine, Urine Test, Microscopic Examination of Urine | Urine R/M', 14, '<p>Urinary tract infection or UTI is one of the most common infections that can occur in any part of the urinary tract. The entire urinary tract is a combination of the kidneys, ureters, bladder, and urethra. The UTI can afflict anyone regardless of gender and age, however, it&rsquo;s been observed that women are more susceptible to a UTI, along with recurring urinary tract infections. Although not a fatal condition, if the urinary tract infection attacks the kidneys and is able to mix with the bloodstream, it can turn into a life-threatening illness.<br />\r\nThe urine routine and microscopy test is a simple urine test that can help detect urinary tract infection. The diagnosis for urinary tract infection involved a physical exam along with a urine test to ascertain the type and severity of the UTI. The urine routine and microscopy test identifies the presence of white blood cells (WBCs), which would<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Urine Routine &amp; Microscopy you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Urine Routine &amp; Microscopy available in Gurgaon has 18 parameters that give you a clear idea of your health. You can choose Urine Routine &amp; Microscopy available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 599.00, 349.00, NULL, '1', NULL, '24 Hours', '1', NULL, 'Male,Female', '5-99 Years', NULL, 'pack_11.pdf', NULL, '2021-10-18 03:55:50', '2021-10-18 03:56:14'),
(12, 'Infection Package - Preventive', 'The Healthians Preventive Infection Package is a set of health tests that help in ruling out any infections in your body.', 15, '<p>The Healthians Preventive Infection Package is a set of health tests that help in ruling out any infections in your body. Choose this preventive health test for infection which covers 54 parameters to track your body&#39;s exposure.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Infection Package - Preventive you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Infection Package - Preventive available in Gurgaon has 58 parameters that give you a clear idea of your health. You can choose Infection Package - Preventive available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 4255.00, 1299.00, NULL, '1', NULL, '24 Hours', '1', NULL, 'Male,Female', '5-99 Years', NULL, 'pack_12.pdf', NULL, '2021-10-18 04:16:29', '2021-10-18 04:16:50'),
(13, 'Thyroid Profile-Free (FT3, FT4 & TSH)', 'Thyroid Panel Free, Thyroid Free | TFT-Free', 16, '<p>This panel of test for thyroid profile is required to assess thyroid function. It is ordered primarily to help diagnose hyperthyroidism or hypothyroidsm and may be ordered to help monitor treatment of a person with a known thyroid disorder.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Thyroid Profile-Free (FT3, FT4 &amp; TSH) you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Thyroid Profile-Free (FT3, FT4 &amp; TSH) available in Gurgaon has 3 parameters that give you a clear idea of your health. You can choose Thyroid Profile-Free (FT3, FT4 &amp; TSH) available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 1320.00, 880.00, NULL, '1', NULL, '24 Hours', '1', NULL, 'Male,Female', '5-99 Years', NULL, '18789446931635846153.pdf', NULL, '2021-10-18 04:59:17', '2021-11-02 04:12:33'),
(14, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 'Hyperthyroidism is a disease that affects the thyroid gland.', 2, '<p>Hyperthyroidism is a disease that affects the thyroid gland. This gland is a tiny butterfly-shaped organ on the front of the neck. It makes the hormones tetraiodothyronine (T4) and triiodothyronine (T3), which regulate energy usage by the cells. The T3 and T4 hormones are released by the thyroid gland, which also regulates your metabolism. When the thyroid produces excessive T4, T3, or both, hyperthyroidism develops. An overactive thyroid diagnosis and treatment of the root issue can alleviate symptoms and avoid problems.<br />\r\nThe Thyroid Profile - Total (T3, T4, &amp; TSH Ultrasensitive) test in Gurgaon or thyroid function panel tests are other names for a thyroid profile test. It is a series of tests that assesses the thyroid gland&#39;s function and aids in the diagnosis of thyroid diseases. Thyroid hormones such as T3, T4, and TSH are measured in the blood in these examinations.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Thyroid Profile-Total (T3, T4 &amp; TSH Ultra-sensitive) you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Thyroid Profile-Total (T3, T4 &amp; TSH Ultra-sensitive) available in Gurgaon has 3 parameters that give you a clear idea of your health. You can choose Thyroid Profile-Total (T3, T4 &amp; TSH Ultra-sensitive) available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 800.00, 399.00, NULL, '1', NULL, '24 Hours', '1', NULL, 'Male,Female', '5-99 Years', '7', '10127283931676540120.jpeg', NULL, '2021-10-18 05:05:50', '2023-02-16 09:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `package__f_r_q_s`
--

CREATE TABLE `package__f_r_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package__f_r_q_s`
--

INSERT INTO `package__f_r_q_s` (`id`, `question`, `ans`, `type`, `package_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'What is Haemogram Test?', 'A complete hemogram is a blood test\r\n that tests your RBCs, WBCs, Platelets,\r\n hemoglobin, and hematocrit, etc to\r\n get an overall picture of your health.\r\n A complete hemogram helps in \r\nassessing your health, diagnosing \r\na health issue, track your medical \r\ncondition or your treatment.', 1, 1, NULL, '2021-09-30 03:31:14', '2021-09-30 03:41:07'),
(2, 'What happens if serum cholesterol is high?', 'High levels of cholesterol can increase your risk of heart disease. The serum cholesterol test measures the HDL, LDL, and triglycerides in your blood. The higher the level of LDL, the higher is the risk for heart disease.', 2, 1, NULL, '2021-09-30 03:44:08', '2021-09-30 03:44:08'),
(3, 'Explain the complete process involved', 'You can either book on our website or Choose to receive a call back from our Health Advisor / Doctor.\r\n Our Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.', 2, 2, NULL, '2021-10-05 00:04:03', '2021-10-05 00:04:03'),
(4, 'What is the fastest way to lower LDL cholesterol?', 'This demands a careful strategy developed under the guidance of a trained physician', 2, 3, NULL, '2021-10-05 00:04:41', '2021-10-05 00:04:41'),
(5, 'What does high LDL mean in a blood test?', 'It means the metabolism of oil has been compromised in the body because of some underlying factor.', 2, 3, NULL, '2021-10-05 00:05:03', '2021-10-05 00:05:03'),
(6, 'What is a good LDL direct level?', 'Less than 100mg/dL', 2, 3, NULL, '2021-10-05 00:05:23', '2021-10-05 00:05:23'),
(7, 'What is a good LDL level for a woman?', 'An ideal LDL cholesterol level should be less than 70 mg/dL.', 2, 3, NULL, '2021-10-05 00:05:43', '2021-10-05 00:05:43'),
(8, 'What should I do if my LDL is high?', 'High LDL has an impact on heart health and the circulatory system. Consulting your physician to get guidance is recommended.', 2, 3, NULL, '2021-10-05 00:06:08', '2021-10-05 00:06:08'),
(9, 'Explain the complete process involved', 'Our Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.', 2, 3, NULL, '2021-10-05 00:06:35', '2021-10-05 00:06:35'),
(10, 'Is fasting required for triglyceride test?', '\"Consumption of food can alter the level of triglyceride, hence, physicians generally demand fasting for 9 to 12 hours before the triglyceride test\"', 2, 4, NULL, '2021-10-05 00:08:40', '2021-10-05 00:08:40'),
(11, 'How can i check my triglycerides at home?', 'It is necessary to have a fully equipped lab to test triglycerides under expert observation.', 2, 4, NULL, '2021-10-05 00:08:57', '2021-10-05 00:08:57'),
(12, 'What is serum triglycerides test?', 'It is done to understand the metabolism of oils in your body.', 2, 4, NULL, '2021-10-05 00:09:16', '2021-10-05 00:09:16'),
(13, 'What is Lipid Profile Test?', 'A lipid profile test is a cholesterol test done to determine the amount of \'good\' fat (HDL), \'bad\' fat (LDL) and triglycerides in the body. Too much cholesterol in the body can lead to stroke, heart disease and other such complications.', 3, 1, NULL, '2021-10-05 00:17:06', '2021-10-05 00:17:06'),
(14, 'What is Good and Bad Cholesterol?', 'High-density Lipoprotein (HDL) is called \'good\' cholesterol because it removes excess cholesterol from your bloodstream and takes it to the liver to be broken down and removed. Low-density Lipoprotein is called \'bad\' cholesterol becuase high levels of it can clog your arteries and cause stroke or heart attack.', 3, 1, NULL, '2021-10-05 00:17:26', '2021-10-05 00:17:26'),
(15, 'What is LDL and HDL?', 'High-density Lipoprotein (HDL) removes excess cholesterol from your bloodstream and takes it to the liver to be broken down and removed.High levels of Low-density Lipoprotein (LDL) can clog your arteries and cause stroke or heart attack.', 3, 1, NULL, '2021-10-05 00:17:44', '2021-10-05 00:17:44'),
(16, 'What is serum calcium?', 'Serum calcium is usually measured to screen for or monitor bone diseases or calcium-regulation disorders (diseases of the parathyroid gland or kidneys).', 2, 5, NULL, '2021-10-14 12:23:56', '2021-10-14 12:23:56'),
(17, 'What is the normal range for serum calcium?', 'Normal serum calcium levels are between 8.6-10.3 mg/dL.', 2, 5, NULL, '2021-10-14 12:24:38', '2021-10-14 12:24:38'),
(18, 'What does it mean if your calcium is high?', '\"Hypercalcemia is a condition in which the calcium level in your blood is above normal. Too much calcium in your blood can weaken your bones, create kidney stones, and interfere with how your heart and brain work. Hypercalcemia is usually a result of overactive parathyroid glands.\"', 2, 5, NULL, '2021-10-14 12:25:16', '2021-10-14 12:25:16'),
(19, 'What is a serum calcium test?', 'Serum calcium is usually measured to screen for or monitor bone diseases or calcium-regulation disorders (diseases of the parathyroid gland or kidneys).', 2, 5, NULL, '2021-10-14 12:25:51', '2021-10-14 12:25:51'),
(20, 'What is the normal range of random blood sugar level?', 'Below 11.1 mmol/l or Below 200 mg/dl.', 2, 6, NULL, '2021-10-14 12:30:36', '2021-10-14 12:30:36'),
(21, 'When should a random blood sugar be tested?', 'Random blood sugar can be tested any time during the day.', 2, 6, NULL, '2021-10-14 12:31:23', '2021-10-14 12:31:23'),
(22, 'Is random blood sugar test accurate?', 'This test is to give a broad idea of blood sugar management.', 2, 6, NULL, '2021-10-14 12:31:45', '2021-10-14 12:31:45'),
(23, 'What is normal non fasting glucose level?', 'Below 11.1 mmol/l or Below 200 mg/dl.', 2, 6, NULL, '2021-10-14 12:32:08', '2021-10-14 12:32:08'),
(24, 'Can albumin in urine be cured?', '\"Yes, albumin in urine may be reduced by using medicines that lower blood pressure. You can also try to change your nutritional choices and incorporate a diet that will be helpful.\"', 2, 7, NULL, '2021-10-14 12:37:53', '2021-10-14 12:37:53'),
(25, 'What does high albumin in the blood mean?', 'High serum albumin levels might mean that you are dehydrated or eat a diet rich in protein.', 2, 7, NULL, '2021-10-14 12:38:13', '2021-10-14 12:38:13'),
(26, 'What does a low albumin level mean?', '\"Low albumin levels in the blood could indicate liver diseases, kidney disease, infection, malnutrition, inflammatory bowel disease, thyroid disease. \"', 2, 7, NULL, '2021-10-14 12:38:34', '2021-10-14 12:38:34'),
(27, 'What are the symptoms of low albumin?', '\"Symptoms of low albumin inlcude: edema, drier or rougher skin, hair loss, jaundice, loss of appetite, irregular heartbeat, nausea, diarrhoea.\"', 2, 7, NULL, '2021-10-14 12:39:00', '2021-10-14 12:39:00'),
(28, 'What causes alkaline phosphatase levels to be high?', '\"Alkaline Phosphatase levels can rise because of liver disease, gallbladder disease, bone disorders, bile duct obstruction.\"', 2, 8, NULL, '2021-10-14 12:42:15', '2021-10-14 12:42:15'),
(29, 'What is a dangerous ALP level?', '\"Higher than the normal levels which is between 20 to 140 IU/L might be dangerous. However, there might be some variance to this number. Children generally have higher levels of ALP, because their bones are still growing.\"', 2, 8, NULL, '2021-10-14 12:42:33', '2021-10-14 12:42:33'),
(30, 'Does high alkaline phosphatase mean cancer?', '\"Rarely, high levels of ALP indicate heart failure, kidney or other cancers.', 2, 8, NULL, '2021-10-14 12:42:53', '2021-10-14 12:42:53'),
(31, 'What is normal alkaline phosphatase level in blood test?', '\"The normal level for ALP is between 20 to 140 IU/L, however, there might be some variance to this number. Children generally have higher levels of ALP, this is because their bones are still growing.\"', 2, 8, NULL, '2021-10-14 12:43:21', '2021-10-14 12:43:21'),
(32, 'What happens if Bilirubin Direct is high?', 'Elevated levels of direct bilirubin indicate hepatocellular or obstructive jaundice.', 2, 9, NULL, '2021-10-14 12:47:21', '2021-10-14 12:47:21'),
(33, 'What are the symptoms of high Bilirubin?', '\"High bilirubin causes yellowish discoloration of sclera,skin and mucous membrane (jaundice), other symptoms include abdominal pain or swelling, chills, fever, chest pain, weakness, lightheadedness, fatigue, nausea,high colored urine, and clay colored stools in obstructive jaundice.\"', 2, 9, NULL, '2021-10-14 12:47:40', '2021-10-14 12:47:40'),
(34, 'What is direct Bilirubin normal range?', 'The normal range of direct bilirubin is 0.0-0.50 mg/dL.', 2, 9, NULL, '2021-10-14 12:48:02', '2021-10-14 12:48:02'),
(35, 'How is high Bilirubin treated?', '\"There are no drugs to specifically treat increased bilirubin levels, unless there is an infection, blockage or tumor. Treatment is aimed at correcting the underlying cause of increased bilirubin levels, and minimizing further damage to your liver, if damage is present.\"', 2, 9, NULL, '2021-10-14 12:48:20', '2021-10-14 12:48:20'),
(36, 'What is T bil in blood test?', '\"A T Bil is a Bilirubin Test that measures the level of Bilirubin in the body. The test is done to check for illnesses like anemia, jaundice, liver disease.\"', 2, 10, NULL, '2021-10-14 12:52:35', '2021-10-14 12:52:35'),
(37, 'What is a normal Bilirubin level?', '\"A T Bil is a Bilirubin Test that measures the level of Bilirubin in the body. The test is done to check for illnesses like anemia, jaundice, liver disease.\"', 2, 10, NULL, '2021-10-14 12:52:53', '2021-10-14 12:52:53'),
(38, 'What is a normal Bilirubin level?', 'Normal levels for Direct Bilirubin is less than 0.3 mg/dL Total bilirubin: 0.1 to 1.2 mg/dL.', 2, 10, NULL, '2021-10-14 12:53:08', '2021-10-14 12:53:08'),
(39, 'What is the normal range of total Bilirubin?', 'The normal range for Total Bilirubin is 0.1 to 1.2 mg/dL.', 2, 10, NULL, '2021-10-14 12:53:25', '2021-10-14 12:53:25'),
(40, 'What is the normal range of AEC in blood?', 'The normal range of AEC is 30-350 cells/microlitre of blood.', 2, 11, NULL, '2021-10-14 12:56:30', '2021-10-14 12:56:30'),
(41, 'What happens if AEC count is high?', '\"High AEC count is seen in eosinophilia (where it is more than 500cells/microlitre of blood), allergic diseases like urticaria, skin allergy, bronchial asthma, parasitic infection.\"', 2, 11, NULL, '2021-10-14 12:56:49', '2021-10-14 12:56:49'),
(42, 'What causes eosinophils to be high?', '\"Some reasons for high eosinophils would be skin allergies like urticaria, allergic rhinitis, bronchial asthma, parasitic infestation.\"', 2, 11, NULL, '2021-10-14 12:57:07', '2021-10-14 12:57:07'),
(43, 'What are the symptoms of eosinophilia?', '\"Some common symptoms of eosinophilia are: Rashes, Itching, Diarrhea, in the case of parasite infections, Asthma Runny nose, particularly if associated with allergies.\"', 2, 11, NULL, '2021-10-14 12:57:27', '2021-10-14 12:57:27'),
(44, 'What causes high neutrophils absolute?', '\"High neutrophils are frequently seen in cases of inflammatory responses to infections and tissue damages,also in tumor progression in cancer cases.', 2, 12, NULL, '2021-10-14 13:00:59', '2021-10-14 13:00:59'),
(45, 'What does it mean when absolute neutrophils are low?', 'Low ANC means immunosuppression which means there is high susceptibility to infection.', 2, 12, NULL, '2021-10-14 13:01:18', '2021-10-14 13:01:18'),
(46, 'What is the treatment for high neutrophils?', '\"Treating the underlying cause, for example antibiotics for bacterial and antifungal for fungal infections can help in reducing neutrophils.\"', 2, 12, NULL, '2021-10-14 13:01:34', '2021-10-14 13:01:34'),
(47, 'What does absolute neutrophils mean in a blood test?', '\"Absolute neutrophil is a test to determine the number of neutrophils - a type of WBC in blood, that acts as a first line of defence and fights infection.\"', 2, 12, NULL, '2021-10-14 13:01:57', '2021-10-14 13:01:57'),
(48, 'What is the normal ESR level?', 'Normal range is between 0 to 22 mm/hr for men and between 0 to 29 mm/hr for women.', 2, 13, NULL, '2021-10-14 13:06:15', '2021-10-14 13:06:15'),
(49, 'What does a high ESR mean?', 'A level higher than 22 mm/hr for men and 29 mm/hr for women can be considered as a high ESR level.', 2, 13, NULL, '2021-10-14 13:06:32', '2021-10-14 13:06:32'),
(50, 'How can I reduce my ESR level?', 'ESR levels reduce following the liver coming back to the normal level of the physiology.', 2, 13, NULL, '2021-10-14 13:06:49', '2021-10-14 13:06:49'),
(51, 'What are the symptoms of high ESR?', '\"Tiredness, fever, lack of energy are some of the most common symptoms of high ESR.\"', 2, 13, NULL, '2021-10-14 13:07:08', '2021-10-14 13:07:08'),
(52, 'Explain the complete process involved', 'You can either book on our website or Choose to receive a call back from our Health Advisor / Doctor.\r\nOur Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.\r\nYour health vitals and history will be taken for pre-diagnosis and for suggesting the relevant tests through Health Karma or you can also share your prescription with our medical team.', 2, 14, NULL, '2021-10-14 13:13:52', '2021-10-14 13:13:52'),
(53, 'What is the normal LFT level?', 'A liver function test (LFT) is a blood test that measures the levels of several substances (enzymes and proteins) excreted by your liver. Levels that are higher or lower than normal can indicate liver problems.', 3, 2, NULL, '2021-10-16 05:06:47', '2021-10-16 05:06:47'),
(54, 'What does a Liver Function Test show?', '\"The ALT and AST tests measure enzymes that your liver releases in response to damage or disease. The albumin test measures how well the liver creates albumin, while the bilirubin test measures how well it disposes of bilirubin. ALP can be used to evaluate the bile duct system of the liver.\"', 3, 2, NULL, '2021-10-16 05:07:12', '2021-10-16 05:07:12'),
(55, 'What does high LFT mean?', '\"Elevated liver enzymes often indicate inflammation or damage to cells in the liver. Inflamed or injured liver cells leak higher than normal amounts of certain chemicals, including liver enzymes, into the bloodstream, elevating liver enzymes on blood tests lead to fatty liver.\"', 3, 2, NULL, '2021-10-16 05:07:45', '2021-10-16 05:07:45'),
(56, 'What is an abnormal LFT result?', '\"Your liver tests can be abnormal because: Your liver is inflamed (for example, by infection, toxic substances like alcohol and some medicines, or by an immune condition). Your liver cells have been damaged (for example, by toxic substances, such as alcohol, paracetamol, poisons).\"', 3, 2, NULL, '2021-10-16 05:08:45', '2021-10-16 05:08:45'),
(57, 'What is Haemogram Test?', '\"A complete hemogram is a blood test that tests your RBCs, WBCs, Platelets, hemoglobin and hematocrit etc to get an overall picture of your health. A complete hemogram helps in assessing your health, diagnosing a health issue, track your medical condition or your treatment.\"', 3, 3, NULL, '2021-10-16 05:27:20', '2021-10-16 05:27:20'),
(58, 'What is a Normal Blood Count?', '\"The normal blood count for an adult would be RBC - 4.5 to 5.5 million cells/mm3 in Male and 4 to 5 million cells/mm3 in Female, WBC - 5,000 to 10,000 cells/mm3, Platelets Range is 140,000 to 400,000/mm3.\"', 3, 3, NULL, '2021-10-16 05:27:48', '2021-10-16 05:27:48'),
(59, 'Is CBC and Hemogram the same?', '\"Yes, a Complete Blood Count and Hemogram is a overall Blood Test that is done to assess various parts of blood and determine your overall health.\"', 3, 3, NULL, '2021-10-16 05:28:17', '2021-10-16 05:28:17'),
(60, 'Is fasting required for CBC Test?', '\"No, if you are only getting a complete blood count then fasting may not be necessary. In case, you are going for additional tests then you may be required to fast.\"', 3, 3, NULL, '2021-10-16 05:29:06', '2021-10-16 05:29:06'),
(61, 'How to prepare for Medical Checkup?', '\"Have a adequate amount of sleep. Avoid oily spicy salty foods. Always chose a light food in dinner. If fasting requires, maintain it for 8-10hrs. Avoid alcohol.\"', 1, 2, NULL, '2021-10-16 06:22:27', '2021-10-16 06:22:27'),
(62, 'What is master Health Checkup?', 'A master health check up is the same as a full body health checkuo. In includes tests for major organs and functions in the body.', 1, 2, NULL, '2021-10-16 06:22:54', '2021-10-16 06:22:54'),
(63, 'What is regular Health Checkup?', '\"A regular health checkup is a standard set of medical tests done to determine your overall health. Usually such a health checkup includes tests for blood sugar, choleterol, kidney, liver function, blood work, thyroid. In case the results for any of the above tests turn out abnormal the doctor may advise further tests.\"', 1, 2, NULL, '2021-10-16 06:23:16', '2021-10-16 06:23:16'),
(64, 'Which Health Checkup is good?', '\"Routine health checkups that include tests for cholesterol, blood sugar, kidney, liver, thyroid, lipid profile are generally a good way to get an overall understanding of your health.\"', 1, 2, NULL, '2021-10-16 06:23:43', '2021-10-16 06:23:43'),
(65, 'What is serum iron test?', 'A serum iron test measures how much iron is in your serum.', 2, 15, NULL, '2021-10-16 06:43:15', '2021-10-16 06:43:15'),
(66, 'What is the normal range for serum iron levels?', 'A serum iron test measures how much iron is in your serum.', 2, 15, NULL, '2021-10-16 06:43:37', '2021-10-16 06:43:37'),
(67, 'What is the difference between serum iron and ferritin?', '\"Ferritin isn\'t the same thing as iron in your body. Instead, ferritin is a protein that stores iron, releasing it when your body needs it. Ferritin usually lives in your body\'s cells, with very little actually circulating in your blood.\"', 2, 15, NULL, '2021-10-16 06:44:02', '2021-10-16 06:44:02'),
(68, 'What causes high folic acid levels?', '\"High levels of folate in the blood may mean that you eat a diet rich in folate or folic acid, take vitamins, or take folic acid pills.\"', 2, 16, NULL, '2021-10-16 06:55:08', '2021-10-16 06:55:08'),
(69, 'Is there a blood test for folic acid levels?', '\"Yes, it can be tested by blood test.\"', 2, 16, NULL, '2021-10-16 06:55:32', '2021-10-16 06:55:32'),
(70, 'What does high serum folate mean?', '\"High levels of folate in the blood may mean that you eat a diet rich in folate or folic acid, take vitamins, or take folic acid pills. Consuming more folate than the body needs does not cause problems. High folate levels can also mean a vitamin B12 deficiency.\"', 2, 16, NULL, '2021-10-16 06:56:01', '2021-10-16 06:56:01'),
(71, 'Does b12 blood test require fasting?', '\"No, you can get a B12 blood test anytime, you don\'t need to go without food (fasting) before you do.\"', 2, 17, NULL, '2021-10-16 07:00:28', '2021-10-16 07:00:28'),
(72, 'What does a vitamin b12 blood test show?', '\"A vitamin B-12 level test checks the amount of vitamin B-12 in the blood or urine to gauge the body\'s overall vitamin B-12 stores. Vitamin B-12 is necessary for several bodily processes, including nerve function and the production of DNA and red blood cells.\"', 2, 17, NULL, '2021-10-16 07:00:47', '2021-10-16 07:00:47'),
(73, 'What is the normal range for b12 levels?', '\"Normal values are 160 to 950 picograms per millilitre (pg/mL), or 118 to 701 picomoles per litre(pmol/L). Normal value ranges may vary slightly among different laboratories.\"', 2, 17, NULL, '2021-10-16 07:01:29', '2021-10-16 07:01:29'),
(74, 'Explain the complete process involved.', 'You can either book on our website or Choose to receive a call back from our Health Advisor / Doctor.\r\nOur Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.\r\nYour health vitals and history will be taken for pre-diagnosis and for suggesting the relevant tests through Health Karma or you can also share your prescription with our medical team.\r\nOnce you confirm your booking, a trained Phlebotomists (Sample Collector) will be assigned to visit you on your chosen time and pickup address and for collection of sample. Phlebotomist may also take other vitals if suggested in the pre diagnosis.', 2, 18, NULL, '2021-10-16 07:55:13', '2021-10-16 07:55:13'),
(75, 'What is t4 levels in thyroid?', '\"Normal TSH values are 0.5 to 5.0 mIU/L. Pregnancy, a history of thyroid cancer, history of pituitary gland disease, and older age are some situations when TSH is optimally maintained in different range as guided by an endocrinologist. FT4 normal values are 0.7 to 1.9ng/dL.\"', 2, 19, NULL, '2021-10-16 07:58:28', '2021-10-16 07:58:28'),
(76, 'What is normal range for TSH and free t4?', '\"TSH normal values are 0.5 to 5.0 mIU/L. Pregnancy, a history of thyroid cancer, history of pituitary gland disease, and older age are some situations when TSH is optimally maintained in different range as guided by an endocrinologist. FT4 normal values are 0.7 to 1.9ng/dL.\"', 2, 19, NULL, '2021-10-16 07:58:53', '2021-10-16 07:58:53'),
(77, 'How many hours fasting is required for thyroid test?', '\"Generally, you don\'t need to fast before doing a thyroid function test. However, not fasting is sometimes linked to a lower TSH level. This means your results might not pick up on mild (subclinical) hypothyroidism - where your TSH levels are only mildly elevated.\"', 2, 19, NULL, '2021-10-16 07:59:14', '2021-10-16 07:59:14'),
(78, 'What is tsh ultrasensitive?', '\"TSH ultrasensitive test is one of the most critical tests to measure or evaluate how your thyroid is functioning, or to put it simply if symptoms of Hyperthyroidism or Hypothyroidism are present.\"', 2, 20, NULL, '2021-10-16 08:56:21', '2021-10-16 08:56:21'),
(79, 'What is the best time of day to take a TSH blood test?', '\"The best time to give your blood sample is in the morning, as thyroid levels can fluctuate in the evenings. Also, if you are taking medications, you need to stop using them, and consult your doctor about it.\"', 2, 20, NULL, '2021-10-16 08:56:46', '2021-10-16 08:56:46'),
(80, 'How many hours fasting is required for thyroid test?', '\"Generally, you don\'t need to fast before doing a thyroid function test. However, not fasting is sometimes linked to a lower TSH level. This means your results might not pick up on mild (subclinical) hypothyroidism - where your TSH levels are only mildly elevated.\"', 2, 20, NULL, '2021-10-16 08:57:06', '2021-10-16 08:57:06'),
(81, 'What does a high BUN level mean?', 'A high BUN level can indicate disease or injuries to the kidney.', 2, 21, NULL, '2021-10-16 09:03:20', '2021-10-16 09:03:20'),
(82, 'Is a BUN level of 6 bad?', '\"No, BUN level of 6 is not considered bad as it is as the lower limit of BUN levels.\"', 2, 21, NULL, '2021-10-16 09:03:42', '2021-10-16 09:03:42'),
(83, 'How do I lower BUN levels?', 'The most effective way to control BUN levels is proper hydration. Following a low-protein diet can also help.', 2, 21, NULL, '2021-10-16 09:04:29', '2021-10-16 09:04:29'),
(84, 'What is serum calcium?', 'Serum calcium is usually measured to screen for or monitor bone diseases or calcium-regulation disorders (diseases of the parathyroid gland or kidneys).', 2, 22, NULL, '2021-10-16 09:07:28', '2021-10-16 09:07:28'),
(85, 'What is the normal range for serum calcium?', 'Normal serum calcium levels are between 8.6-10.3 mg/dL.', 2, 22, NULL, '2021-10-16 09:07:58', '2021-10-16 09:07:58'),
(86, 'What does it mean if your calcium is high?', '\"Hypercalcemia is a condition in which the calcium level in your blood is above normal. Too much calcium in your blood can weaken your bones, create kidney stones, and interfere with how your heart and brain work. Hypercalcemia is usually a result of overactive parathyroid glands.\"', 2, 22, NULL, '2021-10-16 09:08:56', '2021-10-16 09:08:56'),
(87, 'What does estradiol do to the body?', 'Estradiol helps in maintaining the gender specific functions of the female body.', 2, 23, NULL, '2021-10-16 09:14:46', '2021-10-16 09:14:46'),
(88, 'What level of estradiol is normal?', 'The normal levels of estradiol are: 30 to 400 pg/mL for premenopausal women; 10 to 50 pg/mL for men.', 2, 23, NULL, '2021-10-16 09:15:10', '2021-10-16 09:15:10'),
(89, 'What causes high estradiol levels in females?', '\"Some reasons for high estradiol levels are: early puberty, tumors in the ovaries or testes, hyperthyroidism - which is caused by an overactive thyroid gland, cirrhosis - which is scarring of the liver.\"', 2, 23, NULL, '2021-10-16 09:16:02', '2021-10-16 09:16:02'),
(90, 'How long do you have to fast for a glucose test?', '6-8 hours is considered normal.', 2, 24, NULL, '2021-10-16 09:20:35', '2021-10-16 09:20:35'),
(91, 'What should I not eat the night before my glucose test?', 'Very heavy meals are considered to alter the test results.', 2, 24, NULL, '2021-10-16 09:21:00', '2021-10-16 09:21:00'),
(92, 'Why is my fasting glucose high in the morning?', 'It may be because of diabetic conditions.', 2, 24, NULL, '2021-10-16 09:21:24', '2021-10-16 09:21:24'),
(93, 'What is Thyroid Profile Total?', '\"The Thyroid Profile Total is a group of tests that are done together to detect or diagnose thyroid diseases. It measures the levels of the following three hormones in the blood: Thyroid Stimulating Hormone (TSH), Thyroxine (T4) - Total and TriIodothyronine (T3) - Total.\"', 3, 5, NULL, '2021-10-16 09:30:30', '2021-10-16 09:30:30'),
(94, 'Which tests are included in thyroid profile?', '\"A thyroid profile includes tests for T3 (Trilodothyronine), T4 (Thyroxine)l, TSH (Ultrasensitive).\"', 3, 5, NULL, '2021-10-16 09:31:22', '2021-10-16 09:31:22'),
(95, 'What is the normal range of T3 T4 and TSH?', '\"The normal ranges for T3 (Trilodothyronine) is 60-181ng/dl, T4 (Thyroxine) is 4.5-12.6ng/dl, TSH (Ultrasensitive) is 0.13-6.33uIU/ml.\"', 3, 5, NULL, '2021-10-16 09:32:04', '2021-10-16 09:32:04'),
(96, 'What is Thyroid Profile Total?', 'The Thyroid Profile Total is a group of tests that are done together to detect or diagnose thyroid diseases. It measures the levels of the following three hormones in the blood: Thyroid Stimulating Hormone (TSH), Thyroxine (T4) - Total and TriIodothyronine (T3) - Total.', 3, 6, NULL, '2021-10-16 09:45:40', '2021-10-16 09:45:40'),
(97, 'What are Health Screening Tests?', 'Health Screening Tests are basic medical tests done to check for diseases before any signs or symptoms show up. Health Screening Tests help in early diagnosis and treatment.', 1, 5, NULL, '2021-10-16 10:25:57', '2021-10-16 10:25:57'),
(98, 'What is HbA1c Test?', 'HbA1c Test measures the average level of blood sugar over a period of 2-3 months. The test checks how much blood sugar is bound to your hemoglobin which can help in diagnosis or monitoring of diabetes.', 1, 5, NULL, '2021-10-16 10:26:19', '2021-10-16 10:26:19'),
(99, 'Is fasting required for HbA1c Test?', '\"No, fasting is not required before HbA1c Test.\"', 1, 5, NULL, '2021-10-16 10:26:40', '2021-10-16 10:26:40'),
(100, 'What is a normal platelet count?', '\"The normal number of platelets in the blood is 150,000 to 400,000 platelets per microlitre (mcL) or 150 to 400 x 109/L.\"', 2, 25, NULL, '2021-10-16 10:42:12', '2021-10-16 10:42:12'),
(101, 'What is a platelet count test used for?', 'It is used to measure the health of platelets of the blood.', 2, 25, NULL, '2021-10-16 10:42:34', '2021-10-16 10:42:34'),
(102, 'What are the 3 functions of platelets?', '\"The 3 functions of platelets are the endothelial supporting function, the ability to form hemostatic plugs and to release lipoprotein material (platelet factor 3).\"', 2, 25, NULL, '2021-10-16 10:43:09', '2021-10-16 10:43:09'),
(103, 'Explain the complete process involved.', 'You can either book on our website or Choose to receive a call back from our Health Advisor / Doctor.\r\nOur Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.\r\nYour health vitals and history will be taken for pre-diagnosis and for suggesting the relevant tests through Health Karma or you can also share your prescription with our medical team.', 2, 26, NULL, '2021-10-16 10:49:09', '2021-10-16 10:49:09'),
(104, 'What is CPK total test?', '\"Creatine phosphokinase (CPK) is an enzyme in the body. It is found mainly in the heart, brain, and skeletal muscle.\"', 2, 27, NULL, '2021-10-16 11:11:25', '2021-10-16 11:11:25'),
(105, 'What is CPK in blood?', '\"Creatine phosphokinase (CPK) is an enzyme in the body. It is found mainly in the heart, brain, and skeletal muscle.\"', 2, 27, NULL, '2021-10-16 11:11:48', '2021-10-16 11:11:48'),
(106, 'What does it mean when your muscle enzymes are high?', '\"When the total CPK level is very high, it most often means there has been injury or stress to muscle tissue, the heart, or the brain. It can be because of brain injury or stroke: Convulsions, Delirium tremens, Dermatomyositis or polymyositis, Electric shock, Heart attack, Inflammation of the heart muscle (myocarditis), Lung tissue death (pulmonary infarction), Muscular dystrophies, Myopathy, Rhabdomyolysis. Muscle tissue injury is most likely. When a muscle is damaged, CPK leaks into the bloodstream.\"', 2, 27, NULL, '2021-10-16 11:12:26', '2021-10-16 11:12:26'),
(107, 'What is a CRP Test?', '\"The protein C-reactive protein (CRP) is produced by the liver. When a disorder causes inflammation anywhere in the body, CRP levels in the blood rise. A CRP test detects inflammation caused by acute illnesses or monitors the degree of illness in chronic circumstances by measuring the level of CRP in the blood.\"', 2, 28, NULL, '2021-10-16 11:17:05', '2021-10-16 11:17:05'),
(108, 'What is CRP Test normal range?', '\"A normal CRP value is less than 10 milligrams per liter (mg/L) in a routine test. A CRP level of more than 10 mg/L indicates a significant illness, trauma, or chronic illness, and will almost certainly need further tests to ascertain the reason.\"', 2, 28, NULL, '2021-10-16 11:17:23', '2021-10-16 11:17:23'),
(109, 'What infections cause high CRP?', '\"The most common infections that can cause elevated levels of CRP are Sepsis and other bacterial infections, Various types of fungal infections, Inflammation and bleeding of the intestines, Inflammatory bowel disease, Lupus, Rheumatoid Arthritis (RA), Osteomyelitis which causes infection of the bone.\"', 2, 28, NULL, '2021-10-16 11:17:46', '2021-10-16 11:17:46'),
(110, 'What does high levels of homocysteine in the blood mean?', '\"High levels of homocysteine indicate Vitamin B-6, B-12, and folate deficiencies.\"', 2, 29, NULL, '2021-10-16 11:30:12', '2021-10-16 11:30:12'),
(111, 'What is the normal homocysteine levels in blood?', 'The normal range of homocysteine levels are less than 15 micromoles per litre.', 2, 29, NULL, '2021-10-16 11:30:38', '2021-10-16 11:30:38'),
(112, 'How do you know if you have high homocysteine levels?', 'The normal range of homocysteine levels are less than 15 micromoles per litre.', 2, 29, NULL, '2021-10-16 11:32:05', '2021-10-16 11:32:05'),
(113, 'How long does it take for CRP to return to normal?', '\"The serum CRP level in a \'healthy\' person is usually less than 5 mg/L; this will begin to rise four to eight hours after tissue is damaged, peak within 24 - 72 hours, and return to normal two to three days after the pathological process has ceased.\"', 2, 30, NULL, '2021-10-16 11:35:14', '2021-10-16 11:35:14'),
(114, 'What happens if CRP test is positive?', '\"A high level of CRP in the blood is a marker of inflammation. It can be caused by a wide variety of conditions, from infection to cancer. High CRP levels can also indicate that there\'s inflammation in the arteries of the heart, which can mean a higher risk of heart attack.\"', 2, 30, NULL, '2021-10-16 11:35:42', '2021-10-16 11:35:42'),
(115, 'What are the symptoms of high CRP?', 'People with very high CRP levels are most likely to have an acute bacterial infection. Signs of acute infection include high fever.', 2, 30, NULL, '2021-10-16 11:36:02', '2021-10-16 11:36:02'),
(116, 'Explain the complete process involved', 'You can either book on our website or Choose to receive a call back from our Health Advisor / Doctor.\r\nOur Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.\r\nYour health vitals and history will be taken for pre-diagnosis and for suggesting the relevant tests through Health Karma or you can also share your prescription with our medical team.\r\nOnce you confirm your booking, a trained Phlebotomists (Sample Collector) will be assigned to visit you on your chosen time and pickup address and for collection of sample. Phlebotomist may also take other vitals if suggested in the pre diagnosis.', 2, 31, NULL, '2021-10-16 11:39:30', '2021-10-16 11:39:30'),
(117, 'Is there a test for blocked arteries?', '\"An ECG followed by cardiac markers- CPKMB, TROP T, TROP I, LDH(Less used), lipid profile can check for blocked arteries.\"', 1, 6, NULL, '2021-10-16 11:47:18', '2021-10-16 11:47:18'),
(118, 'What is the best diagnostic test for heart disease?', '\"ECG followed by cardiac markers- CPKMB, TROP T, TROP I, LDH(Less used), lipid profile can all help in diagnosing heart conditions.\"', 1, 6, NULL, '2021-10-16 11:47:41', '2021-10-16 11:47:41'),
(119, 'Do blood tests detect heart problems?', 'Heart diseases cannot be totally confirmed by blood tests but however indirectly it can highlight if we are at risk of heart disease.', 1, 6, NULL, '2021-10-16 11:48:06', '2021-10-16 11:48:06'),
(120, 'How do you diagnose heart disease at home?', '\"Heart diseases do not generally show any symptoms early on, the symptoms of a heart attack might some time be the first sign of a heart condition. These include left sided chest pain radiating to the left arm, restlessness, sweating, jaw pain etc. Long term diabetics may also have silent cardiac arrest showing no symptoms or atypical symptoms like epigastric pain or jaw pain so follow up and routine check ups are important.\"', 1, 6, NULL, '2021-10-16 11:48:28', '2021-10-16 11:48:28'),
(121, 'What blood tests detect heart problems?', '\"Tests like Lipid Profile (high values indicate dyslipidemia and risk for heart disease), Extended Lipid Profile (Low ApoA1 and high ApoB indicates risk), hsCRP and homocysteine indicates risk. If these values are high and the patient has symptoms like chest pain, restlessness and sweating or is a person having diabetes or hypertension then he should go for CPKMB and troponin markers along with ECG.\"', 1, 6, NULL, '2021-10-16 11:48:53', '2021-10-16 11:48:53'),
(122, 'What happens if tsh level is high?', 'A high TSH means that a person is suffering from hypothyroidism.', 1, 7, NULL, '2021-10-16 12:01:28', '2021-10-16 12:01:28'),
(123, 'What are the different types of heart tests?', '\"Blood tests that can predict heart issues include hsCRP, Homocysteine, Lipid Profile with Extended Parameters (Apolipoprotein A and B).\"', 1, 7, NULL, '2021-10-16 12:01:54', '2021-10-16 12:01:54'),
(124, 'What are the 4 signs your heart is quietly failing?', '\"Chest discomfort, difficulty of breathing on exertion which gradually progresses to difficulty of breathing even when on rest, restlessness, left sided chest pain radiating to left arm, excessive sweating.\"', 1, 7, NULL, '2021-10-16 12:02:18', '2021-10-16 12:02:18'),
(125, 'What is the best heart test?', '\"ECG accompanied by cardiac markers like CPKM, Myoglobin and TROP I.\"', 1, 7, NULL, '2021-10-16 12:02:42', '2021-10-16 12:02:42'),
(126, 'What is the best diagnostic test for heart disease?', '\"Lipid profile, hs-CRP, Homocysteine, Apolipoprotein A and Apolipoprotein B are some tests that can help in assessing risks for heart disease.\"', 1, 8, NULL, '2021-10-16 12:12:13', '2021-10-16 12:12:13'),
(127, 'Can blood test detect heart attack?', '\"No, a normal blood test will not detect if a person has had or will have a heart attack. There are blood tests that can assess heart health like lipid profile, CRP, hs-CRP etc.\"', 1, 8, NULL, '2021-10-16 12:12:42', '2021-10-16 12:12:42'),
(128, 'What are the 4 signs your heart is quietly failing?', '\"Some symptoms that indicate heart issues are fatigue, shortness of breath, congestion, edema.\"', 1, 8, NULL, '2021-10-16 12:14:04', '2021-10-16 12:14:04'),
(129, 'Do blood tests show heart problems?', '\"Tests like lipid profile, CRP etc can indicate if there are issues that can cause heart related diseases in an individual.\"', 1, 8, NULL, '2021-10-16 12:14:25', '2021-10-16 12:14:25'),
(130, 'What is included in Iron Studies?', '\"Iron Studies includes following tests: Serum Iron, Unsaturated Iron Binding Capacity, Total Iron- Binding Capacity and Transferrin Saturation.\"', 1, 9, NULL, '2021-10-16 12:52:14', '2021-10-16 12:52:14'),
(131, 'What is Normal Iron Level?', 'The Normal Iron Levels in Male: 13.5-17.5g/dl and Normal Iron Levels in Female: 12-15.5g/dl.', 1, 9, NULL, '2021-10-16 12:52:32', '2021-10-16 12:52:32'),
(132, 'What are the symptoms of Iron Deficiency?', '\"Some of the common symptoms of Iron Deficiency are Brittle Nails, Shortness of Breath, Hair Fall, Palpitations, Dizziness and Headache.\"', 1, 9, NULL, '2021-10-16 12:52:52', '2021-10-16 12:52:52'),
(133, 'What is Preventive Health Checkup?', 'A preventive health check up is a set of lab tests that help assess your health and determine your risks for developing illnesses. A preventive health checkup acts as a warning system to help you avoid diseases by taking necessary precautions in time.', 1, 10, NULL, '2021-10-16 13:02:04', '2021-10-16 13:02:04'),
(134, 'What is included in Preventive Health Checkup?', '\"A preventive health checkup generally includes the following tests - complete hemogram, lipid profile, thyroid, LFT, KFT, HbA1c. There maybe other tests included in the checkup depending upon your age, risk factors, medical conditions, gender etc.\"', 1, 10, NULL, '2021-10-16 13:02:44', '2021-10-16 13:02:44'),
(135, 'Why is it important to do preventive screenings?', 'Preventive screenings are important as they tell us about our health and well-being and also give us a list of risk factors so that we may take preventive actions to avoid chronic conditions.', 1, 10, NULL, '2021-10-16 13:03:08', '2021-10-16 13:03:08'),
(136, 'Which Health Checkup is good?', '\"Routine health checkups that include tests for cholesterol, blood sugar, kidney, liver, thyroid, lipid profile are generally a good way to get an overall understanding of your health.\"', 1, 10, NULL, '2021-10-16 13:03:38', '2021-10-16 13:03:38'),
(137, 'What are the types of health screening?', '\"There are many different types of health screenings depending upon your age, gender, medical conditions etc. Some common health screenings are diabetes screening, cholesterol screening, full body checkup, allergy screening.\"', 1, 10, NULL, '2021-10-16 13:04:03', '2021-10-16 13:04:03'),
(138, 'Explain the complete process involved', 'You can either book on our website or Choose to receive a call back from our Health Advisor / Doctor.\r\nOur Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.\r\nYour health vitals and history will be taken for pre-diagnosis and for suggesting the relevant tests through Health Karma or you can also share your prescription with our medical team.\r\nOnce you confirm your booking, a trained Phlebotomists (Sample Collector) will be assigned to visit you on your chosen time and pickup address and for collection of sample. Phlebotomist may also take other vitals if suggested in the pre diagnosis.\r\nYour sample will then be transported to the nearest collection hub maintaining the integrity of the sample and will be centrifuged before sending to the lab for processing.', 2, 32, NULL, '2021-10-18 03:52:45', '2021-10-18 03:52:45'),
(139, 'What is Urine Culture Test?', 'A Urine Culture Test is for detecting the bacteria in urine.', 1, 11, NULL, '2021-10-18 03:57:30', '2021-10-18 03:57:30'),
(140, 'Why Urine Routine Test is done?', '\"The Urine Analysis is a screening tests that can detect some common diseases such as a Urinary Tract Infections, Kidney Disorders, Liver Problems, Diabetes or other metabolic conditions.\"', 1, 11, NULL, '2021-10-18 03:57:59', '2021-10-18 03:57:59'),
(141, 'What is Normal pH of Urine?', 'The Normal pH range of Urine is 4.5 - 7.0. A Urine pH level test analyzes the acidity or alkalinity of a urine sample.', 1, 11, NULL, '2021-10-18 03:58:17', '2021-10-18 03:58:17'),
(142, 'What is a Positive Urine Test?', 'Positive Urine Test means kidneys are no longer able to filter your blood that may cause of infection or ailment like UTI or Stones or Ketones presence.', 1, 11, NULL, '2021-10-18 03:58:44', '2021-10-18 03:58:44'),
(143, 'How long does Urine Microscopy take?', 'Urine Microscopy Test generally takes 24-hours in order to get the results available.', 1, 11, NULL, '2021-10-18 03:59:09', '2021-10-18 03:59:09'),
(144, 'What blood test indicates viral infection?', 'A CBC test can help in screening for viral infections. The doctor may also advise specific test based on your symptoms.', 1, 12, NULL, '2021-10-18 04:19:54', '2021-10-18 04:19:54'),
(145, 'What indicates infection in a blood test?', 'A higher than normal level of white blood cells is generally indicative of infection or inflammation.', 1, 12, NULL, '2021-10-18 04:20:16', '2021-10-18 04:20:16'),
(146, 'How do you test for kidney infection?', 'A urine analysis or urine culture test can help in screening for infections.', 1, 12, NULL, '2021-10-18 04:20:43', '2021-10-18 04:20:43'),
(147, 'How do you diagnose a UTI?', 'Urine routine and urine culture test can help in assessing for a UTI.', 1, 12, NULL, '2021-10-18 04:21:05', '2021-10-18 04:21:05'),
(148, 'Can a blood test detect inflammation?', '\"Yes, ESR and CRP tests can help in assessing if you have inflammation\"', 1, 12, NULL, '2021-10-18 04:21:27', '2021-10-18 04:21:27'),
(149, 'Explain the complete process involved', 'You can either book on our website or Choose to receive a call back from our Health Advisor / Doctor.\r\nOur Health advisor and Medical team will be involved to guide you in the complete cycle of the testing process and will facilitate the diagnosis process for prevention of any disease.\r\nYour health vitals and history will be taken for pre-diagnosis and for suggesting the relevant tests through Health Karma or you can also share your prescription with our medical team.\r\nOnce you confirm your booking, a trained Phlebotomists (Sample Collector) will be assigned to visit you on your chosen time and pickup address and for collection of sample. Phlebotomist may also take other vitals if suggested in the pre diagnosis.\r\nYour sample will then be transported to the nearest collection hub maintaining the integrity of the sample and will be centrifuged before sending to the lab for processing.', 2, 33, NULL, '2021-10-18 04:53:50', '2021-10-18 04:53:50'),
(150, 'What are the symptoms of low t4?', '\"The following symptoms may indicate too little T3 and T4 in your body (hypothyroidism): trouble sleeping, tiredness and fatigue, difficulty concentrating, dry skin and hair, depression, sensitivity to cold temperature, frequent, heavy periods, joint and muscle pain.\"', 2, 34, NULL, '2021-10-18 04:55:52', '2021-10-18 04:55:52'),
(151, 'What is normal range for TSH and free t4?', '\"Normal values for TSH are 0.5 to 5.0 mIU/L. Pregnancy, a history of thyroid cancer, history of pituitary gland disease, and older age are some situations when TSH is optimally maintained in different ranges as guided by an endocrinologist. FT4 normal values are 0.7 to 1.9ng/dL.\"', 2, 34, NULL, '2021-10-18 04:56:09', '2021-10-18 04:56:09'),
(152, 'How many hours fasting is required for thyroid test?', '\"Generally, you don\'t need to fast before doing a thyroid function test. However, not fasting is sometimes linked to a lower TSH level. This means your results might not pick up on mild (subclinical) hypothyroidism - where your TSH levels are only mildly elevated.\"', 2, 34, NULL, '2021-10-18 04:56:26', '2021-10-18 04:56:26'),
(153, 'What are some things that could cause low levels of t3 and t4?', '\"The commonest ones are Hashimoto\'s Disease. Some more are surgery on the thyroid gland, treatment with radiation, thyroid swelling, medicines, too little or too much Iodine, hypothyroidism at birth, damage to the pituitary gland.\"', 2, 34, NULL, '2021-10-18 04:56:49', '2021-10-18 04:56:49'),
(154, 'What is the Normal Range for Thyroid?', '\"Normal Levels of Thyroid is T3 (Trilodothyronine): 60-181ng/dl,T4 (Thyroxine): 4.5-12.6ng/dl, TSH (Ultrasensitive): 0.13-6.33uIU/ml.\"', 1, 13, NULL, '2021-10-18 05:01:09', '2021-10-18 05:01:09'),
(155, 'What happens if TSH Level is high?', 'High TSH Level means your thyroid gland is not making enough thyroid hormones. This condition is called Hypothyroidism.', 1, 13, NULL, '2021-10-18 05:01:30', '2021-10-18 05:01:30'),
(156, 'How to Test Thyroid at Home?', 'Book Thyroid Test Online from Healthians Website or App and our certified phlebo will come to your home within 24-hours for sample collection.', 1, 13, NULL, '2021-10-18 05:01:47', '2021-10-18 05:01:47'),
(157, 'Is Thyroid Test done empty stomach?', '\"No, generally it is not necessary to have empty stomach before getting Thyroid Test.\"', 1, 13, NULL, '2021-10-18 05:02:04', '2021-10-18 05:02:04'),
(158, 'What is Thyroid Profile Total?', '\"The Thyroid Profile Total is a group of tests that are done together to detect or diagnose thyroid diseases. It measures the levels of the following three hormones in the blood: Thyroid Stimulating Hormone (TSH), Thyroxine (T4) - Total and TriIodothyronine (T3) - Total.\"', 1, 14, NULL, '2021-10-18 05:07:23', '2021-10-18 05:07:23'),
(159, 'Which tests are included in thyroid profile?', '\"A thyroid profile includes tests for T3 (Trilodothyronine), T4 (Thyroxine)l, TSH (Ultrasensitive).\"', 1, 14, NULL, '2021-10-18 05:07:42', '2021-10-18 05:07:42'),
(160, 'What is the normal range of T3 T4 and TSH?', '\"The normal ranges for T3 (Trilodothyronine) is 60-181ng/dl, T4 (Thyroxine) is 4.5-12.6ng/dl, TSH (Ultrasensitive) is 0.13-6.33uIU/ml.\"', 1, 14, NULL, '2021-10-18 05:08:06', '2021-10-18 05:08:06'),
(161, 'Is fasting required for T3 T4 & TSH test?', '\"Generally, you don\'t need to fast before doing a Thyroid Function Test.\"', 1, 14, NULL, '2021-10-18 05:08:41', '2021-10-18 05:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `sample_collection` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>free,2=>paid',
  `sample_collection_fee` double(8,2) DEFAULT NULL,
  `report_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasting_time` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `fast_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_recommended_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_recommended_for_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_report` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `name`, `category_id`, `short_desc`, `description`, `mrp`, `price`, `sample_collection`, `sample_collection_fee`, `report_time`, `fasting_time`, `fast_time`, `test_recommended_for`, `test_recommended_for_age`, `lab_report`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cholesterol-Total', 2, 'Cholesterol - Total, SERUM CHOLESTEROL, Cholesterol Total, Cholesterol Total | CHOL', '<p>Cholesterol is a form of fat, or lipid, that circulates in the bloodstream. Because lipids do not dissolve in water, they do not separate in blood. Cholesterol is produced by the body, but it can also be obtained from the diet. Cholesterol can only be found in animal-based meals. Every cell in the body requires cholesterol, which aids in the formation of cell membrane layers. The contents of the cell are protected by these layers, which function as gatekeepers for what can enter &amp; leave the cell. It is produced by the liver, which also produces bile, which aids digestion.<br />\r\nThe Cholesterol - Total, Serum test in Gurgaon is frequently performed as part of a cardiovascular risk evaluation. High blood cholesterol levels can harm arteries &amp; blood vessels, increasing the risk of stroke, cardiac arrest, and heart disease. The total cholesterol parameter is tested as part of cholesterol test, which looks for indicators of cardiovascular health issues in people who don&#39;t have any symptoms. Total cholesterol is one component of a lipid panel that includes evaluating levels of high-density lipoprotein (HDL or &quot;good&quot;) cholesterol, low-density lipoprotein (LDL or &quot;bad&quot;) cholesterol. ...&nbsp;<a href=\"javascript:void(0)\">Read more </a><br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Cholesterol-Total, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Cholesterol-Total, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Cholesterol-Total, Serum available in Gurgaon or other packages better suited for you to keep your health in check. <a href=\"javascript:void(0)\">...&nbsp;Read less</a><br />\r\n&nbsp;</p>', 300.00, 199.00, '1', NULL, '24 Hour', '0', NULL, 'Male', '5-99 Years', 'parameter_1.pdf', NULL, '2021-09-25 06:38:35', '2023-02-16 09:26:16'),
(2, 'HDL Cholesterol Direct test', 2, 'Cholesterol - HDL, H D L, Cholesterol HDL, Cholesterol HDL  | HDL', '<p>A high-density lipoprotein (HDL) test measures the level of good cholesterol in the blood.&nbsp;<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians HDL Cholesterol Direct you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The HDL Cholesterol Direct available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose HDL Cholesterol Direct available in Gurgaon or other packages better suited for you to keep your health in check.<br />\r\n&nbsp;</p>', 420.00, 280.00, '1', NULL, '24 Hour', '1', '10 Hours', 'Male,Female', '5-99 Years', 'parameter_2.pdf', NULL, '2021-10-04 23:55:17', '2023-02-16 09:14:36'),
(3, 'LDL Cholesterol -Direct', 3, 'Cholesterol - LDL, LDL CHOLESTROL, Cholesterol LDL -Direct, serum, Cholesterol LDL | LDL', '<p>A Low-density lipoprotein (LDL) test is required to measure the level of bad cholesterol in the blood. Any abnormality in the levels of LDL implies medical complications including cardiac diseases.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians LDL Cholesterol -Direct you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The LDL Cholesterol -Direct available in Gurgaon has 1 parameter that give you a clear idea of your health. You can choose LDL Cholesterol -Direct available in Gurgaon or other packages better suited for you to keep your health in check.&nbsp;<br />\r\n&nbsp;</p>', 435.00, 290.00, '1', NULL, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', 'parameter_3.pdf', NULL, '2021-10-05 00:02:30', '2021-10-05 00:02:54'),
(4, 'Triglycerides, Serum', 4, 'TRIGLYCERIDES, SERUM, Triglycerides (TG), Triglycerides (TG)  | TRIG', '<p>Triglyceride concentration provides valuable information about metabolism and general health. High levels may reflect underlying metabolic disorders and an increased risk of heart disease.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Triglycerides, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Triglycerides, Serum available in Gurgaon has 1 parameter that give you a clear idea of your health. You can choose Triglycerides, Serum available in Gurgaon or other packages better suited for you to keep your health in check<br />\r\n&nbsp;</p>', 435.00, 290.00, '1', NULL, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', 'parameter_4.pdf', NULL, '2021-10-05 00:07:57', '2021-10-05 00:08:13'),
(5, 'Calcium Total', 5, 'Calcium- Total, Calcium Total  | CAL', '<p>A calcium level of 10.5 is normal in a person who is 21 years old but signals the presence of a parathyroid tumor in an adult over 40 years old. Teenagers with hyperparathyroidism typically have blood calcium levels between 10.9 and 12.3--it is not subtle.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Calcium Total, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Calcium Total, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Calcium Total, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 250.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_5.pdf', NULL, '2021-10-14 12:03:32', '2021-10-16 04:34:04'),
(6, 'Random Blood Sugar', 6, 'Blood Sugar Test, Random Blood Sugar Test  | RBS', '<p>The quantity of sugar in a person&#39;s blood is commonly referred to as blood glucose level. Glucose is a vital component of the human body that acts as the body&#39;s principal source of energy. It is necessary for the correct functioning of several tissues, including the brain. Blood sugar levels are low in the morning before breakfast, and they rise afterward. The blood glucose level in the body is closely controlled to keep it at a consistent level at all times. Hyperglycemia refers to persistently high blood sugar levels, whereas hypoglycemia refers to persistently low levels. Persistent hyperglycemia is the cause of diabetes.<br />\r\nThe levels of glucose in the blood at any given time of the day are measured using the Random Blood Sugar (RBS) test in Gurgaon, without the need for fasting. Many diabetic blood tests need fasting or continuous monitoring, but this one does not. It&#39;s helpful for those who need a quick diagnosis, such as people with type 1 diabetes who need supplemental insulin right away.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Random Blood Sugar you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Random Blood Sugar available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Random Blood Sugar available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 499.00, 349.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_6.pdf', NULL, '2021-10-14 12:28:19', '2021-10-16 04:32:20'),
(7, 'Albumin', 7, 'Albumin, SERUM ALBUMIN, Albumin, Albumin  | ALB', '<p>The most abundant protein in human blood plasma is the Human Serum Albumin which is produced in the liver. This blood test can help in measuring the levels of serum albumin which also helps in identification of related liver disorders and other conditions. Health conditions like malnutrition and various liver disorders can often cause decrease in its levels.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Albumin, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Albumin, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Albumin, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 300.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_7.pdf', NULL, '2021-10-14 12:36:42', '2021-10-16 04:30:23'),
(8, 'Alkaline Phosphatase', 8, 'Alkaline Phosphatase (ALP), ALKALINE PHOSPHATASE PNP AMP, Alkaline Phosphatase (ALP), Alkaline Phosphatase (ALP) | ALP', '<p>Alkaline phosphatase (ALP) is present in a number of tissues including liver, bone, intestine, and placenta. Any increase or decrease of Alkaline phosphatae is significant or suggestive of liver, bone or vitamin D related disorders. This test can probably diagnose the hepatobiliary disease and bone disease.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Alkaline Phosphatase, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Alkaline Phosphatase, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Alkaline Phosphatase, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 300.00, 200.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_8.pdf', NULL, '2021-10-14 12:40:49', '2023-02-16 09:39:38'),
(9, 'Bilirubin Direct, Serum', 9, 'Bilirubin Direct, S. BILIRUBIN (DIRECT) -DIAZO, Bilirubin- Direct, Bilirubin (Direct) | D-BIL', '<p>Bilirubin that moves freely in the blood is called direct or conjugated bilirubin. Its level increases in obstructive jaundice, gall stones, cholelithiasis, CBD stone and liver diseases. The test will help in keeping a check on Bilirubin levels in the blood.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Bilirubin Direct, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Bilirubin Direct, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Bilirubin Direct, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 300.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_9.pdf', NULL, '2021-10-14 12:45:59', '2021-10-16 04:28:02'),
(10, 'Bilirubin Total, Serum', 10, 'Bilirubin Total, BILRUBIN Total, Bilirubin- Total, Bilirubin (Total) | T-BIL', '<p>High levels of Bilirubin in the blood may be caused by infected gallbladder or Gilbert&#39;s syndrome or in case of liver damage, such as hepatitis, cirrhosis, or mononucleosis. Thus, Bilirubin blood test will help in diagnosis of such conditions.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Bilirubin Total, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Bilirubin Total, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Bilirubin Total, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 300.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_10.pdf', NULL, '2021-10-14 12:50:33', '2021-10-16 04:27:23'),
(11, 'Absolute Eosinophil Count', 11, 'Absolute Eosinophil Count, AEC, Absolute Eosinophil Count (AEC), Absolute Eosinophil Count (AEC)  | AEC', '<p>AEC blood test is done to measure the number of eosinophil count in relation to the whole white blood cell. It represents the immune response of our body related to the allergic conditions probably cold, cough, sore throat or skin allergy which often leads to an increase in the number of eosinophil in the WBC.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Absolute Eosinophil Count, Blood you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Absolute Eosinophil Count, Blood available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Absolute Eosinophil Count, Blood available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 270.00, 180.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_11.pdf', NULL, '2021-10-14 12:55:32', '2021-10-16 04:27:02'),
(12, 'Absolute Neutrophil Count', 12, 'Absolute Neutrophil Count, ABSOLUTE NEUTROPHIL COUNT, Absolute Neutrophil count | ANC', '<p>With the help of Neutrophils blood test, neutrophil count in relation to white blood cell can be measured. Immune system can be reactive to infectious and inflammatory conditions which often leads to increase in the number of neutrophil in White Blood Cells. Inflammation and infections can be bacterial, viral or protozoa or a result of other conditions.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Absolute Neutrophil Count, Blood you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Absolute Neutrophil Count, Blood available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Absolute Neutrophil Count, Blood available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 270.00, 180.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_12.pdf', NULL, '2021-10-14 12:59:17', '2021-10-16 04:25:53'),
(13, 'ESR Automated', 13, 'Erythrocyte Sedimentation Rate (ESR) (WB-EDTA Blood), E.S.R. (WESTERGREN METHOD).', '<p>ESR Automated test is required when a condition or disease is suspected of causing inflammation/infection somewhere in the body. The results are commonly elevated in Anaemia, infection, arthritis or inflammatory bowel disease. It is only a prognostic tool, giving a clear picture of an infection but not specifically telling us which part is infected.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians ESR Automated you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The ESR Automated available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose ESR Automated available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 300.00, 299.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_13.pdf', NULL, '2021-10-14 13:04:34', '2021-10-16 04:25:31'),
(14, 'PCV Haematocrit', 2, 'Packed Cell Volume, HAEMATOCRIT(PCV), PCV (Packed Cell Volume) | PCV', '<p>PCV Haematocrit test defines the volume percentage of red blood cells in blood and is an integral part of CBC. It is normally 45% for men and 40% for women.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians PCV Haematocrit you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The PCV Haematocrit available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose PCV Haematocrit available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 300.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_14.pdf', NULL, '2021-10-14 13:10:11', '2023-02-16 09:26:53'),
(15, 'Iron, Serum in  Gurgaon', 2, 'IRON SERUM - CAB METHOD, Iron, Iron | Iron', '<p>Serum iron test measures the amount of circulating iron that is bound to transferrin. This test is required when symptoms of iron deficiency are visible, which can cause anemia and other problems.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Iron, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Iron, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Iron, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 450.00, 300.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', 'N/A', 'parameter_15.pdf', NULL, '2021-10-16 06:41:31', '2021-10-16 06:42:32'),
(16, 'Folic Acid in  Gurgaon', 3, 'Folate Serum (Folic Acid), FOLIC ACID, Folic Acid, Folic Acid | Folate', '<p>Testing the folate level, which is also known as folic acid and vitamin B9, is primarily used in the diagnosis of anaemia. Symptoms like weakness, tiredness, pale skin, tingling or itching sensations, eye twitching, memory loss, are related to folate deficiency.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Folic Acid you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Folic Acid available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Folic Acid available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 900.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_16.pdf', NULL, '2021-10-16 06:52:38', '2021-10-16 06:54:36'),
(17, 'Vitamin B12 Cyanocobalamin', 4, 'Vitamin - B12, VITAMIN B12, SERUM, Vitamin B12 (Cynocobalamin), Vitamin B12 (Cynocobalamin)  | Vit-B12', '<p>Vitamin B-12 is necessary for brain function and red blood cell production. Vitamin B-12 deficiency can cause neurological problems and anemia. More than 2.4 micrograms (mcg) of vitamin B-12 should be consumed daily by those above the age of 14. Vitamin B-12 is found naturally in different types of meats, however, those who do not consume meat, such as vegans, can get it in the form of supplements.<br />\r\nThe Vitamin B12 Cyanocobalamin test in Gurgaon determines how much vitamin B12 is present in the blood. Treatment is required if a person&#39;s vitamin B-12 levels go outside the normal range. Vitamin B12 deficiency can result in neurological symptoms, as well as tiredness, constipation, and loss of weight. B-12 levels that are too high might suggest liver illness, diabetes, or another ailment. Doctors can use the findings to see if low vitamin B-12 levels are causing the symptoms.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Vitamin B12 Cyanocobalamin you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Vitamin B12 Cyanocobalamin available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Vitamin B12 Cyanocobalamin available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 800.00, 199.00, '1', NULL, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', 'parameter_17.pdf', NULL, '2021-10-16 06:57:54', '2021-10-16 06:59:48'),
(18, 'T3, Total Tri Iodothyronine in  Gurgaon', 5, 'Tri-Iodothyronine Total (TT3), T3 SERUM (CLIA), T3 (Trilodothyronine), T3 (Trilodothyronine) | T3', '<p>Triiodothyronine (T3) is a thyroid hormone affecting growth, development, metabolism, body temperature and heart rate. This test is required in suspected cases of hyperthyroidism i.e. TSH levels are lower than normal.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians T3, Total Tri Iodothyronine you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The T3, Total Tri Iodothyronine available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose T3, Total Tri Iodothyronine available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 345.00, 230.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_18.pdf', NULL, '2021-10-16 07:53:35', '2021-10-16 07:53:53'),
(19, 'T4, Total Thyroxine', 6, 'Thyroxine - Total (TT4), T4 SERUM (CLIA), T4 (Thyroxine), T4 (Thyroxine) | T4', '<p>T4 is a part of Thyroid Profile Total test required to screen and diagnose thyroid disorders. People with hyperthyroidism (weight loss, nervousness, tremors) or hypothyroidism (weight gain, constipation, fatigue, cold intolerance), should get this test.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians T4, Total Thyroxine you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The T4, Total Thyroxine available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose T4, Total Thyroxine available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 345.00, 230.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_19.pdf', NULL, '2021-10-16 07:57:39', '2021-10-16 07:57:57'),
(20, 'TSH Ultra - sensitive', 7, 'TSH Test, Thyroid Test, Hyperthyroidism Test, Serum TSH Test, TSH Ultra-sensitive Test | TSH', '<p>Thyroid stimulating hormone or TSH controls the release of thyroid hormone into the blood. TSH test measures the amount of it and helps in evaluating thyroid function and thyroid disorder like hyperthyroidism or hypothyroidism.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians TSH Ultra - sensitive you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The TSH Ultra - sensitive available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose TSH Ultra - sensitive available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 330.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_20.pdf', NULL, '2021-10-16 08:49:57', '2021-10-16 08:50:53'),
(21, 'BUN Urea Nitrogen, Serum', 8, 'Blood Urea Nitrogen (BUN), BLOOD UREA NITROGEN (BUN), BUN (Blood Urea Nitrogen ), BUN (Blood Urea Nitrogen ) | BUN', '<p>This test is required to measure the amount of nitrogen in blood that comes from urea. Urea is made in the liver and passed out of your body in the urine. A serum BUN urea test is helpful in checking kidney functions.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians BUN Urea Nitrogen, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The BUN Urea Nitrogen, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose BUN Urea Nitrogen, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 270.00, 180.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_21.pdf', NULL, '2021-10-16 09:00:31', '2021-10-16 09:00:58'),
(22, 'Calcium Total, Serum', 9, 'Calcium- Total, Calcium Total | CAL', '<p>A calcium level of 10.5 is normal in a person who is 21 years old but signals the presence of a parathyroid tumor in an adult over 40 years old. Teenagers with hyperparathyroidism typically have blood calcium levels between 10.9 and 12.3--it is not subtle.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Calcium Total, Serum you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Calcium Total, Serum available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Calcium Total, Serum available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 225.00, 149.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_22.pdf', NULL, '2021-10-16 09:06:27', '2021-10-16 09:06:43'),
(23, 'E2 - Female Reproductive Hormone Test', 10, 'E2  Serum ,  Female Fertility Hormone  Test | E2', '<p>A blood test to check estradiol levels is one of the most common fertility tests. One reason to have your estradiol levels checked is to determine your ovaries&#39; ability to produce eggs (which is known as ovarian reserve). It can also help to determine if your follicle stimulating hormone (FSH) test was accurate or not.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians E2 - Female Reproductive Hormone Test you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The E2 - Female Reproductive Hormone Test available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose E2 - Female Reproductive Hormone Test available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 1500.00, 299.00, '1', NULL, '48 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_23.pdf', NULL, '2021-10-16 09:13:20', '2021-10-16 09:13:54'),
(24, 'Blood Glucose Fasting', 11, 'Blood Sugar Glucose - Fasting, PLASMA GLUCOSE-GOD POD, Glucose Fasting (Blood Sugar Fasting), Glucose Fasting (Blood Sugar Fasting) | FBS', '<p>Fasting blood sugar readings reveal important information about a person&#39;s body&#39;s blood sugar management. Blood sugar levels tend to rise for approximately an hour after eating and then fall. High fasting blood sugar levels indicate insulin resistance or diabetes, whereas unusually low fasting blood sugar levels, may indicate the use of diabetic medicines. Diabetes is a condition in which the body&#39;s capacity to generate or respond to the hormone insulin is compromised. The pancreas of people with type 1 diabetes does not produce insulin.<br />\r\nThe Blood Glucose Fasting test in Gurgaon examines your blood sugar after an overnight fast. A fasting blood sugar level of 99 mg/dL or less is considered normal, whereas 100 to 125 mg/dL suggests prediabetes and 126 mg/dL indicates diabetes. Following a diabetes diagnosis, blood glucose testing may be required to assess how effectively your disease is being controlled. A high glucose level in a diabetic individual might indicate that their diabetes isn&#39;t being treated or managed properly.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Blood Glucose Fasting you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Blood Glucose Fasting available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Blood Glucose Fasting available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 299.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_24.pdf', NULL, '2021-10-16 09:17:53', '2021-10-16 09:43:22'),
(25, 'Absolute Eosinophil Count, Blood', 12, 'Platelet Count, PLATELET COUNT, Platelet Count, Platelet Count | PLT', '<p>Platelet Count measures the actual number of platelets in blood. This test is specially required for Dengue patients. A count more than normal levls is called thrombocytosis; and less is known as thrombocytopenia.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Platelet Count Thrombocyte count you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Platelet Count Thrombocyte count available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Platelet Count Thrombocyte count available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 75.00, 50.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_25.pdf', NULL, '2021-10-16 10:40:47', '2021-10-16 10:41:06'),
(26, 'WBC-Total Counts Leucocytes', 13, 'Total Leucocyte Count (TLC), T.L.C, TLC (Total Leukocyte Count), TLC (Total Leukocyte Count) | TLC', '<p>This test is required to measure the count of white blood cells (WBC) in blood. High value donates infection, an abnormally high count is seen in leukaemia and decreased levels in bone marrow depression.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians WBC-Total Counts Leucocytes you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The WBC-Total Counts Leucocytes available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose WBC-Total Counts Leucocytes available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 300.00, 199.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_26.pdf', NULL, '2021-10-16 10:47:26', '2021-10-16 10:48:16'),
(27, 'CPK, Total', 2, 'Creatine Phospho Kinase (CPK), CPK TOTAL, SERUM( CK-NAC) IFCC, CPK- NAC (Creatinine Phospho Kinase), CPK- NAC (Creatinine Phospho Kinase) | CPK', '<p>CPK is a specific enzyme found primarily in the heart, lungs, skeletal muscle, and brain tissues. When these parts are damaged or diseased, CPK enzymes can be released into the bloodstream. This test checks the levels of these enzymes in blood and identifies the parts that are damaged.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians CPK, Total you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The CPK, Total available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose CPK, Total available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 225.00, 149.00, '1', NULL, '48 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_27.pdf', NULL, '2021-10-16 11:10:33', '2023-02-16 09:27:20'),
(28, 'CRP (C Reactive Protein) Quantitative, Serum', 2, 'C-Reactive Protein (CRP), C- REACTIVE PROTEIN - QUANTITATIVE, C Reactive Protein (CRP) Quantitative, C Reactive Protein (CRP) Quantitative | CRP', '<p>The amount of C-reactive protein (CRP) in your blood is measured by a C-reactive protein test. CRP is a protein that the liver produces. Inflammation causes it to be released into the bloodstream. When you&#39;ve been wounded or had an infection, the body uses inflammation to protect your tissues. In the wounded or affected area, it may cause discomfort, redness, and swelling. Inflammation can also be caused by autoimmune conditions and chronic diseases.<br />\r\n<br />\r\nA CRP test can be used to detect or track inflammation-causing conditions. High levels of CRP in the blood indicate increased inflammation that could have been caused due to an infection or even cancer. Higher CRP levels may also denote inflamed arteries, thus escalating risks of a potential heart attack. A CRP test can help identify scores of serious medical conditions, including fungal/viral infections, Pelvic inflammatory disease (PID), urinary, skin, lungs, and digestive tract infections.<br />\r\n&nbsp;</p>', 750.00, 299.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_28.pdf', NULL, '2021-10-16 11:14:45', '2021-10-16 11:15:01'),
(29, 'Homocysteine', 3, 'Serum Homocysteine, Homocysteine Serum (Quantitative) | THCY', '<p>Homocysteine blood test is done to identify vitamin B12 or folic acid deficiency; to determine the risk of heart attack or stroke and to detect a rare inherited disease called homocystinuria in new-borns.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Homocysteine you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Homocysteine available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Homocysteine available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 2700.00, 299.00, '1', NULL, '48 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_29.pdf', NULL, '2021-10-16 11:29:00', '2021-10-16 11:29:21'),
(30, 'HsCRP High Sensitivity CRP', 4, 'High Sensitive CRP (hsCRP), C -RP(HS CRP), C Reactive Protein high Sensitive (hSCRP) | HsCRP', '<p>C Reactive Protein test measures the level of CRP, an acute-phase protein released into the blood by the liver and is required in suspected case of bacterial and fungal infection causing inflammation or in inflammatory bowel disease or for arthritis, an inflammatory disorder.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians HsCRP High Sensitivity CRP you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The HsCRP High Sensitivity CRP available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose HsCRP High Sensitivity CRP available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 1000.00, 149.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_30.pdf', NULL, '2021-10-16 11:34:20', '2021-10-16 11:34:37'),
(31, 'Vitamin D Total-25 Hydroxy', 5, 'Vitamin D (25 - Hydroxy), VITAMIN D, 25 - HYDROXY, Vitamin D (25-hydroxycholecalciferol), Vitamin D (25-hydroxycholecalciferol) | Vit-D3', '<p>Vitamin D is necessary for a variety of reasons, including bone and tooth health. It may also help to prevent a variety of illnesses and disorders, including type 1 diabetes. Vitamins are essential nutrients that the body cannot produce and must be obtained via food. Vitamin D, on the other hand, may be produced by the body. You may have a vitamin D deficiency if you have bone pain and muscular weakness. Many people&#39;s symptoms, on the other hand, are mild. Even if you don&#39;t have any symptoms, not getting enough vitamin D can be harmful to your health.<br />\r\nThe best approach to keep track of your vitamin D levels is to take the Vitamin D Total-25 Hydroxy test in Gurgaon. The quantity of 25-hydroxy vitamin D in your blood is an excellent indicator of your body&#39;s vitamin D levels. The test can detect whether your vitamin D levels are too high or excessively low.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Vitamin D Total-25 Hydroxy you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Vitamin D Total-25 Hydroxy available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Vitamin D Total-25 Hydroxy available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 1520.00, 449.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_31.pdf', NULL, '2021-10-16 11:38:35', '2021-10-16 11:38:54'),
(32, 'Urobilinogen', 6, 'UROBILINOGEN, URINE, Urobilinogen', '<p>Urobilinogen is usually passed in stool. In conditions like liver disease (cirrhosis, hepatitis) or when the flow of bile from the gallbladder is blocked, small amounts are found in urine.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Urobilinogen you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Urobilinogen available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose Urobilinogen available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 225.00, 149.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', 'parameter_32.pdf', NULL, '2021-10-18 03:51:56', '2021-10-18 03:52:11'),
(33, 'T3, Free Free Tri-Iodothyronine', 2, 'Tri-Iodothyronine Free (FT3), FT3 (Trilodothyronine- Free), FT3 (Trilodothyronine- Free) | FT3', '<p>A free / total triiodothyronine (free T3 / total T3) test assesses thyroid function. It is ordered to diagnose hyperthyroidism and may be ordered to help monitor treatment of a person with a known thyroid disorder.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians T3, Free Free Tri-Iodothyronine you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The T3, Free Free Tri-Iodothyronine available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose T3, Free Free Tri-Iodothyronine available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 585.00, 149.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '4-120 Years', 'parameter_33.pdf', NULL, '2021-10-18 04:52:37', '2021-10-18 04:53:10'),
(34, 'T4, Free Free Thyroxine', 2, 'Thyroxine - Free (FT4), FT4 (Thyroxine- Free), FT4 (Thyroxine- Free) | FT4', '<p>Free thyroxine (free T4) test is required to evaluate thyroid function and diagnose thyroid diseases, including hyperthyroidism and hypothyroidism, usually after discovering that the thyroid stimulating hormone (TSH) level is abnormal.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians T4, Free Free Thyroxine you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The T4, Free Free Thyroxine available in Gurgaon has 1 parameters that give you a clear idea of your health. You can choose T4, Free Free Thyroxine available in Gurgaon or other packages better suited for you to keep your health in check.</p>', 885.00, 149.00, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', '11279844211635845572.pdf', NULL, '2021-10-18 04:55:07', '2022-01-06 04:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(11) NOT NULL,
  `payment_gateway_name` varchar(1000) NOT NULL,
  `key_name` varchar(3000) NOT NULL,
  `meta_value` varchar(3000) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `payment_gateway_name`, `key_name`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 'Braintree', 'is_active', '1', '2021-10-11 14:38:26', '2021-10-16 09:39:23'),
(2, 'Braintree', 'environment', 'sandbox', '2021-10-11 14:38:52', '2021-10-16 09:39:24'),
(3, 'Braintree', 'merchantId', '8x2htw9jqj88wsyf', '2021-10-11 14:39:11', '2021-10-16 09:39:24'),
(4, 'Braintree', 'publicKey', '7zygsk7cw43c3mfk', '2021-10-11 14:39:32', '2021-10-16 09:39:24'),
(5, 'Braintree', 'privateKey', 'f0153c16d5e9fc55380528445b73ba1b', '2021-10-11 14:39:49', '2021-10-16 09:39:24'),
(6, 'Braintree', 'TokenizationKeys', 'sandbox_bn2rby52_8x2htw9jqj88wsyf', '2021-10-11 14:40:38', '2021-10-16 09:39:24'),
(7, 'Stripe', 'is_active', '1', '2021-10-11 14:44:23', '2021-10-16 09:40:37'),
(8, 'Stripe', 'public_key', 'pk_test_yFUNiYsEESF7QBY0jcZoYK9j00yHumvXho', '2021-10-11 14:44:37', '2021-10-16 09:40:37'),
(9, 'Stripe', 'secert_key', 'sk_test_H4cvZ6S2eX8vFFDdZCk4oNvt00RMnplVS4', '2021-10-11 14:44:54', '2021-10-16 09:40:37'),
(10, 'Stripe', 'currency', 'USD', '2021-10-11 18:11:04', '2021-10-16 09:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_details`
--

CREATE TABLE `payment_gateway_details` (
  `id` int(11) NOT NULL,
  `gateway_name` text DEFAULT NULL,
  `key` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_gateway_details`
--

INSERT INTO `payment_gateway_details` (`id`, `gateway_name`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 'environment', 'sandbox', '2022-05-23 04:54:20', '2022-05-23 04:54:20'),
(2, 'braintree', 'merchant_id', 'pk2gctnhzzz2ssmx', '2022-05-23 04:54:20', '2022-05-23 04:54:20'),
(3, 'braintree', 'public_key', 'g9mxnzb3vyn73q9q', '2022-05-23 04:54:20', '2022-05-23 04:54:20'),
(4, 'braintree', 'private_key', '52f378898a8292a0eec2cc6082db01c6', '2022-05-23 04:54:20', '2022-05-23 04:54:20'),
(5, 'braintree', 'tokenization_key', 'sandbox_bnvr3856_pk2gctnhzzz2ssmx', '2022-05-23 04:54:20', '2022-05-23 04:54:20'),
(6, 'braintree', 'is_active', '1', '2022-05-23 04:54:20', '2022-05-23 04:54:20'),
(7, 'razorpay', 'razorpay_key', 'rzp_test_RMg24MU9yQaRb7', '2022-05-23 04:57:42', '2022-05-23 04:57:42'),
(8, 'razorpay', 'razorpay_secert', 'qrJkEe9DjZTuUA751lQqTAdq', '2022-05-23 04:57:42', '2022-05-23 04:57:42'),
(9, 'razorpay', 'is_active', '1', '2022-05-23 04:57:42', '2022-05-23 04:57:42'),
(10, 'paystack', 'public_key', 'pk_test_e919ffd4fcde90c0c7f7df69bf5758aaf30e91fc', '2022-05-23 04:59:16', '2022-05-23 04:59:16'),
(11, 'paystack', 'secert_key', 'sk_test_1ae3b9d7952e90bda3b63ac66fe6413506bdb439', '2022-05-23 04:59:16', '2022-05-23 04:59:16'),
(12, 'paystack', 'is_active', '1', '2022-05-23 04:59:16', '2022-05-23 04:59:16'),
(13, 'paystack', 'payment_url', 'https://api.paystack.co', '2022-05-23 04:59:16', '2022-05-23 04:59:16'),
(14, 'paystack', 'merchant_email', 'admin@gmail.com', '2022-05-23 05:00:02', '2022-05-23 05:00:02'),
(15, 'paytm', 'merchant_id', 'QewFrm27936074633680', '2022-05-23 07:29:51', '2022-05-23 07:29:51'),
(16, 'paytm', 'merchant_key', 'DIY12386817555501617', '2022-05-23 07:29:51', '2022-05-23 07:29:51'),
(17, 'paytm', 'merchant_website', 'WEBSTAGING', '2022-05-23 07:29:51', '2022-05-23 07:29:51'),
(18, 'paytm', 'environment', 'local', '2022-05-23 07:29:51', '2022-05-23 07:29:51'),
(19, 'paytm', 'channel', 'WEB', '2022-05-23 07:29:51', '2022-05-23 07:29:51'),
(20, 'paytm', 'industry_type', 'Retail', '2022-05-23 07:29:51', '2022-05-23 07:29:51'),
(21, 'paytm', 'is_active', '1', '2022-05-23 07:29:51', '2022-05-23 07:29:51'),
(22, 'rave', 'public_key', 'FLWPUBK_TEST-713987ed64449901d7c308cb51b2108b-X', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(23, 'rave', 'secert_key', 'FLWSECK_TEST-409fbae8b7e6497cefb6f08b18ee2465-X', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(24, 'rave', 'title', 'Freaktemplate', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(25, 'rave', 'environment', 'staging', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(26, 'rave', 'RAVE_PREFIX', 'rave', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(27, 'rave', 'RAVE_SECRET_HASH', 'My_lovelysite123', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(28, 'rave', 'logo', 'http://freaktemplate.com/public/design/wp-content/themes/tijarah/assets/css/logo-light.png', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(29, 'rave', 'is_active', '1', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(30, 'rave', 'encryption_key', 'FLWSECK_TEST8908b24b7d22', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(31, 'rave', 'country', 'NG', '2022-05-23 07:30:44', '2022-05-23 07:30:44'),
(32, 'rave', 'currency', 'NGN', '2022-05-23 07:30:44', '2022-05-23 07:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_packages`
--

CREATE TABLE `popular_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>package,2=>parameter,3=>profile',
  `type_id` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_packages`
--

INSERT INTO `popular_packages` (`id`, `name`, `type`, `type_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Lipid-profile ', '3', 1, NULL, '2021-10-05 05:03:40', '2021-10-05 05:03:40'),
(2, 'Cholesterol', '1', 6, NULL, '2021-10-05 05:04:11', '2023-02-16 09:43:16'),
(3, 'Liver', '3', 2, NULL, '2021-10-16 07:11:50', '2021-10-16 07:11:50'),
(4, 'Anaemia ', '1', 3, NULL, '2021-10-16 07:12:11', '2021-10-16 07:12:11'),
(5, 'Calcium', '3', 5, NULL, '2021-10-16 07:12:27', '2023-02-16 09:43:28'),
(6, 'Heart', '3', 1, NULL, '2021-10-16 07:12:59', '2023-02-16 09:43:02'),
(7, 'Kidney', '1', 2, NULL, '2021-10-16 07:13:31', '2023-02-16 09:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `short_desc` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mrp` double NOT NULL,
  `price` double NOT NULL,
  `sample_collection` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sample_collection_fee` double DEFAULT NULL,
  `report_time` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasting_time` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fast_time` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_recommended_for` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_recommended_for_age` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab_report` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `profile_name`, `category_id`, `short_desc`, `mrp`, `price`, `sample_collection`, `sample_collection_fee`, `report_time`, `fasting_time`, `fast_time`, `test_recommended_for`, `test_recommended_for_age`, `description`, `no_of_parameter`, `lab_report`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Lipid-profile', 1, 'lack of blood', 800, 349, '1', 0, '24 Hours', '1', '10 Hours', 'Male,Female', '5-99 Years', '<p>A lipid panel or lipid profile is another name for a comprehensive cholesterol test. It can be used by your doctor to determine the quantity of &ldquo;good&rdquo; and &ldquo;bad&rdquo; cholesterol as well as triglycerides (a kind of fat) in your blood. High cholesterol is a serious condition that can lead to cardiovascular illnesses and people with the following risk factors are the most susceptible to it. Some of the prominent risk factors include smoking, obesity, a sedentary lifestyle, excessive alcohol intake, and a family history of high cholesterol or heart diseases.<br />\r\nYou should start getting your cholesterol levels tested around the age of 35 or before if you are a male. In the case of females, one should start getting their cholesterol levels checked when they&#39;re 45 years old or younger. To be cautious, you should get your cholesterol checked with the Lipid Profile test in Gurgaon every five years beginning at the age of 20. The lipid profile test checks for four main types of cholesterol, namely total cholesterol, low-density cholesterol, high-density cholesterol, and triglycerides.&nbsp;<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Lipid Profile you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Lipid Profile available in Gurgaon has 9 parameters that give you a clear idea of your health. You can choose Lipid Profile available in Gurgaon or other packages better suited for you to keep your health in check.</p>', '1,3,24,32', '16024875291635846309.pdf', NULL, '2021-09-30 06:38:40', '2023-02-16 09:27:49'),
(2, 'Liver Function Test', 1, 'Liver Profile, Liver Panel, Liver Panel Basic, Lever Function Test', 800, 349, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', '<p>Timely screening can help you in avoiding illnesses and with Healthians Liver Function Test you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Liver Function Test available in Gurgaon has 12 parameters that give you a clear idea of your health. You can choose Liver Function Test available in Gurgaon or other packages better suited for you to keep your health in check.</p>', '7,8,9', '7962173471635846295.pdf', NULL, '2021-10-16 05:05:00', '2023-02-16 09:29:45'),
(3, 'Complete Hemogram', 4, 'CBC, Hemogram, Complete Blood Count | CBC', 800, 349, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', '<p>Complete Hemogram is a group of parameters which is used to determine overall health and detect a wide range of disorders, including anaemia, infection, inflammation and leukemia(Blood cancer) and to monitor the effectiveness of its treatment.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Complete Hemogram you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Complete Hemogram available in Gurgaon has 25 parameters that give you a clear idea of your health. You can choose Complete Hemogram available in Gurgaon or other packages better suited for you to keep your health in check.</p>', '11,12,13,14', '10594961791635846285.pdf', NULL, '2021-10-16 05:26:38', '2021-11-02 04:14:45'),
(4, 'Iron Studies With Ferritin', 1, 'Iron Studies test includes a set of tests to determine the amount of iron in your body.', 1050, 499, '1', NULL, '72 Hours', '0', NULL, 'Male,Female', '5-99 Years', '<p>Iron Studies test includes a set of tests to determine the amount of iron in your body; these tests are usually performed together as relative changes in each can impact the result of one or more results. The iron blood test is usually performed in case of Anaemia or excess iron in the body and includes serum iron test, ferritin test, TIBC and transferrin saturation test.<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Iron Studies With Ferritin you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Iron Studies With Ferritin available in Gurgaon has 5 parameters that give you a clear idea of your health. You can choose Iron Studies With Ferritin available in Gurgaon or other packages better suited for you to keep your health in check.</p>', '15,17,18', '2308035911635846272.pdf', NULL, '2021-10-16 07:28:36', '2023-02-16 09:30:52'),
(5, 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 2, 'Hyperthyroidism is a disease that affects the thyroid gland', 800, 399, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', '<p>Hyperthyroidism is a disease that affects the thyroid gland. This gland is a tiny butterfly-shaped organ on the front of the neck. It makes the hormones tetraiodothyronine (T4) and triiodothyronine (T3), which regulate energy usage by the cells. The T3 and T4 hormones are released by the thyroid gland, which also regulates your metabolism. When the thyroid produces excessive T4, T3, or both, hyperthyroidism develops. An overactive thyroid diagnosis and treatment of the root issue can alleviate symptoms and avoid problems.</p>\r\n\r\n<p><br />\r\nThe Thyroid Profile - Total (T3, T4, &amp; TSH Ultrasensitive) test in Gurgaon or thyroid function panel tests are other names for a thyroid profile test. It is a series of tests that assesses the thyroid gland&#39;s function and aids in the diagnosis of thyroid diseases. Thyroid hormones such as T3, T4, and TSH are measured in the blood in these examinations.</p>', '18,19,20', '121476681635846261.pdf', NULL, '2021-10-16 09:29:44', '2021-11-02 04:14:21'),
(6, 'Kidney Function Test', 6, 'Healthy kidneys remove wastes and excess fluid from the blood.', 1000, 699, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', '<p>Healthy kidneys remove wastes and excess fluid from the blood. Blood and urine tests show how well the kidneys are doing their job and how quickly body wastes are being removed.&nbsp; Urine tests can also detect whether the kidneys are leaking abnormal amounts of protein, a sign of kidney damage. Here&#39;s a quick guide to the tests used to measure kidney function.</p>', '21,22', '12162833721635846245.pdf', NULL, '2021-10-16 09:43:03', '2021-11-02 04:14:05'),
(7, 'Urine Routine & Microscopy', 7, 'Urine Analysis, Urine Routine, Urine Test, Microscopic Examination of Urine  | Urine R/M', 599, 349, '1', NULL, '24 Hours', '0', NULL, 'Male,Female', '5-99 Years', '<p>Urinary tract infection or UTI is one of the most common infections that can occur in any part of the urinary tract. The entire urinary tract is a combination of the kidneys, ureters, bladder, and urethra. The UTI can afflict anyone regardless of gender and age, however, it&rsquo;s been observed that women are more susceptible to a UTI, along with recurring urinary tract infections. Although not a fatal condition, if the urinary tract infection attacks the kidneys and is able to mix with the bloodstream, it can turn into a life-threatening illness.<br />\r\nThe urine routine and microscopy test is a simple urine test that can help detect urinary tract infection. The diagnosis for urinary tract infection involved a physical exam along with a urine test to ascertain the type and severity of the UTI. The urine routine and microscopy test identifies the presence of white blood cells (WBCs), which would<br />\r\n<br />\r\nTimely screening can help you in avoiding illnesses and with Healthians Urine Routine &amp; Microscopy you can keep a track of your health in the best way because Healthians is India&#39;s leading health test @ home service with more than 20 lac satisfied customers across 140+ cities. The Urine Routine &amp; Microscopy available in Gurgaon has 18 parameters that give you a clear idea of your health. You can choose Urine Routine &amp; Microscopy available in Gurgaon or other packages better suited for you to keep your health in check.</p>', '7,32', '4119366771641462535.pdf', NULL, '2021-10-18 04:13:38', '2022-01-06 04:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `resetpasswords`
--

CREATE TABLE `resetpasswords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `code` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resetpasswords`
--

INSERT INTO `resetpasswords` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, NULL, 542318, '2021-10-18 00:27:37', '2021-10-18 00:27:37'),
(2, NULL, 101455, '2021-10-18 00:27:52', '2021-10-18 00:27:52'),
(3, NULL, 957064, '2021-10-18 00:29:52', '2021-10-18 00:29:52'),
(4, 3, 967023, '2022-01-08 03:54:22', '2022-01-08 03:54:22'),
(5, 9, 478074, '2022-01-22 10:28:56', '2022-01-22 10:28:56'),
(6, 9, 818072, '2022-01-22 11:12:27', '2022-01-22 11:12:27'),
(7, 44, 618576, '2023-01-03 06:00:57', '2023-01-03 06:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=>package,2=>parameter,3=>profile	',
  `type_id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ratting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `type`, `type_id`, `user_id`, `ratting`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '5', 'it was a good value for the money!', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(2, 1, 1, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(3, 1, 1, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(4, 1, 1, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(5, 1, 2, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(6, 1, 2, 4, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(7, 1, 2, 5, '5', 'it was a good value for the money!', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(8, 1, 2, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(9, 1, 3, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(10, 1, 3, 4, '4', 'it was a good value for the money!', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(11, 1, 3, 6, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(12, 1, 3, 5, '5', 'Very good just what you need every important test covered', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(13, 1, 4, 6, '5', 'Very good just what you need every important test covered', '20-01-2022 12:48:54', '2022-01-19 19:18:54', '2022-01-19 19:18:54'),
(14, 1, 4, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(15, 1, 4, 6, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(16, 1, 4, 6, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(17, 1, 5, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(18, 1, 5, 3, '4', 'Very good just what you need every important test covered', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(19, 1, 5, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(20, 1, 5, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(21, 1, 6, 4, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(22, 1, 6, 6, '5', 'Very good just what you need every important test covered', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(23, 1, 6, 3, '5', 'it was a good value for the money!', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(24, 1, 6, 3, '4', 'it was a good value for the money!', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(25, 1, 7, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:55', '2022-01-19 19:18:55', '2022-01-19 19:18:55'),
(26, 1, 7, 6, '5', 'it was a good value for the money!', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(27, 1, 7, 3, '4', 'it was a good value for the money!', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(28, 1, 7, 5, '5', 'it was a good value for the money!', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(29, 1, 8, 5, '5', 'it was a good value for the money!', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(30, 1, 8, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(31, 1, 8, 6, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(32, 1, 8, 5, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(33, 1, 9, 5, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(34, 1, 9, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(35, 1, 9, 5, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(36, 1, 9, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(37, 1, 10, 4, '5', 'it was a good value for the money!', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(38, 1, 10, 5, '5', 'Very good just what you need every important test covered', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(39, 1, 10, 5, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(40, 1, 10, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(41, 1, 11, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(42, 1, 11, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:56', '2022-01-19 19:18:56', '2022-01-19 19:18:56'),
(43, 1, 11, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(44, 1, 11, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(45, 1, 12, 6, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(46, 1, 12, 4, '5', 'it was a good value for the money!', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(47, 1, 12, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(48, 1, 12, 6, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(49, 1, 13, 3, '4', 'it was a good value for the money!', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(50, 1, 13, 3, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(51, 1, 13, 3, '5', 'it was a good value for the money!', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(52, 1, 13, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(53, 1, 14, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(54, 1, 14, 4, '5', 'it was a good value for the money!', '20-01-2022 12:48:57', '2022-01-19 19:18:57', '2022-01-19 19:18:57'),
(55, 1, 14, 6, '4', 'Very good just what you need every important test covered', '20-01-2022 12:48:58', '2022-01-19 19:18:58', '2022-01-19 19:18:58'),
(56, 1, 14, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:48:58', '2022-01-19 19:18:58', '2022-01-19 19:18:58'),
(57, 2, 1, 3, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:19', '2022-01-19 19:19:19', '2022-01-19 19:19:19'),
(58, 2, 1, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:19', '2022-01-19 19:19:19', '2022-01-19 19:19:19'),
(59, 2, 1, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(60, 2, 1, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(61, 2, 2, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(62, 2, 2, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(63, 2, 2, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(64, 2, 2, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(65, 2, 3, 3, '4', 'it was a good value for the money!', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(66, 2, 3, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(67, 2, 3, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(68, 2, 3, 3, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(69, 2, 4, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(70, 2, 4, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(71, 2, 4, 4, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(72, 2, 4, 6, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(73, 2, 5, 6, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(74, 2, 5, 5, '5', 'it was a good value for the money!', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(75, 2, 5, 4, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:20', '2022-01-19 19:19:20', '2022-01-19 19:19:20'),
(76, 2, 5, 5, '4', 'it was a good value for the money!', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(77, 2, 6, 4, '5', 'it was a good value for the money!', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(78, 2, 6, 3, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(79, 2, 6, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(80, 2, 6, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(81, 2, 7, 5, '4', 'it was a good value for the money!', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(82, 2, 7, 5, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(83, 2, 7, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(84, 2, 7, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(85, 2, 8, 5, '4', 'it was a good value for the money!', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(86, 2, 8, 4, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(87, 2, 8, 4, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(88, 2, 8, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(89, 2, 9, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:21', '2022-01-19 19:19:21', '2022-01-19 19:19:21'),
(90, 2, 9, 6, '5', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(91, 2, 9, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(92, 2, 9, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(93, 2, 10, 5, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(94, 2, 10, 6, '4', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(95, 2, 10, 3, '5', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(96, 2, 10, 6, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(97, 2, 11, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(98, 2, 11, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(99, 2, 11, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(100, 2, 11, 5, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(101, 2, 12, 6, '4', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(102, 2, 12, 5, '4', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(103, 2, 12, 5, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(104, 2, 12, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(105, 2, 13, 3, '4', 'it was a good value for the money!', '20-01-2022 12:49:22', '2022-01-19 19:19:22', '2022-01-19 19:19:22'),
(106, 2, 13, 4, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(107, 2, 13, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(108, 2, 13, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(109, 2, 14, 5, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(110, 2, 14, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(111, 2, 14, 3, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(112, 2, 14, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(113, 2, 15, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(114, 2, 15, 6, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(115, 2, 15, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(116, 2, 15, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(117, 2, 16, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(118, 2, 16, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(119, 2, 16, 4, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:23', '2022-01-19 19:19:23', '2022-01-19 19:19:23'),
(120, 2, 16, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(121, 2, 17, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(122, 2, 17, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(123, 2, 17, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(124, 2, 17, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(125, 2, 18, 3, '4', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(126, 2, 18, 5, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(127, 2, 18, 3, '4', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(128, 2, 18, 3, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(129, 2, 19, 6, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(130, 2, 19, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(131, 2, 19, 4, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(132, 2, 19, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(133, 2, 20, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(134, 2, 20, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(135, 2, 20, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(136, 2, 20, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(137, 2, 21, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(138, 2, 21, 5, '5', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(139, 2, 21, 3, '4', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(140, 2, 21, 4, '5', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(141, 2, 22, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:24', '2022-01-19 19:19:24', '2022-01-19 19:19:24'),
(142, 2, 22, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(143, 2, 22, 4, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(144, 2, 22, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(145, 2, 23, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(146, 2, 23, 5, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(147, 2, 23, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(148, 2, 23, 6, '4', 'it was a good value for the money!', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(149, 2, 24, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(150, 2, 24, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(151, 2, 24, 6, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(152, 2, 24, 3, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(153, 2, 25, 3, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(154, 2, 25, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(155, 2, 25, 6, '4', 'it was a good value for the money!', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(156, 2, 25, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(157, 2, 26, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(158, 2, 26, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(159, 2, 26, 5, '5', 'it was a good value for the money!', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(160, 2, 26, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(161, 2, 27, 6, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(162, 2, 27, 5, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:25', '2022-01-19 19:19:25', '2022-01-19 19:19:25'),
(163, 2, 27, 4, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(164, 2, 27, 6, '5', 'it was a good value for the money!', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(165, 2, 28, 4, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(166, 2, 28, 3, '4', 'it was a good value for the money!', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(167, 2, 28, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(168, 2, 28, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(169, 2, 29, 4, '5', 'it was a good value for the money!', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(170, 2, 29, 3, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(171, 2, 29, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(172, 2, 29, 3, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(173, 2, 30, 3, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(174, 2, 30, 5, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(175, 2, 30, 4, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(176, 2, 30, 3, '5', 'it was a good value for the money!', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(177, 2, 31, 6, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(178, 2, 31, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(179, 2, 31, 4, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(180, 2, 31, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(181, 2, 32, 5, '5', 'Very good just what you need every important test covered', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(182, 2, 32, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(183, 2, 32, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(184, 2, 32, 5, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(185, 2, 33, 4, '4', 'it was a good value for the money!', '20-01-2022 12:49:26', '2022-01-19 19:19:26', '2022-01-19 19:19:26'),
(186, 2, 33, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:27', '2022-01-19 19:19:27', '2022-01-19 19:19:27'),
(187, 2, 33, 3, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:27', '2022-01-19 19:19:27', '2022-01-19 19:19:27'),
(188, 2, 33, 3, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:27', '2022-01-19 19:19:27', '2022-01-19 19:19:27'),
(189, 2, 34, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:27', '2022-01-19 19:19:27', '2022-01-19 19:19:27'),
(190, 2, 34, 6, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:27', '2022-01-19 19:19:27', '2022-01-19 19:19:27'),
(191, 2, 34, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:27', '2022-01-19 19:19:27', '2022-01-19 19:19:27'),
(192, 2, 34, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:27', '2022-01-19 19:19:27', '2022-01-19 19:19:27'),
(193, 2, 1, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:37', '2022-01-19 19:19:37', '2022-01-19 19:19:37'),
(194, 2, 1, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:37', '2022-01-19 19:19:37', '2022-01-19 19:19:37'),
(195, 2, 1, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:37', '2022-01-19 19:19:37', '2022-01-19 19:19:37'),
(196, 2, 1, 4, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:37', '2022-01-19 19:19:37', '2022-01-19 19:19:37'),
(197, 2, 2, 4, '5', 'it was a good value for the money!', '20-01-2022 12:49:37', '2022-01-19 19:19:37', '2022-01-19 19:19:37'),
(198, 2, 2, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:37', '2022-01-19 19:19:37', '2022-01-19 19:19:37'),
(199, 2, 2, 3, '4', 'it was a good value for the money!', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(200, 2, 2, 4, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(201, 2, 3, 5, '5', 'it was a good value for the money!', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(202, 2, 3, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(203, 2, 3, 4, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(204, 2, 3, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(205, 2, 4, 6, '5', 'it was a good value for the money!', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(206, 2, 4, 6, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(207, 2, 4, 5, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(208, 2, 4, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(209, 2, 5, 5, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(210, 2, 5, 6, '4', 'Very good just what you need every important test covered', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(211, 2, 5, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(212, 2, 5, 5, '5', 'it was a good value for the money!', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(213, 2, 6, 3, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(214, 2, 6, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(215, 2, 6, 5, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(216, 2, 6, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(217, 2, 7, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(218, 2, 7, 3, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(219, 2, 7, 3, '4', 'The quality of your report and your results made it easy to identify potential problems.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(220, 2, 7, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '20-01-2022 12:49:38', '2022-01-19 19:19:38', '2022-01-19 19:19:38'),
(221, 2, 1, 5, '4', 'Very good just what you need every important test covered', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(222, 2, 1, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(223, 2, 1, 4, '4', 'it was a good value for the money!', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(224, 2, 1, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(225, 2, 2, 6, '4', 'it was a good value for the money!', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(226, 2, 2, 6, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(227, 2, 2, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(228, 2, 2, 3, '5', 'it was a good value for the money!', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(229, 2, 3, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(230, 2, 3, 3, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(231, 2, 3, 5, '4', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(232, 2, 3, 6, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(233, 2, 4, 5, '4', 'it was a good value for the money!', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(234, 2, 4, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(235, 2, 4, 5, '5', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(236, 2, 4, 6, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(237, 2, 5, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(238, 2, 5, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(239, 2, 5, 5, '5', 'Very good just what you need every important test covered', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(240, 2, 5, 3, '4', 'it was a good value for the money!', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(241, 2, 6, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(242, 2, 6, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(243, 2, 6, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(244, 2, 6, 6, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(245, 2, 7, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(246, 2, 7, 6, '4', 'Very good just what you need every important test covered', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(247, 2, 7, 6, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(248, 2, 7, 5, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:47', '2023-01-02 18:55:47', '2023-01-02 18:55:47'),
(249, 2, 1, 3, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(250, 2, 1, 5, '5', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(251, 2, 1, 5, '4', 'Very good just what you need every important test covered', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(252, 2, 1, 5, '4', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(253, 2, 2, 4, '5', 'Very good just what you need every important test covered', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(254, 2, 2, 3, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(255, 2, 2, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(256, 2, 2, 6, '4', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(257, 2, 3, 3, '4', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(258, 2, 3, 4, '4', 'Very good just what you need every important test covered', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(259, 2, 3, 5, '5', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(260, 2, 3, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(261, 2, 4, 6, '5', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(262, 2, 4, 6, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(263, 2, 4, 3, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(264, 2, 4, 4, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(265, 2, 5, 3, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(266, 2, 5, 4, '5', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(267, 2, 5, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(268, 2, 5, 4, '4', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(269, 2, 6, 4, '5', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(270, 2, 6, 4, '5', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(271, 2, 6, 3, '5', 'Very good just what you need every important test covered', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(272, 2, 6, 4, '4', 'it was a good value for the money!', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(273, 2, 7, 4, '5', 'Very good just what you need every important test covered', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(274, 2, 7, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(275, 2, 7, 4, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(276, 2, 7, 5, '4', 'The quality of your report and your results made it easy to identify potential problems.', '02-01-2023 06:55:56', '2023-01-02 18:55:56', '2023-01-02 18:55:56'),
(277, 2, 2, 2, NULL, 'good', '02-01-2023 07:14:40', '2023-01-02 19:14:40', '2023-01-02 19:14:40'),
(278, 2, 1, 3, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(279, 2, 1, 6, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(280, 2, 1, 5, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(281, 2, 1, 6, '5', 'The quality of your report and your results made it easy to identify potential problems.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(282, 2, 2, 6, '5', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(283, 2, 2, 3, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(284, 2, 2, 5, '4', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(285, 2, 2, 6, '5', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(286, 2, 3, 5, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(287, 2, 3, 6, '4', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(288, 2, 3, 3, '5', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(289, 2, 3, 5, '4', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(290, 2, 4, 6, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(291, 2, 4, 3, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(292, 2, 4, 6, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(293, 2, 4, 4, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(294, 2, 5, 3, '5', 'The quality of your report and your results made it easy to identify potential problems.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(295, 2, 5, 6, '4', 'The quality of your report and your results made it easy to identify potential problems.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(296, 2, 5, 3, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04');
INSERT INTO `reviews` (`id`, `type`, `type_id`, `user_id`, `ratting`, `description`, `date`, `created_at`, `updated_at`) VALUES
(297, 2, 5, 6, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(298, 2, 6, 5, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(299, 2, 6, 4, '4', 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(300, 2, 6, 5, '4', 'The extractable organics GC/MS work was well documented, the best I have seen from a commercial lab.', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(301, 2, 6, 6, '5', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(302, 2, 7, 6, '5', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(303, 2, 7, 4, '4', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(304, 2, 7, 6, '5', 'Very good just what you need every important test covered', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04'),
(305, 2, 7, 3, '4', 'it was a good value for the money!', '03-01-2023 12:56:04', '2023-01-03 00:56:04', '2023-01-03 00:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `txt_charge` double DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `address` varchar(3000) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `is_rtl` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>ltl,1=>rtl',
  `main_banner` varchar(250) DEFAULT NULL,
  `footer_logo` varchar(100) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `search_banner` varchar(250) DEFAULT NULL,
  `mobile_app_banner` varchar(250) DEFAULT NULL,
  `appstore_url` varchar(500) DEFAULT NULL,
  `playstore_url` varchar(500) DEFAULT NULL,
  `largest_phlebotomist` varchar(50) DEFAULT NULL,
  `satisfied_customers` varchar(50) DEFAULT NULL,
  `total_test` varchar(50) DEFAULT NULL,
  `presence_cities` varchar(50) DEFAULT NULL,
  `is_demo` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>live,1=>demo',
  `is_web` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0=>web+admin,1=>admin,2=>web',
  `timezone` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `android_server_key` varchar(2000) DEFAULT NULL,
  `ios_server_key` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `txt_charge`, `currency`, `address`, `email`, `phone`, `logo`, `is_rtl`, `main_banner`, `footer_logo`, `favicon`, `search_banner`, `mobile_app_banner`, `appstore_url`, `playstore_url`, `largest_phlebotomist`, `satisfied_customers`, `total_test`, `presence_cities`, `is_demo`, `is_web`, `timezone`, `created_at`, `updated_at`, `android_server_key`, `ios_server_key`) VALUES
(1, 10, 'CAD - $', 'Discover St, New York, NY 10012, USA', 'freaktemplate@gmail.com', '+251-235-3256', '16370392121954716679.png', '0', '1637047020470463548.png', '1637039999418002543.png', '16370397961678354912.png', '16343776831064661647.png', '16343776831438933155.png', 'https://www.apple.com/in/app-store/', 'https://play.google.com/store', '2500', '6000', '500', '90', '0', '0', '325', '2021-10-09 17:43:22', '2021-11-16 07:17:00', 'AAAABAuLQFM:APA91bHKV5A025KHhr8sDUISumXLVHa6HEVRIRRwNr4WIfiSkbWX-Y2PmIVRIT2BcRDtcWeCSOLWKKuqEA0D3GCU_cSxLvYsA_NA9kFpqetkORoC5wtMBA01imFa5D-X_QTf4DIxDNyH', 'retertre');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `image`, `description`, `short_desc`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Anaemia', '16576044561181554552.png', '<h2>Why Anemia Testing is important?</h2>\r\n\r\n<p>Anaemia happens when there is an imbalance in the production of red blood cells and the destruction of red blood cells. On an average around 0.8 to 1% of red blood cells are replaced every day and their lifespan is generally between 100 to 120 days. When this process is negatively impacted, the result is anemia. Getting an Anaemia Test done is advisable to understand how serious the problem is and to determine the cause. Booking a Complete Hemogram test in Gurgaon is a simple process which can help you resolve your symptoms easily.</p>\r\n\r\n<p>Reasons why Red Blood Cell production is reduced</p>\r\n\r\n<ul>\r\n	<li>Deficiency of iron, vitamin B12 or Folate.</li>\r\n	<li>Suffering from Hypothyroidism</li>\r\n	<li>Reduced stimulation of red blood cell production</li>\r\n</ul>\r\n\r\n<p>Causes for Red Blood Cell destruction</p>\r\n\r\n<ul>\r\n	<li>Endometriosis</li>\r\n	<li>Periods</li>\r\n	<li>Childbirth</li>\r\n	<li>Accidents</li>\r\n	<li>Genetic disorders etc</li>\r\n</ul>\r\n\r\n<p>Iron deficiency is the most common cause for anemia, however, it is advisable to get a Hemoglobin Test or Iron Deficiency Test in Gurgaon done to get definitive diagnosis.</p>\r\n\r\n<h2>How Anemia Blood Test is performed in Gurgaon?</h2>\r\n\r\n<p>In the Complete Hemogram Test there are few components that typically reveal if a person is suffering from anemia. These components are the Red Blood Cell Count, Red Blood Indices - MCV, MCHC, MCH, Hemoglobin and Hematocrit.</p>\r\n\r\n<p>The following results generally indicate that a person is anemic</p>\r\n\r\n<ul>\r\n	<li>RBC - Typically low</li>\r\n	<li>Hemoglobin - Low</li>\r\n	<li>Hematocrit - Low</li>\r\n</ul>\r\n\r\n<p>The red blood indices can further help in diagnosing the type of anemia.</p>\r\n\r\n<p>If a person is suffering from anemia they may notice the following symptoms, however, getting a Hemoglobin Test or a Complete Blood Count Test in Gurgaon is best for a clear diagnosis.</p>\r\n\r\n<ul>\r\n	<li>Pale Skin</li>\r\n	<li>Feeling Cold</li>\r\n	<li>Brittle Nails</li>\r\n	<li>Shortness of breath</li>\r\n	<li>Dizziness</li>\r\n</ul>\r\n\r\n<p>While anemia is generally easily treatable, the kind of treatment depends upon the specific cause and severity of the condition. Anemia can prove to be dangerous, even fatal if not treated; hence, it is essential to get an Anemia test done so that your doctor may start your treatment at the earliest.</p>', 'lack of blood', 0, '2021-09-25 00:54:45', '2022-07-12 05:40:56'),
(2, 'Thyroid', '16576044741705589035.png', '<h2>Why Thyroid Function Testing is important?</h2>\r\n\r\n<p>The main function of the thyroid gland is to produce two hormones - Thyroxine (T4) and Triiodothyronine (T3). These hormones are released into the bloodstream where they control metabolism, growth &amp; development, mood, etc. Without a functioning thyroid, the body would not be able to process carbohydrates or vitamins or break down protein.</p>\r\n\r\n<p>The pituitary gland controls the thyroid gland; it releases the Thyroid Stimulating Hormone (TSH) which stimulates the thyroid gland to produce the thyroid hormones.</p>\r\n\r\n<p>Some common diseases of the thyroid are:</p>\r\n\r\n<p>Hyperthyroidism - The thyroid gland produces excessive thyroid hormones. Some common symptoms are restlessness, racing heart, nervousness, anxiety, weight loss.</p>\r\n\r\n<p>Hypothyroidism - The thyroid gland produces too few thyroid hormones. Some common symptoms are weight gain, sensitivity to cold, dry skin, fatigue, weakness, etc.</p>\r\n\r\n<p>Goiter - A condition where the thyroid gland swells, most commonly caused by an iodine deficiency. In severe cases it can cause swelling of or tightness in the neck, hoarseness, difficulty breathing, coughing.</p>\r\n\r\n<p>Thyroiditis - Inflammation of the thyroid gland caused by a viral infection or autoimmune condition.</p>\r\n\r\n<p>Graves Disease - one of the most common causes for hyperthyroidism, it is an autoimmune condition where excess thyroid hormones are produced.</p>\r\n\r\n<p>Thyroid nodules-Abnormal masses or lumps in the thyroid gland which may lead to hyperthyroidism.</p>\r\n\r\n<p>Thyroid cancer - A fairly uncommon form of cancer that is usually curable.</p>\r\n\r\n<p>Thyroid conditions can have a major impact on your mood and your body, hence it is important to get a Thyroid Function Test in Gurgaon done and consult with your doctor.</p>\r\n\r\n<h2>How Thyroid Function Test is performed in Gurgaon?</h2>\r\n\r\n<p>A Thyroid Function Test generally includes a T4, T3 and a TSH Test. The T4 test measures the amount of thyroxine, a high level of T4 is indicative of hyperthyroidism. The TSH Test measures the amount of thyroid stimulating hormone; the TSH levels can help in diagnosing hypothyroidism. The T3 test measures triiodothyronine, it is generally used if your T4 and TSH results suggest hyperthyroidism. All these tests can be done simultaneously. All these tests are blood tests and require you to give a blood sample that is tested in the lab for specific parameters. If you notice any of the above mentioned symptoms then it is advisable to get a Thyroid Function Test in Gurgaon.</p>', 'abnormal thyroid', 0, '2021-09-25 00:57:30', '2022-07-12 05:41:14'),
(3, 'Poor Nutrition', '1657604497837226319.png', '<p>Some general symptoms of nutritional deficiencies are:</p>\r\n\r\n<ul>\r\n	<li>Fatigue</li>\r\n	<li>Pale skin</li>\r\n	<li>Weakness</li>\r\n	<li>Constipation</li>\r\n	<li>Sleepiness</li>\r\n	<li>Poor concentration</li>\r\n	<li>Heart palpitations</li>\r\n	<li>Heavy Periods</li>\r\n</ul>\r\n\r\n<h2>Why Nutritional Testing is important?</h2>\r\n\r\n<p>Nutrients are important for a healthy body and mind. A nutrient rich diet equips the body to fight against disease and work well. Lack of nutrients can impact the health of a person, severely at times and cause trouble in normal day to day functioning. Usually, people might experience symptoms of poor nutrition but get used to them and adapt themselves; this might lead to a further worsening of the condition. Hence, getting a Nutrition test in Gurgaon is advisable as it can help in assessing which nutrients you lack and thus assist in creating a proper treatment plan. Some of the most common nutritional deficiencies are Iron, vitamin B, vitamin D, vitamin C, etc. Each of these deficiencies has some specific symptoms; however, the general symptoms listed above might also be present.</p>\r\n\r\n<p>In most cases, problems caused by nutritional deficiencies are resolved once the deficiency is addressed. However, in some cases, there may be long-lasting damage. This generally happens in cases where the deficiency is severe and long term. Nutritional deficiencies, especially among children, can cause long term, harmful effects. Hence, it is important that if you notice any symptoms in your child then you book a nutritional deficiency test.</p>\r\n\r\n<h2>How Nutrition Test is performed in Gurgaon?</h2>\r\n\r\n<p>While there is no one specific Nutrition Test that looks for the lack of all the nutrients, there are multiple tests that a doctor may recommend, to check for specific deficiencies. Usually, as a first step, the doctor may do a physical exam and also check with you for symptoms to understand which specific deficiency is most likely and subsequently recommend a Nutrition Test in Gurgaon. Such a test can include a Blood Test, Iron Studies Test, Thyroid Test, etc. and others as recommended by the doctor. In these tests, the phlebotomist will draw a sample of blood from the patient which is sent to the labs for each specific parameter.</p>', 'Lack of sufficient nutrients', 0, '2021-09-25 00:59:12', '2022-07-12 05:41:37'),
(5, 'Bone', '1657604568975612683.png', '<p>Weak bones can cause a lot of trouble and nutrient deficiency is the reason.&nbsp; With checkups, identify the cause and take steps to have healthier bones.</p>', 'living tissue that makes up the body\'s skeleton', 0, '2021-10-05 05:10:24', '2022-07-12 05:42:48'),
(6, 'Obesity', '1657604584785188480.png', '<p>BMI is a calculation of weight in relation to an individual\\&amp;#39;s height. Obesity is not only a cosmetic concern, but a serious medical condition that can increase the risk of several illnesses including diabetes, cardiac issues, stroke, arthritis, fatty liver disease, and certain cancers. An Obesity Test can help you determine if you are suffering from obesity. An Obesity Test might include various tests that can help in assessing if you are obese and how severe your condition is, so that you are able to take the necessary steps. An Obesity Test in Gurgaon does not necessarily have any blood tests involved, although your doctor may recommend some blood tests to check for any obesity related health risks. An Obesity Profile Test might include a physical examination along with more accurate ways of measuring body fat and how it is distributed; some Obesity Blood Tests that a doctor may recommend alongside your Obesity Test are HbA1c Test, Lipid Profile, Liver Function Test, Thyroid Test, CRP etc.</p>', 'A disorder involving excessive body', 0, '2021-10-05 05:11:05', '2022-07-12 05:43:04'),
(7, 'Zero Exercise', '1657604595827335826.png', '<p>People who are less active are generally at a higher risk for hypertension, diabetes, coronary heart disease, certain kinds of cancers, obesity among others. Lack of physical activity and sedentary lifestyles have become more common recently, accompanied by a very rapid rise in deaths due to lifestyle illnesses. If you feel that you aren\\&amp;#39;t physically very active and would like to understand the effects of a sedentary lifestyle, then getting a Sedentary Lifestyle Health Test is advisable to assess the damage it might have caused to your body. A Sedentary Lifestyle Health Test in Gurgaon includes tests that help in determining the damage to your body, that lack of physical activity is causing; these include tests like Lipid Test, Blood Sugar Test, Hemoglobin Test, Vitamin D Test, etc. In the Sedentary Lifestyle Health Test in Gurgaon, a sample is taken by the phlebotomist and sent to the lab to perform specific tests.</p>', 'no-equipment fitness adventure', 0, '2021-10-05 05:12:06', '2022-07-12 05:43:15'),
(8, 'Smoking', '1657604609563414898.png', '<p>Smoking tobacco is an extremely unhealthy habit that can have serious consequences on one\\&amp;#39;s health. Most people start smoking or using tobacco fairly early and find it difficult to quit even when faced with the consequences. Smoking has been attributed as a cause for many serious health conditions including cardiovascular diseases, cancer, lung diseases, diabetes etc apart from being a contributing factor in many health issues. If you smoke tobacco or are exposed to tobacco smoke then it is highly advisable to get a Smoking Test done to assess the damage it might have caused to your body. A Smoking Test in Gurgaon includes tests that help in determining the damage to various functions and organs in the body, that smoke is causing; these include tests like Complete Blood Test, Iron Studies, Kidney Function Test, Liver Function Test, Lipid Test, Folic Acid, Hemoglobin Test, Vitamin D Test, etc. In the Smoking Test in Gurgaon, a sample is taken by the phlebotomist and sent to the lab to perform specific tests.</p>', 'reveal simple failures severe enough', 0, '2021-10-05 05:12:56', '2022-07-12 05:43:29'),
(9, 'Acidity', '1657604623897202034.png', '<p>Acidity is quite a common condition; in fact it is so common that most of us have experienced it in our lives. Though acidity is quite common, not many people know the actual reason why it happens. A ring of muscle called the lower esophageal sphincter acts as a valve at the entry of your stomach. Usually it closes as soon as a person consumes food, however, if there is a problem in it closing or if it opens up too often then the acid produced in the stomach moves up to the oesophagus causing a burning sensation known as acidity. If acidity occurs more than twice a week then it might indicate gastroesophageal reflux disease (GERD). If you suffer from acidity regularly then getting an Acidity Test is the best way to check if you suffer from GERD or if there is some other reason for it. While normally acidity is easily diagnosable and a person suffering from it can identify it easily, an acidity Test in Gurgaon usually includes other tests to check for impact as well as other underlying causes. The phlebotomist takes your blood sample, which takes only a few minutes. The sample is then sent to the lab to perform the tests included in an Acidity Test package.</p>', 'the amount of acid in a substance', 0, '2021-10-16 06:00:04', '2022-07-12 05:43:43'),
(11, 'Diabetes', '1657604635393986823.png', '<p>Diabetes, medically known as diabetes mellitus is a disorder where the blood sugar levels are high. It is a metabolic disease, meaning that there is an abnormal chemical reaction that is hindering the normal process of breakdown of food to form sugar and energy. In diabetes, the hormone insulin which moves sugar from the blood to cells is either not produced by the body or isn\\&#39;t used effectively. Getting a Diabetes Test done is the best way to assess if you have diabetes, in case you suspect it. You can book a Diabetes Test in Gurgaon and get the screening done without any hassles. A Diabetes Test can help in diagnosing this serious illness and help you in getting the necessary treatment so that you can have a relatively healthy life and be able to do all the things you enjoy. A Blood Sugar Test in Gurgaon is generally a blood test that can help in diagnosing how serious your condition is and what the treatment plan should be. The phlebotomist will take a small sample of blood from a vein and the sample will then be sent to the lab for the Blood Glucose Test you have chosen.</p>', 'too much sugar in the blood', 0, '2021-10-16 09:26:14', '2022-07-12 05:43:55'),
(12, 'Fatigue', '16576046511712804610.png', '<p>Fatigue can be defined as a feeling of overall tiredness or a lack of energy, wherein the individual may not feel capable of doing daily activities. Some people might confuse fatigue with a feeling of being sleepy; however, they are not the same. Feeling drowsy may be a symptom of fatigue, but it is a different thing. Fatigue occurs in many medical conditions and can range from mild to severe, it can also happen due to lifestyle factors like poor nutritional choices, lack of exercise, etc. Since fatigue can occur due to so many reasons, it is advisable to get a Fatigue Test to determine and clearly diagnose your condition. It is an extremely simple process to book a Fatigue Test in Gurgaon and get the screening done without any hassles. A Low Energy Test or Fatigue Test can help in diagnosing if your fatigue is caused due to an underlying medical condition, a deficiency or, something else, and help you take the necessary steps in improving it so that you can lead a healthier and happier life. A Fatigue Test in Gurgaon can include a battery of tests depending upon any other symptoms, medical condition, lifestyle, etc which the doctor will assess. A Fatigue Test is not one specific test to diagnose fatigue, but can encompass many blood or urine tests to diagnose the cause. The Fatigue Test sample is taken by the phlebotomist and sent to the lab to perform the specific test.</p>', 'low energy and a strong desire to sleep', 0, '2021-10-16 10:03:40', '2022-07-12 05:44:11'),
(13, 'Heart', '16576046621736229361.png', '<p>Cholesterol is a waxy substance that helps your body in building new cells, producing hormones, and insulating nerves. Generally, the liver makes cholesterol necessary for the body to perform these functions. However, several food items also have cholesterol in them like - meat, eggs, milk, etc. Cholesterol is an essential substance for the healthy functioning of the body, but excessive cholesterol can be a high-risk factor for many heart diseases. Getting a Heart Test done is the best way to assess if you have any risk factors for heart conditions, in case you suspect it. You can book a Heart Test in Gurgaon and get the screening done without any hassles. A Cholesterol Test is a type of Heart Test that can help in diagnosing if you are at risk of developing any heart conditions so that you are able to take the necessary steps. Generally, heart related diseases are preventable illnesses that need attention and monitoring and health tests to prevent their occurrence. A Cholesterol Test in Gurgaon is a blood test that can help in diagnosing your levels of cholesterol. The phlebotomist will take a small sample of blood from a vein and the sample will then be sent to the lab for the Heart Test you have chosen.</p>', 'diseased vessels, structural problems and blood clots', 0, '2021-10-16 11:06:38', '2022-07-12 05:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `test_details`
--

CREATE TABLE `test_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=>paramater,2=>profile',
  `type_id` bigint(20) DEFAULT NULL,
  `package_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_details`
--

INSERT INTO `test_details` (`id`, `type`, `type_id`, `package_id`, `created_at`, `updated_at`) VALUES
(7, '2', 2, 2, '2021-10-16 06:20:18', '2021-10-16 06:20:18'),
(8, '2', 3, 2, '2021-10-16 06:20:18', '2021-10-16 06:20:18'),
(9, '1', 5, 2, '2021-10-16 06:20:18', '2021-10-16 06:20:18'),
(10, '1', 6, 2, '2021-10-16 06:20:18', '2021-10-16 06:20:18'),
(11, '2', 4, 3, '2021-10-16 07:35:00', '2021-10-16 07:35:00'),
(12, '1', 16, 3, '2021-10-16 07:35:00', '2021-10-16 07:35:00'),
(13, '1', 17, 3, '2021-10-16 07:35:00', '2021-10-16 07:35:00'),
(14, '2', 5, 4, '2021-10-16 10:00:06', '2021-10-16 10:00:06'),
(15, '2', 6, 4, '2021-10-16 10:00:06', '2021-10-16 10:00:06'),
(16, '1', 23, 4, '2021-10-16 10:00:06', '2021-10-16 10:00:06'),
(17, '1', 24, 4, '2021-10-16 10:00:06', '2021-10-16 10:00:06'),
(18, '2', 1, 5, '2021-10-16 10:25:26', '2021-10-16 10:25:26'),
(19, '2', 2, 5, '2021-10-16 10:25:26', '2021-10-16 10:25:26'),
(20, '2', 3, 5, '2021-10-16 10:25:26', '2021-10-16 10:25:26'),
(21, '2', 5, 5, '2021-10-16 10:25:26', '2021-10-16 10:25:26'),
(22, '2', 4, 5, '2021-10-16 10:25:26', '2021-10-16 10:25:26'),
(23, '1', 24, 5, '2021-10-16 10:25:26', '2021-10-16 10:25:26'),
(24, '1', 17, 5, '2021-10-16 10:25:26', '2021-10-16 10:25:26'),
(36, '2', 1, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(37, '2', 2, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(38, '2', 3, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(39, '2', 4, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(40, '2', 5, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(41, '2', 6, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(42, '1', 27, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(43, '1', 28, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(44, '1', 29, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(45, '1', 30, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(46, '1', 31, 6, '2021-10-16 11:46:46', '2021-10-16 11:46:46'),
(47, '2', 1, 7, '2021-10-16 12:00:38', '2021-10-16 12:00:38'),
(48, '1', 24, 7, '2021-10-16 12:00:38', '2021-10-16 12:00:38'),
(49, '1', 20, 7, '2021-10-16 12:00:38', '2021-10-16 12:00:38'),
(50, '2', 1, 8, '2021-10-16 12:11:47', '2021-10-16 12:11:47'),
(51, '2', 2, 8, '2021-10-16 12:11:47', '2021-10-16 12:11:47'),
(52, '2', 3, 8, '2021-10-16 12:11:47', '2021-10-16 12:11:47'),
(53, '2', 6, 8, '2021-10-16 12:11:47', '2021-10-16 12:11:47'),
(54, '1', 24, 8, '2021-10-16 12:11:47', '2021-10-16 12:11:47'),
(56, '2', 1, 10, '2021-10-16 13:01:05', '2021-10-16 13:01:05'),
(57, '2', 2, 10, '2021-10-16 13:01:05', '2021-10-16 13:01:05'),
(58, '2', 3, 10, '2021-10-16 13:01:05', '2021-10-16 13:01:05'),
(59, '2', 6, 10, '2021-10-16 13:01:05', '2021-10-16 13:01:05'),
(60, '1', 24, 10, '2021-10-16 13:01:05', '2021-10-16 13:01:05'),
(61, '1', 32, 11, '2021-10-18 03:56:50', '2021-10-18 03:56:50'),
(62, '1', 7, 11, '2021-10-18 03:56:50', '2021-10-18 03:56:50'),
(63, '2', 3, 12, '2021-10-18 04:18:53', '2021-10-18 04:18:53'),
(64, '2', 6, 12, '2021-10-18 04:18:53', '2021-10-18 04:18:53'),
(65, '2', 7, 12, '2021-10-18 04:18:53', '2021-10-18 04:18:53'),
(66, '1', 28, 12, '2021-10-18 04:18:53', '2021-10-18 04:18:53'),
(67, '1', 31, 12, '2021-10-18 04:18:53', '2021-10-18 04:18:53'),
(68, '1', 6, 12, '2021-10-18 04:18:53', '2021-10-18 04:18:53'),
(69, '1', 33, 13, '2021-10-18 05:00:21', '2021-10-18 05:00:21'),
(70, '1', 34, 13, '2021-10-18 05:00:21', '2021-10-18 05:00:21'),
(71, '1', 20, 13, '2021-10-18 05:00:21', '2021-10-18 05:00:21'),
(75, '2', 1, 1, '2023-02-16 09:28:45', '2023-02-16 09:28:45'),
(76, '1', 2, 1, '2023-02-16 09:28:45', '2023-02-16 09:28:45'),
(77, '1', 4, 1, '2023-02-16 09:28:45', '2023-02-16 09:28:45'),
(78, '1', 18, 14, '2023-02-16 09:35:23', '2023-02-16 09:35:23'),
(79, '1', 19, 14, '2023-02-16 09:35:23', '2023-02-16 09:35:23'),
(80, '1', 20, 14, '2023-02-16 09:35:23', '2023-02-16 09:35:23'),
(81, '1', 1, 9, '2023-02-16 09:37:59', '2023-02-16 09:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'abc', '1', 33, '2022-01-08 03:42:57', '2022-06-03 11:00:26'),
(2, 'abc', '1', 22, '2022-01-08 03:43:10', '2022-06-03 04:50:38'),
(3, 'abc', '1', 22, '2022-01-22 09:29:21', '2022-06-03 04:50:38'),
(4, 'frP5Js4aQZe-lxpriricKF:APA91bH93znnPtijaGrx0JFeU0QKx3153du9jzuusGRavmE932j2A3vE407KJqU0VbPENeMdniw-kbcAIQbEMZK-A6GR9MRouBIaXevZKXkpv7w_iPApUJNxUiUpB1ELDA1Anke6tv8n', '1', 9, '2022-01-22 09:45:30', '2022-01-22 09:56:57'),
(5, 'fDXZhNOtQ5evijtU7rYzAx:APA91bG4UN_sz_tTKdwdMgDY7T0pFXtrbJXW96C1aFVSJZ0ilfvgR8ExVjOGsJ--UZ-4eKCEwUdldREJxHUBdzrcmQNtb6irFSf1qij7Exg7_M0ypF9X8USi7shI62Md5EBbdzw0XSXm', '1', 9, '2022-01-25 09:22:24', '2022-01-25 09:22:24'),
(6, 'c25-YGnvSrmv8UmCT5pied:APA91bEJxHT3xlQ7hFblknqc5IG6KpZAj6lSbS3ZQ_xcncKvPInu2D1K24T1A4Y8il_m4gXkKQHYhu5Y790zSZaQxEcttOLx67hPFodxGB0nt_DGhDwNmLbYkMczsRYBerDbVjjOmsRN', '1', 9, '2022-01-27 13:09:10', '2022-01-28 03:52:00'),
(7, 'ctBGpeDCTi-gfh6Iltaz-K:APA91bFUZ-qh-xpXg0wanwAeXJNG6GjZQtsLAOd1TUS92axb5pGFmnjFcqb3VxtFlxXeg6dqCLKVoGpSYNcQZYIPxeRL9oS-tLBgGfqh6ou0Y9X8oszUyuLXEjFPpIXAdqwknfri3Gkz', '1', 12, '2022-01-27 13:33:17', '2022-01-27 13:33:17'),
(8, 'abc', '1', 22, '2022-06-02 06:20:54', '2022-06-03 04:50:38'),
(9, 'abc', '1', 22, '2022-06-02 07:12:14', '2022-06-03 04:50:38'),
(10, 'abc', '1', 22, '2022-06-02 07:12:22', '2022-06-03 04:50:38'),
(11, 'abc', '1', 22, '2022-06-02 09:25:25', '2022-06-03 04:50:38'),
(12, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-02 09:57:35', '2022-06-03 10:42:40'),
(13, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-02 11:19:56', '2022-06-03 10:42:40'),
(14, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-02 11:48:20', '2022-06-03 10:42:40'),
(15, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-02 12:23:11', '2022-06-03 10:42:40'),
(16, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-02 12:24:34', '2022-06-03 10:42:40'),
(17, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-03 04:47:54', '2022-06-03 10:42:40'),
(18, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-03 07:18:46', '2022-06-03 10:42:40'),
(19, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-03 10:09:03', '2022-06-03 10:42:40'),
(20, 'abc', '1', NULL, '2022-06-03 10:14:45', '2022-06-03 10:14:45'),
(21, 'd8n1FodwTgu9_WErICPhj7:APA91bFXeU_xBj-oMHi386YV8JwO0SqxaxdlLQnYYQ_Sh17KwQxS3VwozzcwZTtpnTvPwNbfkp7Qx61Grfae3LrX3I59y7ovZNh9izEEzRjT8Sq1EJFcblqGIJYnsw0GrhnSQVc_nPVH', '1', 32, '2022-06-03 10:36:20', '2022-06-03 10:42:40'),
(22, 'fz2rPOLvTEikyBhsmJrwaY:APA91bH8p0hGU5u6JAtY8gd-2bcxsrzWJ6_CEJh65QhVkJtwBVGxko8CDeAsgJCrDzYDz9mUP-uiViqgY8Z88m3VV70XsfDP_TSxZ5V06kIz_nzExdB5EIWvnyzkC4ggBfmiFOU4CiAF', '1', 33, '2022-06-03 10:54:49', '2022-06-03 10:57:59'),
(23, 'fz2rPOLvTEikyBhsmJrwaY:APA91bH8p0hGU5u6JAtY8gd-2bcxsrzWJ6_CEJh65QhVkJtwBVGxko8CDeAsgJCrDzYDz9mUP-uiViqgY8Z88m3VV70XsfDP_TSxZ5V06kIz_nzExdB5EIWvnyzkC4ggBfmiFOU4CiAF', '1', NULL, '2022-06-03 11:07:10', '2022-06-03 11:07:10'),
(24, 'dJDXgCbHSbmRef5KEYY25J:APA91bFUMh3JloI8-I98dT56E8nU5rRLk64_XdzMIe35ieEyVD7j4JKWYo4mAkPlAS79hIJq6gQxgOI5rWiz0pHqoPIv-Lzl4QMtwo7Fup4mUoSCmHnvsfD2wW2iTfotIGqSan8IkyIU', '1', 33, '2022-06-03 11:27:15', '2022-06-03 11:29:44'),
(25, 'dur4LEA-Sm6qhUPWXaz-OM:APA91bEZ_UtWlI_BEul2FIidnOLAIi5Q3LQmS_hjZgtosUvcuZYAj6xoSTpwZCxAhqemP9VeW0kZJ_6F3l92Vjumg7l6FK7duwT02m8MUnVakWA3R8xt3yap9COQcrpBm8yJTZp7m-Cq', '1', 279, '2022-06-03 11:53:44', '2022-06-03 11:53:44'),
(26, 'dJDXgCbHSbmRef5KEYY25J:APA91bFUMh3JloI8-I98dT56E8nU5rRLk64_XdzMIe35ieEyVD7j4JKWYo4mAkPlAS79hIJq6gQxgOI5rWiz0pHqoPIv-Lzl4QMtwo7Fup4mUoSCmHnvsfD2wW2iTfotIGqSan8IkyIU', '1', NULL, '2022-06-03 11:58:49', '2022-06-03 11:58:49'),
(27, 'eIG6776lRtigENWuS8lauy:APA91bE9UjukNNvQKGtpur9ZhEUVc7uCH12j2mXKsk5IiA6ePARGblmptCOoDo16btRyfWGgLACLlAdm9wuOVM5hfJjbblmfaBSKtN4olCZjkAl1H-9xWOVCILcMd315BEP-DIbUaJLv', '1', 34, '2022-06-03 12:19:17', '2022-06-03 12:19:55'),
(28, 'cZYQoL0gTBm5FhDaWub15B:APA91bGtQWz6oaw0UAEMKJgCo4vgiwzE9LfuS9IIhVxGkAdYNbRrgphDgRn5VKSJ3zvcVOqUAKU7RH0Rzj4prS7B8TEphT4v6vBXfa8ySVICLTVKDJcyArtGjkRqlVq_f5sfzFn2a_L1', '1', 34, '2022-06-03 12:22:06', '2022-06-03 12:23:39'),
(29, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', 35, '2022-07-05 11:12:55', '2022-07-05 11:13:43'),
(30, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', NULL, '2022-07-07 09:44:21', '2022-07-07 09:44:21'),
(31, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', NULL, '2022-07-07 10:43:42', '2022-07-07 10:43:42'),
(32, 'fqi0w9rAQPGxnoV4ts5P4e:APA91bHjNcYpzVFn7IKXRhdDdMWeemBHMdali1G7v9U_v2UdOVvL-lHm7Y7zFmyJbQG0HUWVxtPPBZrFM6HHKsAm-Pi3nwFbRPrEhR3FCUTieLMJyZ393GiKVtTG3KpNPynWAhnKPTMs', '1', 4, '2022-07-12 05:28:08', '2022-07-12 05:28:30'),
(33, 'f3Ay7nIzQiiUh22kgCXfuf:APA91bHYArt5FcKUG4mUOdZ6G1tagP6o-W7dLN3DP_DMYLS-4Z2rXTuB0X_UV0CysnHrzisLx2yw-BVg1i-I6q6BgZVu_epiauyl-BSutwDGWQPa-BDPwhPIdfvq_fp6vFAbylhk3rk0', '1', 4, '2022-07-12 10:04:47', '2022-07-12 10:05:54'),
(34, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', NULL, '2022-07-12 10:40:30', '2022-07-12 10:40:30'),
(35, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', NULL, '2022-07-12 10:49:23', '2022-07-12 10:49:23'),
(36, 'fzoBwehsS1G7WUtk92zXlx:APA91bExV2LG0upb9yarDsYMZjq6M4Riu58wm9LE94aq1v6qmVEx0RioSUaSq0LO2zth9_QGCJxLXzxODNg-9EDlv7C8PLbBSRlnQ7q1cEC64dbkwbxVydAyDylguSMHMkveE7NO0-w0', '1', 4, '2022-07-12 10:50:22', '2022-07-12 10:51:19'),
(37, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', NULL, '2022-07-12 11:28:29', '2022-07-12 11:28:29'),
(38, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', NULL, '2022-07-12 11:43:26', '2022-07-12 11:43:26'),
(39, 'eqQ15MFoS-eq7TDD-1AOwk:APA91bEJ-Hs8T73bu33R4L7srvVVVyZ_pxCvd5bMywqZtoM-Rs825s4AagJFPXEtU4CMqY1V5tK2rxERIBIkQiIqWabBE38wMe1ZHg89VYPAHJ9qIyz20HdVBVU68iW2UvWUsL8OP87O', '1', NULL, '2022-07-12 11:45:06', '2022-07-12 11:45:06'),
(40, 'c-smJaudRTqCqXkim4q344:APA91bH77B0Ks_h230uNUYbapXXoy5bkbT0AUZQ7hU5tgdSTMJjd4K85U3qwiLI8HaA44EfSAfMEi2byxM4-ZIK-Xhq1yTjD4Gi_FaERoyjfg8SsSaBjO3VU-_Ruy2cpwQ4BvPhF1J_Q', '1', NULL, '2022-07-15 04:15:30', '2022-07-15 04:15:30'),
(41, 'e6hm4siYS3eB0P0Wkn6DKW:APA91bH6a2PSrercQb8DF1DvTofamZZOZPiUSKWAtk0qgqprLzDUImdZ13JHYyzYF40fYLsnBLaWW6E3bohnlBFPDKAF94U_ZqdIm8-sprsViPtLIEU2AiXj-fugmuCKWUP04XVrAOD2', '1', 35, '2022-07-19 10:56:19', '2022-07-20 05:43:52'),
(42, 'c4MfS_o9TXyKS9hcu6OcGT:APA91bFqVhN1T3JKH47eiMJGFzXhzra0Kw0QiYWxYV3AoZl012W3rhxY12ovATRlbyxcAY0kX7Mr5K2SIWJtEWsFkB-VsgZKflm-5SxdfL_VRwdG_gswS9tWgGftcmEobnTXi0GRoD6Z', '1', 35, '2022-07-20 05:48:49', '2022-07-20 05:50:23'),
(43, 'c_tC5hWlRJ-GpXtF98s52x:APA91bH4tNx_hqBGQK5-FcJDHYn5RL-gMtgSQjTwq6qDvpsvotn1inrE7nXYL1tSBqRZ6n73xiXB4c1uHVFVegf7ka8q4phkSPP2ftZBkbf5LoOWWnIBlxqPFML-Y7Mx-l_qV_o4Kzuv', '1', 35, '2022-07-21 05:25:10', '2022-07-21 05:25:38'),
(44, 'fLL0OrVfTraC-5nByJoY7S:APA91bGZUWUUy3D868JmuA2ldfkUdvTMHKaY-S17MxeZG2wdsWxVJreoFOyQi62uBl9tTe9zZIN26yKvXIpC271IcIAgkMw8dNccAwTCVnKmSsiA7lIgbZJi5QsCurlbcS1ilbzzxkkF', '1', 35, '2022-07-21 11:28:12', '2022-07-21 11:28:50'),
(45, 'fdIcUTHYRAmY450PCf4nm3:APA91bE83ID-QEy1-XzRMtNOjb20BykEldRNlPMwuGmbogm_vjombrBqFRpTd-mN310CX0YxQLHzIMjjZmy9Uffw0scWgf-V5azX_aHr0-KlQsJd0abNHVkcev47X4YKOI_AfEhUYG_m', '1', 35, '2022-07-21 12:00:52', '2022-07-21 12:02:28'),
(46, 'dzHtJ4gKT-Wwe9rbnKBT5l:APA91bHfhyrI2e9ZFlGdVAV1ym9kZkUb1Nc-Vh0tIGD-0_lD79AE1golSzPOdluKRhhPjPpeSBQydN3_dhCzfMTmeI02i-QZFisWTrYn18vgkR6mzhHsygwERxS9kgwPQnUrZowekDKi', '1', 35, '2022-07-22 04:02:27', '2022-07-22 04:03:01'),
(47, 'cHIhcQ1gQ063sciqVxPrBR:APA91bGsszhgetK3U-ETs3JNe64KBq529fywuFIHuysdoK7dogcrmEv7BsK_PXPSDGO8sXTqHkYZDE8fNSCRZc2japVa3JKImIg_MkOf3isQtfYOs-UL1VwaePOw0pYVfCG93inafLTP', '1', 35, '2022-07-22 04:29:44', '2022-07-22 04:30:08'),
(48, 'foDlGX0BTRCPESpwCSLc4O:APA91bE1ZKQVBdTqlq_9j8EvBnO4Q3KXUpFw3_mrAuuAsWRe5OBPBeGooLoLNg7nZmiffb7SGSlGqz2OKtJz6b5qBaeHzC3DoodDxWrCUvFZzLBxmOFz2kYdQljP93CdDV0_HuOveYRz', '1', 35, '2022-07-22 04:36:54', '2022-07-22 04:37:41'),
(49, 'fHSOj8wzS72LFJ1FAlJbRD:APA91bFK9rAbjvVTTEGwqOkDQmyXacb9C9aw9ft7dY6ICXqw1EGa7cbnEWuAajl8S9V0Pty77USHX7-E1Ss_yjiorw9qU7FQ0s53BDNsD7JUAtWnFTma9UD_8bN0wWr6WqQbxI__61Xb', '1', 35, '2022-07-22 06:14:26', '2022-07-22 06:15:20'),
(50, 'cHUiHXylRxW6A56ail7fdt:APA91bEJiJLTVq1cXLo2A9HwUsOcOKHqCHcuKxbw6PSNBD7z5PW9xI9CtP4_m-pQZP0TqlmT9nJGyA0-y5FBjtUkq6kz5JeMA88uCSpEaBCKeWD4JxTytCXV_JBZDwWl6Gsb2a6-fAmL', '1', 36, '2023-01-02 04:45:01', '2023-01-02 04:50:59'),
(51, 'd-6RBt0kTU-ppOGAfRYIZY:APA91bHKyAChGu3q_-X_6dU8Y1FB7dnjsNT4Awsc2dfQwJAga_RcQlSPK1OCVbCddh0zQGr_mqX9YpxWJOEO5k5B3jJXpISc1b9X3Pp7hi_wPrJVZeMQ2GO1JGvEv0FnEcc0Hh3ITCZU', '1', 36, '2023-01-02 07:11:57', '2023-01-02 07:13:56'),
(52, 'dYaQYNLY4Etpq6zHRjyAN-:APA91bGoCNcmAId2hE-Rm6aQDmAjSxtiOrX_TaW8RDkc08TnBWjmzMeb3b8mpY-q_qcRhm_6uZngp9dfqtfO3Vyw6ht99CEHAg05o49B8wqLH7SIIctlAbVPo-JzpsX-u1Rw0H6wROyU', '1', 36, '2023-01-02 07:30:57', '2023-01-02 08:02:17'),
(53, 'fbL8qsKGR9i0JarF1LB3o3:APA91bEGv8YPe2-IksqAWVl6x_qVuIrUgu61GeneYc0AdnLmDVG6lpteRtUlsoMZzCBAdRLBVPQCzX1uiwPU-SdrtE_u9NupYKivkkBzD57lDdEFl_TGObvS57iqyimt0-I0xTj45QZl', '1', 36, '2023-01-02 09:31:21', '2023-01-02 09:32:09'),
(54, 'ecJrYqBZQ8-C41-R-wRVIF:APA91bHDu2dGd7tMZ8OoDQtGFD9i99-F_Z1NQa7jz0_mwufDIbtMeM-HIcv998-LBSheBfZbsJY2-VYqTVwIq9t-PeoOv59IiIxP3IesKIMkiFJyhm69m1x7E98Mt1qqvxotaNdq95E5', '1', 36, '2023-01-02 11:08:54', '2023-01-02 12:49:52'),
(55, 'd6oJAxZtTj6BZfuaERYLcJ:APA91bHBEz6TI4ldkuUS92ivC2FiodPmhEsPRyl7pOl_6ct4gJHXEKuN9mg4KBPD6Z4t3HT_Hctubz3MFU6eOU3_UVPRZlVdvd-0LS_p8hTqE6zFJ0Bzf7D_tnaojgAWDcY0dkFXT8f1', '1', 44, '2023-01-02 14:47:14', '2023-01-02 14:47:14'),
(56, 'test', '1', 45, '2023-01-03 09:02:00', '2023-01-03 09:02:00'),
(57, 'fbvIAUAeQ86yCew2KyWQGJ:APA91bEKCpc3HLfUrWNaPD7qapjOCNpfQ8YJKZcbZ-FypWoQyqWPuJRSa1cfnx6ZDONB5_BB3YqSIlQ_Nt56m27UgLljHMGm8NxPoNlyFkAoGW8Zi_fPzcsaXQ6wzZxAE46LI9x0GNGQ', '1', 46, '2023-01-04 05:47:04', '2023-01-04 10:59:01'),
(58, 'dcsymPLLRxCRqd7RGJVJ5v:APA91bFMHeSAvdjpXRwVUdhkFTVh-dUVTQkEglAAqNGs0xmJiRYJNDSs3b69OffswG1tHlXzXA1MKXOsEW5QfM4E1L6-yWhWv8U35Zpq0ikKNxxUPZD_i8_EV9U7DGPClzfVo_c_EPwG', '1', 36, '2023-01-13 04:23:59', '2023-01-13 04:51:11'),
(59, 'c7NqKDfmRjOOUfCECMii_y:APA91bEpG25aXEPRVG1eABsTQpUy7SSpo_J8H69FrIaUIch1tmZEYusmRN9SGZ5G3f7ouRaHg5fZC8V8hBenTIvCWk9T-JF9CQ130jjqHVboOq_yGA2ohGBZ15B_G5n_gjhJQMP1wfhj', '1', 44, '2023-02-09 04:09:19', '2023-02-09 04:09:51'),
(60, 'cyvDnWeRQva0CU3jeVCjhn:APA91bE9Rw9rALEdmIjS_EPqjDKcrLE2-vAOFtOl65g4L8RHcn3J6d0NPpegr0dyLOKuCtolLXIqW2ILosmVQ5dAmlHIDVYCUWlyEuqca9B-Wp151EkCduxp7KTHlPtup_A47mLWBDqw', '1', 44, '2023-02-09 04:44:09', '2023-02-09 04:46:20'),
(63, 'frP5Js4aQZe-lxpriricKF:APA91bH93znnPtijaGrx0JFeU0QKx3153du9jzuusGRavmE932j2A3vE407KJqU0VbPENeMdniw-kbcAIQbEMZK-A6GR9MRouBIaXevZKXkpv7w_iPApUJNxUiUpB1ELDA1Anke6tvdefd', '1', NULL, '2023-02-09 05:41:16', '2023-02-09 05:41:16'),
(64, 'fOKOIu50SQmcT6QSGB_Bdo:APA91bGgUUxcRyNh7IBJHBGD8CeEHoOK6aXVreS9sklioxtnGqqMmNnhDePcU_eYGygfmplHKcsmzcSSttc_v6eJQfOSqgvGx8ijyP3awIq1zCbEd-uGTvgRAuwj1mDBvq2iWyeu3ki3', '1', 44, '2023-02-09 06:46:52', '2023-02-09 06:47:23'),
(65, 'frP5Js4aQZe-lxpriricKF:APA91bH93znnPtijaGrx0JFeU0QKx3153du9jzuusGRavmE932j2A3vE407KJqU0VbPENeMdniw-kbcAIQbEMZK-A6GR9MRouBIaXevZKXkpv7w_iPApUJNxUiUpB1ELDA1Anke6tvdefd', '1', NULL, '2023-02-11 06:47:12', '2023-02-11 06:47:12'),
(66, 'dF337nXnQQeuJTn_RcHbUc:APA91bGtOa22YQqVdJx3JUju6kHDkbaRv1MC1_rk8azeCRKo-MrIn_3gYv3Al1Rt3d6v4-IQ3ncZu-5fNDKyE6gYhtzHnqaL8iN8cFaGTbR58XS7aOur3V-L6MCsju9-CBJM-k35NIGv', '1', 4, '2023-02-15 12:50:04', '2023-02-15 12:50:37'),
(67, 'chM4W142RLuIIvYZCZCN6m:APA91bEJi8v6IaNmGqU4kybbFMnUppEoQZ1VFuYQ0wpwnQvt_66JjigiHgKc-V4R6RES_BiANnYgrq7Re-QwcRdm90SeCUxbHlm6xKxEmS_4BAKw2KLpxDnzJJ6Rabr9EUbs0GFm1ZPz', '1', 4, '2023-02-16 04:17:19', '2023-02-16 08:34:32'),
(68, 'fk7oGnoCSVKn4ERAtEHbQK:APA91bHPsQH6fHgOZbXjpuM8ENpN5jwq5_shT7Gxn1VwpSyC9Zv8UO0hWS20R-9OD4gT2rvsVibl1wy7ccokTvPFEv7K3PVXznSbw4FcSZLsGrvCX3iA1dv36rzC4_ywZ7o6yQ45Ojnp', '1', NULL, '2023-02-28 12:29:02', '2023-02-28 12:29:02'),
(69, 'eyUGHoCgSBmwJkBR3p5hfk:APA91bFpvFw14u1pyQ8EgNrTE0PPyE8xRRoMBi5iAhP5502vRX0yUN8RSP3u7QsEIKY-NZ4SGUFqc24EQOLOsgE0MJFegG7MAG17Jyk9TXZz-NWLBnpv_1zijPVfDCH8wi1ha1YQ42R_', '1', 4, '2023-02-28 12:32:16', '2023-02-28 12:35:47'),
(70, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', 4, '2023-03-01 05:28:29', '2023-03-01 05:41:12'),
(71, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', NULL, '2023-03-01 05:43:28', '2023-03-01 05:43:28'),
(72, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', NULL, '2023-03-01 05:43:51', '2023-03-01 05:43:51'),
(73, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', NULL, '2023-03-01 05:44:48', '2023-03-01 05:44:48'),
(74, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', NULL, '2023-03-01 05:46:44', '2023-03-01 05:46:44'),
(75, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', NULL, '2023-03-01 05:48:26', '2023-03-01 05:48:26'),
(76, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', NULL, '2023-03-01 06:15:08', '2023-03-01 06:15:08'),
(77, 'e0fWJ6AqQHSilRqKLeOgLI:APA91bEsAEBgh6zEZFeI5VQsafPM4EGVHQt3mDnyKrEehqYpBZY46Xp3qbZ0EnD5LxYbveqqyP2uzu9-kIXbW6sQmt9W8ipC2tDA-7sIezxbF7bDsAsQpwZoNDIwOS8wCy7eBaFLNDgf', '1', NULL, '2023-03-06 04:45:02', '2023-03-06 04:45:02'),
(78, 'eyBkM296RZKn6WIoo5uvHT:APA91bHZ02bFDOo-gyCiyQmx4EgBYVzJF5V3cYDlfzAzb3HBmstG7M9TYH9lnOX4AB_7Xq8sv1vc347tHsovQpa4fu6y6uAZ3ZEm0ZwfKLobz9pgWDYGKuixPTiT7SS9LS-rRxyK_XLs', '1', 4, '2023-03-06 04:45:55', '2023-03-06 04:48:10'),
(79, 'eyBkM296RZKn6WIoo5uvHT:APA91bHZ02bFDOo-gyCiyQmx4EgBYVzJF5V3cYDlfzAzb3HBmstG7M9TYH9lnOX4AB_7Xq8sv1vc347tHsovQpa4fu6y6uAZ3ZEm0ZwfKLobz9pgWDYGKuixPTiT7SS9LS-rRxyK_XLs', '1', NULL, '2023-03-06 04:52:53', '2023-03-06 04:52:53'),
(80, 'eyBkM296RZKn6WIoo5uvHT:APA91bHZ02bFDOo-gyCiyQmx4EgBYVzJF5V3cYDlfzAzb3HBmstG7M9TYH9lnOX4AB_7Xq8sv1vc347tHsovQpa4fu6y6uAZ3ZEm0ZwfKLobz9pgWDYGKuixPTiT7SS9LS-rRxyK_XLs', '1', NULL, '2023-03-06 04:54:20', '2023-03-06 04:54:20'),
(81, 'eyBkM296RZKn6WIoo5uvHT:APA91bHZ02bFDOo-gyCiyQmx4EgBYVzJF5V3cYDlfzAzb3HBmstG7M9TYH9lnOX4AB_7Xq8sv1vc347tHsovQpa4fu6y6uAZ3ZEm0ZwfKLobz9pgWDYGKuixPTiT7SS9LS-rRxyK_XLs', '1', NULL, '2023-03-06 04:54:43', '2023-03-06 04:54:43'),
(82, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', 4, '2023-03-06 04:59:35', '2023-03-06 05:00:32'),
(83, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', 4, '2023-03-06 05:09:13', '2023-03-06 05:09:13'),
(84, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', 4, '2023-03-06 05:10:17', '2023-03-06 05:10:17'),
(85, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:11:16', '2023-03-06 05:11:16'),
(86, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:12:02', '2023-03-06 05:12:02'),
(87, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:15:03', '2023-03-06 05:15:03'),
(88, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:19:16', '2023-03-06 05:19:16'),
(89, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:26:48', '2023-03-06 05:26:48'),
(90, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:29:00', '2023-03-06 05:29:00'),
(91, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:39:42', '2023-03-06 05:39:42'),
(92, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:40:20', '2023-03-06 05:40:20'),
(93, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:49:02', '2023-03-06 05:49:02'),
(94, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:51:19', '2023-03-06 05:51:19'),
(95, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:53:54', '2023-03-06 05:53:54'),
(96, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:56:14', '2023-03-06 05:56:14'),
(97, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 05:57:09', '2023-03-06 05:57:09'),
(98, 'c6tEVO9cQ4KlF3mNBmY8yc:APA91bEX0Adc7cMt0sORvDK0lJjknRJHGtLDgf5UXbWpHnnnOEpEmSX6_KDmj-jo7Su_VZOv8BNNYEQsP765CQrXtssK8692fHVMQg0UvF4lXsWpDEdRU9OQrb90jHF8opNAphsmSPaB', '1', 50, '2023-03-06 05:58:37', '2023-03-06 06:00:03'),
(99, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 06:07:50', '2023-03-06 06:07:50'),
(100, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 06:25:07', '2023-03-06 06:25:07'),
(101, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 06:29:42', '2023-03-06 06:29:42'),
(102, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 06:32:38', '2023-03-06 06:32:38'),
(103, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 07:01:32', '2023-03-06 07:01:32'),
(104, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 07:03:08', '2023-03-06 07:03:08'),
(105, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 07:09:05', '2023-03-06 07:09:05'),
(106, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 07:13:40', '2023-03-06 07:13:40'),
(107, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 07:28:50', '2023-03-06 07:28:50'),
(108, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:34:40', '2023-03-06 08:34:40'),
(109, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:35:00', '2023-03-06 08:35:00'),
(110, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:40:07', '2023-03-06 08:40:07'),
(111, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:41:36', '2023-03-06 08:41:36'),
(112, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:42:43', '2023-03-06 08:42:43'),
(113, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:46:21', '2023-03-06 08:46:21'),
(114, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:47:57', '2023-03-06 08:47:57'),
(115, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:52:28', '2023-03-06 08:52:28'),
(116, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:55:37', '2023-03-06 08:55:37'),
(117, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:57:25', '2023-03-06 08:57:25'),
(118, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:57:40', '2023-03-06 08:57:40'),
(119, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 08:59:14', '2023-03-06 08:59:14'),
(120, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-06 09:03:18', '2023-03-06 09:03:18'),
(121, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-20 06:46:41', '2023-03-20 06:46:41'),
(122, 'ewNBGThIRumCWouGmhWFWE:APA91bFHOcJfdx3ZVtzh2jIjbh3h8Cjtyqth2SdDHD18cgHQ38868_-AQ-Tku8G5L3IxM5UhUY-RTIS34qijmpdHlRYctMoj7llaya8zeZiAsVdyb1rphLOGRWpf6OnCMTicVcPxsNLP', '1', 51, '2023-03-20 07:04:05', '2023-03-20 07:12:39'),
(123, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-20 07:15:25', '2023-03-20 07:15:25'),
(124, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-20 07:24:02', '2023-03-20 07:24:02'),
(125, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-20 08:33:59', '2023-03-20 08:33:59'),
(126, 'e1SOJFu1TuWkoGhEfSvWFb:APA91bHz0npv5tvnl-1E1OqUGbtCDHBqWd4UBDG-qc8hFd9t9NOq1ojZtbLb-PXZIv8sixwblQoc2tHvYaYfsrW2KSakioVwrfcniGYPq5CcTpkkbLm_D2yRq5cPMhlviMNm1NGh8ihz', '1', NULL, '2023-03-20 08:37:56', '2023-03-20 08:37:56'),
(127, 'dxWRkN8BQPq203m5U7EICt:APA91bFrUEaigRyCahnr24VISXe4HveiVdVXk7NPTtFZwCJOcDIs7S8n21CfHMID7MTU8W86vziC4_cbUlXoYi45Ka4w8XoocIxIpCtVYYJKeNRzmL55N2XRRqUD51UCMSajuw4xkwUs', '1', NULL, '2023-03-22 05:44:25', '2023-03-22 05:44:25'),
(128, 'c4DWdlMCSUO2rYGx3ZBoRZ:APA91bE2w9KqKKrjSzX6wM8OhlrztunpaxZlHWrbPd5JHBDchmvstE_s10fuI3RWZdXV-TZSVMHswoWNFdJVLZFMwqeX_7XuRRBcu9y_ajcazkMUfQOsoWFxZtCkFBEIY4ER6xAQBpOs', '1', NULL, '2023-03-22 05:51:42', '2023-03-22 05:51:42'),
(129, 'cf36e7I9QcCxVPX05IyAyL:APA91bFXhaxJa_PSKkUwr-Z45aI0FzhpmpJwANh9WG8Qynlz59QR15jZ_Lm3fR-v3vjbS7btB361bL_1u8aQM9q4MZRIt0sesT5e4FWmhGpxu1YQ_MrBpE9QwXwbXgMq0XNwACM-kTLm', '1', NULL, '2023-03-22 07:33:05', '2023-03-22 07:33:05'),
(130, 'cf36e7I9QcCxVPX05IyAyL:APA91bFXhaxJa_PSKkUwr-Z45aI0FzhpmpJwANh9WG8Qynlz59QR15jZ_Lm3fR-v3vjbS7btB361bL_1u8aQM9q4MZRIt0sesT5e4FWmhGpxu1YQ_MrBpE9QwXwbXgMq0XNwACM-kTLm', '1', NULL, '2023-03-22 07:38:39', '2023-03-22 07:38:39'),
(131, 'ewNBGThIRumCWouGmhWFWE:APA91bFHOcJfdx3ZVtzh2jIjbh3h8Cjtyqth2SdDHD18cgHQ38868_-AQ-Tku8G5L3IxM5UhUY-RTIS34qijmpdHlRYctMoj7llaya8zeZiAsVdyb1rphLOGRWpf6OnCMTicVcPxsNLP', '1', NULL, '2023-03-23 07:11:11', '2023-03-23 07:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3' COMMENT '1=>admin,2=>manager,3=>user',
  `city` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notification` int(11) NOT NULL DEFAULT 0,
  `login_type` int(11) NOT NULL DEFAULT 1 COMMENT '1=>email,2=>google,3=>facebook',
  `soical_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `profile_pic`, `email`, `user_type`, `city`, `email_verified_at`, `password`, `remember_token`, `order_notification`, `login_type`, `soical_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'laboratory', NULL, '1641462587543390683.jpg', 'admin@gmail.com', '1', NULL, NULL, '123', 'QtzrCwtZIBLIZhiQHXViXEyiP00R4BvgGyCowVvzH2jOJmMNCug0IbbZF2bO', 0, 1, NULL, NULL, '2022-01-06 04:19:48', NULL),
(2, 'manager', NULL, '16330815451398750647.png', 'manager1@gmail.com', '2', 1, NULL, '123', '6Eq5uYuGNu8ZPyOI62rveU3Ys3YnsJPldIRr6NqqShRg9SXipO6qA2iLiQnI', 23, 1, NULL, '2021-10-01 04:15:48', '2023-03-19 20:26:00', NULL),
(3, 'Virginia G. Cole', '54654654654', 'user10.webp', 'cole@gmail.com', '3', 1, NULL, '12345', 'JhAbW0hJJuVDBCtZfVtrStyGwVemQm0mEISZGp1hEo46xLe4qHVUfXtZrIy3', 0, 1, NULL, '2021-10-07 04:18:57', '2022-01-20 04:44:45', NULL),
(4, 'John Due', '1234567890', '20181525751679294817.jpg', 'johndue@gmail.com', '3', 2, NULL, '123', 'eSHSw3JUSJ0qOeDTLJEcoYu9CwkGoEtBmgly2OWqDSDnXULtpUvbwZrw5Oqr', 0, 1, NULL, '2022-01-08 03:47:08', '2023-03-20 06:46:57', NULL),
(5, 'Brandon H. Morris', NULL, '16426761311733753451.png', 'morris@gmail.com', '3', 3, NULL, '123', 'kZ2ipbTYF4gclLPxz2fwoHmntRmiHKLTUMESGZ4FogUmHHFAgfEcJJciEfKV', 0, 1, NULL, '2022-01-20 05:24:40', '2022-01-20 05:25:31', NULL),
(6, 'David M. Linger', NULL, '164267621027192457.png', 'linger@gmail.com', '3', NULL, NULL, '123', '7SPZt9hzouCuqRfk0LkHBHl68gHkXqO52OvjcznVildln0mFeFKnAJCSbhQN', 0, 1, NULL, '2022-01-20 05:26:29', '2022-01-20 05:26:50', NULL),
(7, 'John Due', '1234567890', NULL, 'johndue1@gmail.com', '3', NULL, NULL, '$2y$10$njJgz5hnTixEGtIeuCgJrehLBPdaoVid9GnHFFEgVoMGM9/0WFuDe', NULL, 0, 1, NULL, '2022-01-22 09:31:52', '2022-01-22 09:31:52', NULL),
(8, 'Jasmine', '123589662500', NULL, 'jaz@gmail.com', '3', NULL, NULL, '$2y$10$HkULhfO9IKX4yfr789GQZuK1kmSajsiNdBhfTEBvCO24xCGvx0PyC', NULL, 0, 1, NULL, '2022-01-22 09:45:30', '2022-01-22 09:45:30', NULL),
(9, 'Daisy', '123456787970', '164310898739804479.jpg', 'sam@gmail.com', '3', NULL, NULL, '$2y$10$E0pLeDkhv7Y5pAeJfmqmD.TD/jhL9alMQQYXxNzKU4n3wCFX8uF4i', NULL, 0, 1, NULL, '2022-01-22 09:56:57', '2022-01-25 11:11:04', NULL),
(10, 'Jazz', '1235668887', NULL, 'jaz2@gmail.com', '3', NULL, NULL, '$2y$10$726q47GyFbYXUOEOe1OeMuER5DH84rvSa9pA92eUP2T3Q4E.iP5pe', NULL, 0, 1, NULL, '2022-01-27 13:10:26', '2022-01-27 13:10:26', NULL),
(11, 'Jazx', '122266887896', '16426736831672734358.png', 'jax@gmail.com', '3', NULL, NULL, '$2y$10$c7A2KktyKrhhB1/I9HpDPuD/daIetv6YdtWZcFLgarhzQ4hdSSp.u', NULL, 0, 1, NULL, '2022-01-27 13:12:32', '2022-01-27 13:12:32', NULL),
(12, 'john due', '1122443355', NULL, 'johndue102@gmail.com', '3', NULL, NULL, '$2y$10$gI4GwfUqJq4V6LBo9O.rAOADU/nyHBv9RUe.bJiWRY61zI1XrEzSa', NULL, 0, 1, NULL, '2022-01-27 13:33:17', '2022-01-27 13:42:08', NULL),
(13, 'teste', NULL, '16491979271101179647.png', 'teste@teste.com', '3', NULL, NULL, '12345678', 'I08qyKnC4GoR8UxWUA6d2CVNkjDtvuqac4Gdg0K1ijIDvFsiJWBRmtdGSAHg', 0, 1, NULL, '2022-04-05 22:27:58', '2022-04-05 22:32:07', NULL),
(14, 'mahi', '12345678901', NULL, 'mahi@gmail.com', '3', NULL, NULL, '$2y$10$HSASnJeAj5bE4p5j5S7oFebcKVsnG6apgj7/TFfj4cf353nPLzvqy', NULL, 0, 1, NULL, '2022-06-02 10:52:44', '2022-06-02 10:52:44', NULL),
(15, 'abhi', '1212121212', NULL, 'abhi@gmail.com', '3', NULL, NULL, '$2y$10$P0MfwTIPR8jcaqjsjcbSFe9L8fdtx2jNJXnlJ5dOuftcdbpZy5F3S', NULL, 0, 1, NULL, '2022-06-02 10:59:24', '2022-06-02 10:59:24', NULL),
(16, 'Jina', '1234567890', NULL, 'jina@gmail.com', '3', NULL, NULL, '$2y$10$bqhdcwVs8UZh47H9CMnezeBSOfyHhszLaIIb8fn1tKr7DrAncZNOe', NULL, 0, 1, NULL, '2022-06-02 11:00:55', '2022-06-02 11:00:55', NULL),
(17, 'abhi', '4545454545', NULL, 'abhira@gmail.com', '3', NULL, NULL, '$2y$10$bz131XOJSaZeuH5xiieIeuyPhD3HvAqUV2jhHvLTm1/EXFdnPZjee', NULL, 0, 1, NULL, '2022-06-02 11:01:59', '2022-06-02 11:01:59', NULL),
(18, 'ajay', '5656565656', NULL, 'ajay@gmail.com', '3', NULL, NULL, '$2y$10$O728.NclzMLTbnkNwjIhz.nDhroRaY06tkGPtdA9vooGKCPOBEm9K', NULL, 0, 1, NULL, '2022-06-02 12:21:22', '2022-06-02 12:21:22', NULL),
(19, 'diya', '2525252525', NULL, 'diya@gmail.com', '3', NULL, NULL, '$2y$10$RuYUcEwZUbAvoVya3t6BBed5suZW1fT4PfGA2hhcr7EMfTAQYhfBC', NULL, 0, 1, NULL, '2022-06-02 12:25:39', '2022-06-02 12:25:39', NULL),
(20, 'mahi', '1234567898', NULL, 'mahi@gmail.com', '3', NULL, NULL, '$2y$10$eDiYpAWNEcA8EqHBfZwqUeVo3QtihHD1NO41CB1FLVBo9n0KVLloC', NULL, 0, 1, NULL, '2022-06-03 04:43:08', '2022-06-03 04:43:08', NULL),
(21, 'abhi', '1234567867', NULL, 'abhi@gmail.com', '3', NULL, NULL, '$2y$10$W7uRzNUn8UqlM3rTigDrIuPpZlyhJb3j/8sU7kLUfNS7bgUHQNzN.', NULL, 0, 1, NULL, '2022-06-03 04:48:52', '2022-06-03 04:48:52', NULL),
(22, 'Jiya', '1234567890', NULL, 'jiya@gmail.com', '3', NULL, NULL, '$2y$10$DdWLodWAKbu6qbG1Vk9spuIUoorzuyeyuFF7sbayPyfbFaG1IrDoK', NULL, 0, 1, NULL, '2022-06-03 04:50:38', '2022-06-03 04:50:38', NULL),
(23, 'abhir', '2345612345', NULL, 'abhir@gmail.com', '3', NULL, NULL, '$2y$10$vXIGlzckh6e/FBYJO1kMMupW5HFHx.wlLirUism8q5v5NQUyvVFmy', NULL, 0, 1, NULL, '2022-06-03 04:53:04', '2022-06-03 04:53:04', NULL),
(24, 'krina', '2342342341', NULL, 'krina@gmail.com', '3', NULL, NULL, '$2y$10$RBYvRhZj3lujM9st.a4mCORd2ygh6dKQcsW8fwzRF7ZYk7o3KogSa', NULL, 0, 1, NULL, '2022-06-03 07:17:46', '2022-06-03 07:17:46', NULL),
(25, 'prisha', '2323232323', NULL, 'prisha@gmail.com', '3', NULL, NULL, '$2y$10$4GW8JsHceI8VeYcs6SFHM.USvM6kIzbETkvUP6CR1N3GIYnFrNWDC', NULL, 0, 1, NULL, '2022-06-03 07:19:30', '2022-06-03 07:19:30', NULL),
(26, 'tiya', '1231231231', NULL, 'tiya@gmail.com', '3', NULL, NULL, '$2y$10$30MZ3SPe8SX6sseBVE07ReQGOH3FqrKC4dYrrRiy8syKb4ISIEyyK', NULL, 0, 1, NULL, '2022-06-03 07:21:21', '2022-06-03 07:21:21', NULL),
(27, 'rita', '5656565667', '16542499401461569573.png', 'rita@gmail.com', '3', NULL, NULL, '$2y$10$5m.hE3e3wmXjdsbZV95esOojogUKm2f6LZepCEba2/7CTB1BYQNRi', NULL, 0, 1, NULL, '2022-06-03 07:23:26', '2022-06-03 09:52:20', NULL),
(28, 'drash', '1212121212', '16542507641410007620.png', 'drashti@gmail.com', '3', NULL, NULL, '$2y$10$c3QLFyPV9621l78ih141C.0Yu9WcsV9O4NIh0KGh80/tnzq0CHXzO', NULL, 0, 1, NULL, '2022-06-03 10:05:34', '2022-06-03 10:06:04', NULL),
(29, 'abhay', '2222222222', NULL, 'abhay@gmail.com', '3', NULL, NULL, '$2y$10$ZWjJEtzOA0rrk/5d7Ct8bOWSoZXw0LJv5E2.ecIBoR2N.PQsH8PZi', NULL, 0, 1, NULL, '2022-06-03 10:19:33', '2022-06-03 10:19:33', NULL),
(30, 'meera', '1234567991', NULL, 'meera@gmail.com', '3', NULL, NULL, '$2y$10$16tAfgEU7vqRzPhw3aDKWux1rz8/ZbMsbTQdx6AiK.TdnUhxosemK', NULL, 0, 1, NULL, '2022-06-03 10:21:08', '2022-06-03 10:21:08', NULL),
(31, 'tara', '2222222222', NULL, 'tara@gmail.com', '3', NULL, NULL, '$2y$10$XYwzsaw.cqblRvMJqBXsWOk0CDb1q4O4rVL74/iLwI4/kv9L3qQT2', NULL, 0, 1, NULL, '2022-06-03 10:28:32', '2022-06-03 10:28:32', NULL),
(32, 'nirali', '1231231231', NULL, 'nira@gmail.com', '3', NULL, NULL, '$2y$10$SI.Zu5Dea7sxgJ3tlZADyurTbvlMievcB9vw1/QcSkAMgAHvllPJi', NULL, 0, 1, NULL, '2022-06-03 10:42:40', '2022-06-03 10:42:40', NULL),
(33, 'chand', '1313131313', '16542580331361658519.png', 'chandani@gmail.com', '3', NULL, NULL, '$2y$10$PlNUiitV5aIdkzonnF91.ueQUwAz01Zz4j/xbG1sSxTHaeaaiy5tS', NULL, 0, 1, NULL, '2022-06-03 10:57:59', '2022-06-03 12:07:13', NULL),
(34, 'Ashish', '7202995127', NULL, 'ashish@gmail.com', '3', NULL, NULL, '$2y$10$vC6j8WCVXDcrjl7wSYl0sugV5zS47UBdeF3xmTm.0.UesjnDul5Hu', NULL, 0, 1, NULL, '2022-06-03 12:19:55', '2022-06-03 12:19:55', NULL),
(35, 'Brandon H. Morris', '9988776655', 'WQkyqgAaSd1570614210.jpg', '9988776655@gmail.com', '3', NULL, NULL, '$2y$10$6Y20v8HQoH2USTdrFH1IFehL6Y6Pw6kro7NO3gClzlsD1ate0BHQq', NULL, 0, 1, NULL, '2022-07-05 11:13:43', '2022-07-11 11:21:36', NULL),
(36, 'john due', '1234567890', '17386261741672816389.jpg', 'john@gmail.com', '3', NULL, NULL, '$2y$10$CopmD8yDmceOlOTsJI/F8.GfvTUSlE3zp8r2ZMVUZqi1LlCDKOT8a', NULL, 0, 1, NULL, '2023-01-02 04:50:59', '2023-01-04 07:14:13', NULL),
(37, 'hazel', '1231231234', '17568104781672721779.png', 'abc@gmail..com', '3', NULL, NULL, '$2y$10$4GW8JsHceI8VeYcs6SFHM.USvM6kIzbETkvUP6CR1N3GIYnFrNWDC', NULL, 0, 1, NULL, '2022-06-03 07:19:30', '2023-01-03 04:56:19', NULL),
(38, 'user 21', '1234567890', NULL, '21@gmail.com', '3', NULL, NULL, '$2y$10$8Md.VnOqRk25x0gMOtxcl.hw7ePke1J.U3juzqMkB7z.xGrTxNsjy', NULL, 0, 1, NULL, '2023-01-02 11:19:50', '2023-01-02 11:19:50', NULL),
(39, 'hello', '1234567890', NULL, 'hello@gmail.com', '3', NULL, NULL, '$2y$10$mb3hyuh3eY9kTUArwAJMXufusYPtEaEgWuiaRvAruAzAu7fNysIxK', NULL, 0, 1, NULL, '2023-01-02 11:22:14', '2023-01-02 11:22:14', NULL),
(40, 'admin', '1234567890', NULL, 'admin11@gmail.com', '3', NULL, NULL, '$2y$10$lyo2HCjqgjVB4Sajsn0X5OGM4ehTFgGXmfGWg.9DhpTXlBXAdCGom', NULL, 0, 1, NULL, '2023-01-02 11:25:00', '2023-01-02 11:25:00', NULL),
(41, 'admin', '1234567890', NULL, 'admin12@gmail.com', '3', NULL, NULL, '$2y$10$SgWLnQJ.8t.zWmcyL9m.7ey5tXIey6Dt6u8Nqzrm5Atrn9WA7vOji', NULL, 0, 1, NULL, '2023-01-02 11:33:38', '2023-01-02 11:33:38', NULL),
(42, 'admin', '1234567890', NULL, 'admin15@gmail.com', '3', NULL, NULL, '$2y$10$PjczeGRiN3dYY6MtKnJgYu4.MZhgwcYieUA8.zzPybDKEdvHOrt.6', NULL, 0, 1, NULL, '2023-01-02 11:36:13', '2023-01-02 11:36:13', NULL),
(43, 'neel', '1234567890', NULL, 'neel@gmail.com', '3', NULL, NULL, '$2y$10$UJTMDnF/INd2PV4Qw1NS6el99mUGeeCl7lNjaUTrCqcUiJDMkutvm', NULL, 0, 1, NULL, '2023-01-02 12:48:53', '2023-01-02 12:48:53', NULL),
(44, 'demo', '9988776655', NULL, 'demo@gmail.com', '3', NULL, NULL, '$2y$10$Q/X1aFX3YJI0gaG9b5tZxurj35ceMs3wl/8ibAbaWlgNN1mWGmGGq', NULL, 0, 1, NULL, '2023-01-02 14:47:14', '2023-01-02 14:47:14', NULL),
(45, 'test', '6789678990', NULL, 'test@gmail.com', '3', NULL, NULL, '$2y$10$ItwqS.Oke534s6bLvNkRPugy10tU5kb15.mpFPvhd7TAoY.zlsBLW', NULL, 0, 1, NULL, '2023-01-03 09:02:00', '2023-01-03 09:02:00', NULL),
(46, 'David M. Linger', '9898989898', 'f24C3mDYWU1648208566.png', 'johndue123@gmail.com', '2', NULL, NULL, '$2y$10$T036xgBC0jR2.cw9r/t19.aFW5IIlTLR/j.xhKimeew8l98I4CB02', NULL, 0, 1, NULL, '2023-01-04 10:59:01', '2023-01-04 12:53:41', NULL),
(48, 'Justian', '123456789', '16330815451398750647.png', 'justian@gmail.com', '2', 2, NULL, '123', '0efYzrBhQAx9FndjxT3NflzPmMbE8h8eDbYwvfHmMXndRNz2xZMQufKJ5qdt', 8, 1, NULL, '2021-10-01 04:15:48', '2023-02-28 01:52:13', NULL),
(49, 'John Patinent', NULL, NULL, 'johnpatient@gmail.com', '3', NULL, NULL, '123456', 'hm4NFF9ZNzybNCLPbREOJHPEYcDgZMxTr5ivvV63Gp7s3vkGhOGV5OWLjbsZ', 0, 1, NULL, '2023-02-28 12:46:08', '2023-02-28 12:46:08', NULL),
(50, 'Maria J. tavares', '9898989898', 'user11.webp', 'john123@gmail.com', '3', NULL, NULL, '123', 'xFrrYSD6MGfnP1QHKoQ5ymECgvPTlrtPiaGOrLMil3Cw5HsrdttJ1SLtA0UD', 0, 1, NULL, '2023-03-06 06:00:03', '2023-03-10 12:13:34', NULL),
(51, 'John Williams', '9876543201', '7816122391679296494.jpg', 'johnwilliams@gmail.com', '3', NULL, NULL, '$2y$10$e37rZ1lFudqFvfjMyMSX0OAfo6im63soSvSlh3XciOt5y0dVs74T.', NULL, 0, 1, NULL, '2023-03-20 07:12:39', '2023-03-20 07:14:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `house_no` varchar(1000) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `is_default` varchar(250) NOT NULL DEFAULT '0' COMMENT '0=>not default,1=>default',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `address` varchar(3000) DEFAULT NULL,
  `lat` varchar(1000) DEFAULT NULL,
  `long` varchar(1000) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `name`, `house_no`, `pincode`, `city`, `state`, `is_default`, `created_at`, `updated_at`, `deleted_at`, `address`, `lat`, `long`, `phone`) VALUES
(1, 3, 'Home', 'B-8 208', '360005', '1', 'New York', '0', '2021-10-09 11:59:10', '2022-07-20 07:06:46', '2022-07-20 07:06:46', 'Adajan', '40.74125420000001', '-73.9853311', NULL),
(2, 3, 'Office', '208', '360005', '1', 'New York', '0', '2021-10-11 08:58:25', '2022-07-20 07:12:18', '2022-07-20 07:12:18', 'test', '40.74125420000001', '-73.9853311', NULL),
(3, 3, 'hazelsfsd', '111', '1111111', 'test', 'test', '0', '2022-01-29 04:18:15', '2023-01-04 08:52:35', NULL, 'test', '21.3545', '72.4353', '343534535'),
(4, 9, 'Home', 'JMQG+6P2', '144204', '1', 'Punjab', '0', '2022-01-29 04:22:13', '2022-01-29 10:16:47', '2022-01-29 10:16:47', '144204, JMQG+6P2, Dehriwal, Hoshiarpur, Punjab, India', '31.6378646', '75.6769909', NULL),
(5, 9, 'Office', 'HM73+HPH', '144201', '1', 'Punjab', '0', '2022-01-29 04:35:53', '2022-01-29 10:16:39', '2022-01-29 10:16:39', '144201, HM73+HPH, Moga, Jalandhar, Punjab, India', '31.6376988', '75.6755366', NULL),
(6, 9, 'Office', 'HM73+HPH', '144201', '1', 'Punjab', '0', '2022-01-29 04:36:20', '2022-01-29 09:21:45', '2022-01-29 09:21:45', '144201, HM73+HPH, Moga, Jalandhar, Punjab, India', '31.6376988', '75.6755366', NULL),
(7, 9, 'Home', 'B-8 208', '360005', '1', 'New York', '0', '2022-01-29 04:38:47', '2022-01-29 09:21:49', '2022-01-29 09:21:49', 'Adajan', '40.74125420000001', '-73.9853311', NULL),
(8, 9, 'H1', 'Dehriwal Circle Road', '144203', '1', 'Punjab', '0', '2022-01-29 04:41:14', '2022-01-29 09:19:42', '2022-01-29 09:19:42', 'Adajan', '40.74125420000001', '-73.9853311', NULL),
(9, 9, 'Harmans Home', 'JMPH+RF5', '144204', '1', 'Punjab', '0', '2022-01-29 08:41:12', '2022-01-29 10:02:52', '2022-01-29 10:02:52', '144204, JMPH+RF5, Dehriwal, Hoshiarpur, Punjab, India', '31.6380976', '75.6767155', NULL),
(10, 9, 'Tannu home', 'JMQG+J9W', '146116', '1', 'Punjab', '0', '2022-01-29 08:44:18', '2022-01-29 10:02:55', '2022-01-29 10:02:55', '146116, JMQG+J9W, Dehriwal, Hoshiarpur, Punjab, India', '31.6394023', '75.675173', NULL),
(11, 9, 'Gopy home', 'JMQG+6P2', '144204', '1', 'Punjab', '0', '2022-01-29 08:46:38', '2022-01-29 09:21:53', '2022-01-29 09:21:53', '144204, JMQG+6P2, Dehriwal, Hoshiarpur, Punjab, India', '31.6378646', '75.6769909', NULL),
(12, 9, 'Gopy home', 'JMQG+6P2', '144204', '1', 'Punjab', '0', '2022-01-29 08:46:50', '2022-01-29 09:21:57', '2022-01-29 09:21:57', '144204, JMQG+6P2, Dehriwal, Hoshiarpur, Punjab, India', '31.6378646', '75.6769909', NULL),
(13, 9, 'Mannu home', 'JMQG+6P2', '144204', '1', 'Punjab', '0', '2022-01-29 08:47:43', '2022-01-29 09:22:02', '2022-01-29 09:22:02', '144204, JMQG+6P2, Dehriwal, Hoshiarpur, Punjab, India', '31.6378646', '75.6769909', NULL),
(14, 9, 'Mamma home 2', 'JMQG+6P2', '144204', '1', 'Punjab', '0', '2022-01-29 08:50:56', '2022-01-29 10:02:58', '2022-01-29 10:02:58', '144204, JMQG+6P2, Dehriwal, Hoshiarpur, Punjab, India', '31.6378646', '75.6769909', NULL),
(15, 9, 'zzz', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 08:53:44', '2022-01-29 09:19:36', '2022-01-29 09:19:36', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(16, 9, 'zzz', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 08:54:22', '2022-01-29 09:19:32', '2022-01-29 09:19:32', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(17, 9, 'vvv', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 08:58:32', '2022-01-29 09:19:27', '2022-01-29 09:19:27', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(18, 9, 'hh', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 08:59:39', '2022-01-29 09:19:21', '2022-01-29 09:19:21', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(19, 9, 'gg', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 09:01:20', '2022-01-29 09:19:15', '2022-01-29 09:19:15', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(20, 9, 'Pataila House', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 10:03:17', '2022-01-29 10:16:35', '2022-01-29 10:16:35', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(21, 9, 'Pataila House', 'JMQG+H93', '144204', '1', 'Punjab', '1', '2022-01-29 10:03:26', '2022-01-29 10:16:31', '2022-01-29 10:16:31', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(22, 3, 'Home', 'B-8 208', '360005', '1', 'New York', '0', '2022-01-29 10:03:45', '2022-01-29 10:03:45', NULL, 'Adajan', '40.74125420000001', '-73.9853311', NULL),
(23, 9, 'Test', 'JMQG+H93', '144204', '1', 'Punjab', '1', '2022-01-29 10:07:14', '2022-01-29 10:07:18', '2022-01-29 10:07:18', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(24, 9, 'Home', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 10:17:22', '2022-01-29 10:17:31', '2022-01-29 10:17:31', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(25, 9, 'Home', 'JMQG+H93', '144204', '1', 'Punjab', '0', '2022-01-29 10:17:54', '2022-01-31 05:57:52', '2022-01-31 05:57:52', '144204, JMQG+H93, Dehriwal, Hoshiarpur, Punjab, India', '31.6376988', '75.6755366', NULL),
(26, 9, 'Office', 'HJ4X+8G9', '144201', '1', 'Punjab', '0', '2022-01-29 10:18:20', '2022-01-31 04:40:05', '2022-01-31 04:40:05', '144201, HJ4X+8G9, Bhogpur, Jalandhar, Punjab, India', '31.6376468', '75.6750806', NULL),
(27, 9, 'Mamma', 'Db - 522', '144204', '1', 'Punjab', '0', '2022-01-31 03:38:01', '2022-01-31 03:38:51', '2022-01-31 03:38:51', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6359379', '75.678898', NULL),
(28, 9, 'Office', 'Jalandhar', '144001', '1', 'Punjab', '0', '2022-01-31 04:40:56', '2022-01-31 05:53:42', '2022-01-31 05:53:42', '144001, Jalandhar, Jalandhar, Jalandhar, Punjab, India', '31.6342333', '75.6789019', NULL),
(29, 9, 'zzzz', 'Dehriwal - Jaourra Road', '146116', '1', 'Punjab', '1', '2022-01-31 04:41:30', '2022-01-31 05:20:39', '2022-01-31 05:20:39', '146116, Dehriwal - Jaourra Road, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(30, 9, 'kkkkk', 'Bagheaari Circle', '146116', '1', 'Punjab', '0', '2022-01-31 04:41:45', '2022-01-31 05:10:28', '2022-01-31 05:10:28', '146116, Bagheaari Circle, Bagheaari, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(31, 9, 'hhhh', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 04:43:09', '2022-01-31 05:03:43', '2022-01-31 05:03:43', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(32, 9, 'New', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 05:05:02', '2022-01-31 05:06:15', '2022-01-31 05:06:15', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(33, 9, 'New', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 05:06:33', '2022-01-31 05:07:58', '2022-01-31 05:07:58', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(34, 9, 'hjj', 'JMPH+92X', '144204', '1', 'Punjab', '0', '2022-01-31 05:08:52', '2022-01-31 05:10:31', '2022-01-31 05:10:31', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(35, 9, 'kkkk', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 05:09:11', '2022-01-31 05:10:25', '2022-01-31 05:10:25', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(36, 9, 'kkkkk', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 05:10:46', '2022-01-31 05:18:19', '2022-01-31 05:18:19', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(37, 9, 'kkkk', 'JMPH+92X', '144204', '1', 'Punjab', '0', '2022-01-31 05:13:17', '2022-01-31 05:18:13', '2022-01-31 05:18:13', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(38, 9, 'hhhh', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 05:21:09', '2022-01-31 05:52:28', '2022-01-31 05:52:28', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(39, 9, 'Home', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 06:05:41', '2022-01-31 06:06:28', '2022-01-31 06:06:28', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(40, 9, 'xyz', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 06:06:44', '2022-01-31 06:19:07', '2022-01-31 06:19:07', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(41, 9, 'Home 2', 'JMPH+92X', '144204', '1', 'Punjab', '0', '2022-01-31 06:09:14', '2022-02-01 06:35:23', NULL, '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(42, 9, 'Office', 'JMPH+92X', '144204', '1', 'Punjab', '1', '2022-01-31 06:18:47', '2022-01-31 06:24:08', '2022-01-31 06:24:08', '144204, JMPH+92X, Dehriwal, Hoshiarpur, Punjab, India', '31.6342333', '75.6789019', NULL),
(43, 9, 'Office 2', 'Datta - Mohkamghar Road', '146116', '1', 'Punjab', '1', '2022-01-31 06:24:42', '2022-02-01 06:35:23', NULL, '146116, Datta - Mohkamghar Road, Mohkamgarh, Hoshiarpur, Punjab, India', '31.6418551', '75.6704434', NULL),
(44, 35, 'Home', 's 7', '363642', '1', 'Gujarat', '0', '2022-07-25 05:16:55', '2022-07-25 05:45:45', '2022-07-25 05:45:45', 'RVV9+7MX,363641Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(45, 35, 'ofi', 'o7', '36', '1', 'st', '1', '2022-07-25 05:21:53', '2022-07-25 05:24:48', '2022-07-25 05:24:48', 'RVV9+7MX,363641Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(46, 35, 'Home', 's7', '363642', '1', 'gujarat', '0', '2022-07-25 05:46:24', '2022-07-26 12:52:47', '2022-07-26 12:52:47', 'RVV9+7MX,363641Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(47, 35, 'Office', 'o7', '36362001', '1', 'guj', '1', '2022-07-25 05:47:27', '2022-07-25 05:59:07', '2022-07-25 05:59:07', 'RVV9+7MX,363641,Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(48, 35, 'save as', 'o7', '3737', '1', 'sts', '1', '2022-07-25 05:59:48', '2022-07-25 05:59:53', '2022-07-25 05:59:53', 'RVV9+7MX,363641,Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(49, 35, 'save as', '97', '35', '1', 'state', '1', '2022-07-25 06:00:35', '2022-07-25 06:00:40', '2022-07-25 06:00:40', 'RVV9+7MX,363641,Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(50, 35, 'office new', 'office new', 'pin new', '1', 'guj new', '0', '2022-07-25 06:01:06', '2022-07-26 12:52:36', '2022-07-26 12:52:36', 'RVV9+7MX,363641,Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(51, 35, 'new address update', 'hn', '36', '1', 'state', '0', '2022-07-25 06:39:19', '2022-07-25 06:40:16', '2022-07-25 06:40:16', 'RVV9+7MX,363641,Mahendranagar,Morbi,Gujarat,India', '22.843554', '70.8694091', NULL),
(52, 35, 'new up', 'ne', '37', '1', 'ne', '0', '2022-07-26 09:12:03', '2022-07-26 09:12:21', '2022-07-26 09:12:21', 'RVV9+7HC,363641,,Morbi,Gujarat,India', '22.8434618', '70.8686659', NULL),
(53, 35, 'new', 'new', 'new', '1', 'new', '1', '2022-07-26 09:15:58', '2022-07-26 09:25:10', '2022-07-26 09:25:10', 'RVVC+JQ3,363641,,Morbi,Gujarat,India', '22.8438768', '70.8720102', NULL),
(54, 35, 'new2', 'new', 'new', '1', 'new', '0', '2022-07-26 09:19:01', '2022-07-26 09:25:47', '2022-07-26 09:25:47', 'RVVF+H29,363641,,Morbi,Gujarat,India', '22.843969', '70.8727533', NULL),
(55, 35, 'new', 'new', 'new', '1', 'new', '1', '2022-07-26 12:34:56', '2022-07-26 12:35:08', '2022-07-26 12:35:08', 'RVV9+7HC,363641,,Morbi,Gujarat,India', '22.8434618', '70.8686659', NULL),
(56, 35, 'new office2', 'new', 'new', '1', 'new', '1', '2022-07-26 12:36:11', '2022-07-26 12:40:18', '2022-07-26 12:40:18', 'RVV9+7HC,363641,,Morbi,Gujarat,India', '22.8434618', '70.8686659', NULL),
(57, 35, 'new', 'new', 'new', '1', 'new', '0', '2022-07-26 12:41:09', '2022-07-26 12:52:33', '2022-07-26 12:52:33', 'RVV9+7HC,363641,,Morbi,Gujarat,India', '22.8434618', '70.8686659', NULL),
(58, 35, 'home', 's7', '363642', '1', 'guj', '1', '2022-07-26 12:57:31', '2022-07-26 12:57:48', '2022-07-26 12:57:48', 'RVV9+7MX,363641,Mahendranagar,Morbi,Gujarat,India', '22.8428851', '70.8697807', NULL),
(59, 35, 'Home', 's7', '363636', '1', 'state', '0', '2022-07-26 13:04:16', '2022-07-27 14:51:13', NULL, 'RVV9+7HC ,363641,,Morbi,Gujarat,India', '22.8434618', '70.8686659', NULL),
(60, 35, 'Office', 'o8', '363642', '1', 'gujarat', '1', '2022-07-27 14:51:13', '2022-07-27 14:51:13', NULL, 'RVRC+535,363641,,Morbi,Gujarat,India', '22.8397136', '70.8701522', NULL),
(61, 36, '123', '12', '395006', '12', 'gujrat', '0', '2023-01-02 08:19:46', '2023-01-02 10:41:04', '2023-01-02 10:41:04', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(62, 36, '2222', '22', '22', '22', '22', '0', '2023-01-02 08:20:11', '2023-01-02 10:41:07', '2023-01-02 10:41:07', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(63, 36, '44', '22', '22', '22', '22', '0', '2023-01-02 08:21:02', '2023-01-02 10:41:09', '2023-01-02 10:41:09', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(64, 36, 'gh', '12', '395008', '12', 'se', '0', '2023-01-02 08:23:42', '2023-01-02 10:41:12', '2023-01-02 10:41:12', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385808', '72.8884636', NULL),
(65, 36, 'surat', '123', '395008', '123', 'surat', '0', '2023-01-02 08:25:14', '2023-01-02 10:41:15', '2023-01-02 10:41:15', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385932', '72.8884407', NULL),
(66, 36, 'surat', '11', '395006', '11', 'gujrat', '0', '2023-01-02 08:27:15', '2023-01-02 10:41:19', '2023-01-02 10:41:19', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(67, 36, 'surat123', '12', '395008', '12', 'gujrat', '0', '2023-01-02 08:33:42', '2023-01-02 10:41:21', '2023-01-02 10:41:21', '300 5th St,94103,SOMA,San Francisco County,CA,United States', '37.78015274034632', '-122.40328431129456', NULL),
(68, 36, '22', '22', '33', '22', '22', '0', '2023-01-02 08:35:56', '2023-01-03 08:47:13', '2023-01-03 08:47:13', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(69, 36, 'ccv', '13', '89000', '13', 'thg', '0', '2023-01-02 08:38:26', '2023-01-03 08:47:15', '2023-01-03 08:47:15', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385708', '72.8884647', NULL),
(70, 36, 'surat', '120', '395006', '120', 'surat', '0', '2023-01-02 08:40:34', '2023-01-03 08:47:16', '2023-01-03 08:47:16', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(71, 36, '12', '12', '12', '12', '12', '0', '2023-01-02 08:52:33', '2023-01-03 08:47:18', '2023-01-03 08:47:18', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(72, 36, 'Home', '10', '395006', '4', 'gujrat', '0', '2023-01-02 08:54:54', '2023-01-13 05:21:12', NULL, '1800 Ellis St,94115,San Francisco,California,United States', '37.785834', '-122.406417', '9696969696'),
(73, 36, 'Company', '123', '394101', '4', 'gujrat', '0', '2023-01-02 09:01:36', '2023-01-13 05:21:12', NULL, '42 valkeshvar,394105,Mota Varachha,Surat,Gujarat,India', '21.241309005806485', '72.89152510464191', '9449494495'),
(74, 36, 'hazelsfsd', '111', '1111111', 'test', 'test', '0', '2023-01-02 09:22:27', '2023-01-13 05:07:08', '2023-01-13 05:07:08', '1800 Ellis St,94115,,San Francisco County,California,United States', '37.785834', '-122.406417', '9898989898'),
(75, 36, 'john', '12', '395006', 'surat', 'gujrat', '0', '2023-01-02 09:26:09', '2023-01-13 05:15:04', '2023-01-13 05:15:04', 'surat', '21.2021', '72.8673', NULL),
(76, 1, 'fwer', '111', '1111111', 'test', 'test', '0', '2023-01-02 09:27:02', '2023-01-02 09:27:02', NULL, 'test', '21.3545', '72.4353', NULL),
(77, 36, 'hello', '12', '395006', '12', 'gujrat', '0', '2023-01-02 09:28:31', '2023-01-13 05:07:12', '2023-01-13 05:07:12', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385781', '72.8884467', NULL),
(78, 36, 'john', '12', '395006', 'surat', 'gujrat', '0', '2023-01-02 09:29:33', '2023-01-13 05:07:32', '2023-01-13 05:07:32', 'surat', '21.2021', '72.8673', NULL),
(79, 36, 'john', '12', '395006', 'surat', 'gujrat', '0', '2023-01-02 09:29:40', '2023-01-13 05:07:34', '2023-01-13 05:07:34', 'surat', '21.2021', '72.8673', NULL),
(80, 36, 'hello', '12', '395008', '12', 'gui', '0', '2023-01-02 09:33:55', '2023-01-13 05:07:35', '2023-01-13 05:07:35', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385796', '72.8884707', NULL),
(81, 36, 'john', '12', '395006', 'surat', 'gujrat', '0', '2023-01-02 09:36:38', '2023-01-13 05:07:36', '2023-01-13 05:07:36', 'surat', '21.2021', '72.8673', NULL),
(82, 36, 'www', 'ww', 'w', 'ww', 'ww', '0', '2023-01-02 09:40:55', '2023-01-13 05:07:38', '2023-01-13 05:07:38', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(83, 11, 'hazel', '111', '1111111', 'test', 'test', '0', '2023-01-02 09:40:58', '2023-01-02 09:40:58', NULL, 'test', '21.3545', '72.4353', NULL),
(84, 36, '11', '11', '11', '11', '11', '0', '2023-01-02 09:41:49', '2023-01-13 05:07:39', '2023-01-13 05:07:39', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(85, 36, 'hello', '12', '395006', '12', 'guj', '0', '2023-01-02 09:47:16', '2023-01-13 05:07:41', '2023-01-13 05:07:41', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(86, 36, '22', '12', '2', '12', '2', '0', '2023-01-02 09:54:56', '2023-01-13 05:07:42', '2023-01-13 05:07:42', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(87, 36, 't', 'hello', 'gg', 'hello', 'sg', '0', '2023-01-02 09:58:56', '2023-01-13 05:07:43', '2023-01-13 05:07:43', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385884', '72.8884647', NULL),
(88, 36, 'dduuu', 'gg', 'bh', 'gg', 'dd', '0', '2023-01-02 10:13:28', '2023-01-13 05:07:45', '2023-01-13 05:07:45', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385775', '72.8884649', NULL),
(89, 36, 'gh', 'bb', 'hh', 'bb', 'vv', '0', '2023-01-02 10:30:17', '2023-01-13 05:07:29', '2023-01-13 05:07:29', 'opera business hub,394101,Mota Varachha,,Gujarat,India', '21.2385766', '72.8884683', NULL),
(90, 36, 'Neighbour', '45', '54', '6', '54', '0', '2023-01-02 10:30:56', '2023-01-13 05:21:12', NULL, '1800 Ellis St,94115,,San Francisco,California,United States', '37.785834', '-122.406417', '9896959698'),
(91, 36, '55', '454', '54', '454', '54', '1', '2023-01-02 10:32:07', '2023-01-03 08:47:09', '2023-01-03 08:47:09', '1 Stockton St,94108,Union Square,San Francisco County,CA,United States', '37.785834', '-122.406417', NULL),
(92, 44, 'home', '10', '362001', '10', 'Gujarat', '0', '2023-01-02 14:48:00', '2023-02-09 06:09:53', NULL, 'GCCJ+5WQ,362001,Monalisa Township,,Gujarat,India', '21.520212', '70.4322194', NULL),
(93, 3, 'hazelsfsd', '111', '1111111', 'test', 'test', '0', '2023-01-04 09:01:18', '2023-01-04 09:01:18', NULL, 'test', '21.3545', '72.4353', '9898676771'),
(94, 36, 'Office', '457', '305052', '6', 'Gujarat', '1', '2023-01-04 09:02:46', '2023-01-13 05:21:12', NULL, 'A/150,394101,Mota Varachha,Surat,Gujarat,India', '21.2386453', '72.8884005', '9595959494'),
(95, 46, 'Office', '257', '395040', '1', 'Gujarat', '0', '2023-01-04 11:02:08', '2023-01-13 04:17:29', NULL, '2,394101,Mota Varachha,Surat,Gujarat,India', '21.2386324', '72.8884205', '9595959595'),
(96, 46, 'Home', '457', '305010', '5', 'Gujarat', '0', '2023-01-13 04:13:10', '2023-01-13 04:17:29', NULL, '255,394101,Mota Varachha,Surat,Gujarat,India', '21.2385204', '72.8883824', '9595959595'),
(97, 44, 'of', 'hn', '333', 'hn', 'st', '1', '2023-02-09 06:06:44', '2023-02-09 06:06:47', '2023-02-09 06:06:47', 'RVVF+WP5,363641,,,Gujarat,India', '22.845069', '70.8742948', NULL),
(98, 44, 'of', 'hn', '363636', 'hn', 'st', '1', '2023-02-09 06:09:53', '2023-02-09 06:09:56', '2023-02-09 06:09:56', 'RVVF+WP5,363641,,,Gujarat,India', '22.8450694', '70.874296', NULL),
(99, 4, 'Home', '15', '305041', '6', 'Gujarat', '0', '2023-02-15 12:58:56', '2023-02-16 09:48:16', '2023-02-16 09:48:16', 'lajamani circle,Mota Varachha,Surat,Gujarat,India', '21.2385035', '72.8884453', '9879879879'),
(100, 4, 'Office', '17', '395010', '6', 'Gujarat', '1', '2023-02-16 08:54:54', '2023-02-16 09:48:20', '2023-02-16 09:48:20', '157,lajamani circle,Mota Varachha,Surat,Gujarat,India,394101', '21.2384799', '72.8884259', '9876543210'),
(101, 4, 'Home', '67', '35564', '6', 'Missouri', '0', '2023-02-16 09:51:47', '2023-02-16 10:27:09', '2023-02-16 10:27:09', '7425 Shaftesbury Ave,,University City,Missouri,United States,63130', '38.66620821741384', '-90.33017235350107', '9876543210'),
(102, 4, 'Office', '45', '31245', '1', 'Missouri', '0', '2023-02-16 09:53:24', '2023-03-20 07:27:46', NULL, '245 N Mason Rd,,Creve Coeur,Missouri,United States,63141', '38.659857175586396', '-90.4821221384961', '9696969696'),
(103, 4, 'Business', '1', '35454', '2', 'llinois', '0', '2023-02-16 09:55:03', '2023-03-20 07:27:46', NULL, '1516 5th St,62060,,Madison,Illinois,United States', '38.68139402113014', '-90.15697738481101', '9693969396'),
(104, 4, 'Uncle William Home', '3', '34567', '4', 'Lousi', '0', '2023-02-16 09:59:08', '2023-03-20 07:27:46', NULL, '875 Cerre St,,St. Louis,Missouri,United States,63102', '38.62150509043878', '-90.19665995523802', '9393939393'),
(105, 4, 'Home', '875', '35467', '1', 'Missouri', '0', '2023-02-16 10:29:27', '2023-03-20 07:27:46', NULL, '875 Cerre St,63102,,St. Louis,Missouri,United States', '38.62150509043878', '-90.19665995523802', '9876543210'),
(106, 50, 'Home', '15', '395910', '1', 'Gujarat', '1', '2023-03-06 06:06:00', '2023-03-06 06:06:00', NULL, '151,394101,Mota Varachha,Surat,Gujarat,India', '21.2384932', '72.8884068', '9494949494'),
(107, 5, 'test', '112', '395006', '1', 'gujarat', '1', '2023-03-07 06:47:31', '2023-03-07 06:47:31', NULL, '1st Floor Kartos Club, Gaurav Path, Pal Gam, Surat - 395009 (Baghban Circle)', '40.74125420000001', '-73.9853311', NULL),
(108, 6, 'test', '112', '395006', '1', 'gujarat', '1', '2023-03-07 07:16:10', '2023-03-07 07:16:10', NULL, '639 Holloway Rd, Archway, London N19 5SS, United Kingdom', '40.74125420000001', '-73.9853311', NULL),
(109, 51, 'Home', '45', '395010', '6', 'Gujarat', '1', '2023-03-20 07:14:19', '2023-03-20 07:14:19', NULL, 'lajamani circle,394101,Mota Varachha,Surat,Gujarat,India', '21.2384873', '72.8884371', '9876543210'),
(110, 4, 'LUCUS HOME', '51', '336622', '6', 'USA', '1', '2023-03-20 07:27:46', '2023-03-20 07:27:46', NULL, '1100 Old Elkridge Landing Rd,21090,,Linthicum Heights,Maryland,United States', '39.205303685162114', '-76.69310232523343', '9876543210');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_member`
--
ALTER TABLE `cart_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `family_member`
--
ALTER TABLE `family_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_data`
--
ALTER TABLE `orders_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package__f_r_q_s`
--
ALTER TABLE `package__f_r_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateway_details`
--
ALTER TABLE `payment_gateway_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popular_packages`
--
ALTER TABLE `popular_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resetpasswords`
--
ALTER TABLE `resetpasswords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_details`
--
ALTER TABLE `test_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_member`
--
ALTER TABLE `cart_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_member`
--
ALTER TABLE `family_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `orders_data`
--
ALTER TABLE `orders_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `package__f_r_q_s`
--
ALTER TABLE `package__f_r_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_gateway_details`
--
ALTER TABLE `payment_gateway_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popular_packages`
--
ALTER TABLE `popular_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resetpasswords`
--
ALTER TABLE `resetpasswords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `test_details`
--
ALTER TABLE `test_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
