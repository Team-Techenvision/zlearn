-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 02:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zlearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `academics_details`
--

CREATE TABLE `academics_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `sslc_perce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sslc_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puc_perce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puc_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diploma_perce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diploma_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ddl_graduation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_graduation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ddl_pg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_pg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avg_cgpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_graduation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curr_backlog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_year_backlog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gap_explan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academics_details`
--

INSERT INTO `academics_details` (`id`, `user_id`, `sslc_perce`, `sslc_year`, `puc_perce`, `puc_year`, `diploma_perce`, `diploma_year`, `ddl_graduation`, `other_graduation`, `ddl_pg`, `other_pg`, `avg_cgpa`, `year_graduation`, `curr_backlog`, `num_year_backlog`, `gap`, `gap_explan`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'demo', 'demo', 'demo', 'demo', 'demo', 'demo', '4', 'demo', '3', 'demo', '20', '2021', '2', '2', '1', 'demo', 1, '2021-08-19 07:09:02', '2021-08-19 07:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `academic_projects`
--

CREATE TABLE `academic_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_size` int(11) DEFAULT NULL,
  `project_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_projects`
--

INSERT INTO `academic_projects` (`id`, `user_id`, `project_name`, `team_size`, `project_detail`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, NULL, 1, NULL, 1, '2021-08-19 07:13:48', '2021-08-19 07:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` tinyint(100) DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(11, 6, 'A', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(12, 6, 'B', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(13, 6, 'C', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(14, 6, 'D', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(15, 7, 'August 8', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(16, 7, 'August 1', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(17, 7, 'July 30', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(18, 7, 'July 28', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(19, 8, 'A', 1, '2021-08-03 06:50:42', '2021-08-03 06:50:42'),
(20, 8, '20', 1, '2021-08-03 06:50:42', '2021-08-20 00:52:38'),
(21, 8, 'C', 1, '2021-08-03 06:50:42', '2021-08-03 06:50:42'),
(22, 8, 'D', 1, '2021-08-03 06:50:42', '2021-08-03 06:50:42'),
(23, 9, 'A', 1, '2021-08-04 06:21:06', '2021-08-04 06:21:06'),
(24, 9, 'B', 1, '2021-08-04 06:21:06', '2021-08-04 06:21:06'),
(25, 9, '25', 1, '2021-08-04 06:21:06', '2021-08-20 00:52:38'),
(26, 9, 'D', 1, '2021-08-04 06:21:06', '2021-08-04 06:21:06'),
(27, 10, 'A', 1, '2021-08-04 06:21:56', '2021-08-04 06:21:56'),
(28, 10, 'B', 1, '2021-08-04 06:21:56', '2021-08-04 06:21:56'),
(29, 11, 'Save lives', 1, '2021-08-06 00:19:04', '2021-08-06 00:19:04'),
(30, 11, '30', 1, '2021-08-06 00:19:04', '2021-08-20 00:52:38'),
(31, 11, 'Human Trafficking: Call Your Government To Action', 1, '2021-08-06 00:19:04', '2021-08-06 00:19:04'),
(32, 11, 'Victims voices lead the way', 1, '2021-08-06 00:19:04', '2021-08-06 00:19:04'),
(33, 12, 'Save lives', 1, '2021-08-06 00:27:37', '2021-08-06 00:27:37'),
(34, 12, 'The future we want, the UN we need', 1, '2021-08-06 00:27:37', '2021-08-06 00:27:37'),
(35, 12, 'Human Trafficking: Call Your Government To Action', 1, '2021-08-06 00:27:37', '2021-08-06 00:27:37'),
(36, 12, 'Victims voices lead the way', 1, '2021-08-06 00:27:38', '2021-08-06 00:27:38'),
(61, 1, 'Hastivarman  demo', 1, '2021-08-09 04:03:25', '2021-08-20 10:26:00'),
(62, 1, 'Mantaraja', 1, '2021-08-09 04:03:25', '2021-08-20 10:26:00'),
(63, 1, 'Nilaraja', 1, '2021-08-09 04:03:25', '2021-08-20 10:26:00'),
(64, 1, 'Vishnugopa', 1, '2021-08-09 04:03:25', '2021-08-20 10:26:00'),
(65, 2, 'ex2', 1, '2021-08-09 04:06:13', '2021-08-20 06:52:30'),
(66, 2, '2x2', 1, '2021-08-09 04:06:13', '2021-08-20 06:52:30'),
(67, 2, '2ex2', 1, '2021-08-09 04:06:13', '2021-08-20 06:52:30'),
(68, 2, '2xex2', 1, '2021-08-09 04:06:13', '2021-08-20 06:52:30'),
(69, 3, '{1,2,3} and {2,3,4}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16'),
(70, 3, '{1,3,5} and {1,3,5,7}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16'),
(71, 3, '{3,4,7} and {7,4,3}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16'),
(72, 3, '{1,2,7} and {2,7,1,4}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16'),
(73, 4, 'Gunadhya', 1, '2021-08-12 01:28:36', '2021-08-12 01:28:36'),
(74, 4, 'Sarva Varman', 1, '2021-08-12 01:28:36', '2021-08-12 01:28:36'),
(75, 4, 'Panini', 1, '2021-08-12 01:28:36', '2021-08-12 01:28:36'),
(76, 4, 'Radhagupt', 1, '2021-08-12 01:28:36', '2021-08-12 01:28:36'),
(77, 5, 'Moga', 1, '2021-08-12 01:30:07', '2021-08-12 01:30:07'),
(78, 5, 'Rudradaman', 1, '2021-08-12 01:30:07', '2021-08-12 01:30:07'),
(79, 5, 'Azes', 1, '2021-08-12 01:30:07', '2021-08-12 01:30:07'),
(80, 5, 'Ghatotkacha', 1, '2021-08-12 01:30:07', '2021-08-12 01:30:07'),
(81, 6, 'Isa', 1, '2021-08-12 01:31:51', '2021-08-12 01:31:51'),
(82, 6, 'Katha', 1, '2021-08-12 01:31:51', '2021-08-12 01:31:51'),
(83, 6, 'Brihadaranyaka', 1, '2021-08-12 01:31:51', '2021-08-12 01:31:51'),
(84, 6, 'Svetasvatara', 1, '2021-08-12 01:31:51', '2021-08-12 01:31:51'),
(85, 7, 'Chandragupta Maurya', 1, '2021-08-12 01:34:08', '2021-08-12 01:34:08'),
(86, 7, 'Rudradaman', 1, '2021-08-12 01:34:08', '2021-08-12 01:34:08'),
(87, 7, 'Chandragupta II', 1, '2021-08-12 01:34:08', '2021-08-12 01:34:08'),
(88, 7, 'Skandagupta', 1, '2021-08-12 01:34:08', '2021-08-12 01:34:08'),
(89, 8, 'Krakuchanda', 1, '2021-08-12 01:35:39', '2021-08-12 01:35:39'),
(90, 8, 'Amitabha', 1, '2021-08-12 01:35:39', '2021-08-12 01:35:39'),
(91, 8, 'Maitreya', 1, '2021-08-12 01:35:39', '2021-08-12 01:35:39'),
(92, 8, 'Kanak Muni', 1, '2021-08-12 01:35:39', '2021-08-12 01:35:39'),
(93, 9, 'CMN', 1, '2021-08-12 02:46:05', '2021-08-12 02:46:05'),
(94, 9, 'UJI', 1, '2021-08-12 02:46:05', '2021-08-12 02:46:05'),
(95, 9, 'VIJ', 1, '2021-08-12 02:46:05', '2021-08-12 02:46:05'),
(96, 9, 'IJT', 1, '2021-08-12 02:46:05', '2021-08-12 02:46:05'),
(97, 10, 'JAK', 1, '2021-08-12 02:47:57', '2021-08-12 02:47:57'),
(98, 10, 'HAL', 1, '2021-08-12 02:47:57', '2021-08-12 02:47:57'),
(99, 10, 'HAK', 1, '2021-08-12 02:47:57', '2021-08-12 02:47:57'),
(100, 10, 'JAI', 1, '2021-08-12 02:47:57', '2021-08-12 02:47:57'),
(101, 11, 'OLPA', 1, '2021-08-12 02:50:23', '2021-08-12 02:50:23'),
(102, 11, 'KLMA', 1, '2021-08-12 02:50:23', '2021-08-12 02:50:23'),
(103, 11, 'LLMA', 1, '2021-08-12 02:50:23', '2021-08-12 02:50:23'),
(104, 11, 'KLLA', 1, '2021-08-12 02:50:23', '2021-08-12 02:50:23'),
(105, 12, 'GRR', 1, '2021-08-12 04:11:04', '2021-08-12 04:11:04'),
(106, 12, 'GSS', 1, '2021-08-12 04:11:04', '2021-08-12 04:11:04'),
(107, 12, 'ISS', 1, '2021-08-12 04:11:04', '2021-08-12 04:11:04'),
(108, 12, 'ITT', 1, '2021-08-12 04:11:04', '2021-08-12 04:11:04'),
(110, 13, 'CAB', 1, '2021-08-12 04:22:21', '2021-08-12 04:22:21'),
(111, 13, 'JKL', 1, '2021-08-12 04:22:21', '2021-08-12 04:22:21'),
(112, 13, 'GHI', 1, '2021-08-12 04:22:21', '2021-08-12 04:22:21'),
(113, 14, '40', 1, '2021-08-19 23:34:25', '2021-08-20 00:53:46'),
(114, 14, '30', 1, '2021-08-19 23:34:25', '2021-08-20 00:53:46'),
(115, 14, '25', 1, '2021-08-19 23:34:25', '2021-08-20 00:53:46'),
(116, 14, '20', 1, '2021-08-19 23:34:25', '2021-08-20 00:53:46'),
(117, 15, 'Red', 1, '2021-08-20 00:22:39', '2021-08-20 00:22:39'),
(118, 15, 'Black', 1, '2021-08-20 00:22:39', '2021-08-20 00:22:39'),
(119, 15, 'White', 1, '2021-08-20 00:22:39', '2021-08-20 00:22:39'),
(120, 15, 'Blue', 1, '2021-08-20 00:22:39', '2021-08-20 00:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` bigint(20) NOT NULL,
  `batch_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Batch 1', 1, '2021-08-19 12:27:11', '2021-08-19 12:27:11'),
(2, 'Batch 2', 1, '2021-08-19 12:27:11', '2021-08-19 12:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `id` int(20) NOT NULL,
  `blood_group_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`id`, `blood_group_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'O - ', 1, '2021-08-17 11:49:58', '2021-08-17 11:49:58'),
(2, 'O +', 1, '2021-08-17 11:50:09', '2021-08-17 11:50:09'),
(3, 'A -', 1, '2021-08-17 11:50:37', '2021-08-17 11:50:37'),
(4, 'A +', 1, '2021-08-17 11:50:37', '2021-08-17 11:50:37'),
(5, 'B -', 1, '2021-08-17 11:50:56', '2021-08-17 11:50:56'),
(6, 'B +', 1, '2021-08-17 11:50:56', '2021-08-17 11:50:56'),
(7, 'AB -', 1, '2021-08-17 11:51:14', '2021-08-17 11:51:14'),
(8, 'AB +', 1, '2021-08-17 11:51:14', '2021-08-17 11:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Computer Science', 1, '2021-08-03 02:48:27', '2021-08-03 02:48:27'),
(4, 'Mechanical', 1, '2021-08-03 02:48:40', '2021-08-03 02:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `categories_name` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 Active 0 inactive',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'demo', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `Certification_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_certificat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `user_id`, `Certification_name`, `upload_certificat`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, 'sdgsdg', 'images/Certificate/40455.jpeg', 1, '2021-08-06 15:38:59', '2021-08-06 15:38:59'),
(3, 4, 'svavdhj', 'images/Certificate/52690.pdf', 1, '2021-08-07 19:01:51', '2021-08-07 19:01:51'),
(7, 3, NULL, NULL, 1, '2021-08-19 07:13:48', '2021-08-19 07:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semister_id` tinyint(4) DEFAULT NULL,
  `subject_id` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `chapter_name`, `semister_id`, `subject_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'trignometry', 1, 1, 1, '2021-07-31 00:22:45', '2021-07-31 00:22:45'),
(2, 'poem', 1, 2, 1, '2021-07-31 01:07:30', '2021-07-31 01:07:30'),
(4, 'Integration', 4, 1, 1, '2021-08-06 00:10:29', '2021-08-06 00:10:29'),
(5, 'Derivative', 4, 1, 1, '2021-08-06 00:11:10', '2021-08-06 00:11:10'),
(6, 'Current Affairs 2021', 1, 9, 1, '2021-08-06 00:17:10', '2021-08-06 00:17:10'),
(8, 'History', NULL, 12, 1, '2021-08-12 01:24:41', '2021-08-12 01:24:41'),
(9, 'History 2', NULL, 12, 1, '2021-08-12 01:25:19', '2021-08-12 01:25:19'),
(10, 'Letter and Symbol Series', NULL, 13, 1, '2021-08-12 02:38:23', '2021-08-12 02:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `college_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `college_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kit college', 1, '2021-07-30 01:04:49', '2021-07-30 01:04:49'),
(2, 'DYP Medical', 1, '2021-07-30 01:05:37', '2021-07-30 04:04:45'),
(3, 'Bharti Vidhyapeeth', 1, '2021-07-30 02:55:57', '2021-07-31 01:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'BE', 1, '2021-08-03 02:58:46', '2021-08-03 02:58:46'),
(3, 'MBA', 1, '2021-08-03 02:58:46', '2021-08-03 02:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `education__details`
--

CREATE TABLE `education__details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `compus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `degree` tinyint(4) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education__details`
--

INSERT INTO `education__details` (`id`, `user_id`, `compus`, `collage_id`, `branch_id`, `degree`, `roll_no`, `education`, `current_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'dgsdgsg', 1, 4, 2, 2343252, 'UG', 'ssdgsdgsdgs', 1, '2021-08-07 09:53:52', '2021-08-07 09:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `graduation_sem`
--

CREATE TABLE `graduation_sem` (
  `sem_id` int(11) NOT NULL,
  `sem_name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graduation_sem`
--

INSERT INTO `graduation_sem` (`sem_id`, `sem_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1ST SEM SGPA', 1, '2021-08-18 06:39:01', '2021-08-18 06:39:01'),
(2, '2ND SEM SGPA', 1, '2021-08-18 06:39:01', '2021-08-18 06:39:01'),
(3, '3RD SEM CGPA', 1, '2021-08-18 06:41:19', '2021-08-18 06:41:19'),
(4, '4TH SEM CGPA', 1, '2021-08-18 06:41:19', '2021-08-18 06:41:19'),
(5, '5TH SEM CGPA', 1, '2021-08-18 06:41:19', '2021-08-18 06:41:19'),
(6, '6TH SEM CGPA', 1, '2021-08-18 06:41:19', '2021-08-18 06:41:19'),
(7, '7TH SEM CGPA', 1, '2021-08-18 06:41:19', '2021-08-18 06:41:19'),
(8, '8TH SEM CGPA', 1, '2021-08-18 06:41:19', '2021-08-18 06:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `interships`
--

CREATE TABLE `interships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `int_comp_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intship_duration` int(11) DEFAULT NULL,
  `your_roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interships`
--

INSERT INTO `interships` (`id`, `user_id`, `int_comp_name`, `intship_duration`, `your_roles`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, NULL, 1, NULL, 1, '2021-08-19 07:13:48', '2021-08-19 07:13:48');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_29_051632_create_user_details_table', 2),
(5, '2021_07_29_092723_create_standerds_table', 3),
(6, '2021_07_29_094741_create_subjects_table', 4),
(7, '2021_07_29_094930_create_chapters_table', 5),
(8, '2021_07_30_061255_create_colleges_table', 6),
(9, '2021_07_30_094640_create_semisters_table', 7),
(10, '2021_07_31_082426_create_test__types_table', 8),
(11, '2021_07_31_115413_create_academics_details_table', 9),
(12, '2021_07_31_115528_create_education__details_table', 10),
(13, '2021_08_02_060156_create_questions_table', 11),
(14, '2021_08_02_101019_create_answers_table', 12),
(15, '2021_08_02_114548_create_tests_table', 13),
(16, '2021_08_03_074739_create_branches_table', 14),
(17, '2021_08_03_074825_create_courses_table', 15);

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
-- Table structure for table `program_name`
--

CREATE TABLE `program_name` (
  `id` int(20) NOT NULL,
  `program_name` varchar(255) DEFAULT NULL,
  `status` int(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_name`
--

INSERT INTO `program_name` (`id`, `program_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pragnyan', 1, '2021-08-07 12:50:32', '2021-08-07 12:50:32'),
(2, 'Janus', 1, '2021-08-07 12:50:43', '2021-08-07 12:50:43'),
(3, 'CLC', 1, '2021-08-07 12:50:55', '2021-08-07 12:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` tinyint(50) DEFAULT NULL,
  `chapter_id` int(100) DEFAULT NULL,
  `question_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-image,0-text',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_count` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_level` int(50) DEFAULT NULL,
  `test_section` int(50) DEFAULT NULL,
  `correct_answer` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `chapter_id`, `question_title`, `question_type`, `question`, `question_image`, `choice_count`, `explanation`, `question_level`, `test_section`, `correct_answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 10, NULL, 1, 'Who among the following was the ruler of Kanchi during the time of Samudragupta ?', NULL, '4', 'demo', 4, 1, '2', 1, '2021-08-09 04:01:27', '2021-08-20 10:43:16'),
(2, 1, 1, NULL, 0, 'Find the derivative of ex2', NULL, '4', 'Mathematics Multiple Choice Questions & Answers', 3, 2, '4', 1, '2021-08-09 04:05:23', '2021-08-09 04:06:13'),
(3, 1, 9, NULL, 0, 'Which of the following two sets equal?', NULL, '4', 'Equal Sets', 3, 1, '2', 1, '2021-08-09 06:24:32', '2021-08-09 06:25:16'),
(4, 12, 8, NULL, 0, 'The famous book ‘Brihat Katha’ was written by__?', NULL, '4', 'The famous book ‘Brihat Katha’ was written by Gunadhya, who was the great scholar in the court of Satvahana King Hala.', 1, 5, '1', 1, '2021-08-12 01:27:58', '2021-08-12 01:28:36'),
(5, 12, 8, NULL, 0, 'Who was the first Saka king in India?', NULL, '4', 'An Indo-Scythian king, Moga (or Maues) was the first Saka king in India who established Saka power in Gandhara and extended supremacy over north-western India.', 1, 5, '1', 1, '2021-08-12 01:29:33', '2021-08-12 01:30:07'),
(6, 12, 8, NULL, 0, 'Which of the following Upanishads is written in prose ?', NULL, '4', 'Brihadaranyaka will be correct answer of this question', 1, 5, '3', 1, '2021-08-12 01:31:08', '2021-08-12 01:31:51'),
(7, 12, 8, NULL, 0, 'Parnadatta was appointed the Provincial Governor of Saurashtra by __?', NULL, '4', 'Skandgupta’s Junagarh Inscription: It states that Skandagupta appointed Parnadatta as goptri (governor) of Surashtra (Saurashtra).', 2, 5, '4', 1, '2021-08-12 01:33:15', '2021-08-12 01:34:08'),
(8, 12, 8, NULL, 0, 'In context with the Mahayana Buddhism faith, the future Buddha is ___?', NULL, '4', 'Maitreya is a future Buddha. . According to scriptures, Maitreya will be a successor of the historic Sakyamuni Buddha, who in the Buddhist tradition is to appear on Earth, achieve complete enlightenment, and teach the pure dharma.', 1, 5, '3', 1, '2021-08-12 01:34:58', '2021-08-12 01:35:39'),
(9, 13, 10, NULL, 0, 'SCD, TEF, UGH, ____, WKL', NULL, '4', 'There are two alphabetical series here. The first series is with the first letters only: STUVW. The second series involves the remaining letters: CD, EF, GH, IJ, KL', 1, 6, '3', 1, '2021-08-12 02:45:24', '2021-08-12 02:46:05'),
(10, 13, 10, NULL, 0, 'FAG, GAF, HAI, IAH, ____', NULL, '4', 'The middle letters are static, so concentrate on the first and third letters. The series involves an alphabetical order with a reversal of the letters. The first letters are in alphabetical order: F, G, H, I , J. The second and fourth segments are reversals of the first and third segments. The missing segment begins with a new letter.', 1, 6, '1', 1, '2021-08-12 02:47:06', '2021-08-12 02:47:57'),
(11, 13, 10, NULL, 0, 'ELFA, GLHA, ILJA, _____, MLNA', NULL, '4', 'The second and forth letters in the series, L and A, are static. The first and third letters consist of an alphabetical order beginning with the letter E.', 1, 6, '4', 1, '2021-08-12 02:49:47', '2021-08-12 02:50:23'),
(12, 13, 10, NULL, 1, 'CMM, EOO, GQQ, _____, KUU', NULL, '4', 'GRR', 1, 6, '3', 1, '2021-08-12 04:10:13', '2021-08-12 04:11:04'),
(13, 13, 10, NULL, 0, 'QPO, NML, KJI, _____, EDC', NULL, '4', 'This series consists of letters in a reverse alphabetical order.', 1, 6, '1', 1, '2021-08-12 04:21:41', '2021-08-12 04:22:21'),
(14, 13, 10, NULL, 0, 'A candidate attempted 12 questions and secured full marks in all of them. If he obtained 60% in the test and all questions carried equal marks, then what is the number of questions in the test?', NULL, '4', 'demo', 1, 6, '3', 1, '2021-08-19 23:11:18', '2021-08-19 23:34:25'),
(15, 13, 10, NULL, 0, 'A cuboid has six sides of different colours. The red side is opposite to black. The blue side is adjacent to white. The brown side is adjacent to blue. The red side is face down. Which one of the following would be the opposite to brown?', NULL, '4', 'demo', 1, 6, '3', 1, '2021-08-19 23:58:56', '2021-08-20 00:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `question_level`
--

CREATE TABLE `question_level` (
  `id` int(20) NOT NULL,
  `question_level_name` varchar(100) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_level`
--

INSERT INTO `question_level` (`id`, `question_level_name`, `status`, `created_at`) VALUES
(1, 'Easy', 1, '2021-08-07 04:30:30'),
(2, 'Medium', 1, '2021-08-07 04:35:30'),
(3, 'Hard', 1, '2021-08-07 04:35:30'),
(4, 'Challengers', 1, '2021-08-07 04:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `question_pattern`
--

CREATE TABLE `question_pattern` (
  `id` int(20) NOT NULL,
  `question_pattern_name` varchar(150) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_pattern`
--

INSERT INTO `question_pattern` (`id`, `question_pattern_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MCQ', 1, '2021-08-07 06:58:02', '2021-08-07 06:58:02'),
(2, 'Coading', 1, '2021-08-07 06:58:19', '2021-08-07 06:58:19'),
(3, 'MCQ + Coading', 1, '2021-08-07 06:58:22', '2021-08-07 06:58:22'),
(4, 'Email writing', 1, '2021-08-07 06:59:17', '2021-08-07 06:59:17'),
(5, 'Re arranging', 1, '2021-08-07 06:59:37', '2021-08-07 06:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `save__answers`
--

CREATE TABLE `save__answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_id` tinyint(4) NOT NULL,
  `Select_option` tinyint(4) DEFAULT NULL,
  `correct_answer` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `save__answers`
--

INSERT INTO `save__answers` (`id`, `user_id`, `test_id`, `question_id`, `Select_option`, `correct_answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 1, NULL, 2, 1, '2021-08-19 01:14:54', '2021-08-19 01:14:54'),
(2, 3, 3, 2, NULL, 4, 1, '2021-08-19 01:14:54', '2021-08-19 01:14:54'),
(3, 3, 3, 5, 2, 1, 1, '2021-08-19 01:14:54', '2021-08-19 01:14:54'),
(4, 3, 3, 6, 2, 3, 1, '2021-08-19 01:14:54', '2021-08-19 01:14:54'),
(5, 3, 3, 7, NULL, 4, 1, '2021-08-19 01:14:54', '2021-08-19 01:14:54'),
(6, 3, 3, 8, NULL, 3, 1, '2021-08-19 01:14:54', '2021-08-19 01:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `semisters`
--

CREATE TABLE `semisters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semister_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semisters`
--

INSERT INTO `semisters` (`id`, `semister_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1 st', 1, '2021-07-30 04:39:41', '2021-07-30 04:47:48'),
(4, '2 nd', 1, '2021-07-30 04:54:39', '2021-07-30 04:54:39'),
(5, '3 rd', 1, '2021-07-30 04:54:59', '2021-07-30 23:54:14'),
(6, '5 th', 1, '2021-07-31 01:59:23', '2021-07-31 01:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `standerds`
--

CREATE TABLE `standerds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `standerd_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `standerds`
--

INSERT INTO `standerds` (`id`, `standerd_name`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Primary', 1, '2021-07-30 02:37:01', '2021-07-30 02:45:11'),
(5, 'Jr. KG', 1, '2021-07-30 02:37:09', '2021-07-30 23:54:45'),
(6, '3', 1, '2021-07-30 02:37:15', '2021-07-30 02:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semister_id` tinyint(4) DEFAULT NULL,
  `course_id` tinyint(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `semister_id`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maths', 1, 4, 1, '2021-07-30 05:47:37', '2021-07-30 05:47:37'),
(2, 'English', 1, 4, 1, '2021-07-30 05:56:42', '2021-07-30 05:56:42'),
(9, 'Current Affairs', 4, 6, 1, '2021-08-06 00:16:33', '2021-08-06 00:16:33'),
(10, 'Engineering physics', 5, 2, 1, '2021-08-07 00:07:28', '2021-08-07 00:10:33'),
(12, 'Ancient Indian History', NULL, NULL, 1, '2021-08-12 01:23:50', '2021-08-12 01:23:50'),
(13, 'Reasoning', NULL, NULL, 1, '2021-08-12 02:37:54', '2021-08-12 02:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `technical_skills`
--

CREATE TABLE `technical_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `tech_skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobbies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_object` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technical_skills`
--

INSERT INTO `technical_skills` (`id`, `user_id`, `tech_skill`, `linkedin_link`, `achievement`, `hobbies`, `career_object`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'demo', 'demo', 'demo', 'demo', 'demo', 1, '2021-08-19 07:11:58', '2021-08-19 07:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_type_id` int(20) DEFAULT NULL,
  `test_name_id` int(20) DEFAULT NULL,
  `test_instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` tinyint(20) DEFAULT NULL,
  `semester_id` tinyint(20) DEFAULT NULL,
  `program_name_id` int(100) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_level` int(10) DEFAULT NULL,
  `question_pattern` int(10) DEFAULT NULL,
  `total_question` int(255) DEFAULT NULL,
  `total_marks` int(255) DEFAULT NULL,
  `mark_per_question` int(100) DEFAULT 1,
  `hours` int(50) DEFAULT NULL,
  `minute` int(50) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `exam_time` time DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `test_name`, `test_type_id`, `test_name_id`, `test_instruction`, `branch_id`, `semester_id`, `program_name_id`, `description`, `question_level`, `question_pattern`, `total_question`, `total_marks`, `mark_per_question`, `hours`, `minute`, `exam_date`, `exam_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Practice', 2, NULL, 'test', 4, 4, 0, 'test', 3, 1, 10, 10, 1, 1, 0, '2021-08-10', '15:07:00', 1, '2021-08-09 04:07:44', '2021-08-16 07:41:42'),
(2, 'Ancient Indian History', 2, NULL, 'test2', 3, 4, 0, 'test', 3, 1, 10, 10, 1, 1, 0, '2021-08-12', '15:09:00', 1, '2021-08-09 04:09:23', '2021-08-09 04:09:23'),
(3, 'practice Test demo 3', 2, 4, 'demo', NULL, 4, 1, 'demo', NULL, 1, 50, 50, 2, 1, 0, '2021-08-12', '10:00:00', 1, '2021-08-10 06:56:41', '2021-08-10 06:56:41'),
(4, 'practice Test demo 4', 2, 4, 'demo', NULL, 4, 1, 'demo', NULL, 1, 50, 50, 2, 1, 0, '2021-08-12', '10:00:00', 1, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(5, 'practice test 5', 2, 4, 'demo test', NULL, 4, 1, 'demo test', NULL, 1, 10, 10, 2, 1, 0, '2021-08-13', '10:00:00', 1, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(6, 'demo 16-08`', 2, 4, 'demo', NULL, 4, 1, 'demo', NULL, NULL, 50, 50, NULL, 1, 30, NULL, NULL, 1, '2021-08-16 07:32:36', '2021-08-16 07:32:36'),
(7, 'desmo18', 1, 4, 'demo 18', NULL, 4, 1, 'demo 18', NULL, 1, 20, 20, NULL, 1, 0, NULL, NULL, 1, '2021-08-18 04:17:06', '2021-08-18 04:17:06'),
(8, 'test demo18', 1, 1, 'demo', NULL, 4, 2, 'demo', NULL, 1, 50, 100, 5, 3, 0, NULL, NULL, 1, '2021-08-18 04:28:47', '2021-08-18 05:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `test_branch`
--

CREATE TABLE `test_branch` (
  `id` int(50) NOT NULL,
  `test_id` int(100) DEFAULT NULL,
  `branch_id` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_branch`
--

INSERT INTO `test_branch` (`id`, `test_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 3, 3, '2021-08-10 06:56:42', '2021-08-10 06:56:42'),
(2, 3, 4, '2021-08-10 06:56:42', '2021-08-10 06:56:42'),
(3, 4, 3, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(4, 4, 4, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(5, 5, 3, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(6, 6, 3, '2021-08-16 07:32:37', '2021-08-16 07:32:37'),
(7, 6, 4, '2021-08-16 07:32:37', '2021-08-16 07:32:37'),
(8, 8, 3, '2021-08-18 04:28:48', '2021-08-18 04:28:48'),
(9, 8, 4, '2021-08-18 04:28:48', '2021-08-18 04:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `test_chapter`
--

CREATE TABLE `test_chapter` (
  `id` int(50) NOT NULL,
  `test_id` int(50) DEFAULT NULL,
  `chapter_id` int(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_chapter`
--

INSERT INTO `test_chapter` (`id`, `test_id`, `chapter_id`, `created_at`, `updated_at`) VALUES
(4, 3, 6, '2021-08-11 01:30:40', '2021-08-11 01:30:40'),
(5, 3, 1, '2021-08-11 01:30:40', '2021-08-11 01:30:40'),
(6, 3, 4, '2021-08-11 01:30:40', '2021-08-11 01:30:40'),
(7, 3, 8, '2021-08-11 01:30:40', '2021-08-11 01:30:40'),
(8, 3, 5, '2021-08-11 01:30:40', '2021-08-11 01:30:40'),
(9, 5, 1, '2021-08-12 04:28:47', '2021-08-12 04:28:47'),
(10, 5, 4, '2021-08-12 04:28:48', '2021-08-12 04:28:48'),
(11, 5, 10, '2021-08-12 04:28:48', '2021-08-12 04:28:48'),
(12, 8, 8, '2021-08-18 04:58:28', '2021-08-18 04:58:28'),
(13, 8, 6, '2021-08-18 04:58:28', '2021-08-18 04:58:28'),
(14, 8, 2, '2021-08-18 04:58:28', '2021-08-18 04:58:28'),
(15, 8, 8, '2021-08-18 05:07:00', '2021-08-18 05:07:00'),
(16, 8, 6, '2021-08-18 05:07:00', '2021-08-18 05:07:00'),
(17, 8, 2, '2021-08-18 05:07:00', '2021-08-18 05:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `test_college`
--

CREATE TABLE `test_college` (
  `id` int(50) NOT NULL,
  `test_id` int(50) DEFAULT NULL,
  `college_id` int(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_college`
--

INSERT INTO `test_college` (`id`, `test_id`, `college_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-08-09 04:07:44', '2021-08-09 04:07:44'),
(2, 2, 2, '2021-08-09 04:09:23', '2021-08-09 04:09:23'),
(3, 2, 3, '2021-08-09 04:09:23', '2021-08-09 04:09:23'),
(4, 3, 1, '2021-08-10 06:56:41', '2021-08-10 06:56:41'),
(5, 3, 2, '2021-08-10 06:56:41', '2021-08-10 06:56:41'),
(6, 4, 1, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(7, 4, 2, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(8, 5, 1, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(9, 5, 2, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(10, 6, 1, '2021-08-16 07:32:36', '2021-08-16 07:32:36'),
(11, 6, 2, '2021-08-16 07:32:36', '2021-08-16 07:32:36'),
(12, 7, 1, '2021-08-18 04:17:06', '2021-08-18 04:17:06'),
(13, 8, 2, '2021-08-18 04:28:47', '2021-08-18 04:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `test_course`
--

CREATE TABLE `test_course` (
  `id` int(50) NOT NULL,
  `test_id` int(50) DEFAULT NULL,
  `course_id` int(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_course`
--

INSERT INTO `test_course` (`id`, `test_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-08-09 04:07:44', '2021-08-09 04:07:44'),
(2, 2, 3, '2021-08-09 04:09:23', '2021-08-09 04:09:23'),
(3, 3, 2, '2021-08-10 06:56:42', '2021-08-10 06:56:42'),
(4, 4, 2, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(5, 5, 2, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(6, 5, 3, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(7, 6, 2, '2021-08-16 07:32:36', '2021-08-16 07:32:36'),
(8, 7, 3, '2021-08-18 04:17:06', '2021-08-18 04:17:06'),
(9, 8, 2, '2021-08-18 04:28:47', '2021-08-18 04:28:47'),
(10, 8, 3, '2021-08-18 04:28:47', '2021-08-18 04:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `test_name`
--

CREATE TABLE `test_name` (
  `id` int(20) NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `status` int(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_name`
--

INSERT INTO `test_name` (`id`, `test_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Daily Assessment', 1, '2021-08-07 12:36:34', '2021-08-07 12:36:34'),
(2, 'Pre assessment', 1, '2021-08-07 12:37:42', '2021-08-07 12:37:42'),
(3, 'Post Assessment', 1, '2021-08-07 12:37:55', '2021-08-07 12:37:55'),
(4, 'Practice Test', 1, '2021-08-07 12:38:08', '2021-08-07 12:38:08'),
(5, 'CST', 1, '2021-08-07 12:38:26', '2021-08-07 12:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `test_question`
--

CREATE TABLE `test_question` (
  `id` int(20) NOT NULL,
  `test_id` int(100) DEFAULT NULL,
  `question_id` int(200) DEFAULT NULL,
  `status` int(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_question`
--

INSERT INTO `test_question` (`id`, `test_id`, `question_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2021-08-09 05:46:51', '2021-08-09 05:46:51'),
(2, 2, 1, 1, '2021-08-09 05:57:37', '2021-08-09 05:57:37'),
(3, 1, 3, 1, '2021-08-09 06:28:12', '2021-08-09 06:28:12'),
(4, 1, 4, 1, '2021-08-09 06:28:12', '2021-08-09 06:28:12'),
(5, 3, 1, 1, '2021-08-11 01:50:40', '2021-08-11 01:50:40'),
(6, 3, 2, 1, '2021-08-11 01:50:40', '2021-08-11 01:50:40'),
(7, 3, 5, 1, '2021-08-11 01:50:40', '2021-08-11 01:50:40'),
(8, 3, 6, 1, '2021-08-11 01:50:40', '2021-08-11 01:50:40'),
(9, 3, 7, 1, '2021-08-11 01:50:40', '2021-08-11 01:50:40'),
(10, 3, 8, 1, '2021-08-11 01:50:40', '2021-08-11 01:50:40'),
(11, 5, 2, 1, '2021-08-12 04:29:28', '2021-08-12 04:29:28'),
(12, 5, 9, 1, '2021-08-12 04:29:28', '2021-08-12 04:29:28'),
(13, 5, 10, 1, '2021-08-12 04:29:28', '2021-08-12 04:29:28'),
(14, 5, 11, 1, '2021-08-12 04:29:28', '2021-08-12 04:29:28'),
(15, 5, 12, 1, '2021-08-12 04:29:28', '2021-08-12 04:29:28'),
(16, 5, 13, 1, '2021-08-12 04:29:28', '2021-08-12 04:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `test_section`
--

CREATE TABLE `test_section` (
  `id` int(20) NOT NULL,
  `test_section_name` varchar(255) DEFAULT NULL,
  `Priority` int(11) DEFAULT 99,
  `status` int(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_section`
--

INSERT INTO `test_section` (`id`, `test_section_name`, `Priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quantitative Aptitude', 1, 1, '2021-08-07 12:41:30', '2021-08-07 12:41:30'),
(2, 'Verbal Ability', 3, 1, '2021-08-07 12:41:49', '2021-08-07 12:41:49'),
(3, 'Analytical Ability', 2, 0, '2021-08-07 12:42:02', '2021-08-09 00:15:06'),
(5, 'History', 99, 1, '2021-08-12 01:26:57', '2021-08-12 01:26:57'),
(6, 'Logical Reasoning', 7, 1, '2021-08-12 02:35:57', '2021-08-12 02:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `test_subject`
--

CREATE TABLE `test_subject` (
  `id` int(50) NOT NULL,
  `test_id` int(50) DEFAULT NULL,
  `subject_id` int(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_subject`
--

INSERT INTO `test_subject` (`id`, `test_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-08-07 04:19:11', '2021-08-07 04:19:11'),
(2, 1, 2, '2021-08-07 04:19:11', '2021-08-07 04:19:11'),
(3, 2, 1, '2021-08-09 03:37:31', '2021-08-09 03:37:31'),
(4, 2, 2, '2021-08-09 03:37:31', '2021-08-09 03:37:31'),
(5, 1, 1, '2021-08-09 04:07:44', '2021-08-09 04:07:44'),
(6, 2, 9, '2021-08-09 04:09:23', '2021-08-09 04:09:23'),
(7, 3, 9, '2021-08-10 06:56:42', '2021-08-10 06:56:42'),
(8, 3, 6, '2021-08-10 06:56:42', '2021-08-10 06:56:42'),
(9, 3, 1, '2021-08-10 06:56:42', '2021-08-10 06:56:42'),
(10, 4, 9, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(11, 4, 6, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(12, 4, 10, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(13, 5, 1, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(14, 5, 13, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(15, 6, 9, '2021-08-16 07:32:37', '2021-08-16 07:32:37'),
(16, 6, 10, '2021-08-16 07:32:37', '2021-08-16 07:32:37'),
(17, 6, 2, '2021-08-16 07:32:37', '2021-08-16 07:32:37'),
(18, 8, 12, '2021-08-18 04:28:47', '2021-08-18 04:28:47'),
(19, 8, 9, '2021-08-18 04:28:47', '2021-08-18 04:28:47'),
(20, 8, 10, '2021-08-18 04:28:48', '2021-08-18 04:28:48'),
(21, 8, 2, '2021-08-18 04:28:48', '2021-08-18 04:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `test_tb_section`
--

CREATE TABLE `test_tb_section` (
  `id` int(50) NOT NULL,
  `test_id` int(100) DEFAULT NULL,
  `test_section_id` int(100) DEFAULT NULL,
  `section_time` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_tb_section`
--

INSERT INTO `test_tb_section` (`id`, `test_id`, `test_section_id`, `section_time`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 10, '2021-08-10 06:58:02', '2021-08-11 01:30:40'),
(2, 3, 2, 20, '2021-08-10 06:58:02', '2021-08-11 01:30:40'),
(3, 3, 5, 20, '2021-08-10 06:58:02', '2021-08-11 01:30:40'),
(4, 5, 1, 15, '2021-08-12 04:28:26', '2021-08-12 04:28:48'),
(5, 5, 6, 15, '2021-08-12 04:28:26', '2021-08-12 04:28:48'),
(8, 8, 1, 10, '2021-08-18 04:28:48', '2021-08-18 05:07:00'),
(9, 8, 2, 20, '2021-08-18 04:28:48', '2021-08-18 05:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE `test_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_types`
--

INSERT INTO `test_types` (`id`, `test_type_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Class Room Test ', 1, NULL, NULL),
(2, 'E-Learing Test ', 1, NULL, NULL),
(3, 'CST ', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(20) NOT NULL DEFAULT 2 COMMENT '1 admin user 2 Student',
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standers` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1 COMMENT 'Active : 1 inactive : 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `l_name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `user_type`, `gender`, `standers`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 'admin@gmail.com', NULL, NULL, '$2y$10$.SPPmQbIh.L2L.eig6UIfOqp3NM5YDr2C9M7uOLQ9Hdb.thjdPl/2', '5ezWznRj4fWcyEfYuI7nJDG52cMqFZLqrGOzahlPuFwW8AJ8s7Zhgyhzvn21', 1, NULL, NULL, 1, '2021-07-04 05:23:21', '2021-07-04 05:23:21'),
(3, 'Dhananjay', 'Sawant', 'student@gmail.com', '9876543210', NULL, '$2y$10$w24PG7/VcghhKFZfHszFR.N4lRuVPtw9hmA3KSTl0i4nYNu7JcG8a', 'DAC2olL8mjI5bAqLzBZu2mi3MpNegIgdAsVDl0bVbZAruT825foQBzyK0Jdx', 2, '1', 'UG', 1, '2021-07-08 04:33:21', '2021-08-19 02:34:58'),
(4, 'rahul', NULL, 'student1@gmail.com', NULL, NULL, '$2y$10$nH0Ba7P/gZIZqOW6dLC8SOVnhQ5p0Nv0LQqqpNRwEqL.Drjr1M64C', NULL, 2, NULL, NULL, 1, '2021-07-31 04:18:00', '2021-08-19 04:53:10'),
(5, 'demo', NULL, 'demo@gmail.com', NULL, NULL, '$2y$10$pi8/wl09oeckbrfLY4xnCeUMZPDpin7aiZwBHhp2XxSpS4UvK3dwW', 'Qug8JTHTyrRDvY8Y5h0G8JNlIxLgNZA3RDqqRSxtDnMk52EoJWDZMwqYAuDv', 2, NULL, NULL, 1, '2021-07-31 05:11:47', '2021-07-31 05:11:47'),
(8, 'nikhil', NULL, 'dhananjaydemo@gmail.com', NULL, NULL, '$2y$10$12v5W./XTBt0dgtDSozdhOE369PJN5coKEJwIJeNAGIQOeRKftb1.', NULL, 2, NULL, NULL, 1, '2021-08-04 02:38:05', '2021-08-04 02:38:05'),
(9, 'sushil', NULL, 'dhananjaydemo1@gmail.com', NULL, NULL, '$2y$10$ZgUPheKIgef.cJVB/YIhfOwLoFJ36TAa16K2sq25iLI5bQxLTuIEa', NULL, 2, NULL, NULL, 1, '2021-08-04 02:53:33', '2021-08-06 06:38:42'),
(11, 'saurabh', NULL, 'dhananjaydemo2@gmail.com', NULL, NULL, '$2y$10$XPK3quXQDMLFe852rgVqT.HL5d.ld3Rv0eA.z35XO4jjB4MyJS5.K', NULL, 2, NULL, NULL, 1, '2021-08-04 02:55:10', '2021-08-06 06:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `dob` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semister` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_kyc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `dob`, `image`, `address`, `city`, `pin_code`, `state`, `country`, `semister`, `role_id`, `status`, `created_at`, `updated_at`, `mother_name`, `father_name`, `occupation`, `kyc_name`, `upload_kyc`, `blood_group`) VALUES
(2, 3, '2021-07-01', NULL, 'asdfafafg', NULL, NULL, NULL, NULL, '4', NULL, 1, '2021-07-31 04:53:23', '2021-07-31 04:53:23', 'dgsdgf', 'dsfadsfgsad', 'dfg', '41541', NULL, 'A +');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_profile_id` int(50) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `about_me` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_tests`
--

CREATE TABLE `user_tests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `Test_status` int(11) DEFAULT 1 COMMENT '1-Test Completed',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tests`
--

INSERT INTO `user_tests` (`id`, `user_id`, `test_id`, `Test_status`, `created_at`, `updated_at`) VALUES
(9, 3, 3, 1, '2021-08-19 01:14:54', '2021-08-19 01:14:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics_details`
--
ALTER TABLE `academics_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_projects`
--
ALTER TABLE `academic_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education__details`
--
ALTER TABLE `education__details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graduation_sem`
--
ALTER TABLE `graduation_sem`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `interships`
--
ALTER TABLE `interships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `program_name`
--
ALTER TABLE `program_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_level`
--
ALTER TABLE `question_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_pattern`
--
ALTER TABLE `question_pattern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save__answers`
--
ALTER TABLE `save__answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semisters`
--
ALTER TABLE `semisters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standerds`
--
ALTER TABLE `standerds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_skills`
--
ALTER TABLE `technical_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_branch`
--
ALTER TABLE `test_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_chapter`
--
ALTER TABLE `test_chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_college`
--
ALTER TABLE `test_college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_course`
--
ALTER TABLE `test_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_name`
--
ALTER TABLE `test_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_question`
--
ALTER TABLE `test_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_section`
--
ALTER TABLE `test_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_subject`
--
ALTER TABLE `test_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_tb_section`
--
ALTER TABLE `test_tb_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_types`
--
ALTER TABLE `test_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_profile_id`);

--
-- Indexes for table `user_tests`
--
ALTER TABLE `user_tests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics_details`
--
ALTER TABLE `academics_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `academic_projects`
--
ALTER TABLE `academic_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education__details`
--
ALTER TABLE `education__details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graduation_sem`
--
ALTER TABLE `graduation_sem`
  MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `interships`
--
ALTER TABLE `interships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `program_name`
--
ALTER TABLE `program_name`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `question_level`
--
ALTER TABLE `question_level`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question_pattern`
--
ALTER TABLE `question_pattern`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `save__answers`
--
ALTER TABLE `save__answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semisters`
--
ALTER TABLE `semisters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `standerds`
--
ALTER TABLE `standerds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `technical_skills`
--
ALTER TABLE `technical_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test_branch`
--
ALTER TABLE `test_branch`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `test_chapter`
--
ALTER TABLE `test_chapter`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `test_college`
--
ALTER TABLE `test_college`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `test_course`
--
ALTER TABLE `test_course`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test_name`
--
ALTER TABLE `test_name`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `test_question`
--
ALTER TABLE `test_question`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `test_section`
--
ALTER TABLE `test_section`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test_subject`
--
ALTER TABLE `test_subject`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `test_tb_section`
--
ALTER TABLE `test_tb_section`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_profile_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tests`
--
ALTER TABLE `user_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
