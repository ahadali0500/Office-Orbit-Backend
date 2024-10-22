-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2024 at 08:04 AM
-- Server version: 8.0.36-28
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkte9nmhdyfub`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `check_in_time` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checking_time` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_time` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_time` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_id` int DEFAULT NULL,
  `working_hours` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `status` enum('onjob','absent','leave','weekend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `check_in_time`, `checking_time`, `check_out_time`, `checkout_time`, `leave_id`, `working_hours`, `employee_id`, `manager_id`, `status`, `date`, `day`, `created_at`, `updated_at`) VALUES
(28, '00:00', '0:29', '05:50', '0:58', NULL, '0h 29m', 18, NULL, 'onjob', '07-27-2024', 'Friday', '2024-07-27 00:29:11', '2024-07-27 00:58:57'),
(29, '09:00', '10:00', NULL, NULL, NULL, NULL, 7, NULL, 'onjob', '07-26-2024', 'Friday', '2024-07-27 00:35:32', '2024-07-27 00:35:32'),
(30, '00:00', '0:29', '05:50', '0:58', NULL, '0h 29m', 2, NULL, 'onjob', '07-27-2024', 'Friday', '2024-07-27 00:29:11', '2024-07-27 00:58:57'),
(31, '00:00', '0:29', '05:50', '0:58', NULL, '0h 29m', 2, NULL, 'onjob', '07-26-2024', 'Friday', '2024-07-27 00:29:11', '2024-07-27 00:58:57'),
(32, '00:00', '0:29', '05:50', '0:58', NULL, '0h 29m', 2, NULL, 'onjob', '07-25-2024', 'Friday', '2024-07-27 00:29:11', '2024-07-27 00:58:57'),
(33, '00:00', '0:29', '05:50', '0:58', NULL, '0h 29m', 2, 3, 'onjob', '07-24-2024', 'Friday', '2024-07-27 00:29:11', '2024-07-27 00:58:57'),
(35, '09:00', '12:3', '17:00', '12:41', NULL, '0h 38m', 19, NULL, 'onjob', '07-27-2024', 'Saturday', '2024-07-27 17:03:55', '2024-07-27 17:41:31'),
(39, '09:00', '10:40', '17:00', '15:23', NULL, '4h 43m', 2, NULL, 'onjob', '07-30-2024', 'Tuesday', '2024-07-30 15:40:39', '2024-07-30 20:23:22'),
(43, '09:00', '16:55', NULL, NULL, NULL, NULL, NULL, 11, 'onjob', '08-08-2024', 'Thursday', '2024-08-08 21:55:49', '2024-08-08 21:55:49'),
(44, '09:00', '11:8', NULL, NULL, NULL, NULL, 2, NULL, 'onjob', '08-09-2024', 'Friday', '2024-08-09 16:08:16', '2024-08-09 16:08:16'),
(45, '09:00', '09:55', NULL, NULL, NULL, NULL, NULL, 11, 'onjob', '08-11-2024', 'Monday', '2024-08-11 21:55:49', '2024-08-11 21:55:49'),
(48, '09:00', '11:42', '17:00', '11:46', NULL, '0h 4m', NULL, 11, 'onjob', '08-12-2024', 'Monday', '2024-08-12 16:43:00', '2024-08-12 16:46:20'),
(49, '09:00', '11:48', '17:00', '11:49', NULL, '0h 1m', 2, NULL, 'onjob', '08-12-2024', 'Monday', '2024-08-12 16:48:50', '2024-08-12 16:49:23'),
(51, '09:00', '09:55', NULL, NULL, NULL, NULL, 18, NULL, 'onjob', '08-12-2024', 'Monday', '2024-08-12 16:08:16', '2024-08-12 16:08:16'),
(52, '09:00', '10:12', '17:00', '10:28', NULL, '0h 16m', NULL, 11, 'onjob', '08-15-2024', 'Thursday', '2024-08-15 15:12:38', '2024-08-15 15:28:53'),
(53, '09:00', '16:18', NULL, NULL, NULL, NULL, 2, NULL, 'onjob', '08-20-2024', 'Tuesday', '2024-08-20 21:18:54', '2024-08-20 21:18:54'),
(55, '13:00', '12:51', '17:00', '13:1', NULL, '0h 10m', 2, NULL, 'onjob', '09-23-2024', 'Monday', '2024-09-23 17:51:27', '2024-09-23 18:01:31'),
(56, '09:00', '16:41', '17:00', '16:43', NULL, '0h 2m', NULL, 11, 'onjob', '09-23-2024', 'Monday', '2024-09-23 21:41:29', '2024-09-23 21:43:37'),
(57, '10:00', '10:50', '17:00', '11:1', NULL, '0h 11m', 39, NULL, 'onjob', '09-24-2024', 'Tuesday', '2024-09-24 15:50:37', '2024-09-24 16:01:23'),
(58, '09:00', '11:1', '17:00', '11:1', NULL, '0h 0m', NULL, 11, 'onjob', '09-24-2024', 'Tuesday', '2024-09-24 16:01:35', '2024-09-24 16:01:44'),
(59, '13:00', '11:2', '17:00', '11:2', NULL, '0h 0m', 2, NULL, 'onjob', '09-24-2024', 'Tuesday', '2024-09-24 16:02:26', '2024-09-24 16:02:32'),
(60, '09:59', '12:6', '17:09', '12:6', NULL, '0h 0m', 38, NULL, 'onjob', '09-24-2024', 'Tuesday', '2024-09-24 17:06:05', '2024-09-24 17:06:22'),
(61, '09:00', '16:31', '17:00', '16:31', NULL, '0h 0m', NULL, 11, 'onjob', '09-25-2024', 'Wednesday', '2024-09-25 21:31:34', '2024-09-25 21:31:44'),
(63, '13:00', '17:8', NULL, NULL, NULL, NULL, 2, NULL, 'onjob', '10-08-2024', 'Tuesday', '2024-10-08 22:08:16', '2024-10-08 22:08:16'),
(64, '09:00', '11:26', '17:00', '11:28', NULL, '0h 2m', NULL, 18, 'onjob', '10-17-2024', 'Thursday', '2024-10-17 16:26:31', '2024-10-17 16:28:25'),
(65, '10:00', '11:36', '17:00', '11:37', NULL, '0h 1m', 60, NULL, 'onjob', '10-17-2024', 'Thursday', '2024-10-17 16:36:47', '2024-10-17 16:37:59'),
(66, '09:00', '11:40', NULL, NULL, NULL, NULL, 58, NULL, 'onjob', '10-17-2024', 'Thursday', '2024-10-17 16:40:04', '2024-10-17 16:40:04'),
(67, '09:00', '11:44', NULL, NULL, NULL, NULL, 63, NULL, 'onjob', '10-17-2024', 'Thursday', '2024-10-17 16:44:14', '2024-10-17 16:44:14'),
(68, '09:00', '11:44', '17:00', '11:44', NULL, '0h 0m', NULL, 11, 'onjob', '10-17-2024', 'Thursday', '2024-10-17 16:44:42', '2024-10-17 16:44:53'),
(69, '09:59', '11:52', '17:00', '14:0', NULL, '2h 8m', 62, NULL, 'onjob', '10-17-2024', 'Thursday', '2024-10-17 16:52:04', '2024-10-17 19:00:15'),
(70, '09:00', '12:36', NULL, NULL, NULL, NULL, 61, NULL, 'onjob', '10-17-2024', 'Thursday', '2024-10-17 17:36:29', '2024-10-17 17:36:29'),
(71, '09:59', '8:59', NULL, NULL, NULL, NULL, 62, NULL, 'onjob', '10-18-2024', 'Friday', '2024-10-18 13:59:45', '2024-10-18 13:59:45'),
(72, '09:00', '9:3', NULL, NULL, NULL, NULL, 63, NULL, 'onjob', '10-18-2024', 'Friday', '2024-10-18 14:03:02', '2024-10-18 14:03:02'),
(73, '10:00', '10:13', NULL, NULL, NULL, NULL, 60, NULL, 'onjob', '10-18-2024', 'Friday', '2024-10-18 15:13:20', '2024-10-18 15:13:20'),
(74, '09:59', '9:0', NULL, NULL, NULL, NULL, 62, NULL, 'onjob', '10-19-2024', 'Saturday', '2024-10-19 14:00:29', '2024-10-19 14:00:29'),
(75, '09:00', '12:52', NULL, NULL, NULL, NULL, 55, NULL, 'onjob', '10-19-2024', 'Saturday', '2024-10-19 17:52:16', '2024-10-19 17:52:16'),
(76, '09:59', '9:7', NULL, NULL, NULL, NULL, 62, NULL, 'onjob', '10-21-2024', 'Monday', '2024-10-21 14:07:53', '2024-10-21 14:07:53'),
(77, '09:00', '9:15', NULL, NULL, NULL, NULL, 63, NULL, 'onjob', '10-21-2024', 'Monday', '2024-10-21 14:15:31', '2024-10-21 14:15:31'),
(78, '10:00', '10:22', NULL, NULL, NULL, NULL, 60, NULL, 'onjob', '10-21-2024', 'Monday', '2024-10-21 15:22:09', '2024-10-21 15:22:09'),
(79, '09:00', '10:37', NULL, NULL, NULL, NULL, 58, NULL, 'onjob', '10-21-2024', 'Monday', '2024-10-21 15:37:06', '2024-10-21 15:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `recover_password_opt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordinates` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `password`, `token`, `image`, `description`, `recover_password_opt`, `coordinates`, `created_at`, `updated_at`) VALUES
(4, 'Desired Technologies', 'desiredtechnology@gmail.com', '$2y$10$gVrkpQz44WQUsIxGUitMvu5YcHLKuCHI.ytETwxiFjDje8xnwbMb2', '8077bc4eec3ef3556a94424681769980', 'comapny/logo/1727259696.jpeg', 'Description', '9d9c2fa032d6a1978be41ac9b2c845e1', '[{\"lat\":30.66186387730576967669549048878252506256103515625,\"lng\":73.1359423252908555923568201251327991485595703125},{\"lat\":30.661732365991721138698267168365418910980224609375,\"lng\":73.1359396430818406997786951251327991485595703125},{\"lat\":30.66173005877407575781035120598971843719482421875,\"lng\":73.1361059400407640396224451251327991485595703125},{\"lat\":30.6618569556621167748744483105838298797607421875,\"lng\":73.1361032578317491470443201251327991485595703125},{\"lat\":30.66185926287671037471227464266121387481689453125,\"lng\":73.1359838995305864273177576251327991485595703125}]', '2024-07-25 10:20:26', '2024-09-25 20:21:36'),
(12, 'Movers Loader', 'adeel.rajput1671@gmail.com', '$2y$10$WldqScg0Ztieuo8sGoJ7JO8q9JCQbdNTXBZJPuCyiM3nABsqf8CNO', '1830976217fbac29631632606343e78a', 'comapny/logo/1729145828.jpg', 'Hi', NULL, NULL, '2024-10-17 16:17:08', '2024-10-17 16:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Development', '1', NULL, NULL),
(2, 'SEO', '1', NULL, NULL),
(3, 'Video Editor', '1', NULL, NULL),
(4, 'Content Writing', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED DEFAULT '0',
  `manager_id` bigint UNSIGNED DEFAULT '0',
  `company_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `join_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `recover_password_opt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `department_id`, `manager_id`, `company_token`, `name`, `email`, `password`, `image`, `status`, `join_date`, `end_date`, `recover_password_opt`, `created_at`, `updated_at`) VALUES
(2, 1, 11, '8077bc4eec3ef3556a94424681769980', 'noor', 'noorulan45@gmail.com', '$2y$10$PlgWP40XFwhEeUdQrXXr5uRt1lGvFRN1WqFa6VpVXQ5nHK9jh2ra6', 'manager/employee/1723113223.jpg', '1', '2024-07-24', NULL, NULL, '2024-07-24 09:59:14', '2024-08-26 16:35:28'),
(55, 3, 18, '8077bc4eec3ef3556a94424681769980', 'Hamayun', 'shehrozashiq43@gmail.com', '$2y$10$a7An51FeAuTD0yLLCJLriumH9p6unFYapB2CMe2sE96YNDec48G/m', NULL, '1', '2024-10-16', NULL, NULL, '2024-10-17 03:19:42', '2024-10-19 17:49:36'),
(56, 0, 0, '8077bc4eec3ef3556a94424681769980', 'adeel', 'adeel.rajput1671@gmail.com', '$2y$10$QpRygktCYeVFIJXxYTuIwOMD/HsXZCYTqUrtuVptuZ9T8NoZT/Ase', NULL, '0', '2024-10-16', NULL, NULL, '2024-10-17 04:36:34', '2024-10-17 04:36:34'),
(57, 0, 0, '8077bc4eec3ef3556a94424681769980', 'Ahmad Raza', 'ahmad.raza254@gmail.com', '$2y$10$8WGHSEXHiZa/hSDzfHB21O0GRVfMarquiMrh9hkoVtfSISyRSHQAW', NULL, '0', '2024-10-17', NULL, NULL, '2024-10-17 10:33:13', '2024-10-17 10:33:13'),
(58, 1, 18, '8077bc4eec3ef3556a94424681769980', 'Farid', '1faridmasood@gmail.com', '$2y$10$FgPUBxKJD9QsVb2KVs/2z.QTPnkFeLS7YThvwTNQivfXzgqsmZ6LO', 'manager/employee/1729142123.jpg', '1', '2024-10-17', NULL, NULL, '2024-10-17 15:15:23', '2024-10-17 16:36:45'),
(59, 2, 18, '8077bc4eec3ef3556a94424681769980', 'Aftab Ahmay', 'designeraftab181@gmail.com', '$2y$10$PlgWP40XFwhEeUdQrXXr5uRt1lGvFRN1WqFa6VpVXQ5nHK9jh2ra6', NULL, '1', '2024-10-17', NULL, NULL, '2024-10-17 15:42:13', '2024-10-17 16:30:07'),
(60, 3, 18, '8077bc4eec3ef3556a94424681769980', 'Tania jafir', 'taniajafir84@gmail.com', '$2y$10$u7FeItiOluQMBGWhPWUt4uQzJBTkyxpBh0WXz3vrPKha4PwYPo2Xi', NULL, '1', '2024-10-17', NULL, NULL, '2024-10-17 15:55:58', '2024-10-17 16:32:51'),
(61, 3, 18, '8077bc4eec3ef3556a94424681769980', 'Åhad Åli', 'ahadali0500@gmail.com', '$2y$10$PlgWP40XFwhEeUdQrXXr5uRt1lGvFRN1WqFa6VpVXQ5nHK9jh2ra6', NULL, '1', '2024-10-17', NULL, NULL, '2024-10-17 15:59:34', '2024-10-17 16:37:02'),
(62, 3, 18, '8077bc4eec3ef3556a94424681769980', 'Anas Hashmi', 'hashmianas389@gmail.com', '$2y$10$D2FtzlFncCQ9r2RvpIVxzeJkurx8w/iuQdleZY9t4s6xVmmd8nn.2', NULL, '1', '2024-10-17', NULL, NULL, '2024-10-17 16:13:00', '2024-10-17 16:45:23'),
(63, 2, 18, '8077bc4eec3ef3556a94424681769980', 'Aftab Ahmad', 'aftabahmadaftabahmad58@gmail.com', '$2y$10$KHwRdJuCqEfbqUxYU56csOQQ7Q6Itz0IGywCBT0PyhbvXdgedd8eW', NULL, '1', '2024-10-17', NULL, NULL, '2024-10-17 16:41:47', '2024-10-17 16:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `type` enum('casual','sick') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `manager_id`, `type`, `date`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(22, NULL, 18, 'sick', '10-19-2024', 'I m suffurng from high fever', 'pending', '2024-10-17 21:12:24', '2024-10-17 21:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED DEFAULT '0',
  `company_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active',
  `join_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `recover_password_opt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `department_id`, `company_token`, `name`, `email`, `password`, `image`, `status`, `join_date`, `end_date`, `recover_password_opt`, `created_at`, `updated_at`) VALUES
(11, 1, '8077bc4eec3ef3556a94424681769980', 'Noor ul Ain', 'noorulan45@gmail.com', '$2y$10$TPRsFbddIFLDEnUmEb.A9e6DE1aRkvBQTwa2OKHnD/oiIqoogGn3O', NULL, '1', '2024-07-27', NULL, NULL, '2024-07-27 18:16:17', '2024-08-06 20:43:31'),
(18, 1, '8077bc4eec3ef3556a94424681769980', 'adeel', 'adeel.rajput1671@gmail.com', '$2y$10$4xbZu4kAIysYw1ugKMK6P.og5d50aIxSiWasgLxLD.iSnICv4NoNu', NULL, '1', '2024-10-17', NULL, NULL, '2024-10-17 05:39:56', '2024-10-17 16:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_13_064748_create_employees_table', 1),
(6, '2024_07_13_070053_create_managers_table', 1),
(7, '2024_07_13_070121_create_companies_table', 1),
(8, '2024_07_13_071427_create_attendances_table', 1),
(9, '2024_07_13_085238_create_projects_table', 1),
(10, '2024_07_13_090352_create_modules_table', 1),
(11, '2024_07_13_090732_create_teammates_table', 1),
(12, '2024_07_13_091021_create_reportingons_table', 1),
(13, '2024_07_13_091042_create_reportingoffs_table', 1),
(14, '2024_07_13_102630_create_leaves_table', 1),
(15, '2024_07_15_064409_create_departments_table', 1),
(16, '2024_07_18_065011_add_recover_password_opt_column_to_company_table', 1),
(17, '2024_07_18_081547_add_recover_password_opt_column', 1),
(18, '2024_07_18_084713_create_workinghours_table', 1),
(19, '2024_07_18_093909_add_foreign_keyssss', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int NOT NULL,
  `project_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startingDate` date DEFAULT NULL,
  `endingDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `company_id`, `project_id`, `name`, `description`, `file`, `startingDate`, `endingDate`, `created_at`, `updated_at`) VALUES
(41, 4, 48, 'aaaa', 'shshdghzgvd', 'comapny/project/modules/1729164327.pdf', '2024-10-10', '2024-10-30', '2024-10-17 21:25:27', '2024-10-17 21:25:27'),
(42, 4, 48, 'ajahs', 'djjsigsb', 'comapny/project/modules/1729164376.pdf', '2024-10-09', '2024-10-24', '2024-10-17 21:26:16', '2024-10-17 21:26:16'),
(43, 4, 48, 'module 3', 'this is a module', NULL, '2024-10-20', '2024-10-31', '2024-10-19 16:53:26', '2024-10-19 16:53:26');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Company', 1, 'company-auth-token', 'c5b1c0d9b945689ddd237f59b57956833aa4d2120bd093899b86cc4b144d6bea', '[\"*\"]', '2024-07-23 15:45:24', '2024-07-23 12:39:43', '2024-07-23 15:45:24'),
(2, 'App\\Models\\Company', 2, 'company-auth-token', 'a670f0684622cb0c9c60560002aa6ad80e0fca9f529adc4447b00eb482a8bcc5', '[\"*\"]', NULL, '2024-07-23 14:14:13', '2024-07-23 14:14:13'),
(3, 'App\\Models\\Company', 2, 'company-auth-token', '4c81ad36b37e7c465bc6d7fa453c499c1627f06c50a6031e7a4a7394d222e15e', '[\"*\"]', NULL, '2024-07-23 15:49:30', '2024-07-23 15:49:30'),
(4, 'App\\Models\\Company', 2, 'company-auth-token', 'e2466edf14742cd664d5262213906a3804d25e14f9de70a3ec808745460e3e92', '[\"*\"]', '2024-08-06 17:12:02', '2024-07-23 15:51:15', '2024-08-06 17:12:02'),
(5, 'App\\Models\\Company', 2, 'company-auth-token', 'bbb9989a21ca8d07a91d8cd5d57032a5908734dc9717970e7c4184b9fb2e89b0', '[\"*\"]', '2024-07-23 17:05:13', '2024-07-23 16:15:10', '2024-07-23 17:05:13'),
(6, 'App\\Models\\Employee', 2, 'auth-token', '5e70d3dc97e98a1f6a50bc361b907e50991b1d489fe27e0d2a84c769d7e1656b', '[\"*\"]', NULL, '2024-07-24 10:20:11', '2024-07-24 10:20:11'),
(7, 'App\\Models\\Company', 2, 'company-auth-token', 'f42ddf6bf513e0e9cd7f1c988f1615af8266b60d3124bfbc874d317859569c44', '[\"*\"]', '2024-07-24 16:32:24', '2024-07-24 10:42:09', '2024-07-24 16:32:24'),
(8, 'App\\Models\\Employee', 2, 'auth-token', '775601c16f9699e952133dd8904652719a125d6a8bd8ca52615bae916d5026b7', '[\"*\"]', NULL, '2024-07-24 10:42:52', '2024-07-24 10:42:52'),
(9, 'App\\Models\\Employee', 2, 'auth-token', '0501363fd0196e77a4583877e2faad8253db7da0c803bb0ec46294cbd69a61f0', '[\"*\"]', NULL, '2024-07-24 10:44:11', '2024-07-24 10:44:11'),
(10, 'App\\Models\\Employee', 2, 'auth-token', '5e47e16e54716f701e7e7591c01b54d329ce2067cb74ea5b6d561d0262c1adc3', '[\"*\"]', NULL, '2024-07-24 10:56:24', '2024-07-24 10:56:24'),
(11, 'App\\Models\\Employee', 2, 'auth-token', '36a2a35a39aa494dde6a02cb9686830e7a5865bd89dfaf873a6307e332999565', '[\"*\"]', NULL, '2024-07-24 11:02:49', '2024-07-24 11:02:49'),
(12, 'App\\Models\\Employee', 2, 'auth-token', '793bed562fbbd624e7b402184fc87f6c8f23a6c50652faed8c930a05e2fa3af8', '[\"*\"]', NULL, '2024-07-24 11:05:16', '2024-07-24 11:05:16'),
(13, 'App\\Models\\Employee', 2, 'auth-token', '8f21638f5321bf6aef1bafccd976540a13f6afbbf05f724ad0dcec44c6186011', '[\"*\"]', NULL, '2024-07-24 12:30:37', '2024-07-24 12:30:37'),
(14, 'App\\Models\\Employee', 2, 'auth-token', '4d043c8898c05022a583f5921f4f18d3158dc1eab5085ad5e9bc9ea24a6c24e6', '[\"*\"]', NULL, '2024-07-24 13:11:01', '2024-07-24 13:11:01'),
(15, 'App\\Models\\Employee', 2, 'auth-token', '9a22541d1f389cef6235b7a9f0bc336fc130612549e260dad0747c2decb3dce6', '[\"*\"]', NULL, '2024-07-24 13:17:44', '2024-07-24 13:17:44'),
(16, 'App\\Models\\Employee', 2, 'auth-token', '0fb720b3ad2d8e239e111a4d14c8a4193a79d45170ec17ea7202f89e8d261631', '[\"*\"]', NULL, '2024-07-24 13:40:29', '2024-07-24 13:40:29'),
(17, 'App\\Models\\Employee', 2, 'auth-token', 'cb7189d55bc694b3380f047084258b5c41d0560b2f70490083797f914e6abfde', '[\"*\"]', NULL, '2024-07-24 13:41:23', '2024-07-24 13:41:23'),
(18, 'App\\Models\\Employee', 2, 'auth-token', 'c264662665c655ddcd6fdbf68f81590e7225c524bd9a2204cacc3733c832aa4e', '[\"*\"]', NULL, '2024-07-24 13:42:01', '2024-07-24 13:42:01'),
(19, 'App\\Models\\Employee', 2, 'auth-token', 'fd6f28e701e8e00071ece9f5827260cb0845a968233e24e9cc6d4b46b57c0b55', '[\"*\"]', NULL, '2024-07-24 13:50:18', '2024-07-24 13:50:18'),
(20, 'App\\Models\\Employee', 2, 'auth-token', '049a755aba64adea77d3c016d3a55043b08de368b6bbb7df8cda78fc8480393a', '[\"*\"]', NULL, '2024-07-24 13:58:31', '2024-07-24 13:58:31'),
(21, 'App\\Models\\Employee', 2, 'auth-token', '3f2ed15a1c5f97e8a6d97281c2442662c2340f9eb04261f6bd68ad05c66bd0a1', '[\"*\"]', NULL, '2024-07-24 13:58:53', '2024-07-24 13:58:53'),
(22, 'App\\Models\\Employee', 2, 'auth-token', 'f79e276e2cd34f8072fc01b525f59c08422537bfa427c8872ee2b7b23f26d525', '[\"*\"]', NULL, '2024-07-24 13:59:09', '2024-07-24 13:59:09'),
(23, 'App\\Models\\Employee', 2, 'auth-token', 'f1277cb562b224774c7c5c2f3316b02a9e7311a3090e68424a685e1c387e1644', '[\"*\"]', NULL, '2024-07-24 13:59:27', '2024-07-24 13:59:27'),
(24, 'App\\Models\\Employee', 2, 'auth-token', '82e0c81d293752e9e9ce73f302c0d7de152e269b179c333728b10f4d0016118f', '[\"*\"]', NULL, '2024-07-24 14:02:41', '2024-07-24 14:02:41'),
(25, 'App\\Models\\Employee', 2, 'auth-token', '73f16804569b5b7ed974bc111833616412e5235994b3e29c9245cadd31408ad2', '[\"*\"]', NULL, '2024-07-24 14:05:03', '2024-07-24 14:05:03'),
(26, 'App\\Models\\Employee', 2, 'auth-token', 'a58bffc978fb8d76b263f34a8ab3cd8fea67262b3b33764cfe6fe0fd1fe365ef', '[\"*\"]', NULL, '2024-07-24 14:05:32', '2024-07-24 14:05:32'),
(27, 'App\\Models\\Employee', 2, 'auth-token', '5b92c505cf9da996ace19fd467e5a4fa5740f004bae35e4b4ca5d52bf918a488', '[\"*\"]', NULL, '2024-07-24 14:06:30', '2024-07-24 14:06:30'),
(28, 'App\\Models\\Employee', 2, 'auth-token', '41db02bb9ee7ebe5b899dd3bee04cae6b2bacdae55d670ec2e36a63c43feef2b', '[\"*\"]', NULL, '2024-07-24 14:06:49', '2024-07-24 14:06:49'),
(29, 'App\\Models\\Employee', 2, 'auth-token', '66d14513d4c093ee933e65c49b08fc71127b8eb91b1e5062f0e89899df4dcd42', '[\"*\"]', NULL, '2024-07-24 14:07:11', '2024-07-24 14:07:11'),
(30, 'App\\Models\\Employee', 2, 'auth-token', '3d953065cb25a515e3a3cd7b4ce1b69020e7ba9ad69221377ec65c51deddd3c8', '[\"*\"]', NULL, '2024-07-24 14:07:35', '2024-07-24 14:07:35'),
(31, 'App\\Models\\Employee', 2, 'auth-token', '8302645f7475c4ad8235959278e3bde0b44717a103b864cd50ecdfa33967dfca', '[\"*\"]', NULL, '2024-07-24 14:08:06', '2024-07-24 14:08:06'),
(32, 'App\\Models\\Employee', 2, 'auth-token', 'c76da569a2c62440c4e8a743562acac7b7fa937671e1f9f2443fd3e2d48a1122', '[\"*\"]', NULL, '2024-07-24 14:09:57', '2024-07-24 14:09:57'),
(33, 'App\\Models\\Employee', 2, 'auth-token', 'b624eb32134fde1b6c0e801688a202618bbe815e94c33a9bba2c0d9697340990', '[\"*\"]', NULL, '2024-07-24 14:12:59', '2024-07-24 14:12:59'),
(34, 'App\\Models\\Employee', 2, 'auth-token', 'b6afa7792610110c8455a8c294231f81a3bebebb8c7ecb796c3c9b46eb647857', '[\"*\"]', NULL, '2024-07-24 14:14:03', '2024-07-24 14:14:03'),
(35, 'App\\Models\\Employee', 2, 'auth-token', '5f9706856aec556bdb1a9ab2e0433fd36dbc74c6b086f3653add5b7ae8c3882d', '[\"*\"]', NULL, '2024-07-24 14:15:25', '2024-07-24 14:15:25'),
(36, 'App\\Models\\Employee', 2, 'auth-token', 'db4f08dbfc83e2bc4b97e60228bf65c7c064a67b7a14c08f31ef306b2ead4007', '[\"*\"]', NULL, '2024-07-24 14:41:57', '2024-07-24 14:41:57'),
(37, 'App\\Models\\Employee', 2, 'auth-token', '4d12abb38dd6d22c1f7dd3723a5642821068a55cc8641cb50a44699e655d2c4c', '[\"*\"]', NULL, '2024-07-24 14:43:04', '2024-07-24 14:43:04'),
(38, 'App\\Models\\Employee', 2, 'auth-token', '4eb26740947c6bf7732bc66b3325297ae7a67cea2a95f0d62c7c815bb8125d44', '[\"*\"]', NULL, '2024-07-24 14:43:38', '2024-07-24 14:43:38'),
(39, 'App\\Models\\Employee', 2, 'auth-token', '157ef689d7d3110122e14d9bc73a3726b02bb110151e30a1c7d4e6771bff0c01', '[\"*\"]', NULL, '2024-07-24 14:43:54', '2024-07-24 14:43:54'),
(40, 'App\\Models\\Employee', 2, 'auth-token', '380b56bd2d380ec4dafcf8ba1f45bd02536f957ba1531e5a3aaf81ad019ef0b3', '[\"*\"]', NULL, '2024-07-24 14:44:14', '2024-07-24 14:44:14'),
(41, 'App\\Models\\Employee', 2, 'auth-token', 'f7ffa4d04317589003bdf37da57298ecfddabf595ebc0ada685160b91c563d69', '[\"*\"]', NULL, '2024-07-24 14:45:34', '2024-07-24 14:45:34'),
(42, 'App\\Models\\Employee', 2, 'auth-token', '9e462710f7039f2a19b721e89f1b8333f970deff4a5be473c3499d193f7b6167', '[\"*\"]', NULL, '2024-07-24 14:46:21', '2024-07-24 14:46:21'),
(43, 'App\\Models\\Employee', 2, 'auth-token', 'c49bfe608a92fbf5dd9520cdc9eb480e04526c294d8b889416d33da681b12240', '[\"*\"]', NULL, '2024-07-24 14:48:04', '2024-07-24 14:48:04'),
(44, 'App\\Models\\Employee', 2, 'auth-token', 'a3629c51a4c2b9704a06d6024851060846db48ae3c59535f570f9a217205771f', '[\"*\"]', NULL, '2024-07-24 14:52:37', '2024-07-24 14:52:37'),
(45, 'App\\Models\\Employee', 2, 'auth-token', '7a5746ac90b3e6fd1dbc20e90bc4eefc70a76caeecf1b38e7020b3776a7c1337', '[\"*\"]', NULL, '2024-07-24 14:53:51', '2024-07-24 14:53:51'),
(46, 'App\\Models\\Employee', 2, 'auth-token', '1ad9e3781c09b15b12cbd900a65bdad6af2a92fdfd87ec2244407a22bc6b059a', '[\"*\"]', NULL, '2024-07-24 14:54:19', '2024-07-24 14:54:19'),
(47, 'App\\Models\\Employee', 2, 'auth-token', 'b04baae34ef0d68bb2e0f82bc7d6ed08f415ce29a781fb4d6d37a91b86f76ae2', '[\"*\"]', NULL, '2024-07-24 14:59:52', '2024-07-24 14:59:52'),
(48, 'App\\Models\\Employee', 2, 'auth-token', 'fd23099ab64a645dcbfbb3ef85c919e0e901f35a599285b2469a02c3971f896c', '[\"*\"]', NULL, '2024-07-24 15:00:27', '2024-07-24 15:00:27'),
(49, 'App\\Models\\Employee', 2, 'auth-token', 'de7d1de9d019125d9703f168d44326cc1780019491c9a7ca216ad9575cf43216', '[\"*\"]', NULL, '2024-07-24 15:00:55', '2024-07-24 15:00:55'),
(50, 'App\\Models\\Employee', 2, 'auth-token', 'ea440165f04566228366bf0bbe609c84d4c678c938427c5b33d52999d62f202b', '[\"*\"]', NULL, '2024-07-24 15:01:39', '2024-07-24 15:01:39'),
(51, 'App\\Models\\Employee', 2, 'auth-token', '9c437884940b5b82abbd6591fadfeca0c54ec8cb2042ce0c17a64f6a9972485a', '[\"*\"]', NULL, '2024-07-24 15:02:29', '2024-07-24 15:02:29'),
(52, 'App\\Models\\Employee', 2, 'auth-token', '7aed4fc1ccf81e2b565704db75a38465c462f5ab42cdf3bb56b35847417e0946', '[\"*\"]', NULL, '2024-07-24 15:03:39', '2024-07-24 15:03:39'),
(53, 'App\\Models\\Employee', 2, 'auth-token', '4c329859a5c028e5dc3894d7a76c3f716880041e8e599bc9705afa00b407bd85', '[\"*\"]', NULL, '2024-07-24 15:09:51', '2024-07-24 15:09:51'),
(54, 'App\\Models\\Employee', 2, 'auth-token', '22ba327ac65379ffe0c6dbd50bcbaa3ac170f8acab6c165adfb3999e18ca11b6', '[\"*\"]', NULL, '2024-07-24 15:36:49', '2024-07-24 15:36:49'),
(55, 'App\\Models\\Employee', 2, 'auth-token', 'cd89a1977082e2947c4e33c99c9f00870447f19e17b05da59b01ef9e9aaf0898', '[\"*\"]', NULL, '2024-07-24 15:40:01', '2024-07-24 15:40:01'),
(56, 'App\\Models\\Employee', 2, 'auth-token', 'd571a931ee95b94508dbd94f42f3868ab25020b14de585c21168d1426911b3db', '[\"*\"]', NULL, '2024-07-24 15:41:00', '2024-07-24 15:41:00'),
(57, 'App\\Models\\Employee', 2, 'auth-token', '8cbcd5a636313aba7d1c15cf4c0f90ca66bdf21bddfa1d6b4ae1b17131ade09b', '[\"*\"]', NULL, '2024-07-24 15:54:26', '2024-07-24 15:54:26'),
(58, 'App\\Models\\Employee', 2, 'auth-token', '76ce32fa55e347401879e47b880a25e0a99da9027c07b94d3a6538311f7f56d7', '[\"*\"]', NULL, '2024-07-24 15:56:08', '2024-07-24 15:56:08'),
(60, 'App\\Models\\Company', 3, 'company-auth-token', 'd891117fdfd24d428105c6c4444c6d8d489feaffcb199146e1d2e35fede27772', '[\"*\"]', '2024-07-24 19:44:31', '2024-07-24 19:39:03', '2024-07-24 19:44:31'),
(62, 'App\\Models\\Company', 3, 'company-auth-token', 'f31953f81bbaa6e2a3e34f5f76bce81b479ac96f2f17b222ef0d68ebf6a8d933', '[\"*\"]', '2024-07-24 20:14:14', '2024-07-24 20:13:09', '2024-07-24 20:14:14'),
(63, 'App\\Models\\Company', 3, 'company-auth-token', '70572e036fceacb595a5dbd981c150440885e66c4e8577be65b23c864d32363f', '[\"*\"]', '2024-07-24 21:19:44', '2024-07-24 20:53:34', '2024-07-24 21:19:44'),
(64, 'App\\Models\\Company', 3, 'company-auth-token', '5e80711e0cd7f67191e145a91174d010c26f89efa9c0de058444b1a1a06ad73b', '[\"*\"]', NULL, '2024-07-24 21:00:59', '2024-07-24 21:00:59'),
(65, 'App\\Models\\Company', 3, 'company-auth-token', '5f778ee0e3bc582437a43b972f2a10183ac5bd00e09a10e5cce2147608ec9cf6', '[\"*\"]', '2024-07-24 21:31:12', '2024-07-24 21:28:55', '2024-07-24 21:31:12'),
(66, 'App\\Models\\Company', 3, 'company-auth-token', 'd2e49ac87f94d9ce0d9046ebf6604c208aa18157d3a2a9b8d5a47d2bc3770d69', '[\"*\"]', NULL, '2024-07-24 21:39:23', '2024-07-24 21:39:23'),
(67, 'App\\Models\\Company', 3, 'company-auth-token', 'b1cbf74494252ab5dacfc6b95ad46ebaaadf92b6565e382f9df01f5a69c6e23b', '[\"*\"]', '2024-07-24 21:41:43', '2024-07-24 21:40:26', '2024-07-24 21:41:43'),
(68, 'App\\Models\\Employee', 18, 'auth-token', 'b0c521f70cc1170861e0885764c5106bdd19237a40af646943247d721e54558e', '[\"*\"]', NULL, '2024-07-24 22:58:08', '2024-07-24 22:58:08'),
(69, 'App\\Models\\Company', 3, 'company-auth-token', '5f8bd63bb51381047aa96664664b25d1b955a87b8c1d7a558ab0aec04dbdfc49', '[\"*\"]', '2024-07-24 23:17:11', '2024-07-24 23:13:32', '2024-07-24 23:17:11'),
(71, 'App\\Models\\Employee', 18, 'auth-token', '87bd30f328846766d33d642c338da78ba15ece385acbc7af7d4a1fa5500ee2a0', '[\"*\"]', NULL, '2024-07-24 23:27:19', '2024-07-24 23:27:19'),
(72, 'App\\Models\\Employee', 2, 'auth-token', 'ad3094aebb9e6dfc14a2bfcb18ce3b3da4b96e93e1433affa5ab8c94fafb0862', '[\"*\"]', NULL, '2024-07-25 09:47:16', '2024-07-25 09:47:16'),
(74, 'App\\Models\\Company', 3, 'company-auth-token', '0dd99e22a09f99f7c8ebba60e8af9c615cad8d2be9a020cb48c0b925033057fe', '[\"*\"]', '2024-07-25 10:31:06', '2024-07-25 10:30:56', '2024-07-25 10:31:06'),
(75, 'App\\Models\\Company', 2, 'company-auth-token', '40ca38c79b062e30481beb86e9eab0d58df7990f500d1fc2010f768c2a5213db', '[\"*\"]', '2024-07-25 16:52:25', '2024-07-25 10:32:46', '2024-07-25 16:52:25'),
(76, 'App\\Models\\Employee', 2, 'auth-token', '6dc88c3e6b07465e0fd092ce4f5a10b8be2bb3135466fd0057f8ee1d6c6d5c3c', '[\"*\"]', NULL, '2024-07-25 10:33:59', '2024-07-25 10:33:59'),
(78, 'App\\Models\\Employee', 2, 'auth-token', '32f2de4c4058a8dbac242ef21e06fbaed25a8f0c692edb8780b175bd62739352', '[\"*\"]', NULL, '2024-07-26 10:41:26', '2024-07-26 10:41:26'),
(79, 'App\\Models\\Employee', 7, 'auth-token', 'ccf598648a80792f7891161079c5c57098dd39604cb89526a76d645e18a2bb1a', '[\"*\"]', NULL, '2024-07-26 11:03:00', '2024-07-26 11:03:00'),
(80, 'App\\Models\\Employee', 2, 'auth-token', 'cae901bd1046fb0c51401e168b9359ce286576e43532b7b27daddb12b77b5b76', '[\"*\"]', NULL, '2024-07-26 11:11:39', '2024-07-26 11:11:39'),
(81, 'App\\Models\\Employee', 2, 'auth-token', '0dbb6fe1f32b601d0a099bbacd0fa6b7f0c9605653aa4b45e5af1cc4a0e85263', '[\"*\"]', '2024-07-26 21:29:56', '2024-07-26 11:28:05', '2024-07-26 21:29:56'),
(82, 'App\\Models\\Company', 4, 'company-auth-token', '61b2615983b16988580ad2ce8f7c1897d63ba1a8e70af75dcfd639e0822e630e', '[\"*\"]', '2024-07-26 14:24:41', '2024-07-26 11:31:40', '2024-07-26 14:24:41'),
(83, 'App\\Models\\Manager', 1, 'auth-token', '7ec2698dd9e96f8118dc60dbcdf148b995823128b226e3a155d139ea04e71a97', '[\"*\"]', '2024-09-24 21:25:11', '2024-07-26 12:06:24', '2024-09-24 21:25:11'),
(84, 'App\\Models\\Company', 2, 'company-auth-token', '47b16cffb5c4e512b2ac2f6f8d3d14127519a51182d2c148a9e9a6fc7f790233', '[\"*\"]', '2024-07-26 14:45:46', '2024-07-26 14:42:58', '2024-07-26 14:45:46'),
(96, 'App\\Models\\Manager', 1, 'auth-token', 'bab36256774b8b9cd6a8eb4324b8837b1542a324185a43ba95941264d3d71c12', '[\"*\"]', '2024-07-26 21:33:08', '2024-07-26 21:29:43', '2024-07-26 21:33:08'),
(99, 'App\\Models\\Employee', 2, 'auth-token', '815b8045e7ab7727ac931dc5042da7f7ebaf04acb6585a70d4fe385002911d45', '[\"*\"]', '2024-07-26 22:22:29', '2024-07-26 22:11:29', '2024-07-26 22:22:29'),
(100, 'App\\Models\\Employee', 18, 'auth-token', '02b2c4611a711d7e53c0e7727b37f7af6eb8ba2a429a968d5ac17ad81219a69e', '[\"*\"]', '2024-07-27 09:16:39', '2024-07-26 22:26:52', '2024-07-27 09:16:39'),
(101, 'App\\Models\\Employee', 2, 'auth-token', '50b2ad412eeeaf4b472e4e2c5fb8fa1fd121a8c9b9f97b29204c1320a2b4f2af', '[\"*\"]', '2024-07-27 10:16:53', '2024-07-27 09:26:09', '2024-07-27 10:16:53'),
(102, 'App\\Models\\Employee', 2, 'auth-token', 'e41d5acea922bdeb53c4fd496c32aee88eb66f81db1708136295e559f126558e', '[\"*\"]', '2024-07-27 10:18:51', '2024-07-27 10:18:38', '2024-07-27 10:18:51'),
(103, 'App\\Models\\Employee', 2, 'auth-token', '7e0b0aa4c7f6af49f2ff68a166050b3d9b7911fa6f1d345b8d6f1d73c3d19d09', '[\"*\"]', '2024-07-27 16:10:32', '2024-07-27 10:25:37', '2024-07-27 16:10:32'),
(104, 'App\\Models\\Company', 3, 'company-auth-token', '9c94d8129efaca5661252c06e7219d80f8e724a09f1d381387888b49835e12f0', '[\"*\"]', '2024-07-30 17:49:23', '2024-07-27 15:59:14', '2024-07-30 17:49:23'),
(105, 'App\\Models\\Employee', 2, 'auth-token', '4824a8048189241dfd07f9d675e5bdd40993ae51fba9f2b6ad797e12459e1b93', '[\"*\"]', '2024-07-27 16:34:10', '2024-07-27 16:26:27', '2024-07-27 16:34:10'),
(106, 'App\\Models\\Employee', 19, 'auth-token', '32446d4fc6dfa501ec4cf26661641c1bab5671ceab5a0c76b2fc2f0fe2de6c5c', '[\"*\"]', NULL, '2024-07-27 16:28:08', '2024-07-27 16:28:08'),
(108, 'App\\Models\\Employee', 19, 'auth-token', '955a6067df9641e5ddffefda454f3389d565a0c383da62023c835792bb7d2c34', '[\"*\"]', '2024-09-21 04:10:42', '2024-07-27 16:30:25', '2024-09-21 04:10:42'),
(109, 'App\\Models\\Employee', 19, 'auth-token', '68989552cdba430da235955e8b2c74d55fb8fb37d77513581c57439117640256', '[\"*\"]', '2024-07-27 16:35:53', '2024-07-27 16:35:49', '2024-07-27 16:35:53'),
(111, 'App\\Models\\Employee', 19, 'auth-token', 'd2b993ed4a2bc9da3930f7d20bca51e3262a372eb13148c04ba03442b3395e5b', '[\"*\"]', '2024-07-27 18:15:03', '2024-07-27 16:40:21', '2024-07-27 18:15:03'),
(112, 'App\\Models\\Company', 4, 'company-auth-token', '65f278468db45b7f57aab0c9275aaf63121cbe62346df74737d7b63ad545cd5e', '[\"*\"]', '2024-07-27 21:27:26', '2024-07-27 16:48:13', '2024-07-27 21:27:26'),
(113, 'App\\Models\\Company', 4, 'company-auth-token', '372e9e64ad807640853c27c89d86f0dcaaffd4604814a6637f447a7f37249236', '[\"*\"]', '2024-07-27 17:38:35', '2024-07-27 17:37:34', '2024-07-27 17:38:35'),
(115, 'App\\Models\\Employee', 2, 'auth-token', 'c078cf9b5ed75b8170ad675144d64dde912c868fe826b9153ff0c9709f8fd80a', '[\"*\"]', NULL, '2024-07-27 18:21:23', '2024-07-27 18:21:23'),
(116, 'App\\Models\\Employee', 2, 'auth-token', '3a5bbc27f48fbea63316c84691f79ac1bffc18fd7998b709acaf391249273366', '[\"*\"]', NULL, '2024-07-27 18:22:27', '2024-07-27 18:22:27'),
(117, 'App\\Models\\Manager', 1, 'auth-token', '933c46c48f1179c72136201980f63d58783721f55b9800fa15a16d5d3f408cd0', '[\"*\"]', NULL, '2024-07-27 18:26:38', '2024-07-27 18:26:38'),
(118, 'App\\Models\\Employee', 2, 'auth-token', 'dc83582b8c393660647bfa1c915a4774ca07baa5201adf4c1970a395c8393af9', '[\"*\"]', NULL, '2024-07-27 18:28:02', '2024-07-27 18:28:02'),
(119, 'App\\Models\\Manager', 11, 'auth-token', '738822a0869cf030c711164b08a148095de9c2b3dfd8aa38e3cb6fead1695a72', '[\"*\"]', '2024-07-27 18:29:45', '2024-07-27 18:29:38', '2024-07-27 18:29:45'),
(120, 'App\\Models\\Manager', 11, 'auth-token', 'c42cf0f87c5779fab26903ffa94e8bb26bbd6b094e272be2bc630821134f575d', '[\"*\"]', '2024-07-27 18:32:17', '2024-07-27 18:32:12', '2024-07-27 18:32:17'),
(121, 'App\\Models\\Employee', 2, 'auth-token', '479c910056c29156706567849b54568b1e2e008877e6a1d39032ea708fac368c', '[\"*\"]', '2024-07-27 18:34:21', '2024-07-27 18:34:14', '2024-07-27 18:34:21'),
(122, 'App\\Models\\Manager', 11, 'auth-token', '84b2733e0540cc808a3edfecaf11f613458c50c1db4532ee6c89f3fa57a36fc8', '[\"*\"]', '2024-07-27 18:36:23', '2024-07-27 18:36:18', '2024-07-27 18:36:23'),
(123, 'App\\Models\\Manager', 11, 'auth-token', 'c5e9e66bbb866c4e4f09978811d933418eff8f1300f6202322e04d69bfdcd9ac', '[\"*\"]', '2024-07-27 20:34:36', '2024-07-27 18:36:40', '2024-07-27 20:34:36'),
(124, 'App\\Models\\Employee', 2, 'auth-token', '0f11ec48310a140558817c409d19e44c6d6e8f4d075b17039cde240e42fedf16', '[\"*\"]', '2024-07-27 21:16:14', '2024-07-27 21:12:14', '2024-07-27 21:16:14'),
(125, 'App\\Models\\Manager', 11, 'auth-token', 'd9705956cf3e73dbbcb8a7cb40c09ff69e6b394135fd5b43ae33f12b98c7cae6', '[\"*\"]', '2024-07-27 21:16:57', '2024-07-27 21:16:45', '2024-07-27 21:16:57'),
(127, 'App\\Models\\Company', 4, 'company-auth-token', 'f6f6a36c3f808e63dd0860fb697ebac8998bdf37d24a4be98528b6946f4d0c2c', '[\"*\"]', '2024-09-12 18:57:36', '2024-07-30 15:36:22', '2024-09-12 18:57:36'),
(128, 'App\\Models\\Employee', 2, 'auth-token', 'eedacc294b15d63e976f8aa5b3a9df26e769b0dea4330b341560b566b482a181', '[\"*\"]', '2024-07-30 15:42:12', '2024-07-30 15:40:07', '2024-07-30 15:42:12'),
(129, 'App\\Models\\Employee', 7, 'auth-token', '8a86f35d9232494ec5398964602cfc78eb0039aeae1be19df78f57c0a96d364e', '[\"*\"]', '2024-07-30 20:13:20', '2024-07-30 17:49:46', '2024-07-30 20:13:20'),
(130, 'App\\Models\\Employee', 23, 'auth-token', '2ecf84cc280c0c16eaeda8c49d0a59c5c3207ab61a006e7189dd0d44be6f7593', '[\"*\"]', '2024-09-14 18:37:51', '2024-07-30 20:16:19', '2024-09-14 18:37:51'),
(131, 'App\\Models\\Employee', 2, 'auth-token', '480ecfa4ffa9065371371d18091c3384428eaf27385dd1294daafda1d997c1c5', '[\"*\"]', '2024-07-30 20:23:29', '2024-07-30 20:22:55', '2024-07-30 20:23:29'),
(132, 'App\\Models\\Employee', 23, 'auth-token', 'a3ac173627f641fb6d812a1abfb1ad90fdfa5d0daaba2939a55569da9bdaadd1', '[\"*\"]', NULL, '2024-07-30 20:24:04', '2024-07-30 20:24:04'),
(133, 'App\\Models\\Employee', 23, 'auth-token', 'f07dc76c725be07bed20bfe7a5e70840dd91c955f3600a94643b4d7625e9e3f4', '[\"*\"]', NULL, '2024-07-30 20:24:43', '2024-07-30 20:24:43'),
(134, 'App\\Models\\Employee', 23, 'auth-token', '1b30ff5063e71c316ca598657926576fe7c364f27d69c9eb0f1442ac0c2eb37c', '[\"*\"]', '2024-07-30 20:27:22', '2024-07-30 20:25:19', '2024-07-30 20:27:22'),
(135, 'App\\Models\\Manager', 11, 'auth-token', '358a342e6e98955f7d35437d9b1426fd66427784ef7d925ae1dc6fe2a9855081', '[\"*\"]', '2024-09-24 17:11:21', '2024-07-30 20:30:55', '2024-09-24 17:11:21'),
(138, 'App\\Models\\Manager', 11, 'auth-token', '77fa2278cc70ac7e70099ce8759897276ab0f18195f6a2b11fdbbdb1211764a2', '[\"*\"]', '2024-07-30 21:00:19', '2024-07-30 20:49:58', '2024-07-30 21:00:19'),
(139, 'App\\Models\\Manager', 11, 'auth-token', 'a50d98113743d8724b1a1114e35d6fee077c0f8e66c8d06f8f6c8bdf0706d3f3', '[\"*\"]', '2024-07-31 15:25:16', '2024-07-30 21:09:04', '2024-07-31 15:25:16'),
(141, 'App\\Models\\Company', 4, 'company-auth-token', '074741c145782db9feec92ef2e55fbf4b6c05950de067f69dfdfaa555841d6fc', '[\"*\"]', '2024-07-31 15:41:51', '2024-07-31 15:41:20', '2024-07-31 15:41:51'),
(143, 'App\\Models\\Company', 4, 'company-auth-token', 'ad309641328d518f533467a001d09020ae033f00740f2910a5f81d37c3f900a4', '[\"*\"]', '2024-07-31 18:05:39', '2024-07-31 16:25:38', '2024-07-31 18:05:39'),
(144, 'App\\Models\\Manager', 11, 'auth-token', 'e4694298db4df830843e6eac633137d0625e500eb8fe34ea1a824199581e623b', '[\"*\"]', '2024-08-01 15:20:45', '2024-07-31 17:59:48', '2024-08-01 15:20:45'),
(147, 'App\\Models\\Manager', 11, 'auth-token', 'b6379e606a1dc166e12d893e831c6b28a2b75f6f04667fdc8db59522023fb104', '[\"*\"]', '2024-08-01 15:26:37', '2024-08-01 15:25:32', '2024-08-01 15:26:37'),
(148, 'App\\Models\\Manager', 11, 'auth-token', '644326c71bfdc49d077080e32c7fea17e96097c4e15974ed69c2c375de428802', '[\"*\"]', '2024-08-06 18:05:30', '2024-08-01 15:35:50', '2024-08-06 18:05:30'),
(149, 'App\\Models\\Employee', 25, 'auth-token', '83a0a559b5a421260dab9e73d2caf924060623bf5ae73b7b09e294b7b95d4a07', '[\"*\"]', NULL, '2024-08-01 16:01:54', '2024-08-01 16:01:54'),
(150, 'App\\Models\\Manager', 13, 'auth-token', '31242e198e131a9f1dace751ae29adc2ae7278409d91db763a4116ef05bc7015', '[\"*\"]', NULL, '2024-08-01 16:06:43', '2024-08-01 16:06:43'),
(152, 'App\\Models\\Manager', 13, 'auth-token', 'a75ea0d492d9b5d3ab56bb08deddb016ccdac5281bf4cf9e6f50d459d9f35b5f', '[\"*\"]', '2024-08-01 16:25:18', '2024-08-01 16:25:14', '2024-08-01 16:25:18'),
(153, 'App\\Models\\Manager', 13, 'auth-token', '79f040fe7c4f9d65a393caf8e08c47c0e6d63c96eb89a48fe937eda1cb5cb3cd', '[\"*\"]', '2024-08-01 16:34:07', '2024-08-01 16:34:02', '2024-08-01 16:34:07'),
(155, 'App\\Models\\Employee', 25, 'auth-token', 'cbb9a87f0bbb6fae60e350239ee3f68815b74f6ff277be80f038966dca4741d3', '[\"*\"]', '2024-08-01 17:30:32', '2024-08-01 17:19:45', '2024-08-01 17:30:32'),
(156, 'App\\Models\\Manager', 13, 'auth-token', 'd2ea38e4381e5a9dda0e37f8f818c9b16a4eaab2e30f95124def1d835807eff9', '[\"*\"]', '2024-08-01 17:38:33', '2024-08-01 17:38:30', '2024-08-01 17:38:33'),
(159, 'App\\Models\\Employee', 25, 'auth-token', '96667a703039c711d27e212cbdc6ae5693c07afc4699bb260332f25a6d98ccf8', '[\"*\"]', '2024-08-01 18:02:08', '2024-08-01 18:02:04', '2024-08-01 18:02:08'),
(160, 'App\\Models\\Manager', 11, 'auth-token', '3ac65460d8976d9ca76bbd824870610c509e70e14e2d2007fbf680b021b19a68', '[\"*\"]', '2024-09-24 17:07:13', '2024-08-01 19:58:33', '2024-09-24 17:07:13'),
(161, 'App\\Models\\Manager', 13, 'auth-token', '4b793b174b48df303276ac32a02f4c72072902ebcc0f8d972580d2a56e7ba294', '[\"*\"]', '2024-08-02 04:22:05', '2024-08-02 04:09:42', '2024-08-02 04:22:05'),
(163, 'App\\Models\\Manager', 13, 'auth-token', '6fc7f52d8fd9ddd0b688a7dc1e2638984f67c411c5c3a526d592256a29ea2791', '[\"*\"]', '2024-08-02 04:53:26', '2024-08-02 04:52:53', '2024-08-02 04:53:26'),
(166, 'App\\Models\\Manager', 13, 'auth-token', '3a788b57b621471b61aaf706ab68408c9c8f496c574629a846ff808b105419a7', '[\"*\"]', '2024-08-02 07:04:08', '2024-08-02 06:55:14', '2024-08-02 07:04:08'),
(167, 'App\\Models\\Company', 7, 'company-auth-token', '24cc24337a22cec59486574bf85a4816b70046514e43d1c71a8439a76cd13291', '[\"*\"]', '2024-08-02 07:16:12', '2024-08-02 07:07:57', '2024-08-02 07:16:12'),
(172, 'App\\Models\\Manager', 13, 'auth-token', 'd46c5abd4e91ec9264729ad3545b2a70bfd274c70d007782d02327793e15ebf4', '[\"*\"]', '2024-08-03 18:03:55', '2024-08-03 18:03:52', '2024-08-03 18:03:55'),
(174, 'App\\Models\\Manager', 13, 'auth-token', '360a4a2be8505ab95e94ea961ca841847d32b3fbed309f37184d76f3fc8a645f', '[\"*\"]', '2024-08-04 02:59:51', '2024-08-03 18:07:18', '2024-08-04 02:59:51'),
(175, 'App\\Models\\Company', 4, 'company-auth-token', '051d0f8010f78fc91cc40815d22950addd16435a4af72d25ff80186e7ed4167b', '[\"*\"]', '2024-10-19 16:03:06', '2024-08-03 19:06:44', '2024-10-19 16:03:06'),
(178, 'App\\Models\\Manager', 13, 'auth-token', '4bc8a7206583b07cf8b2ab50cbc05ee837f0ef5453a1382c8e2bd8129184b9b4', '[\"*\"]', '2024-08-04 03:31:25', '2024-08-04 03:31:16', '2024-08-04 03:31:25'),
(183, 'App\\Models\\Manager', 13, 'auth-token', 'bda1007df0a92e98a94f29736e61b3fe0ed71781a5ab758dc81c4c0a41d7b53d', '[\"*\"]', '2024-08-07 03:08:15', '2024-08-04 07:40:00', '2024-08-07 03:08:15'),
(186, 'App\\Models\\Manager', 13, 'auth-token', '947edee0362eb51e1e539cd5c8d58e5eb75a16b5b96a6077d343cefd8be1c2cd', '[\"*\"]', '2024-08-05 19:09:57', '2024-08-05 02:15:40', '2024-08-05 19:09:57'),
(188, 'App\\Models\\Manager', 13, 'auth-token', '5efeb8d785c4bf9496606b99ce1fcfe852ed863bb68eb82a628c6d7b3895c6f5', '[\"*\"]', '2024-08-06 02:25:10', '2024-08-05 19:48:53', '2024-08-06 02:25:10'),
(190, 'App\\Models\\Company', 4, 'company-auth-token', '16115a71e9a630c50fddcaf71124f32169cd4978ba32ebaad18fbee3d2f523c0', '[\"*\"]', '2024-08-06 00:18:55', '2024-08-05 23:10:36', '2024-08-06 00:18:55'),
(191, 'App\\Models\\Company', 4, 'company-auth-token', '7535f780fffb418e35e2efbde48d3dc77c80e881d2d43f8e24d4dafa3d2f9ccd', '[\"*\"]', '2024-08-06 00:19:14', '2024-08-06 00:19:06', '2024-08-06 00:19:14'),
(219, 'App\\Models\\Manager', 11, 'auth-token', 'e2b3dbf8224246f5ef9b5d573a2320b0153bb5909087edfcfedfe13a7703a614', '[\"*\"]', '2024-08-07 14:54:50', '2024-08-06 18:08:12', '2024-08-07 14:54:50'),
(220, 'App\\Models\\Employee', 25, 'auth-token', '6e0a0f7d62510be501a1f2580512e271070704054168c23f24f2413f9f145a85', '[\"*\"]', '2024-08-06 19:03:46', '2024-08-06 18:55:49', '2024-08-06 19:03:46'),
(221, 'App\\Models\\Company', 4, 'company-auth-token', '35a3c765538ef536c1f82d17d39be4f8025e49c6faba916456c8376d7af14d80', '[\"*\"]', '2024-08-06 20:44:16', '2024-08-06 20:42:56', '2024-08-06 20:44:16'),
(222, 'App\\Models\\Manager', 11, 'auth-token', 'a73f9ec4955aada0ddf1c8ea86dcd9be7c1f6e729339d80f101788464659ec98', '[\"*\"]', NULL, '2024-08-06 21:56:20', '2024-08-06 21:56:20'),
(223, 'App\\Models\\Employee', 25, 'auth-token', 'a1e0153f9da44b91696127c55adaf9ec5cfc6a481a4bad367d70aea5bbad720a', '[\"*\"]', '2024-08-08 02:09:47', '2024-08-07 03:08:44', '2024-08-08 02:09:47'),
(225, 'App\\Models\\Manager', 11, 'auth-token', 'f60c947fa09c41a24e77ebbf2496b0b99a35a490c6899b4ca8c27b7f34e5acbd', '[\"*\"]', '2024-08-08 14:52:35', '2024-08-07 15:07:20', '2024-08-08 14:52:35'),
(229, 'App\\Models\\Employee', 2, 'auth-token', 'e1ed80c656f93d44970a6bed4091ae685db573aaca76db04b333390b68be4562', '[\"*\"]', '2024-08-07 16:28:08', '2024-08-07 15:41:47', '2024-08-07 16:28:08'),
(230, 'App\\Models\\Employee', 2, 'auth-token', '9536c600384fe4ea45a4d3240bafdb6ba0dacace8e9ae85c7110775de72fe377', '[\"*\"]', '2024-08-07 18:31:38', '2024-08-07 18:31:30', '2024-08-07 18:31:38'),
(231, 'App\\Models\\Manager', 11, 'auth-token', 'bb805873bc85b0332a0562dbb74b26250b393c1034dbbb704d057b0ac077aee1', '[\"*\"]', '2024-08-07 18:46:44', '2024-08-07 18:42:57', '2024-08-07 18:46:44'),
(232, 'App\\Models\\Manager', 11, 'auth-token', 'f2c64122497e76461f06d0a961974da200ab6e69d28beffa01c14f451b2944e3', '[\"*\"]', '2024-08-08 15:34:09', '2024-08-07 18:48:22', '2024-08-08 15:34:09'),
(233, 'App\\Models\\Manager', 11, 'auth-token', 'a6b48a111b943b0b1803f77f60deda868832a012bfcc14a366da1bbc5c32780c', '[\"*\"]', '2024-08-07 20:31:03', '2024-08-07 20:27:53', '2024-08-07 20:31:03'),
(234, 'App\\Models\\Manager', 11, 'auth-token', '75117b3ecce67e10c255161a70d009277cae97a6bf84b7220e4ba0aadfac564e', '[\"*\"]', '2024-08-07 20:34:12', '2024-08-07 20:34:02', '2024-08-07 20:34:12'),
(235, 'App\\Models\\Employee', 2, 'auth-token', 'f597feb77d6fe0436e697a632cb990b24c37561304fcc6b6cff54a17d4b1dad5', '[\"*\"]', '2024-08-08 02:11:41', '2024-08-08 02:10:33', '2024-08-08 02:11:41'),
(237, 'App\\Models\\Employee', 2, 'auth-token', '3273214e212b8ceea1dc9ba0044364bcc2daeae655943fda5dd23575697fe20f', '[\"*\"]', '2024-08-10 17:41:48', '2024-08-08 05:29:53', '2024-08-10 17:41:48'),
(239, 'App\\Models\\Manager', 11, 'auth-token', '9aea155381dae84307a709fa5faa7a1e1dd525c4c1fb00411f95d3a4c538d0c1', '[\"*\"]', NULL, '2024-08-08 15:04:15', '2024-08-08 15:04:15'),
(240, 'App\\Models\\Manager', 11, 'auth-token', 'e2b21baa88ca3f66c2c2b5b8f3dd5e7d19c0e860045a2c585f0e88d32bf08601', '[\"*\"]', NULL, '2024-08-08 15:05:53', '2024-08-08 15:05:53'),
(241, 'App\\Models\\Manager', 11, 'auth-token', '9de72128640e3a9765c9e685ed22731c47249b72b56b9ff68178585fdbd33f67', '[\"*\"]', NULL, '2024-08-08 15:13:49', '2024-08-08 15:13:49'),
(242, 'App\\Models\\Manager', 11, 'auth-token', 'af9be956d43a9c0d6c4d03eefaf62b5abba55df55e90ce8a9f04b288c0553fcd', '[\"*\"]', '2024-08-08 15:43:11', '2024-08-08 15:17:01', '2024-08-08 15:43:11'),
(243, 'App\\Models\\Employee', 2, 'auth-token', 'bb758d07f6c851f6f6fe29fa7cf199d0b43cb09d8dc7a995adb579c5190f9178', '[\"*\"]', '2024-08-08 16:28:25', '2024-08-08 15:36:05', '2024-08-08 16:28:25'),
(245, 'App\\Models\\Employee', 2, 'auth-token', 'e6a469f6ce88a1ae5ee417c44b1f2930482d28abfbc763954d69e537c22ca24d', '[\"*\"]', NULL, '2024-08-08 16:02:30', '2024-08-08 16:02:30'),
(246, 'App\\Models\\Employee', 2, 'auth-token', '15adcf1590cbb50e10b291f5a7366afcde44ae7cfc49789ac5749e58a1f02c81', '[\"*\"]', NULL, '2024-08-08 16:03:36', '2024-08-08 16:03:36'),
(247, 'App\\Models\\Manager', 11, 'auth-token', 'd9ef02c8bfa45122f7fa9e5357554c2768b48920f204fdc4f4595c30669e56c7', '[\"*\"]', '2024-08-08 17:29:14', '2024-08-08 16:07:29', '2024-08-08 17:29:14'),
(248, 'App\\Models\\Employee', 23, 'auth-token', '1bc5f02f9b37196269babf29aa54449f1a88daf9ec23ef280de6c5bf07367818', '[\"*\"]', NULL, '2024-08-08 16:54:06', '2024-08-08 16:54:06'),
(249, 'App\\Models\\Employee', 23, 'auth-token', 'a8e82e0e6d1565c88a6e98a57b5e8816a9c39090fe648732b7e7dc9118fc78a3', '[\"*\"]', NULL, '2024-08-08 16:55:40', '2024-08-08 16:55:40'),
(250, 'App\\Models\\Employee', 2, 'auth-token', 'c90a3e1ad11006b824c12cf11a9238f859e1c68f6481940747ac3f4bb3ee403e', '[\"*\"]', NULL, '2024-08-08 17:06:49', '2024-08-08 17:06:49'),
(251, 'App\\Models\\Manager', 11, 'auth-token', '01436a0e0d89f1638119fc175e1ffb0e9b113a8282809504d26a78eb3627c910', '[\"*\"]', '2024-08-08 18:44:15', '2024-08-08 18:21:26', '2024-08-08 18:44:15'),
(253, 'App\\Models\\Manager', 11, 'auth-token', 'ab7bb8b08e1e09eed6c9097eeb092addf560fe07351dd640889e22be760c4ec5', '[\"*\"]', '2024-08-08 18:58:41', '2024-08-08 18:48:04', '2024-08-08 18:58:41'),
(256, 'App\\Models\\Employee', 2, 'auth-token', 'f65a5c1110cba631e549b685cf4334bcd1380e213220b9eb26e89e01cebac6aa', '[\"*\"]', NULL, '2024-08-08 19:30:55', '2024-08-08 19:30:55'),
(257, 'App\\Models\\Employee', 2, 'auth-token', 'ccf5f7be92d36944ac3a55dab4bd418e156a0688c379cd0d84f8d374e9840d36', '[\"*\"]', NULL, '2024-08-08 19:32:08', '2024-08-08 19:32:08'),
(258, 'App\\Models\\Employee', 2, 'auth-token', '1ef6d7f6adfa464a7ead9f1fc7ffc3afacffdf912f648e479abf083a9ed0b859', '[\"*\"]', NULL, '2024-08-08 19:43:20', '2024-08-08 19:43:20'),
(259, 'App\\Models\\Manager', 11, 'auth-token', 'f3a1fd48a78969f5039a2ec21df8c5b82112112288010ab4314cf1f96b2423bc', '[\"*\"]', '2024-08-08 19:51:45', '2024-08-08 19:45:45', '2024-08-08 19:51:45'),
(261, 'App\\Models\\Manager', 11, 'auth-token', '74d7c7e46cd029e1fafa57d08279262fe5ef57b64ed0131db588585be0ff4d41', '[\"*\"]', '2024-08-08 20:26:27', '2024-08-08 19:59:24', '2024-08-08 20:26:27'),
(262, 'App\\Models\\Employee', 26, 'auth-token', '2d885ec3362c97eae936dc62c261f5110549f03742db48137549c1092ed7c978', '[\"*\"]', NULL, '2024-08-08 20:36:44', '2024-08-08 20:36:44'),
(264, 'App\\Models\\Manager', 11, 'auth-token', '1d32b64601d55c60271dae64a32119bf4a05ca0a946b132273dc5f3842cdcf1d', '[\"*\"]', '2024-08-08 21:58:59', '2024-08-08 21:30:58', '2024-08-08 21:58:59'),
(267, 'App\\Models\\Manager', 11, 'auth-token', '429f7dd57269c369f5f5722305dcfbe601ebcbd6b7fc399742735fb120769380', '[\"*\"]', '2024-08-09 15:56:37', '2024-08-09 15:55:46', '2024-08-09 15:56:37'),
(268, 'App\\Models\\Manager', 11, 'auth-token', 'd337669df92ccdc9a20684507fc99db2b8e59833baed4953ad64f37e618a5bf8', '[\"*\"]', '2024-08-09 16:52:46', '2024-08-09 16:19:04', '2024-08-09 16:52:46'),
(269, 'App\\Models\\Manager', 11, 'auth-token', '40579196e4edcf75a832b40ca07c752f88f867fc5a089a256c97e78f573e141b', '[\"*\"]', '2024-08-09 20:15:45', '2024-08-09 16:58:47', '2024-08-09 20:15:45'),
(272, 'App\\Models\\Company', 4, 'company-auth-token', 'b239a80624df25f089d1c4f519ad789c654c1ae8eeff6955469a9180b8434133', '[\"*\"]', '2024-08-11 20:20:37', '2024-08-11 20:20:34', '2024-08-11 20:20:37'),
(273, 'App\\Models\\Manager', 11, 'auth-token', '949d9cfc911beb1822a7c384a3ae8eca98cfe37cfc8ab3f28a24762c5e80c477', '[\"*\"]', '2024-08-12 05:29:10', '2024-08-12 05:29:06', '2024-08-12 05:29:10'),
(275, 'App\\Models\\Manager', 11, 'auth-token', 'd285a436c14bcc3e41b7ff48e5aa3f356ece8428ab3366ddae09929dfeec6158', '[\"*\"]', '2024-08-12 15:12:45', '2024-08-12 05:32:42', '2024-08-12 15:12:45'),
(276, 'App\\Models\\Manager', 11, 'auth-token', '7d1dc5b3d1bb4c6dcaf35564290d7c524823119efc3e02bb8b3752ba29aa2935', '[\"*\"]', '2024-08-12 14:28:33', '2024-08-12 14:24:29', '2024-08-12 14:28:33'),
(278, 'App\\Models\\Manager', 11, 'auth-token', 'a5e25c2192d6a55d41b46953fa4cc88816a93c5cbfda749fd563270e41516228', '[\"*\"]', '2024-08-13 02:31:57', '2024-08-12 14:40:23', '2024-08-13 02:31:57'),
(279, 'App\\Models\\Manager', 11, 'auth-token', '3c6743309f33b7a3b2f9d9438e354a67943993bb7ec6c4c2efea91bedc89d070', '[\"*\"]', '2024-08-12 16:47:13', '2024-08-12 15:34:01', '2024-08-12 16:47:13'),
(281, 'App\\Models\\Manager', 11, 'auth-token', '3dbbfab031622e651abde3934afa18bbecb55890819cd6724a02aac74624bda4', '[\"*\"]', '2024-08-12 16:50:19', '2024-08-12 16:50:15', '2024-08-12 16:50:19'),
(283, 'App\\Models\\Employee', 18, 'auth-token', '49f1ae964bf73b2af4ce561056db5a99075f15065cea195e2fae2ee4cc3cc06e', '[\"*\"]', NULL, '2024-08-12 16:56:55', '2024-08-12 16:56:55'),
(284, 'App\\Models\\Employee', 18, 'auth-token', '8e4968f34f6224056662c63c427c32f915a5ad2307bd570c019cca350ffead98', '[\"*\"]', '2024-08-12 19:45:00', '2024-08-12 17:05:57', '2024-08-12 19:45:00'),
(285, 'App\\Models\\Employee', 2, 'auth-token', '53c409bd14a0617ec214a692c927fa685fe6f021e3bbf0efd37fd47a73b94112', '[\"*\"]', '2024-08-12 20:03:05', '2024-08-12 20:02:57', '2024-08-12 20:03:05'),
(289, 'App\\Models\\Manager', 11, 'auth-token', 'acdd767f364f32afaa2709c26dad7f23057a752d1111bb9f0ae415b99a785414', '[\"*\"]', '2024-08-13 17:43:53', '2024-08-12 20:17:25', '2024-08-13 17:43:53'),
(291, 'App\\Models\\Manager', 11, 'auth-token', 'd6e1ce7967e28818fd169290a4d282b5a747c964fe9d796f906856929ba28a76', '[\"*\"]', '2024-08-13 04:00:40', '2024-08-13 02:53:27', '2024-08-13 04:00:40'),
(293, 'App\\Models\\Manager', 11, 'auth-token', '925dcbcfa0fff6f8650b32a5c7a1e6c41872dfa3dec39ec628f8cf4e10254ba4', '[\"*\"]', '2024-08-13 14:32:12', '2024-08-13 06:29:37', '2024-08-13 14:32:12'),
(295, 'App\\Models\\Manager', 11, 'auth-token', 'aa302b592dddb72c286515b94a6b65f39ffbc1138050d4ac551eb39e6963ab24', '[\"*\"]', '2024-08-13 17:27:26', '2024-08-13 14:40:00', '2024-08-13 17:27:26'),
(297, 'App\\Models\\Manager', 11, 'auth-token', '69e6ea53391dd050078d6131c969e0a45e84d55e3b64115a659c21b1f85a2485', '[\"*\"]', '2024-08-13 17:46:23', '2024-08-13 17:29:31', '2024-08-13 17:46:23'),
(299, 'App\\Models\\Employee', 2, 'auth-token', 'ab78d2ea92da2eb5a9b37e296b88218c606b486e22ef74406d0145263413c505', '[\"*\"]', '2024-08-14 19:23:34', '2024-08-13 18:07:19', '2024-08-14 19:23:34'),
(300, 'App\\Models\\Manager', 11, 'auth-token', '7b1473631b048c6b3adfc61e449bb6fa7833795d2a625410fe17536901e0ed8b', '[\"*\"]', '2024-08-14 16:42:02', '2024-08-14 01:49:56', '2024-08-14 16:42:02'),
(302, 'App\\Models\\Manager', 11, 'auth-token', '31197ebe2357fc2477a235b8608d2f7e243af7d7265e850b26179fb5f0c055d4', '[\"*\"]', '2024-08-14 17:54:33', '2024-08-14 17:05:53', '2024-08-14 17:54:33'),
(304, 'App\\Models\\Manager', 11, 'auth-token', 'f1c820b92b93dbbc60c44737fd89f2728ffc54847611890112ae7043dfe2250c', '[\"*\"]', '2024-08-14 19:06:52', '2024-08-14 18:58:17', '2024-08-14 19:06:52'),
(305, 'App\\Models\\Employee', 2, 'auth-token', 'dd5062701c93ae75bf0cb0cd11c927f43d85b734a5e92c371d160444e29dcf16', '[\"*\"]', '2024-08-14 19:13:57', '2024-08-14 19:08:35', '2024-08-14 19:13:57'),
(306, 'App\\Models\\Manager', 11, 'auth-token', '4fb143a2fd4b8d33874f5dc52b182945787d7686aafc6161ac8460182dcd7b4c', '[\"*\"]', '2024-08-14 19:25:35', '2024-08-14 19:23:40', '2024-08-14 19:25:35'),
(307, 'App\\Models\\Manager', 11, 'auth-token', 'f7fd548dcc5aff9bd72d1b0967c8ae5067b1f253340d93aae429f1a5ad07b4a3', '[\"*\"]', '2024-08-14 19:54:45', '2024-08-14 19:30:53', '2024-08-14 19:54:45'),
(309, 'App\\Models\\Manager', 11, 'auth-token', 'cdec1ecd569ec6a865aa8204b94d12395c4f92205970316990e9db14b8f4514f', '[\"*\"]', '2024-08-14 20:10:15', '2024-08-14 20:04:00', '2024-08-14 20:10:15'),
(311, 'App\\Models\\Manager', 11, 'auth-token', 'ef7b79324fc17c1b0a13110ceb5b7d0225dae4e016aed6aa534f9b92047525c6', '[\"*\"]', '2024-08-15 17:28:16', '2024-08-15 14:08:44', '2024-08-15 17:28:16'),
(312, 'App\\Models\\Employee', 2, 'auth-token', 'a5edf022bbc60c0a2778ec2baaecf6190ff831e1b1c66e31c98486a4f9b848f9', '[\"*\"]', '2024-08-15 14:56:44', '2024-08-15 14:56:42', '2024-08-15 14:56:44'),
(314, 'App\\Models\\Manager', 11, 'auth-token', '8eee49cf57a05229b6ff61fd5eda8feac69721930870476b22253aa660e43f5a', '[\"*\"]', '2024-08-15 15:13:46', '2024-08-15 15:11:59', '2024-08-15 15:13:46'),
(316, 'App\\Models\\Manager', 11, 'auth-token', '3d21b15362b5603bbddbc716638ea65f69dbc815804491b5e27af39b1f292e67', '[\"*\"]', '2024-08-15 15:16:02', '2024-08-15 15:15:57', '2024-08-15 15:16:02'),
(318, 'App\\Models\\Manager', 11, 'auth-token', '6f4aba52ccf373b293d3bb308024729a5e7aaee544d15060916d37c1e6a538da', '[\"*\"]', '2024-08-15 15:29:55', '2024-08-15 15:28:18', '2024-08-15 15:29:55'),
(320, 'App\\Models\\Manager', 11, 'auth-token', 'd32c0f7967928943fdb8e08fa0a1e17e802767fa750084ec8e42b42828168e32', '[\"*\"]', '2024-08-15 15:43:50', '2024-08-15 15:35:51', '2024-08-15 15:43:50'),
(321, 'App\\Models\\Manager', 11, 'auth-token', 'de9a566a7b13e3273cea69f00573a00da7915abf744d4bb67c42a81e3eb1a1c1', '[\"*\"]', '2024-08-15 16:10:33', '2024-08-15 16:10:05', '2024-08-15 16:10:33'),
(322, 'App\\Models\\Manager', 11, 'auth-token', '07431587f3694527303806cd100f12ff84485460d3fc5a2efe058e64ef79db93', '[\"*\"]', '2024-08-15 16:15:40', '2024-08-15 16:12:20', '2024-08-15 16:15:40'),
(323, 'App\\Models\\Manager', 11, 'auth-token', 'ef4ee5406eb4c43af481c78c0181a34e007a93bf355be02512c7c41c5b164327', '[\"*\"]', '2024-08-15 17:36:41', '2024-08-15 17:36:37', '2024-08-15 17:36:41'),
(325, 'App\\Models\\Manager', 11, 'auth-token', 'dcf643950311026de79fe1d4e149031579cca148cc61848fb863096e7e3150ce', '[\"*\"]', '2024-08-15 17:41:31', '2024-08-15 17:41:28', '2024-08-15 17:41:31'),
(327, 'App\\Models\\Manager', 11, 'auth-token', 'b506ac1472032daeae0647ce319697d8b87eb81cf7319a3b635ec0ad47883b60', '[\"*\"]', '2024-08-16 14:54:37', '2024-08-15 17:44:57', '2024-08-16 14:54:37'),
(328, 'App\\Models\\Company', 4, 'company-auth-token', '7f22a4683ba5a720ad09b089f8c12b28dc813b5f1a5fb8abd1816d9660e86ed5', '[\"*\"]', '2024-09-11 02:11:08', '2024-08-15 18:09:08', '2024-09-11 02:11:08'),
(331, 'App\\Models\\Manager', 11, 'auth-token', 'a1aecc1adc84d6e4f385cf8c6fd6224607177e08e530137eedc71ca034bf382b', '[\"*\"]', '2024-08-19 14:30:54', '2024-08-16 15:04:04', '2024-08-19 14:30:54'),
(332, 'App\\Models\\Company', 4, 'company-auth-token', '318ca5108801c9b59f42b528cc7be53262f4f6916263a0e74aac114e91c1d14f', '[\"*\"]', '2024-09-11 14:49:32', '2024-08-17 15:20:11', '2024-09-11 14:49:32'),
(333, 'App\\Models\\Manager', 11, 'auth-token', '424342cd808fb3e61f0fb6b47128b35bb87df8bc58dd75bf728b6769ff62fafc', '[\"*\"]', '2024-08-17 17:35:54', '2024-08-17 17:04:31', '2024-08-17 17:35:54'),
(334, 'App\\Models\\Manager', 11, 'auth-token', '076f9cca04cad96b5db470817e0462a31c83f0898ca7fa887c1c0ee328333359', '[\"*\"]', '2024-08-17 18:02:18', '2024-08-17 17:36:55', '2024-08-17 18:02:18'),
(335, 'App\\Models\\Manager', 11, 'auth-token', '589fd7b1f163c47c29e65c8d8e812741ea428c671bbdbbe7a2ec61e74cfdb904', '[\"*\"]', '2024-08-17 20:39:05', '2024-08-17 19:26:59', '2024-08-17 20:39:05'),
(336, 'App\\Models\\Manager', 11, 'auth-token', 'ae5b096adb706ecb15328f59381d8afef7cb5d86cda3c0d8356a2f065eb7f8c2', '[\"*\"]', '2024-09-19 19:42:45', '2024-08-17 20:26:57', '2024-09-19 19:42:45'),
(337, 'App\\Models\\Manager', 11, 'auth-token', '0185533e10b8461cbcb57655a6bf464bbe4d0687d00857bc066bd8fc75fd679e', '[\"*\"]', '2024-08-19 14:50:02', '2024-08-19 14:38:27', '2024-08-19 14:50:02'),
(338, 'App\\Models\\Manager', 11, 'auth-token', '76169b73efc272cb696590fc238b611b8ee8f8483576a4e634c5e82a33dcd1ae', '[\"*\"]', '2024-08-19 14:54:56', '2024-08-19 14:54:37', '2024-08-19 14:54:56'),
(339, 'App\\Models\\Manager', 11, 'auth-token', 'b49e1029859385d7de49c5f09da2c7048613290e25759855901b66f3af916c04', '[\"*\"]', '2024-08-19 15:09:26', '2024-08-19 15:09:22', '2024-08-19 15:09:26'),
(340, 'App\\Models\\Manager', 11, 'auth-token', 'c3aa473e6ef556c1076ebed94d9191bc3da4a6e79843e388715160de469d53c8', '[\"*\"]', '2024-08-19 15:40:10', '2024-08-19 15:40:07', '2024-08-19 15:40:10'),
(341, 'App\\Models\\Manager', 11, 'auth-token', '69ec04e049073a2e7116d40869d971c36dc1a72ff4670bd0be01781b9d1b8169', '[\"*\"]', '2024-08-19 16:34:43', '2024-08-19 16:34:39', '2024-08-19 16:34:43'),
(342, 'App\\Models\\Manager', 11, 'auth-token', '095ee6c8eccfd70bc62628d3da06dd36caa84f26b7e04ec2792da8163ceff43d', '[\"*\"]', '2024-08-19 16:40:08', '2024-08-19 16:40:04', '2024-08-19 16:40:08'),
(343, 'App\\Models\\Manager', 11, 'auth-token', 'ed1431a7e2a5ce37ababf9061ac4f1829f89baefa44417528730e0d0a053dc72', '[\"*\"]', '2024-08-19 16:55:44', '2024-08-19 16:55:40', '2024-08-19 16:55:44'),
(344, 'App\\Models\\Manager', 11, 'auth-token', '61c4d54fd8b36cfed3976f0bec09befba8c8135280b6e32e8d56cabffa0421ae', '[\"*\"]', '2024-08-19 17:16:20', '2024-08-19 17:08:36', '2024-08-19 17:16:20'),
(345, 'App\\Models\\Manager', 11, 'auth-token', '7e47c45135f339ea5369ccffc3274b9434e53ee65dbe5eeb21280e0955c29ef4', '[\"*\"]', '2024-08-19 17:56:33', '2024-08-19 17:56:30', '2024-08-19 17:56:33'),
(346, 'App\\Models\\Manager', 11, 'auth-token', '1d5f167147f33710329f6fd7ae061d5c9c8bcd9c213a02a5b38dd362c0fbe83e', '[\"*\"]', '2024-08-19 23:19:12', '2024-08-19 23:19:08', '2024-08-19 23:19:12'),
(347, 'App\\Models\\Manager', 11, 'auth-token', '0996e5dab14680ec12ea68c4be798792205cae5c496dc4868446a88d3856199b', '[\"*\"]', '2024-08-19 23:53:09', '2024-08-19 23:53:05', '2024-08-19 23:53:09'),
(348, 'App\\Models\\Manager', 11, 'auth-token', '8c3095f722464716e3cd8d7111565d45b16d308a8977a60055b46afa7a514a50', '[\"*\"]', '2024-08-20 00:13:46', '2024-08-20 00:13:40', '2024-08-20 00:13:46'),
(349, 'App\\Models\\Manager', 11, 'auth-token', '770bbec19b1425e0c45c2379608fde8dbafd6f1c79bfd6bd243f9b93cf26c969', '[\"*\"]', '2024-08-20 00:32:23', '2024-08-20 00:26:40', '2024-08-20 00:32:23'),
(350, 'App\\Models\\Manager', 11, 'auth-token', 'f6a0bf14f8fbfa9e69352501b7e199b8d09cf9099bcf325357e450aa2bde80da', '[\"*\"]', '2024-08-20 00:43:33', '2024-08-20 00:43:29', '2024-08-20 00:43:33'),
(351, 'App\\Models\\Manager', 11, 'auth-token', '3ac8d54101c5d8a508be83a4cdb0af74f4a8d5f5782b33ca1a4e7c6a24df89e2', '[\"*\"]', '2024-08-20 02:33:08', '2024-08-20 02:33:01', '2024-08-20 02:33:08'),
(352, 'App\\Models\\Manager', 11, 'auth-token', '8ba801970fecaec8a051ef30c4a881807dfe32f9c081d0cacb5fab5ab76119e3', '[\"*\"]', '2024-08-20 03:39:07', '2024-08-20 03:39:02', '2024-08-20 03:39:07'),
(353, 'App\\Models\\Manager', 11, 'auth-token', 'aec7904b268f389b3731d6fd12abd4152b6db4ec61587d172647f5569061da39', '[\"*\"]', '2024-08-20 03:46:35', '2024-08-20 03:46:31', '2024-08-20 03:46:35'),
(354, 'App\\Models\\Manager', 11, 'auth-token', '926e120ff97313a8950321bedf6d98aef243c05cf272e3fbd7dd5f7a2e434241', '[\"*\"]', '2024-08-20 04:01:11', '2024-08-20 04:01:06', '2024-08-20 04:01:11'),
(355, 'App\\Models\\Manager', 11, 'auth-token', 'ca06bc67b63f198f057b4b7a721c8ad41c05072b045b980b9e7947611d92e222', '[\"*\"]', '2024-08-20 04:17:28', '2024-08-20 04:17:23', '2024-08-20 04:17:28'),
(356, 'App\\Models\\Manager', 11, 'auth-token', 'acb07eb52027604d123b6a145523140bee4581806a9ae90aa755b720dd094537', '[\"*\"]', '2024-08-20 04:21:49', '2024-08-20 04:21:44', '2024-08-20 04:21:49'),
(357, 'App\\Models\\Manager', 11, 'auth-token', 'b50f5c270d210fa2735e95db49c8acbcd5b23916ecea62059c285bb73298fc39', '[\"*\"]', '2024-08-20 04:32:14', '2024-08-20 04:32:09', '2024-08-20 04:32:14'),
(358, 'App\\Models\\Manager', 11, 'auth-token', '094d2cb9014ec2ae7e63e0cada41e8c70dc0f759be001b026e050de728199038', '[\"*\"]', '2024-08-20 14:19:08', '2024-08-20 14:19:04', '2024-08-20 14:19:08'),
(359, 'App\\Models\\Manager', 11, 'auth-token', '73723154880b0fe29b60e32c7670b0d0d2b9ced5689b1b4e17d2f6e2896e3add', '[\"*\"]', '2024-08-20 14:24:47', '2024-08-20 14:24:43', '2024-08-20 14:24:47'),
(360, 'App\\Models\\Manager', 11, 'auth-token', '12d20137960f3feaebdb889c6ce9f6e9e6ddad98fd8dd5de0d44194a4c5a8d70', '[\"*\"]', '2024-08-20 15:36:42', '2024-08-20 15:36:38', '2024-08-20 15:36:42'),
(361, 'App\\Models\\Manager', 11, 'auth-token', '677e9ca3d55ab35a3d5f3765bcd04ea88e990abcd634f7eaa78e2db6b3b0f7e3', '[\"*\"]', '2024-08-20 15:55:28', '2024-08-20 15:55:25', '2024-08-20 15:55:28'),
(362, 'App\\Models\\Manager', 11, 'auth-token', '544292d6774d2ad660d952fc0a99cb4a8975a62c77551db8e2c9e46ece5ed3f9', '[\"*\"]', '2024-08-20 16:05:20', '2024-08-20 16:05:16', '2024-08-20 16:05:20'),
(363, 'App\\Models\\Manager', 11, 'auth-token', '29db33f109d05e6e6bd33396204e60fe3f8eb4e96c35f44b375491bc13d21e26', '[\"*\"]', '2024-08-20 17:00:48', '2024-08-20 17:00:44', '2024-08-20 17:00:48'),
(365, 'App\\Models\\Manager', 11, 'auth-token', 'e15b298a6d21b1a77f47b7ad927c9d59addceac2f398723575fe598aa5ad9d9c', '[\"*\"]', '2024-08-20 21:21:01', '2024-08-20 21:20:28', '2024-08-20 21:21:01'),
(366, 'App\\Models\\Manager', 11, 'auth-token', 'c8bb625685a77aed8452559e1ec90c169aaaa66e48b83356c8c32d061e96d4f6', '[\"*\"]', '2024-08-21 01:46:46', '2024-08-21 01:46:42', '2024-08-21 01:46:46'),
(367, 'App\\Models\\Manager', 11, 'auth-token', '81261ae8aba915a4e6400d1ac35022d6330e0baae2a1c05c959f3820949d3e12', '[\"*\"]', '2024-08-21 13:58:06', '2024-08-21 13:58:02', '2024-08-21 13:58:06'),
(369, 'App\\Models\\Manager', 11, 'auth-token', 'b775f927f00e0ef986339be1d605847e8ac7630cba170f64b6b76b569ed2ec5d', '[\"*\"]', '2024-08-21 14:19:04', '2024-08-21 14:18:18', '2024-08-21 14:19:04'),
(370, 'App\\Models\\Manager', 11, 'auth-token', '00230e6f63b3bdb7830dbb9a115df9f22a17c390181342f06f693da96a26e85f', '[\"*\"]', '2024-08-21 14:23:24', '2024-08-21 14:23:20', '2024-08-21 14:23:24'),
(371, 'App\\Models\\Manager', 11, 'auth-token', '36847083771297638e837cce1df07f9bf35efed623b127f8653dc3a0220c62ab', '[\"*\"]', '2024-08-21 14:56:08', '2024-08-21 14:56:04', '2024-08-21 14:56:08'),
(372, 'App\\Models\\Employee', 2, 'auth-token', '3275e8ab36819a4b22a7c1fa3bea9a365a71a83fca081dffda0863619747e967', '[\"*\"]', '2024-08-21 15:15:09', '2024-08-21 15:03:05', '2024-08-21 15:15:09'),
(374, 'App\\Models\\Manager', 11, 'auth-token', '2d9b555f5b49343b49f356245a261df16d42c6b16a29135134734a369eff1968', '[\"*\"]', '2024-08-21 15:27:27', '2024-08-21 15:25:59', '2024-08-21 15:27:27'),
(375, 'App\\Models\\Manager', 11, 'auth-token', '8d9e9359763c7aebd0aeebc9990c5bcf4d7da1b188d98f07dfb7846eb2472456', '[\"*\"]', '2024-08-21 15:41:09', '2024-08-21 15:41:05', '2024-08-21 15:41:09'),
(376, 'App\\Models\\Manager', 11, 'auth-token', 'd2ab9b5487b2e8d5093791821fef42c790f0e94c5e267fbb520bd5da3ebd62e8', '[\"*\"]', '2024-08-21 16:07:11', '2024-08-21 16:07:07', '2024-08-21 16:07:11'),
(377, 'App\\Models\\Manager', 11, 'auth-token', '9cd6d93e3e272f8f74973dff4e2850dc837454c165df3b416e712906831bf8d1', '[\"*\"]', '2024-08-21 16:37:41', '2024-08-21 16:37:37', '2024-08-21 16:37:41'),
(379, 'App\\Models\\Manager', 11, 'auth-token', 'd3868aec074d2955cc520e8034a6d18eae87c5031018cb9fa8fdffe49672ca7e', '[\"*\"]', '2024-08-21 16:42:23', '2024-08-21 16:42:19', '2024-08-21 16:42:23'),
(381, 'App\\Models\\Manager', 11, 'auth-token', '1f01aae3f3c1e375a56f6e0cad446c67216c24c4ed347e63d90c1043d3043c0a', '[\"*\"]', '2024-08-21 16:44:53', '2024-08-21 16:44:49', '2024-08-21 16:44:53'),
(382, 'App\\Models\\Manager', 11, 'auth-token', 'f6846669e90e47140591af857853aee2dfac6a4bf38f0898d4c73789bd36f8ac', '[\"*\"]', '2024-08-21 17:00:55', '2024-08-21 17:00:51', '2024-08-21 17:00:55'),
(384, 'App\\Models\\Manager', 11, 'auth-token', '7db123f01a98727c3507b493c6618355b46d429d2857a639d34c14af99e9abfb', '[\"*\"]', '2024-08-21 17:04:32', '2024-08-21 17:04:29', '2024-08-21 17:04:32'),
(385, 'App\\Models\\Manager', 11, 'auth-token', '8f8853a3d111792f0d1cca1112314228c07f9c30a4ff1b8988b3f2b5cad605f7', '[\"*\"]', '2024-08-21 18:06:32', '2024-08-21 18:06:29', '2024-08-21 18:06:32');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(387, 'App\\Models\\Manager', 11, 'auth-token', 'daaee6694da6e0f98bf4c8e800931021b550f9bd0fb517312c2e2436b2095fad', '[\"*\"]', '2024-08-21 21:07:24', '2024-08-21 21:07:20', '2024-08-21 21:07:24'),
(388, 'App\\Models\\Manager', 11, 'auth-token', 'd80a0d56659ab963288eb72c3e58ffd539be6590ed36488cbe13c59937e7012f', '[\"*\"]', '2024-08-22 14:20:43', '2024-08-22 14:20:40', '2024-08-22 14:20:43'),
(389, 'App\\Models\\Manager', 11, 'auth-token', '4e2ec84143ac6a9b5afc2a197da213b584c0a5add3afdd33b4f2192199cb5968', '[\"*\"]', '2024-08-22 14:26:00', '2024-08-22 14:25:56', '2024-08-22 14:26:00'),
(390, 'App\\Models\\Manager', 11, 'auth-token', 'de6d54313079d9a8d87a0d32eafc0629dc1bde02484228126bce865ca4cc76b9', '[\"*\"]', '2024-08-22 14:32:05', '2024-08-22 14:32:01', '2024-08-22 14:32:05'),
(391, 'App\\Models\\Manager', 11, 'auth-token', 'd7cf66475123c66304cd1f66c30fcbd421ab1072cef481d5eb15f29ad69f8ee3', '[\"*\"]', '2024-08-22 14:48:46', '2024-08-22 14:48:40', '2024-08-22 14:48:46'),
(392, 'App\\Models\\Manager', 11, 'auth-token', 'd49f91aeff535ca6a8be4b3beb50b938ba6d03e365841b2dcf2d634614f5f77b', '[\"*\"]', '2024-08-22 18:05:02', '2024-08-22 18:04:58', '2024-08-22 18:05:02'),
(393, 'App\\Models\\Employee', 2, 'auth-token', 'df5917fe3d713b6d5fdc635edfd1742f4881a224e137a3c66a35149ec6b08dec', '[\"*\"]', '2024-08-23 14:34:37', '2024-08-23 14:33:51', '2024-08-23 14:34:37'),
(394, 'App\\Models\\Manager', 11, 'auth-token', 'a55c2b3bc7d73529e5bb738ca66e429a228c48a0ec43e8fc8477de028a828f26', '[\"*\"]', '2024-08-23 16:09:22', '2024-08-23 16:09:18', '2024-08-23 16:09:22'),
(395, 'App\\Models\\Manager', 11, 'auth-token', '99d685afe0ed43ce1d068a017448918e7cebb59dd3e6825b32e5cc82ec865a31', '[\"*\"]', '2024-08-23 16:21:53', '2024-08-23 16:21:50', '2024-08-23 16:21:53'),
(396, 'App\\Models\\Manager', 11, 'auth-token', 'abc8880db4aead020b753edd3e3fe1ea07c143f501dbc828eba0847ce0bcd5fd', '[\"*\"]', '2024-08-23 16:54:21', '2024-08-23 16:54:17', '2024-08-23 16:54:21'),
(397, 'App\\Models\\Manager', 11, 'auth-token', 'bc8b515b94e2a56283a1618897e6c072746417ba824736e76fba89cdbb342a69', '[\"*\"]', '2024-08-23 17:01:35', '2024-08-23 17:01:32', '2024-08-23 17:01:35'),
(398, 'App\\Models\\Manager', 11, 'auth-token', '367259165d518ec201c764b3f566bc3be13b152f59d5d3e96e23cf10e030f4eb', '[\"*\"]', '2024-08-23 17:27:11', '2024-08-23 17:27:06', '2024-08-23 17:27:11'),
(399, 'App\\Models\\Manager', 11, 'auth-token', '26ea02eb99d831911afc737b19aa7fb8900e5b215a975bc9b27fe09f107f46c9', '[\"*\"]', '2024-08-23 17:29:43', '2024-08-23 17:29:40', '2024-08-23 17:29:43'),
(400, 'App\\Models\\Employee', 2, 'auth-token', 'df14f3fd56801d806b44a33019d01bcf369079a58f928156f145d8a8143a5803', '[\"*\"]', '2024-08-23 17:33:14', '2024-08-23 17:33:06', '2024-08-23 17:33:14'),
(401, 'App\\Models\\Manager', 11, 'auth-token', '9ad5db84d9deb0840b75d5ec1d0fa9efecddb375caed2f813b077ee4b224ec36', '[\"*\"]', '2024-08-23 17:55:12', '2024-08-23 17:37:47', '2024-08-23 17:55:12'),
(402, 'App\\Models\\Manager', 11, 'auth-token', 'c7767ed0712372d27fb3e75fbd46a9899335dd07aa03c0a06770168b2c5d1828', '[\"*\"]', '2024-08-23 19:29:25', '2024-08-23 19:29:22', '2024-08-23 19:29:25'),
(403, 'App\\Models\\Manager', 11, 'auth-token', '793aae1537c14d50c7835df8b53754ae72ff948f96e328de88ff1109f3bb6c9a', '[\"*\"]', '2024-08-24 00:37:39', '2024-08-24 00:37:31', '2024-08-24 00:37:39'),
(404, 'App\\Models\\Manager', 11, 'auth-token', 'a4bb75ac9d975ed977074e21ad194f81717738cc002140cba69d01d481a7a7da', '[\"*\"]', '2024-08-24 01:01:30', '2024-08-24 01:01:21', '2024-08-24 01:01:30'),
(405, 'App\\Models\\Manager', 11, 'auth-token', '190a6da4eaa65851cf271873d71ee73a69e3e6fd83d7fff372a9fdc3302e0a2a', '[\"*\"]', '2024-08-24 01:05:05', '2024-08-24 01:04:55', '2024-08-24 01:05:05'),
(406, 'App\\Models\\Manager', 11, 'auth-token', '024b80491f6365eb58565708acd763ab81e0e4fa6e4db87c2e6b6953c96bb076', '[\"*\"]', '2024-08-24 03:44:31', '2024-08-24 03:09:39', '2024-08-24 03:44:31'),
(407, 'App\\Models\\Manager', 11, 'auth-token', 'b8340be3b84eacac595d57eaef2b6f03da47d65f407631ff7d830ff74ad7e4d3', '[\"*\"]', '2024-08-24 22:41:35', '2024-08-24 22:41:24', '2024-08-24 22:41:35'),
(408, 'App\\Models\\Manager', 11, 'auth-token', 'e8118c1487f26eebaba2ed6b1fc046db8e63ce256011bcadbcbfa7644509379f', '[\"*\"]', '2024-08-24 22:58:56', '2024-08-24 22:58:47', '2024-08-24 22:58:56'),
(409, 'App\\Models\\Manager', 11, 'auth-token', 'd14660ecbd27c7a32905334145ec176f7e223c0ed8138a284e52136e39013cac', '[\"*\"]', '2024-08-26 02:51:57', '2024-08-26 02:51:40', '2024-08-26 02:51:57'),
(410, 'App\\Models\\Manager', 11, 'auth-token', '64d1e66643ae934fcd6d02f006e4de4ca65db105d71b0b31c3ca574aa24d0028', '[\"*\"]', '2024-08-26 03:08:46', '2024-08-26 03:08:31', '2024-08-26 03:08:46'),
(411, 'App\\Models\\Manager', 11, 'auth-token', 'e438b896a02cc936d38acd38cd5377587548dc7a5147b2c656a7aa5c0102cca2', '[\"*\"]', '2024-08-26 14:12:14', '2024-08-26 14:11:10', '2024-08-26 14:12:14'),
(412, 'App\\Models\\Manager', 11, 'auth-token', '75163a086f2b1f4d222de863505fc4dfbff698bdb3b9281e429bef2d1bd60b2a', '[\"*\"]', '2024-08-26 14:35:01', '2024-08-26 14:22:34', '2024-08-26 14:35:01'),
(413, 'App\\Models\\Manager', 11, 'auth-token', '69932eb7c3df80bb5e5f2f6d5db7124540b0fd5535de67a13f6b1a94e6763b28', '[\"*\"]', '2024-08-26 15:01:44', '2024-08-26 15:01:37', '2024-08-26 15:01:44'),
(415, 'App\\Models\\Manager', 11, 'auth-token', 'b77b0cceb9dab544e55c8e99bd691e436e5b1f5e18ebdaa666c4c1990c82b288', '[\"*\"]', '2024-08-26 15:45:24', '2024-08-26 15:12:51', '2024-08-26 15:45:24'),
(417, 'App\\Models\\Manager', 11, 'auth-token', '4bf69d22fe56a65caa2a6a00e95a828bc1357d0af06d51f9281103cfb5978058', '[\"*\"]', '2024-08-26 16:09:44', '2024-08-26 16:01:41', '2024-08-26 16:09:44'),
(418, 'App\\Models\\Manager', 11, 'auth-token', '6614b9d385a45434a3901ee12ec80059c45e70b39810174f3f12d887d16c94be', '[\"*\"]', '2024-08-26 16:58:55', '2024-08-26 16:13:21', '2024-08-26 16:58:55'),
(419, 'App\\Models\\Manager', 11, 'auth-token', '6bbdcdc754e679ead7b2530d41410a2a85f045772e7d4cadb52a3ba1bbf3bd25', '[\"*\"]', '2024-08-26 16:28:23', '2024-08-26 16:27:26', '2024-08-26 16:28:23'),
(420, 'App\\Models\\Company', 4, 'company-auth-token', '70bf58629bc91fb2c48b9e042147ba673d62979b082d983420ff90cc3b4bd084', '[\"*\"]', '2024-08-26 16:33:32', '2024-08-26 16:33:32', '2024-08-26 16:33:32'),
(421, 'App\\Models\\Manager', 11, 'auth-token', 'bf6ecd03251cd48ca31313ebd2ccbadc266a7cd6eebfc92a73d0e8e8708b8200', '[\"*\"]', '2024-08-26 17:04:06', '2024-08-26 16:46:02', '2024-08-26 17:04:06'),
(422, 'App\\Models\\Manager', 11, 'auth-token', 'ecb29c3cf390a2273c5e02cc1349114868a4eeded1df2e35587f9a19ae28f676', '[\"*\"]', '2024-08-26 17:15:57', '2024-08-26 17:14:38', '2024-08-26 17:15:57'),
(423, 'App\\Models\\Manager', 11, 'auth-token', 'dd06ceb807d0e0d8a63af9bb1ceaee4963b67716b3b8c80522db4bf0d6a9bdef', '[\"*\"]', '2024-08-26 17:36:20', '2024-08-26 17:36:14', '2024-08-26 17:36:20'),
(424, 'App\\Models\\Manager', 11, 'auth-token', '28ee3c29deef07b34e3e83c12f5378ba83455323b401cf9883986be05fc4477a', '[\"*\"]', '2024-08-26 18:35:12', '2024-08-26 18:27:40', '2024-08-26 18:35:12'),
(425, 'App\\Models\\Company', 4, 'company-auth-token', '3798c5f35950b66135316abbb8a4fa01d8e250647f65b259012dd65664190da2', '[\"*\"]', '2024-08-26 21:54:18', '2024-08-26 21:44:33', '2024-08-26 21:54:18'),
(426, 'App\\Models\\Manager', 11, 'auth-token', '4bc2f2f594270ef442df20f223cf55c261df0a28563b41cd54616cae5a948d50', '[\"*\"]', '2024-08-27 03:57:33', '2024-08-27 03:44:55', '2024-08-27 03:57:33'),
(427, 'App\\Models\\Manager', 11, 'auth-token', '7c52516735dd4d72c97134ef3aaaccd65ac7a8e15a5677eb98a6d8a22191f70a', '[\"*\"]', '2024-08-27 14:18:32', '2024-08-27 14:17:48', '2024-08-27 14:18:32'),
(428, 'App\\Models\\Manager', 11, 'auth-token', 'c463e7c4bed022e75974f99a9f93e684e1f8ff484d411acf116d4b8e1058af95', '[\"*\"]', '2024-08-27 15:21:37', '2024-08-27 15:09:28', '2024-08-27 15:21:37'),
(429, 'App\\Models\\Manager', 11, 'auth-token', '3cf8d1ba5a1e20c85efafe3e47ab6913a1ac253bcbf9a9246ce38a88d6d32d9d', '[\"*\"]', '2024-08-27 15:46:13', '2024-08-27 15:26:29', '2024-08-27 15:46:13'),
(430, 'App\\Models\\Manager', 11, 'auth-token', '0ed836c0302a6d6556d5e7a24ecfa3dbc72845155832386f0d7431054f5f0b0f', '[\"*\"]', '2024-08-27 17:01:35', '2024-08-27 16:42:46', '2024-08-27 17:01:35'),
(431, 'App\\Models\\Manager', 11, 'auth-token', '87c73354f9c515e26245b80ad5fc5d39fec53be645e88ae3ed7096978313c257', '[\"*\"]', '2024-08-27 17:05:50', '2024-08-27 17:02:15', '2024-08-27 17:05:50'),
(432, 'App\\Models\\Manager', 11, 'auth-token', '98333a0a181baa5d01a19117d89ce8a7390f34b694dee2bc43dbde37ffcecfdb', '[\"*\"]', '2024-08-27 17:19:42', '2024-08-27 17:08:35', '2024-08-27 17:19:42'),
(433, 'App\\Models\\Manager', 11, 'auth-token', '0bdc1f0e8fc62e3d1e3d1a3f5c52e60ddd2fd830844d8083bb497178225b4a06', '[\"*\"]', '2024-08-27 17:43:46', '2024-08-27 17:28:17', '2024-08-27 17:43:46'),
(434, 'App\\Models\\Manager', 11, 'auth-token', '1f2dd4a3f8c2303f2149e22efb9dd9a9dc139ba2e4e9bc26fab0bb144ea8ab7f', '[\"*\"]', '2024-08-27 17:58:56', '2024-08-27 17:46:07', '2024-08-27 17:58:56'),
(436, 'App\\Models\\Manager', 11, 'auth-token', 'e3ab97e7adf697ad7869166649a01b3deed489cca5829670918d7c27af02e304', '[\"*\"]', '2024-08-27 17:53:14', '2024-08-27 17:53:08', '2024-08-27 17:53:14'),
(437, 'App\\Models\\Employee', 2, 'auth-token', '68a97f33da8a98dd0a43c1f13e7b5a31b1222f2c925082eecce05489fe9b3338', '[\"*\"]', '2024-08-27 18:37:04', '2024-08-27 17:54:11', '2024-08-27 18:37:04'),
(438, 'App\\Models\\Employee', 2, 'auth-token', '171f252b885aa253b41df80681083d22a03fc88569aea47279e481114994924c', '[\"*\"]', '2024-08-27 17:55:03', '2024-08-27 17:54:52', '2024-08-27 17:55:03'),
(439, 'App\\Models\\Manager', 11, 'auth-token', '70cc46cf51e7813a0066042da120126898138403d11bc40c2de8251071d261ac', '[\"*\"]', '2024-08-27 18:06:33', '2024-08-27 18:02:28', '2024-08-27 18:06:33'),
(440, 'App\\Models\\Manager', 11, 'auth-token', 'c1499bd3a57e7cd172ea00cc49988450367f67aac8263a55aaeccece382b56fd', '[\"*\"]', '2024-08-27 18:09:26', '2024-08-27 18:09:21', '2024-08-27 18:09:26'),
(441, 'App\\Models\\Employee', 2, 'auth-token', 'bc3564d88df7adac8baf005ad79ac0eabb95ecaf73a6c9f9ef3ca18a3fbbfd2d', '[\"*\"]', '2024-08-27 18:10:11', '2024-08-27 18:09:43', '2024-08-27 18:10:11'),
(442, 'App\\Models\\Employee', 2, 'auth-token', '481634c0394722634a0968d140c6cb169e7820b4379ecd8c2820f45292fbffd0', '[\"*\"]', '2024-08-27 18:16:04', '2024-08-27 18:15:05', '2024-08-27 18:16:04'),
(443, 'App\\Models\\Employee', 2, 'auth-token', '4ccf649654a1901a31fc62ca8a57268ad32abb7dd43f6a8cfe3c170fa8488168', '[\"*\"]', '2024-08-27 18:23:47', '2024-08-27 18:20:06', '2024-08-27 18:23:47'),
(445, 'App\\Models\\Employee', 23, 'auth-token', '0d7f48e7410016476261b7a8bf3268dcba81f767530108b19811e10686f07860', '[\"*\"]', NULL, '2024-08-27 19:30:30', '2024-08-27 19:30:30'),
(446, 'App\\Models\\Employee', 2, 'auth-token', '2c1cbfa623b443165ceba3ed9d59bed688ddf1b105aca365f8bf4a837e20631e', '[\"*\"]', '2024-09-19 19:41:54', '2024-08-27 19:32:02', '2024-09-19 19:41:54'),
(447, 'App\\Models\\Company', 4, 'company-auth-token', '6534f3f5c862ac959442d43bdfffa7e1d91746b9e6ef63f039f02036e5fa9a89', '[\"*\"]', '2024-08-28 07:36:29', '2024-08-28 07:36:29', '2024-08-28 07:36:29'),
(458, 'App\\Models\\Company', 4, 'company-auth-token', 'da0bde5a6d5739a2bcf9eabafc020c85c14964bf3b828bf14eb47bcc42d0ad6d', '[\"*\"]', '2024-08-28 17:40:56', '2024-08-28 17:39:59', '2024-08-28 17:40:56'),
(459, 'App\\Models\\Manager', 11, 'auth-token', '20c49dcee933f0618a1d9ef3cebf6be131c6ff5216fb6ba7f10a21e65c56c449', '[\"*\"]', '2024-08-29 16:43:10', '2024-08-29 16:39:19', '2024-08-29 16:43:10'),
(460, 'App\\Models\\Employee', 2, 'auth-token', '1b0ed58d933cab4dd1d83168dffba941588bcf4a6f9b09bedfa979898f7209d0', '[\"*\"]', NULL, '2024-08-29 16:54:27', '2024-08-29 16:54:27'),
(461, 'App\\Models\\Employee', 2, 'auth-token', '8c51c7ac32bdeb59bff075d1af8adc9e980e14d2b917bcaf29b37ff403e97328', '[\"*\"]', '2024-08-29 17:43:03', '2024-08-29 16:58:01', '2024-08-29 17:43:03'),
(462, 'App\\Models\\Manager', 11, 'auth-token', '54cb0c6e7ef8b3a03ff01166e4537047bfc12b6baabb2aa01abc52d88d45769d', '[\"*\"]', '2024-08-29 17:50:48', '2024-08-29 17:50:25', '2024-08-29 17:50:48'),
(463, 'App\\Models\\Manager', 11, 'auth-token', '6396df530420c3023ffc5f73411a610b1ae21c62e9940ed0a632fca01501113a', '[\"*\"]', '2024-08-29 17:57:30', '2024-08-29 17:57:26', '2024-08-29 17:57:30'),
(464, 'App\\Models\\Manager', 11, 'auth-token', 'f1521ba8506d6c0787926343f4a69c04583a8f03a31155f35ffaf2432c540f48', '[\"*\"]', NULL, '2024-08-29 19:20:41', '2024-08-29 19:20:41'),
(465, 'App\\Models\\Manager', 11, 'auth-token', '92de9dc4a8071f8ba4e6e3bbc740dfd334620b1d061d1a63a750d53e3603063c', '[\"*\"]', '2024-09-05 19:53:10', '2024-08-29 19:36:27', '2024-09-05 19:53:10'),
(466, 'App\\Models\\Manager', 11, 'auth-token', 'd3df56893db48bd328bd43be60a3925722c09a2ae3b81b612eee06d8cea1b827', '[\"*\"]', '2024-10-18 22:08:05', '2024-09-03 20:05:23', '2024-10-18 22:08:05'),
(467, 'App\\Models\\Manager', 11, 'auth-token', '4c485ae646a524170892eecd9e42503eede9873971c02ef8c221ea69b2f882fc', '[\"*\"]', '2024-10-18 19:59:02', '2024-09-05 16:52:10', '2024-10-18 19:59:02'),
(468, 'App\\Models\\Employee', 2, 'auth-token', 'df07c3f0bae694016d4b78328e44d76a994fbe10f79aba004fa347005d924b1f', '[\"*\"]', NULL, '2024-09-05 19:53:58', '2024-09-05 19:53:58'),
(469, 'App\\Models\\Employee', 23, 'auth-token', 'a2f35e757554e72285ac5b3500d935123721b8ceae03f8d4c6b92985a9fe979e', '[\"*\"]', NULL, '2024-09-05 20:08:20', '2024-09-05 20:08:20'),
(470, 'App\\Models\\Employee', 2, 'auth-token', '72b256f1a9f46818c4d28eec98b20ba0fb813bd52cfd34776e5ffdf61af3448f', '[\"*\"]', NULL, '2024-09-05 20:09:08', '2024-09-05 20:09:08'),
(471, 'App\\Models\\Manager', 11, 'auth-token', 'ab8d3bb2df7516fe5b58e5655517463a2931fe8cd7e97640f92ec23b432b0e8b', '[\"*\"]', NULL, '2024-09-05 20:10:58', '2024-09-05 20:10:58'),
(472, 'App\\Models\\Employee', 2, 'auth-token', '21bb68f3d2642a0ce6fdf9d49522b040316220c0a9b2be7f05b85665a8b59938', '[\"*\"]', NULL, '2024-09-05 20:11:37', '2024-09-05 20:11:37'),
(473, 'App\\Models\\Manager', 11, 'auth-token', '28849366471f75f217e5c823a3eb54782107fe863f1fb3c9068b0f144b8defcc', '[\"*\"]', NULL, '2024-09-05 20:11:56', '2024-09-05 20:11:56'),
(474, 'App\\Models\\Employee', 2, 'auth-token', '9c697b422e77c03ed48327395fceb0e90a468a2b6524783d5aa645268f326c43', '[\"*\"]', '2024-09-05 20:15:07', '2024-09-05 20:14:57', '2024-09-05 20:15:07'),
(476, 'App\\Models\\Manager', 11, 'auth-token', '857e3c8d6171e921441a2962d919961141e486d7471e18a83fa9bc3dc915adb7', '[\"*\"]', '2024-09-06 21:56:18', '2024-09-05 21:50:48', '2024-09-06 21:56:18'),
(478, 'App\\Models\\Manager', 11, 'auth-token', '9fe12ea8fb99e4dea54f2f1b8d8eaaa578369bfd46c1dcb24e3843c25e221fe3', '[\"*\"]', '2024-09-11 22:03:04', '2024-09-09 17:39:57', '2024-09-11 22:03:04'),
(480, 'App\\Models\\Manager', 11, 'auth-token', 'f98ec8d7c770547d603afb6252c831672b10265a073da260993ef193e69f5702', '[\"*\"]', '2024-09-13 15:33:58', '2024-09-12 15:52:54', '2024-09-13 15:33:58'),
(481, 'App\\Models\\Employee', 35, 'auth-token', 'c4e7e70b5173910f56d5a466cc8153bf3f444a761d107f2cba59abd010a27a85', '[\"*\"]', NULL, '2024-09-12 16:46:26', '2024-09-12 16:46:26'),
(482, 'App\\Models\\Company', 9, 'company-auth-token', '23035707b8da35df4c7398ebd8204cb678bb3e9bbfa75247cfc54102fb38567b', '[\"*\"]', '2024-09-12 16:57:20', '2024-09-12 16:56:51', '2024-09-12 16:57:20'),
(484, 'App\\Models\\Manager', 11, 'auth-token', '19a3d963c4b6b5813a598ec88b3e575df9f43eb1e26cace4239d90c8082140fe', '[\"*\"]', '2024-09-13 21:53:23', '2024-09-13 21:23:52', '2024-09-13 21:53:23'),
(486, 'App\\Models\\Manager', 11, 'auth-token', '7e60af1bf57955ae430cdfbcf215d7dffdace3bb27b6e06aad2cc02f6c1f41d3', '[\"*\"]', '2024-09-14 16:56:40', '2024-09-14 15:46:09', '2024-09-14 16:56:40'),
(488, 'App\\Models\\Manager', 11, 'auth-token', 'cbdad82fd4d9c8c696533de473ff2b130509fb151fc689dfe788fbc2b7af8e62', '[\"*\"]', '2024-09-16 14:55:55', '2024-09-14 19:22:33', '2024-09-16 14:55:55'),
(490, 'App\\Models\\Manager', 11, 'auth-token', '90d2b6c6fcd8e771b2dfd8a8d91f14b10c8da0a5552f4c3ea0a1b358bd4b3fba', '[\"*\"]', '2024-09-16 15:58:00', '2024-09-16 15:27:16', '2024-09-16 15:58:00'),
(492, 'App\\Models\\Manager', 11, 'auth-token', 'e7bd8968f8c6fe34acb7a95b64025fa2ff69f98a52d7873b2de09e07fa21bf24', '[\"*\"]', '2024-09-19 16:49:17', '2024-09-19 16:49:00', '2024-09-19 16:49:17'),
(494, 'App\\Models\\Manager', 11, 'auth-token', 'c6ebca191a2200ce927b336b0de6b2db5b8b58c41984036ee06fc4857df7e546', '[\"*\"]', '2024-09-20 18:00:05', '2024-09-19 19:39:31', '2024-09-20 18:00:05'),
(495, 'App\\Models\\Manager', 11, 'auth-token', '650d4dd55adfcb8a7b6447a79f8e5b2b1325ab8cf2718b19ac48ec9bfe230744', '[\"*\"]', '2024-09-20 16:35:55', '2024-09-20 15:51:36', '2024-09-20 16:35:55'),
(496, 'App\\Models\\Manager', 11, 'auth-token', '0420f26b312dc0ae09624ff31edc577f66c30bbc86256e5c75f8d1d1c6ae18aa', '[\"*\"]', '2024-09-20 16:59:26', '2024-09-20 16:59:15', '2024-09-20 16:59:26'),
(498, 'App\\Models\\Manager', 11, 'auth-token', 'b532be404ed4574769b4920b9fe66d5a4b55e2eb3bd0c5876bb94301798fda96', '[\"*\"]', '2024-09-20 18:11:15', '2024-09-20 18:08:06', '2024-09-20 18:11:15'),
(499, 'App\\Models\\Manager', 11, 'auth-token', '0ca1e6b10bf156e1245366472fab999194d17232e833d5578af98c38d02a3ca2', '[\"*\"]', '2024-09-20 19:59:24', '2024-09-20 18:14:10', '2024-09-20 19:59:24'),
(501, 'App\\Models\\Manager', 11, 'auth-token', '973abf41702e69a0b6bccd4106bc67373786858b9201dd0a7c3b51dccec850f3', '[\"*\"]', '2024-09-20 22:07:00', '2024-09-20 22:06:20', '2024-09-20 22:07:00'),
(502, 'App\\Models\\Manager', 11, 'auth-token', '49d47f6e17e82c0227e2620680c5c0b4f212e29d59ebffaf7af15a806a24110e', '[\"*\"]', NULL, '2024-09-21 03:10:59', '2024-09-21 03:10:59'),
(508, 'App\\Models\\Manager', 11, 'auth-token', '39945214809b2283664b0c5c8d7059795e07053a15cf3b0b7abcf8849388f941', '[\"*\"]', '2024-09-23 21:44:39', '2024-09-23 21:38:00', '2024-09-23 21:44:39'),
(510, 'App\\Models\\Company', 4, 'company-auth-token', 'e3c93ab2a299b650efdc89c6c4f4bc6d2f54235f81d6dd670b8e12747b99be50', '[\"*\"]', '2024-09-23 21:39:59', '2024-09-23 21:39:47', '2024-09-23 21:39:59'),
(511, 'App\\Models\\Manager', 11, 'auth-token', 'ee8ebc5b05e10f915c35726bcf5a1edd1f2c8eadb3aba572a2554af3ec26bb6f', '[\"*\"]', '2024-09-23 21:55:53', '2024-09-23 21:46:33', '2024-09-23 21:55:53'),
(512, 'App\\Models\\Employee', 37, 'auth-token', '2e931d54f8a9ec7c593130a341925e2ca07492631e1b68a9d4abfa10b49e2a80', '[\"*\"]', NULL, '2024-09-23 21:54:52', '2024-09-23 21:54:52'),
(514, 'App\\Models\\Company', 10, 'company-auth-token', 'bbb88ff25f048b51b74fe1ecc857d71a32d2af96796bfc3eda328c1ac440fd59', '[\"*\"]', '2024-10-15 05:17:35', '2024-09-24 12:08:46', '2024-10-15 05:17:35'),
(516, 'App\\Models\\Manager', 16, 'auth-token', '4ba948f232a744161ec63d8745c9796e62958b21bbf4a67c2741a431939b9ce1', '[\"*\"]', NULL, '2024-09-24 14:44:55', '2024-09-24 14:44:55'),
(517, 'App\\Models\\Manager', 16, 'auth-token', '4e8fd4b7da7ce2becd02ac87f83c18ef3705bebfd38d82d296ec571311827dd4', '[\"*\"]', NULL, '2024-09-24 14:50:04', '2024-09-24 14:50:04'),
(518, 'App\\Models\\Manager', 16, 'auth-token', 'a48ebf263483a37a38f6bdfbd1a5c0d62a4bfef75d7147d6b77db353b0f671f3', '[\"*\"]', '2024-09-24 14:56:23', '2024-09-24 14:51:02', '2024-09-24 14:56:23'),
(519, 'App\\Models\\Employee', 38, 'auth-token', '8a588433060028484acafbcf6399081c828f3a37371017a7ef5d0bf194c61ce0', '[\"*\"]', NULL, '2024-09-24 14:58:45', '2024-09-24 14:58:45'),
(520, 'App\\Models\\Employee', 38, 'auth-token', '58a534bc323677e3dd3da9fc7085865599914da7efc8b9789210c5e1fe389ec6', '[\"*\"]', NULL, '2024-09-24 15:00:20', '2024-09-24 15:00:20'),
(521, 'App\\Models\\Employee', 38, 'auth-token', '85b6953bd237dcc51a559825a03e65d46fdf46e98a53f7bd225498b79ff5131d', '[\"*\"]', NULL, '2024-09-24 15:08:48', '2024-09-24 15:08:48'),
(524, 'App\\Models\\Employee', 38, 'auth-token', '5468f105b6e018da32a9f5d1af067975fb1c669950512410d97084207a1eab6a', '[\"*\"]', NULL, '2024-09-24 15:17:24', '2024-09-24 15:17:24'),
(528, 'App\\Models\\Employee', 39, 'auth-token', '745f0e24659531d4d23cbbd359d3daa805d065402e1c0506fd8772296566f16f', '[\"*\"]', NULL, '2024-09-24 15:35:41', '2024-09-24 15:35:41'),
(530, 'App\\Models\\Manager', 11, 'auth-token', 'da821357b5f450943be016748bb5d8933f5afbe74e3405c03d6c122801ebe476', '[\"*\"]', '2024-09-24 15:41:07', '2024-09-24 15:39:52', '2024-09-24 15:41:07'),
(531, 'App\\Models\\Employee', 39, 'auth-token', 'c306354a877172e016653f2fff33c439ff7f0f54d783e50fe8e1ee64d616225a', '[\"*\"]', NULL, '2024-09-24 15:46:16', '2024-09-24 15:46:16'),
(532, 'App\\Models\\Employee', 39, 'auth-token', '3c99efd9263d790b88c1da46521eeeeb41d457da1c02c3647827d750c142fd12', '[\"*\"]', NULL, '2024-09-24 15:47:14', '2024-09-24 15:47:14'),
(534, 'App\\Models\\Manager', 11, 'auth-token', '3281ad6d29bb9c920b1cec200a6d9203b4de510dd6ca2683966ad2e1b42ce40b', '[\"*\"]', '2024-09-24 16:01:44', '2024-09-24 15:52:03', '2024-09-24 16:01:44'),
(537, 'App\\Models\\Manager', 11, 'auth-token', '904e486e011940788d586cbf847deb63a092a869aa4c5d79810b65f73e88a5d9', '[\"*\"]', '2024-09-24 20:37:28', '2024-09-24 16:10:57', '2024-09-24 20:37:28'),
(540, 'App\\Models\\Company', 10, 'company-auth-token', 'ca2b5e90eae2d854e568db18c037d55d95b245397af13666e4152e162bb955b2', '[\"*\"]', '2024-09-24 22:00:02', '2024-09-24 16:52:17', '2024-09-24 22:00:02'),
(541, 'App\\Models\\Manager', 16, 'auth-token', '192712bda5b541d63d34ab09e36a9654b122db035b70c080fa7c56479b0fa8f7', '[\"*\"]', '2024-09-24 17:16:19', '2024-09-24 17:14:59', '2024-09-24 17:16:19'),
(543, 'App\\Models\\Manager', 16, 'auth-token', '26ee67f3916c92a5beb426d1ad54bb4fa2c1ed8eea848dbdb65d8405ab724b97', '[\"*\"]', '2024-09-24 17:29:13', '2024-09-24 17:21:00', '2024-09-24 17:29:13'),
(544, 'App\\Models\\Company', 11, 'company-auth-token', 'e5958549a9dc06503f7172e560982731da51506688eb1594b117a58b1156603b', '[\"*\"]', '2024-09-25 19:10:15', '2024-09-24 17:28:20', '2024-09-25 19:10:15'),
(545, 'App\\Models\\Manager', 17, 'auth-token', '231e24bf5688d8c6998a130f922e91090bd0c90d741b68f1906066074a5af9ef', '[\"*\"]', NULL, '2024-09-24 17:30:45', '2024-09-24 17:30:45'),
(546, 'App\\Models\\Manager', 17, 'auth-token', '016f621eb0c0454093603b6119754e3956c1cd2cfd4d3cae32aca2fbab293bc3', '[\"*\"]', '2024-09-24 17:32:03', '2024-09-24 17:31:59', '2024-09-24 17:32:03'),
(547, 'App\\Models\\Manager', 11, 'auth-token', '84281c5c4f3988cfe6d51db5fd6d17f4dd1902be0d97f3ef6dd47e8987708635', '[\"*\"]', '2024-09-25 14:50:05', '2024-09-24 20:54:32', '2024-09-25 14:50:05'),
(548, 'App\\Models\\Manager', 11, 'auth-token', '7e88a03970288776a731b0e614e0d165cfc25c08025ee3824dd70980d7dfe61f', '[\"*\"]', '2024-09-25 16:06:39', '2024-09-25 15:11:32', '2024-09-25 16:06:39'),
(549, 'App\\Models\\Company', 4, 'company-auth-token', '23a81a2cf637e36d66939687374ee4e626dc4d9ada626956cc83f4a8aa957157', '[\"*\"]', '2024-10-17 03:14:02', '2024-09-25 19:06:51', '2024-10-17 03:14:02'),
(550, 'App\\Models\\Company', 10, 'company-auth-token', '92c422cdf6980e90ed1543d2a936ae32ca40308e829c06ef19ded23bbe782533', '[\"*\"]', '2024-09-25 19:09:49', '2024-09-25 19:09:39', '2024-09-25 19:09:49'),
(558, 'App\\Models\\Company', 4, 'company-auth-token', 'c2ba4294430099cbd80c7560e6768f7961d86a9ee216ad86012db956bc529f57', '[\"*\"]', '2024-10-17 15:34:31', '2024-09-25 20:19:07', '2024-10-17 15:34:31'),
(560, 'App\\Models\\Manager', 11, 'auth-token', 'd1a4838a12f83fec7f679f70882086cfaa66a5d1c8c8c212f74c4b46e8253062', '[\"*\"]', '2024-09-25 20:31:56', '2024-09-25 20:30:04', '2024-09-25 20:31:56'),
(561, 'App\\Models\\Manager', 11, 'auth-token', 'c9aeb882be683c5b10c5f5a906e32cd71ddc9c8a9da367a34cf09d697411228b', '[\"*\"]', '2024-09-25 20:43:42', '2024-09-25 20:35:26', '2024-09-25 20:43:42'),
(562, 'App\\Models\\Manager', 11, 'auth-token', '26db7b5788aca60049e960edd5299b941862346e107e1b19eaec015e281c6210', '[\"*\"]', '2024-09-25 20:54:05', '2024-09-25 20:53:14', '2024-09-25 20:54:05'),
(564, 'App\\Models\\Manager', 11, 'auth-token', 'd08ecd5869c963eccb70ee4f3e48f050fe49730928e7ee688989562092214009', '[\"*\"]', '2024-09-27 20:44:25', '2024-09-25 21:30:46', '2024-09-27 20:44:25'),
(565, 'App\\Models\\Company', 4, 'company-auth-token', '00b5584e1b0a9e74e6359959c5032d095fb9bc3f0fbcb671e3d96501180835b6', '[\"*\"]', '2024-10-08 20:36:32', '2024-09-27 17:22:58', '2024-10-08 20:36:32'),
(567, 'App\\Models\\Manager', 11, 'auth-token', '259b3c5e71e61c5557c7fa3fada0f7948dc002197f2e8226217a6851102736ee', '[\"*\"]', '2024-10-08 21:57:14', '2024-10-08 21:57:05', '2024-10-08 21:57:14'),
(568, 'App\\Models\\Manager', 11, 'auth-token', '7a5fc570c98eaf08fc8e2e339ab03f9e45df2ca2a357cd38271045c4b25abdc1', '[\"*\"]', '2024-10-08 21:59:52', '2024-10-08 21:59:47', '2024-10-08 21:59:52'),
(570, 'App\\Models\\Employee', 17, 'auth-token', '5cae3c4d15ac6d70c835614bc4ed027cd1b0ca7c55d5f488e9a465993f0bc59f', '[\"*\"]', NULL, '2024-10-08 22:02:12', '2024-10-08 22:02:12'),
(571, 'App\\Models\\Employee', 23, 'auth-token', 'e2e5c02d11c31978b149426d30852f9966ebcb31677915012a987ba3a69cc920', '[\"*\"]', NULL, '2024-10-08 22:04:03', '2024-10-08 22:04:03'),
(572, 'App\\Models\\Employee', 23, 'auth-token', '190e9cd6e46c43c2d7be9cff8b50eef57c0a53a3b30204a955e0bfe01fd1a508', '[\"*\"]', NULL, '2024-10-08 22:05:16', '2024-10-08 22:05:16'),
(574, 'App\\Models\\Employee', 23, 'auth-token', '81dd33a14553c66db3a0e4b3d3d0f390253a145f681231d4cc49a4f3edbe987f', '[\"*\"]', NULL, '2024-10-11 15:49:09', '2024-10-11 15:49:09'),
(575, 'App\\Models\\Employee', 53, 'auth-token', '81d48d574bb43027c5f4fa711b36862a456dcfcdda1dccc3cb7c9c0eba212d19', '[\"*\"]', NULL, '2024-10-17 03:07:27', '2024-10-17 03:07:27'),
(576, 'App\\Models\\Employee', 55, 'auth-token', 'c9e93394c4c4cba4d42935320c270cd855a84b248f589d96a4c0ed85fc5aef90', '[\"*\"]', NULL, '2024-10-17 03:20:22', '2024-10-17 03:20:22'),
(577, 'App\\Models\\Employee', 56, 'auth-token', 'bbf263eb25e059fa203dc5d75e39124ceaadc95894610ac4209ff9fb65004e51', '[\"*\"]', NULL, '2024-10-17 04:36:49', '2024-10-17 04:36:49'),
(578, 'App\\Models\\Manager', 18, 'auth-token', '74b6ed30e9abf30673ca1322636cfff0445b24ed8550016103c9cd15ab08aa4a', '[\"*\"]', NULL, '2024-10-17 05:40:12', '2024-10-17 05:40:12'),
(579, 'App\\Models\\Employee', 57, 'auth-token', '45bde821503e105ee6555c7ef1cf1b614f101e8f62b14f18eaa1c1169543a4aa', '[\"*\"]', NULL, '2024-10-17 10:33:47', '2024-10-17 10:33:47'),
(580, 'App\\Models\\Employee', 57, 'auth-token', '314258718fbaec1cbfb2fa11c890a83d95919bb6d79f19bfac2c475dde969a61', '[\"*\"]', NULL, '2024-10-17 14:43:21', '2024-10-17 14:43:21'),
(581, 'App\\Models\\Employee', 58, 'auth-token', '97d420a38e31a1919205cac6a7691e2e563bee2f35a6eefa0d9cff7bf91cf23a', '[\"*\"]', NULL, '2024-10-17 15:15:36', '2024-10-17 15:15:36'),
(582, 'App\\Models\\Company', 4, 'company-auth-token', '82abccbaecda1380b82b7e4ba802c06c89bdb58fe936b9440185296192bd1344', '[\"*\"]', '2024-10-17 15:57:46', '2024-10-17 15:17:11', '2024-10-17 15:57:46'),
(583, 'App\\Models\\Employee', 58, 'auth-token', '1f1737ae6d898160c8f93e74172b93f88ba9a5fe15d755da4afcc30090af61bb', '[\"*\"]', NULL, '2024-10-17 15:19:48', '2024-10-17 15:19:48'),
(584, 'App\\Models\\Employee', 59, 'auth-token', '1704df526929fdd836c5f87b14830a13808c376eea93f14161e00f6f7fd3abdf', '[\"*\"]', NULL, '2024-10-17 15:42:38', '2024-10-17 15:42:38'),
(586, 'App\\Models\\Employee', 60, 'auth-token', '496026e909e80eea8efa7822d51124ea1867cafb2190e697011c6cbf92f3164f', '[\"*\"]', NULL, '2024-10-17 15:56:31', '2024-10-17 15:56:31'),
(588, 'App\\Models\\Employee', 62, 'auth-token', '75a99b3322a5a82ec12b8f3ce272b7216ea212ed2309333f1d56770147fc27d2', '[\"*\"]', NULL, '2024-10-17 16:13:08', '2024-10-17 16:13:08'),
(591, 'App\\Models\\Manager', 18, 'auth-token', '3255c0bc2dfbaeb44532cb400351aa684eb7a0e947f7ed11bd906dffd28ee824', '[\"*\"]', NULL, '2024-10-17 16:22:33', '2024-10-17 16:22:33'),
(592, 'App\\Models\\Company', 4, 'company-auth-token', 'c01f526c118da7b295b32bd7a6cca3f331bbca6b1aa486bae810935a37777b6d', '[\"*\"]', '2024-10-17 16:51:21', '2024-10-17 16:22:49', '2024-10-17 16:51:21'),
(593, 'App\\Models\\Manager', 18, 'auth-token', '60ae6d6bc2bdb7688a47475c464d96281b47117a6e457c82eecc3810bfe7fba7', '[\"*\"]', '2024-10-17 16:28:25', '2024-10-17 16:25:57', '2024-10-17 16:28:25'),
(595, 'App\\Models\\Company', 4, 'company-auth-token', '22ea070d813fa66b3974e6a0ed76ddcc2e034f10da0dc16ad51bfe83ee2841d8', '[\"*\"]', '2024-10-19 17:49:59', '2024-10-17 16:27:35', '2024-10-19 17:49:59'),
(596, 'App\\Models\\Employee', 58, 'auth-token', 'aa74772d1d58b88d9f7b63fc371a9aefdf8d6922dad6ac1a675693ee66f53c52', '[\"*\"]', NULL, '2024-10-17 16:28:04', '2024-10-17 16:28:04'),
(597, 'App\\Models\\Employee', 62, 'auth-token', 'b0c5a4c0b1c25d06fe84af1b34526ec214ca1c3077e493489e7905b783d2b318', '[\"*\"]', NULL, '2024-10-17 16:28:55', '2024-10-17 16:28:55'),
(598, 'App\\Models\\Employee', 62, 'auth-token', 'bca38db2831fe6c82526e5530d222770944c63ae7f19dd55fd75583cb8a0dcc1', '[\"*\"]', NULL, '2024-10-17 16:29:01', '2024-10-17 16:29:01'),
(599, 'App\\Models\\Employee', 58, 'auth-token', '96b776f62cbfa4b8c22822df164cc06e9ce480b8a9c494dd08e96dd3b395f113', '[\"*\"]', NULL, '2024-10-17 16:29:06', '2024-10-17 16:29:06'),
(600, 'App\\Models\\Employee', 62, 'auth-token', 'ab81f78ac13023f6073cca52baab58dc33a4da0f66bc0a60d01dfd9427048a74', '[\"*\"]', NULL, '2024-10-17 16:29:29', '2024-10-17 16:29:29'),
(601, 'App\\Models\\Employee', 56, 'auth-token', '177d63b2236aaa9adb1ac91bd29aa937cbe56da964f8ae32e6e2a1cba782da5e', '[\"*\"]', NULL, '2024-10-17 16:29:45', '2024-10-17 16:29:45'),
(602, 'App\\Models\\Employee', 62, 'auth-token', 'ec4a4085e94f050d326a13db91564f8e35667a3d34cc024e90d599e2f04f1da4', '[\"*\"]', NULL, '2024-10-17 16:30:58', '2024-10-17 16:30:58'),
(603, 'App\\Models\\Employee', 56, 'auth-token', '582055fbdcb77a49442946e9b43f591c292efdc57b3ba79f8d20b3739776e02c', '[\"*\"]', NULL, '2024-10-17 16:32:10', '2024-10-17 16:32:10'),
(604, 'App\\Models\\Manager', 18, 'auth-token', 'fc227f625eae4c4fda9a5cb8b3099cc7c7413bb9a75803ae4aabcf5ded12c26b', '[\"*\"]', '2024-10-17 16:42:20', '2024-10-17 16:32:35', '2024-10-17 16:42:20'),
(605, 'App\\Models\\Employee', 58, 'auth-token', '378b825e3c9d8b0f2b7103fbb1045b5c7f721dea410e4a8b0a23dc3d72607723', '[\"*\"]', NULL, '2024-10-17 16:34:11', '2024-10-17 16:34:11'),
(606, 'App\\Models\\Employee', 58, 'auth-token', 'b921aaadc2b97991f2e384a451c159670dcfd32b7e9490593461e09289a569a1', '[\"*\"]', NULL, '2024-10-17 16:35:19', '2024-10-17 16:35:19'),
(607, 'App\\Models\\Employee', 60, 'auth-token', '70d24d719998d30af8458fc74a4fd063c273800ef632c3e2ba79187978fada07', '[\"*\"]', '2024-10-21 15:22:09', '2024-10-17 16:36:15', '2024-10-21 15:22:09'),
(609, 'App\\Models\\Employee', 58, 'auth-token', 'd4b2fb2c9122bdfa666cdca28f59d18e7c86fafa446e7978f0a143df7f191f28', '[\"*\"]', '2024-10-17 21:29:59', '2024-10-17 16:38:57', '2024-10-17 21:29:59'),
(611, 'App\\Models\\Employee', 62, 'auth-token', 'd761dba8220f25cf83a8be77cd70fae6c7773fde15e2410c91de03a329eb0abe', '[\"*\"]', '2024-10-17 16:41:59', '2024-10-17 16:41:57', '2024-10-17 16:41:59'),
(612, 'App\\Models\\Manager', 11, 'auth-token', 'ebc047452c057c050d6c0b7042936f4e337592ce6fd61d294205e78d3be3e46e', '[\"*\"]', '2024-10-17 16:43:10', '2024-10-17 16:42:42', '2024-10-17 16:43:10'),
(613, 'App\\Models\\Manager', 11, 'auth-token', '3bb4d829ed2001bde552ea206ad5e17652bc58c890646bd5d852ec023e70fe35', '[\"*\"]', '2024-10-17 16:57:49', '2024-10-17 16:43:32', '2024-10-17 16:57:49'),
(614, 'App\\Models\\Employee', 62, 'auth-token', '5a7bafd7873eb7b3011b90aded2bc29bd312752986eb3d496ed304991b3f94fc', '[\"*\"]', '2024-10-17 16:43:39', '2024-10-17 16:43:37', '2024-10-17 16:43:39'),
(615, 'App\\Models\\Employee', 63, 'auth-token', 'a9cb33d33fbf7f3559e4400b9ce76b793e291e9d13b4230b970620e445c6ee71', '[\"*\"]', '2024-10-21 14:15:31', '2024-10-17 16:43:47', '2024-10-21 14:15:31'),
(616, 'App\\Models\\Employee', 62, 'auth-token', '9849cdec31288223d9f95e9eacea73b79273d7c462189e14f68e99e49271b5a5', '[\"*\"]', '2024-10-21 14:07:53', '2024-10-17 16:47:07', '2024-10-21 14:07:53'),
(617, 'App\\Models\\Manager', 11, 'auth-token', '197e801fa4688be841a828cc43fc04d8ba43ed42be01bdd767e6721a0b78051b', '[\"*\"]', '2024-10-17 17:32:33', '2024-10-17 17:27:20', '2024-10-17 17:32:33'),
(618, 'App\\Models\\Employee', 57, 'auth-token', '296f3cc9f6cf22cbb11ffb398bb10f944d4ad7a8164ee918c6264361d3c2fce4', '[\"*\"]', NULL, '2024-10-17 17:33:24', '2024-10-17 17:33:24'),
(620, 'App\\Models\\Manager', 11, 'auth-token', '5fca79b42b1e0bd3f29b24a7b11733a053b7f0934df313335012d03f562a1f55', '[\"*\"]', '2024-10-17 20:11:57', '2024-10-17 17:41:09', '2024-10-17 20:11:57'),
(621, 'App\\Models\\Employee', 57, 'auth-token', '6037d8aa896bac4efabc301af35870fa3032c549c271635df39500f975c6c5be', '[\"*\"]', NULL, '2024-10-17 20:03:12', '2024-10-17 20:03:12'),
(622, 'App\\Models\\Manager', 18, 'auth-token', 'b0639b1cac6becf1bf4a082ef51a0570171354d072dc90c87abbfc2c25a90800', '[\"*\"]', '2024-10-17 21:09:01', '2024-10-17 21:08:58', '2024-10-17 21:09:01'),
(623, 'App\\Models\\Company', 4, 'company-auth-token', '167b349d17aaa5d7dc863c1c64f2dbf6935a6eac6936e2195e63bc94f6782058', '[\"*\"]', '2024-10-17 21:22:08', '2024-10-17 21:10:46', '2024-10-17 21:22:08'),
(624, 'App\\Models\\Manager', 18, 'auth-token', 'd3bedb9a55f96b5aafecae265d5dc24873b7576e387a1e9fd61a935a9d43dbe4', '[\"*\"]', '2024-10-21 17:25:51', '2024-10-17 21:11:45', '2024-10-21 17:25:51'),
(625, 'App\\Models\\Manager', 11, 'auth-token', 'a4ed3e851047fa02fc3d2e7bf4af4bea564ef39566686053584048c1f4ac6f85', '[\"*\"]', '2024-10-17 21:19:43', '2024-10-17 21:19:38', '2024-10-17 21:19:43'),
(626, 'App\\Models\\Manager', 11, 'auth-token', '424860b3cdea4eb9a52293bbeb388b91df3807f20d24836bdc2cb2b1674a3b9b', '[\"*\"]', '2024-10-18 15:11:39', '2024-10-17 21:25:18', '2024-10-18 15:11:39'),
(627, 'App\\Models\\Employee', 58, 'auth-token', 'bc2bddda814b308cad0b784dce342838de0ec9b575b26fa46488f68b91ef88b5', '[\"*\"]', '2024-10-18 03:52:04', '2024-10-17 21:35:57', '2024-10-18 03:52:04'),
(628, 'App\\Models\\Employee', 57, 'auth-token', '70d4eef4da2c3888ffb0b649997eeefed7a7f7ada286d28d7770dcbbec3e41c7', '[\"*\"]', NULL, '2024-10-18 02:30:02', '2024-10-18 02:30:02'),
(630, 'App\\Models\\Manager', 11, 'auth-token', 'ba4c8c2ad2b41f24f851436dc298d61cfcce6811029d30a1649b486e307ba9de', '[\"*\"]', '2024-10-19 17:44:46', '2024-10-18 15:21:55', '2024-10-19 17:44:46'),
(631, 'App\\Models\\Employee', 2, 'auth-token', 'e630c13b849fec4568a54bd1642385a5d7bd933c07d7b38c15eb06ec502d3ff4', '[\"*\"]', '2024-10-18 18:34:00', '2024-10-18 18:32:46', '2024-10-18 18:34:00'),
(632, 'App\\Models\\Employee', 57, 'auth-token', 'f5434e986827042112002339572a156f30afdbf8226c8ff3f96315bd941be24f', '[\"*\"]', NULL, '2024-10-18 19:46:33', '2024-10-18 19:46:33'),
(633, 'App\\Models\\Employee', 57, 'auth-token', '3ab4d78eb3f88663ca08495d1179db0c5a2c06e53a7654d092e985fd0a6f6a9e', '[\"*\"]', NULL, '2024-10-18 21:58:43', '2024-10-18 21:58:43'),
(634, 'App\\Models\\Employee', 55, 'auth-token', '5299288afc7dc34623db6d7a136260dc1d01b1fdf938219fe8a6d7c4f16e50b2', '[\"*\"]', NULL, '2024-10-19 17:48:29', '2024-10-19 17:48:29'),
(635, 'App\\Models\\Employee', 55, 'auth-token', '74252f9c51b06e5f4e4d747335749138cd238e4fdf9f082b6230ef6abb737af3', '[\"*\"]', '2024-10-19 17:52:16', '2024-10-19 17:51:06', '2024-10-19 17:52:16'),
(637, 'App\\Models\\Manager', 11, 'auth-token', '2acc3a0b4d8a57d46c13ec72ddd111c07c69ace972672c3e67db35d73915dce5', '[\"*\"]', NULL, '2024-10-21 15:47:56', '2024-10-21 15:47:56'),
(638, 'App\\Models\\Manager', 11, 'auth-token', '5e0eb9ba8de0ede11cdf71bf01357e1f49b4147bed7da00df1533843fc737847', '[\"*\"]', '2024-10-21 15:49:26', '2024-10-21 15:49:22', '2024-10-21 15:49:26'),
(640, 'App\\Models\\Manager', 11, 'auth-token', 'b09c452e90e8b0d376a5aa156b3df8980fdd81f63081638cc8f60b01b833295e', '[\"*\"]', '2024-10-21 15:55:11', '2024-10-21 15:55:07', '2024-10-21 15:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int NOT NULL,
  `manager_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meetup_date` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_percentage` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Accepted','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `company_id`, `manager_id`, `name`, `description`, `image`, `start_date`, `meetup_date`, `working_percentage`, `status`, `created_at`, `updated_at`) VALUES
(47, 4, 18, 'Medipedia', 'This is a project', 'comapny/project/1729163544.jpg', '02-01-2024', '12-31-2024', '0', 'Accepted', '2024-10-17 21:12:25', '2024-10-18 21:36:16'),
(48, 4, 11, 'Medipedia', 'Asd', 'comapny/project/1729164128.jpg', '10-17-2024', '12-31-2024', '0', 'Accepted', '2024-10-17 21:22:08', '2024-10-19 17:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `reportingoffs`
--

CREATE TABLE `reportingoffs` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reportingons`
--

CREATE TABLE `reportingons` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` int NOT NULL,
  `modules_id` int NOT NULL,
  `teammate_id` int NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `managerFeedback` longtext COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reportingons`
--

INSERT INTO `reportingons` (`id`, `project_id`, `modules_id`, `teammate_id`, `title`, `description`, `file`, `managerFeedback`, `date`, `created_at`, `updated_at`) VALUES
(12, 47, 41, 58, 'uydydy', 'r87ufu', NULL, NULL, '2024-10-17', '2024-10-17 21:45:09', '2024-10-17 21:45:09'),
(13, 47, 41, 58, 'hjh', 'jojj', NULL, NULL, '2024-10-17', '2024-10-17 21:48:23', '2024-10-17 21:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `teammates`
--

CREATE TABLE `teammates` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` int NOT NULL,
  `modules_id` int DEFAULT NULL,
  `employee_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teammates`
--

INSERT INTO `teammates` (`id`, `project_id`, `modules_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(46, 48, 41, 2, '2024-10-18 19:48:32', '2024-10-18 19:48:32'),
(50, 48, 42, 2, '2024-10-19 17:16:58', '2024-10-19 17:16:58'),
(51, 48, 43, 2, '2024-10-19 17:17:15', '2024-10-19 17:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workinghours`
--

CREATE TABLE `workinghours` (
  `id` bigint UNSIGNED NOT NULL,
  `company_token` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `type` enum('full','part') COLLATE utf8mb4_unicode_ci NOT NULL,
  `startTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startBreakTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endBreakTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partType` enum('morning','evening') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startpartTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpartTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workinghours`
--

INSERT INTO `workinghours` (`id`, `company_token`, `employee_id`, `manager_id`, `type`, `startTime`, `endTime`, `startBreakTime`, `endBreakTime`, `partType`, `startpartTime`, `endpartTime`, `created_at`, `updated_at`) VALUES
(6, '7083410cac9becd1f47c409998d55dc9', 7, NULL, 'full', '01:54', '00:56', '00:57', '00:57', NULL, NULL, NULL, '2024-07-25 12:54:37', '2024-07-25 12:54:37'),
(7, '7083410cac9becd1f47c409998d55dc9', NULL, 1, 'part', NULL, NULL, NULL, NULL, 'morning', '03:34', '02:34', '2024-07-25 14:10:02', '2024-07-25 14:34:54'),
(8, '8077bc4eec3ef3556a94424681769980', 2, NULL, 'part', NULL, NULL, NULL, NULL, 'evening', '13:00', '17:00', '2024-07-26 11:34:16', '2024-09-23 17:40:18'),
(9, 'b2e9f6dac48152ada50f8b5fc044eda0', 18, NULL, 'full', '09:00', '17:00', '00:30', '00:50', NULL, NULL, NULL, '2024-07-26 22:36:02', '2024-07-27 00:48:54'),
(12, '8077bc4eec3ef3556a94424681769980', NULL, 11, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-07-27 20:31:42', '2024-07-27 20:31:42'),
(13, '8077bc4eec3ef3556a94424681769980', 23, NULL, 'full', '12:39', '22:45', '13:40', '15:40', NULL, NULL, NULL, '2024-07-30 15:40:30', '2024-07-30 15:40:30'),
(14, '8077bc4eec3ef3556a94424681769980', 24, NULL, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-07-30 21:22:35', '2024-07-30 21:22:35'),
(15, '8077bc4eec3ef3556a94424681769980', 25, NULL, 'full', '10:00', '14:00', '13:00', '13:59', NULL, NULL, NULL, '2024-08-01 16:04:15', '2024-08-01 16:04:15'),
(16, '8077bc4eec3ef3556a94424681769980', NULL, 12, 'full', '10:00', '17:00', '13:00', '15:00', NULL, NULL, NULL, '2024-08-01 16:08:11', '2024-08-01 16:08:11'),
(17, '8077bc4eec3ef3556a94424681769980', NULL, 13, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-08-01 16:10:01', '2024-08-01 16:10:01'),
(18, '8077bc4eec3ef3556a94424681769980', NULL, 15, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-09-12 18:57:03', '2024-09-12 18:57:03'),
(19, '8077bc4eec3ef3556a94424681769980', 21, NULL, 'part', NULL, NULL, NULL, NULL, 'evening', '23:29', '23:59', '2024-09-23 16:30:37', '2024-09-23 16:30:37'),
(20, 'fdca1413d8961cd25fbed7e48e2b2910', NULL, 16, 'full', '01:48', '04:20', '02:40', '03:32', NULL, NULL, NULL, '2024-09-24 14:49:13', '2024-09-24 14:49:13'),
(21, 'fdca1413d8961cd25fbed7e48e2b2910', 38, NULL, 'full', '09:59', '17:09', '13:05', '14:59', NULL, NULL, NULL, '2024-09-24 14:59:57', '2024-09-24 14:59:57'),
(22, '8077bc4eec3ef3556a94424681769980', 39, NULL, 'full', '10:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-09-24 15:38:54', '2024-09-24 15:38:54'),
(23, '6bf2448084b49bcede7f82f69ad019a2', NULL, 17, 'full', '14:33', '19:35', '17:31', '18:31', NULL, NULL, NULL, '2024-09-24 17:31:41', '2024-09-24 17:31:41'),
(24, '8077bc4eec3ef3556a94424681769980', 61, NULL, 'part', NULL, NULL, NULL, NULL, 'morning', '09:00', '13:00', '2024-10-17 16:05:25', '2024-10-17 17:34:27'),
(25, '8077bc4eec3ef3556a94424681769980', NULL, 18, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-10-17 16:25:01', '2024-10-17 16:25:01'),
(26, '8077bc4eec3ef3556a94424681769980', 59, NULL, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-10-17 16:29:37', '2024-10-17 16:29:37'),
(27, '8077bc4eec3ef3556a94424681769980', 60, NULL, 'full', '10:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-10-17 16:31:48', '2024-10-17 16:31:48'),
(28, '8077bc4eec3ef3556a94424681769980', 62, NULL, 'full', '09:59', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-10-17 16:34:14', '2024-10-17 16:51:21'),
(29, '8077bc4eec3ef3556a94424681769980', 58, NULL, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-10-17 16:36:25', '2024-10-17 16:36:25'),
(30, '8077bc4eec3ef3556a94424681769980', 63, NULL, 'full', '09:00', '17:00', '13:00', '14:00', NULL, NULL, NULL, '2024-10-17 16:42:59', '2024-10-17 16:42:59'),
(31, '8077bc4eec3ef3556a94424681769980', 55, NULL, 'full', '09:00', '17:00', '13:00', '14:01', NULL, NULL, NULL, '2024-10-19 17:49:18', '2024-10-19 17:49:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`),
  ADD UNIQUE KEY `companies_token_unique` (`token`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_department_id_foreign` (`department_id`),
  ADD KEY `employees_manager_id_foreign` (`manager_id`),
  ADD KEY `employees_company_token_foreign` (`company_token`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `managers_email_unique` (`email`),
  ADD KEY `managers_department_id_foreign` (`department_id`),
  ADD KEY `managers_company_token_foreign` (`company_token`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportingoffs`
--
ALTER TABLE `reportingoffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportingons`
--
ALTER TABLE `reportingons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teammates`
--
ALTER TABLE `teammates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `workinghours`
--
ALTER TABLE `workinghours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `reportingoffs`
--
ALTER TABLE `reportingoffs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reportingons`
--
ALTER TABLE `reportingons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teammates`
--
ALTER TABLE `teammates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workinghours`
--
ALTER TABLE `workinghours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_token_foreign` FOREIGN KEY (`company_token`) REFERENCES `companies` (`token`);

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_company_token_foreign` FOREIGN KEY (`company_token`) REFERENCES `companies` (`token`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
