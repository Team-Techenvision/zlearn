-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 02:41 PM
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
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(20) NOT NULL,
  `material_name` varchar(250) DEFAULT NULL,
  `subject_id` int(50) DEFAULT NULL,
  `chapter_id` int(50) DEFAULT NULL,
  `attachment_type` varchar(100) DEFAULT NULL,
  `pdf_link` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `material_name`, `subject_id`, `chapter_id`, `attachment_type`, `pdf_link`, `video_link`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'demo', 2, NULL, '1', 'images/material/pdf1629704493.pdf', NULL, 'demo', 1, '2021-08-23 07:41:33', '2021-08-23 07:41:33'),
(2, 'demo2', 9, NULL, '0', NULL, 'https://youtu.be/DG0C3Tntl1M', 'demo 2', 1, '2021-08-23 07:44:37', '2021-08-23 07:44:37');

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
(7, 3, 3, 1, 2, 2, 1, '2021-08-27 09:44:53', '2021-08-26 21:48:19'),
(8, 3, 3, 2, 2, 4, 1, '2021-08-27 09:44:53', '2021-08-26 21:48:23'),
(9, 3, 3, 5, NULL, 1, 1, '2021-08-27 09:44:53', '2021-08-27 09:44:53'),
(10, 3, 3, 6, NULL, 3, 1, '2021-08-27 09:44:53', '2021-08-27 09:44:53'),
(11, 3, 3, 7, NULL, 4, 1, '2021-08-27 09:44:53', '2021-08-27 09:44:53'),
(12, 3, 3, 8, NULL, 3, 1, '2021-08-27 09:44:53', '2021-08-27 09:44:53'),
(13, 3, 1, 2, NULL, 4, 1, '2021-08-27 10:28:55', '2021-08-27 10:28:55'),
(14, 3, 1, 3, NULL, 2, 1, '2021-08-27 10:28:55', '2021-08-27 10:28:55'),
(15, 3, 1, 4, NULL, 1, 1, '2021-08-27 10:28:55', '2021-08-27 10:28:55'),
(16, 3, 3, 1, NULL, 2, 1, '2021-08-27 11:48:26', '2021-08-27 11:48:26'),
(17, 3, 3, 2, NULL, 4, 1, '2021-08-27 11:48:26', '2021-08-27 11:48:26'),
(18, 3, 3, 5, NULL, 1, 1, '2021-08-27 11:48:26', '2021-08-27 11:48:26'),
(19, 3, 3, 6, NULL, 3, 1, '2021-08-27 11:48:26', '2021-08-27 11:48:26'),
(20, 3, 3, 7, NULL, 4, 1, '2021-08-27 11:48:26', '2021-08-27 11:48:26'),
(21, 3, 3, 8, NULL, 3, 1, '2021-08-27 11:48:26', '2021-08-27 11:48:26');

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
(1, 'Practice edit', 1, 2, 'test edit', 4, 5, 2, 'test', 3, 3, 20, 20, 2, 0, 50, '2021-08-25', '15:07:00', 1, '2021-08-09 04:07:44', '2021-08-24 12:39:57'),
(3, 'practice Test demo 3', 2, 4, 'demo', NULL, 4, 1, 'demo', NULL, 1, 50, 50, 2, 1, 0, '2021-08-12', '10:00:00', 1, '2021-08-10 06:56:41', '2021-08-26 08:06:36'),
(10, 'daily assesment test', 2, 1, 'demo\r\ndemo', NULL, 5, 2, 'demo\r\ndemo', NULL, 1, 45, 60, NULL, 1, 0, NULL, NULL, 1, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(11, 'pre assesment 3', 1, 2, 'demo', NULL, 5, 1, 'demo', NULL, 1, 45, 90, 2, 1, 45, '2021-08-25', '01:21:00', 1, '2021-08-24 04:23:22', '2021-08-24 05:54:25'),
(15, 'semester test', 1, 1, 'demo', NULL, NULL, 1, 'demo', NULL, 1, 10, 50, NULL, 0, 50, NULL, NULL, 1, '2021-08-26 04:46:34', '2021-08-26 04:46:34');

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
(7, 1, 4, '2021-08-16 07:32:37', '2021-08-16 07:32:37'),
(8, 8, 3, '2021-08-18 04:28:48', '2021-08-18 04:28:48'),
(9, 8, 4, '2021-08-18 04:28:48', '2021-08-18 04:28:48'),
(10, 9, 3, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(11, 10, 3, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(12, 11, 3, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(13, 11, 4, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(14, 12, 3, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(15, 12, 4, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(16, 13, 3, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(17, 13, 4, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(18, 14, 3, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(19, 14, 4, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(20, 15, 3, '2021-08-26 04:46:35', '2021-08-26 04:46:35'),
(21, 15, 4, '2021-08-26 04:46:35', '2021-08-26 04:46:35');

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
(17, 8, 2, '2021-08-18 05:07:00', '2021-08-18 05:07:00'),
(18, 11, 6, '2021-08-24 05:06:16', '2021-08-24 05:06:16'),
(19, 11, 9, '2021-08-24 05:08:15', '2021-08-24 05:08:15'),
(20, 11, 6, '2021-08-24 05:28:06', '2021-08-24 05:28:06'),
(21, 11, 9, '2021-08-24 05:45:22', '2021-08-24 05:45:22'),
(22, 11, 9, '2021-08-24 05:54:25', '2021-08-24 05:54:25');

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
(4, 3, 1, '2021-08-10 06:56:41', '2021-08-10 06:56:41'),
(5, 3, 2, '2021-08-10 06:56:41', '2021-08-10 06:56:41'),
(6, 4, 1, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(7, 4, 2, '2021-08-10 06:58:02', '2021-08-10 06:58:02'),
(8, 5, 1, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(9, 5, 2, '2021-08-12 04:28:26', '2021-08-12 04:28:26'),
(10, 6, 1, '2021-08-16 07:32:36', '2021-08-16 07:32:36'),
(11, 6, 2, '2021-08-16 07:32:36', '2021-08-16 07:32:36'),
(12, 7, 1, '2021-08-18 04:17:06', '2021-08-18 04:17:06'),
(13, 8, 2, '2021-08-18 04:28:47', '2021-08-18 04:28:47'),
(14, 9, 2, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(15, 10, 1, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(16, 10, 2, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(18, 11, 2, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(22, 12, 1, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(23, 12, 2, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(24, 13, 1, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(25, 13, 2, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(26, 14, 1, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(27, 14, 2, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(28, 15, 1, '2021-08-26 04:46:34', '2021-08-26 04:46:34'),
(29, 15, 2, '2021-08-26 04:46:34', '2021-08-26 04:46:34');

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
(10, 8, 3, '2021-08-18 04:28:47', '2021-08-18 04:28:47'),
(11, 9, 3, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(12, 10, 3, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(13, 11, 2, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(14, 12, 2, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(15, 12, 3, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(16, 13, 2, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(17, 13, 3, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(18, 14, 2, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(19, 14, 3, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(20, 15, 2, '2021-08-26 04:46:34', '2021-08-26 04:46:34'),
(21, 15, 3, '2021-08-26 04:46:34', '2021-08-26 04:46:34');

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
-- Table structure for table `test_semester`
--

CREATE TABLE `test_semester` (
  `id` bigint(100) NOT NULL,
  `test_id` bigint(255) DEFAULT NULL,
  `semester_id` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_semester`
--

INSERT INTO `test_semester` (`id`, `test_id`, `semester_id`, `created_at`, `updated_at`) VALUES
(7, 3, 6, '2021-08-27 09:39:58', '2021-08-27 09:39:58');

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
(21, 8, 2, '2021-08-18 04:28:48', '2021-08-18 04:28:48'),
(22, 9, 12, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(23, 9, 9, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(24, 9, 10, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(25, 10, 12, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(26, 10, 9, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(27, 10, 10, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(28, 10, 2, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(29, 10, 1, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(30, 10, 13, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(31, 11, 12, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(32, 11, 9, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(33, 11, 10, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(34, 11, 2, '2021-08-24 04:23:22', '2021-08-24 04:23:22'),
(35, 12, 12, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(36, 12, 9, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(37, 12, 10, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(38, 13, 12, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(39, 13, 9, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(40, 13, 10, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(41, 14, 12, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(42, 14, 9, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(43, 14, 10, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(44, 15, 12, '2021-08-26 04:46:34', '2021-08-26 04:46:34'),
(45, 15, 9, '2021-08-26 04:46:35', '2021-08-26 04:46:35'),
(46, 15, 10, '2021-08-26 04:46:35', '2021-08-26 04:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `test_tb_section`
--

CREATE TABLE `test_tb_section` (
  `id` int(50) NOT NULL,
  `test_id` int(100) DEFAULT NULL,
  `test_section_id` int(100) DEFAULT NULL,
  `section_time` int(100) DEFAULT NULL,
  `section_question` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_tb_section`
--

INSERT INTO `test_tb_section` (`id`, `test_id`, `test_section_id`, `section_time`, `section_question`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 10, 3, '2021-08-10 06:58:02', '2021-08-11 01:30:40'),
(2, 3, 2, 20, 3, '2021-08-10 06:58:02', '2021-08-11 01:30:40'),
(3, 3, 5, 20, 3, '2021-08-10 06:58:02', '2021-08-11 01:30:40'),
(4, 5, 1, 15, NULL, '2021-08-12 04:28:26', '2021-08-12 04:28:48'),
(5, 5, 6, 15, NULL, '2021-08-12 04:28:26', '2021-08-12 04:28:48'),
(8, 8, 1, 10, NULL, '2021-08-18 04:28:48', '2021-08-18 05:07:00'),
(9, 8, 2, 20, NULL, '2021-08-18 04:28:48', '2021-08-18 05:07:01'),
(10, 1, 1, 15, 10, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(11, 9, 2, NULL, NULL, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(12, 1, 5, 20, 20, '2021-08-23 07:55:52', '2021-08-23 07:55:52'),
(13, 10, 1, NULL, NULL, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(14, 10, 2, NULL, NULL, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(15, 10, 6, NULL, NULL, '2021-08-23 09:37:01', '2021-08-23 09:37:01'),
(16, 11, 1, 20, 10, '2021-08-24 04:23:22', '2021-08-24 05:54:25'),
(17, 11, 2, 20, 10, '2021-08-24 04:23:22', '2021-08-24 05:54:25'),
(18, 11, 5, 20, 20, '2021-08-24 04:23:22', '2021-08-24 05:54:25'),
(19, 11, 6, 45, 5, '2021-08-24 04:23:23', '2021-08-24 05:54:25'),
(20, 12, 1, NULL, NULL, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(21, 12, 2, NULL, NULL, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(22, 12, 5, NULL, NULL, '2021-08-26 04:42:10', '2021-08-26 04:42:10'),
(23, 13, 1, NULL, NULL, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(24, 13, 2, NULL, NULL, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(25, 13, 5, NULL, NULL, '2021-08-26 04:43:42', '2021-08-26 04:43:42'),
(26, 14, 1, NULL, NULL, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(27, 14, 2, NULL, NULL, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(28, 14, 5, NULL, NULL, '2021-08-26 04:45:33', '2021-08-26 04:45:33'),
(29, 15, 1, NULL, NULL, '2021-08-26 04:46:35', '2021-08-26 04:46:35'),
(30, 15, 2, NULL, NULL, '2021-08-26 04:46:35', '2021-08-26 04:46:35'),
(31, 15, 5, NULL, NULL, '2021-08-26 04:46:35', '2021-08-26 04:46:35');

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
(1, 'admin', NULL, 'admin@gmail.com', NULL, NULL, '$2y$10$.SPPmQbIh.L2L.eig6UIfOqp3NM5YDr2C9M7uOLQ9Hdb.thjdPl/2', 'YysNZQA0VISzwWmGuOFpGrZvMUrCRqTfQnoP34Z6V4JvqZN5h5OMrvlvft8b', 1, NULL, NULL, 1, '2021-07-04 05:23:21', '2021-07-04 05:23:21'),
(3, 'Dhananjay', 'Sawant', 'student@gmail.com', '9876543210', NULL, '$2y$10$w24PG7/VcghhKFZfHszFR.N4lRuVPtw9hmA3KSTl0i4nYNu7JcG8a', 'VxLsVKfJMPmK1tUcRWSwNRf4HhWycKZNlpQLXj0jehdBpyfHvFx8THNlkFka', 2, '1', 'UG', 1, '2021-07-08 04:33:21', '2021-08-19 02:34:58'),
(4, 'rahul', NULL, 'student1@gmail.com', NULL, NULL, '$2y$10$nH0Ba7P/gZIZqOW6dLC8SOVnhQ5p0Nv0LQqqpNRwEqL.Drjr1M64C', NULL, 2, NULL, NULL, 1, '2021-07-31 04:18:00', '2021-08-19 04:53:10'),
(5, 'demo', NULL, 'demo@gmail.com', NULL, NULL, '$2y$10$pi8/wl09oeckbrfLY4xnCeUMZPDpin7aiZwBHhp2XxSpS4UvK3dwW', 'Qug8JTHTyrRDvY8Y5h0G8JNlIxLgNZA3RDqqRSxtDnMk52EoJWDZMwqYAuDv', 2, NULL, NULL, 1, '2021-07-31 05:11:47', '2021-07-31 05:11:47'),
(8, 'nikhil', NULL, 'dhananjaydemo@gmail.com', NULL, NULL, '$2y$10$12v5W./XTBt0dgtDSozdhOE369PJN5coKEJwIJeNAGIQOeRKftb1.', NULL, 2, NULL, NULL, 1, '2021-08-04 02:38:05', '2021-08-04 02:38:05'),
(9, 'sushil', NULL, 'dhananjaydemo1@gmail.com', NULL, NULL, '$2y$10$ZgUPheKIgef.cJVB/YIhfOwLoFJ36TAa16K2sq25iLI5bQxLTuIEa', NULL, 2, NULL, NULL, 1, '2021-08-04 02:53:33', '2021-08-06 06:38:42'),
(11, 'saurabh', NULL, 'dhananjaydemo2@gmail.com', NULL, NULL, '$2y$10$XPK3quXQDMLFe852rgVqT.HL5d.ld3Rv0eA.z35XO4jjB4MyJS5.K', NULL, 2, NULL, NULL, 1, '2021-08-04 02:55:10', '2021-08-06 06:38:49'),
(984, 'Ananya K N', NULL, '1999anukn@gmail.com', '9535739725', NULL, '$2y$10$Zwmr44B0Sxrmx.5Aso8a8eJLHkldiUx22DkBdm0ujsw3P1J6SrnKq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(985, 'SURYA H', NULL, '23suryah@gmail.com', '7349706037', NULL, '$2y$10$bERRHkB0iFYKGL4EnaB.bOAKKlT3U8/h9wJMR2S3/uAsXjvo/bEqK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(986, 'Kavana V', NULL, '973152g@gmail.com', '8296529355', NULL, '$2y$10$AQCR4qQVKwOo/p7vP/HlC.9TXxIazgpDs9hOeRxUjUCyxjbiXPF7e', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(987, 'Abhishi B M', NULL, 'abhishibm608@gmail.com', '9480215881', NULL, '$2y$10$xqB5s5IxIbYJlnJBCT7EFe0/AFIpe7QQstiZzRsQWS82M31axK5sC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(988, 'Abu Sufiyan K', NULL, 'abusufiyank60@gmail.com', '6363249363', NULL, '$2y$10$vferw9BS4ejITXUH.XCdjeX8dIKpUhPIzzNmPKk.AxUrHXquoRUf6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(989, 'Adithi S Maiya', NULL, 'adithismaiya@gmail.com', '6361808115', NULL, '$2y$10$Ti7w9HqcDAwzaJaXcNwXOONfNGktPf9Hj0x1prr8hDqaJK01rGgfu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(990, 'ADRUSHYA K M', NULL, 'adrushyakm121@gmail.com', '9482688395', NULL, '$2y$10$MfUPUG65DvjdDifXWUBxPOsgeMXgx3Vd7jbBfbKS7ZNi4.6f85Bxm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(991, 'Faisal ahamed', NULL, 'ahamedfaisal318@gmail.com', '8618186579', NULL, '$2y$10$L2G.6tCt6ZR9COdV7.hpFe1YhnvzK69yMBUOx2onYrDl0D8U/47WS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(992, 'Aikya M H', NULL, 'aikyaharish@gmail.com', '7022171991', NULL, '$2y$10$0XcZV80x3c3eb.E43g4EU.AuliK1qNEiHQzUTTib/gPl5BUs7D99e', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:18', '2021-08-23 11:39:18'),
(993, 'Aishwarya R', NULL, 'aishaishu90032@gmail.com', '9900148459', NULL, '$2y$10$LozzvSd1M17cGX5Iqz97BuNNwFD3/phU0aX/T503XGmJJ52DVYFWW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(994, 'Aishwarya B N', NULL, 'aishwaryabn30@gmail.com', '9686247599', NULL, '$2y$10$N7GURIH09j29AK/nCJ7rBOLjQF5lwcTVqhpLVjh2aTSuKH5Fjvn/q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(995, 'Aishwarya S', NULL, 'aishwaryas9463@gmail.com', '8088359655', NULL, '$2y$10$2F7GvBv0DZHyPw1E51QtxOHddHReRtl8MUbphtLWYrDvI6I4NUQ.u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(996, 'Aisiri KS', NULL, 'aisiriks24@gmail.com', '9980032826', NULL, '$2y$10$gzB8Q3gQk.aLPSt1lBFaQ.skJxCbEfT6/9oIRY2USTt7BbsT1Mf9C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(997, 'Manoj Kumar B G', NULL, 'ajaymanoj012@gmail.com', '9945926258', NULL, '$2y$10$Cz/1iVLSUtm5W4jLwTGiA.6n0M1seiWi1hcdrbyy56wKfIAuRzBzS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(998, 'Akarsh R', NULL, 'akarshr1999@gmail.com', '7483284669', NULL, '$2y$10$8HfcWqJN13Xi3W6LAhYwdu9cuBMtzpd1A4hw7kNpe/xZFN8fU6XOm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(999, 'Akash HD', NULL, 'akashakashhuggi@gmail.com', '6363854751', NULL, '$2y$10$4CCn6K9ayKVNBONu7wD.3.hEfThWM/55eIMt6hSC6ZOSKtNMczdd2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(1000, 'Akash BS', NULL, 'akashravi9241@gmail.com', '7353357202', NULL, '$2y$10$/yxcY1zLrRhJkYtUdXL/UOsclWUOipOG.ls3sVQL9pOZSvdKYQHEK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(1001, 'AKHIL V G', NULL, 'akhilchan30@gmail.com', '7026791631', NULL, '$2y$10$tL7fLsdCu3CkO6VTJnIdWu.yF8RPozPY/SehdurcGjVAX6lMMhlOG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(1002, 'Akshatha M K', NULL, 'akshathamk16@gmail.com', '8105675812', NULL, '$2y$10$cAr63rhPvMu5CCUqG1K3uuVNwxy0rstW1uNXt5VsUuuyO69uvD8ga', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(1003, 'Akash A M', NULL, 'ama83195@gmail.com', '7892055961', NULL, '$2y$10$Ho3D1a5b0CLWVij5urEb7uVYc5i3iKRyw9NVQvseMhKfTOg8wDljO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(1004, 'Amar B M', NULL, 'amarbirur@gmail.com', '9900932553', NULL, '$2y$10$ehMzEv15nml0wlifA9Fq8OpeyYs254/6/ezVaL0jPoZtdJVGi4AWC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:19', '2021-08-23 11:39:19'),
(1005, 'Amsha BS', NULL, 'amshag38@gmail.com', '8088019479', NULL, '$2y$10$tNzLBuugDNGM6P3rSYEZ8e1EFM861pDlOmpM/9itxgejDIc5MgKFS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1006, 'Amulya C.N', NULL, 'amulyacn20@gmail.com', '8971160949', NULL, '$2y$10$H3iv418XzNf1p.V09V0uY.T9/LhpFXgswlXSvLWZizkLd.ErYzbP6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1007, 'Amulya D M', NULL, 'amulyagowda26@gmail.com', '9108677144', NULL, '$2y$10$f9Geh9iWLQytjfj1VLJQ3OHNrXxhETiqFFSdpqRAr3TvptO9fFGde', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1008, 'Amulya.M', NULL, 'amulyam651@gmail.com', '6361414413', NULL, '$2y$10$GuoxmtCnlj8xrzbz0PWVyOoJx1QFI2A/oVlNVqbD.HgpzkDe9rAXe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1009, 'Ananya J.S', NULL, 'ananyasathish17@gmail.com', '7019908680', NULL, '$2y$10$rxnNfafJ/SxMF.GxNG9t0.lUXmW6VWnMBVSzYBaTnLwFAXqdo5D8G', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1010, 'GEETHANJALI R', NULL, 'anjaligeetha185@gmail.com', '8073952423', NULL, '$2y$10$cXOseKR2JXs8DNyReRQnKOuv8lhfHAZtcQZYQCyaZlI4B0kdI4t1S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1011, 'AKSHATHA.B.S', NULL, 'ankithaanu300@gmail.com', '7975746233', NULL, '$2y$10$C3kSZWooVUluPPpR3ItYZeIL4Kuu8nUg.ga86vdj6CgqY/uIKuWJC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1012, 'Ankitha S', NULL, 'ankithapoojari07@gmail.com', '7349162700', NULL, '$2y$10$wQSzYsq3BH8sfZyGukBHTOG.lYE.J3bivwQrGMw6ARvmSuk9QtmpW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1013, 'Anoop patel CM', NULL, 'anooppatel2021@gmail.com', '8277453121', NULL, '$2y$10$qM6ScRa/n.rTToFiSiq.ru.SX3fnQbgluzrEM420bVvixF64HrXRS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1014, 'Anupriya C.A', NULL, 'anupriyashetty12@gmail.com', '6362282381', NULL, '$2y$10$TqKM3jrNP7pa8VLxs2dRKuYfoMZ7N/ekEc/kI2dro50sn7307PZRe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1015, 'Anusha B V', NULL, 'anushabv18@gmail.com', '7483580371', NULL, '$2y$10$DGPT3SP5/bsAuGYG9Nivlu0tbzwZ7Z.WDeUJxaA.4geDpZW4M4Lmq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1016, 'Anusha CS', NULL, 'anushacs1999@gmail.com', '9108947872', NULL, '$2y$10$q3JUdO1E2vuOrAqHaZwZ8enCD5/w4awDETGnCH/fhqWd6nvA564Ii', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:20', '2021-08-23 11:39:20'),
(1017, 'Anusha H E', NULL, 'anushaeshwarappa@gmail.com', '6362619472', NULL, '$2y$10$OBJLyeZ952Q7AkJPScSS1OqfGfptzAB/RdHsMYtGaMiaxLWogQhLu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1018, 'Anusha S N', NULL, 'anushasn04@gmail.com', '7892331365', NULL, '$2y$10$FQaZYP3bL3qHdFoq13KcHuKRK6JnToU9TdzWaD2xoCgzJ3n5ELguW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1019, 'Anvitha Shekar C', NULL, 'anvithashekar.c2@gmail.com', '8861029209', NULL, '$2y$10$hcZ68J3cimHZ/Nv9TjHH6OLx9pIxxNIrykrPlqpeQWQjzQpwU9pIS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1020, 'Ankitha AP', NULL, 'apankitha@gmail.com', '6362410289', NULL, '$2y$10$s9puN2girn7LSlmy8Z0JnuEG8j7Sxb1nlEECp/LEq8pOi1siUdMZy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1021, 'Arjun Ram ks', NULL, 'arjunramks2018@gmail.com', '8951276744', NULL, '$2y$10$2DOKiOyZrQ8S4WjrJjNAsua/neBaTNf44Tgy6i.kZVD88PxhYRttK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1022, 'Fida Arooj', NULL, 'aroojfida57@gmail.com', '7619107457', NULL, '$2y$10$ezOPoDXhO8I6O4OIICcUfeeJ0SGiDfQrgsmZt2gqQMO3P/5wg99g6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1023, 'Arpitha T D', NULL, 'arpiarpitha602@gmail.com', '9353596130', NULL, '$2y$10$X4NVeKNEDQLcpmAWBxCpUOUK0phNC/nIVy.TgRAjVKi/owPE8ccOu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1024, 'Arpitha SN', NULL, 'arpithasn001@gmail.com', '6364015589', NULL, '$2y$10$NuOnHrk2tFb/jnu/NJz48uJ/olmKo.N0b4hu7LKBTiwxDP4.4XoUC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1025, 'Arshiya C Y', NULL, 'arshiyaarshiya243@gmail.com', '7338033110', NULL, '$2y$10$HsrQHRvClHJOe9ewQb5JHuMG7aWocg/3mzh5A0TWQ7lX2e4pnWZAS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1026, 'ARUN C M', NULL, 'aruncm.457@gmail.com', '9980600457', NULL, '$2y$10$zgqKMInNKHJrb1zSBxkXtuwm0B2w6cSkCOEekLdeC6lo0lQv8VTyK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1027, 'Arunkumar', NULL, 'arunkumarhotkar6@gmail.com', '8073589906', NULL, '$2y$10$8wzA/rurMNdK4xiZBQocGOKvx0zfzyck4Wlxr39XFTr36Id1iVB7G', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:21', '2021-08-23 11:39:21'),
(1028, 'Manoj S .N', NULL, 'aryamanoj972@gmail.com', '7975468184', NULL, '$2y$10$a2Xux6qQCQEAacFOKgguWONOhsRcAtYqojFyu1nsa7dcK0ET9Shny', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1029, 'Ashith N R', NULL, 'ashithnrnaik@gmail.com', '9611437668', NULL, '$2y$10$KhckEPIdafbVQiKMqTZ./eeO5SPCcuxv3NcZrFyX73arWH4oQK.tC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1030, 'ASHWIN B S', NULL, 'ashwinbaradwaj8@gmail.com', '9480390228', NULL, '$2y$10$xAKmVYyy5vnRU.cld4P.xulgAljxVlDoYHXU33YsBMBiEnsOwKSdS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1031, 'Athmika K C Gowda', NULL, 'athmikakc@gmail.com', '9380700854', NULL, '$2y$10$B1nw7sFavt1SODJmjJOXcOSXWzlW5gQTbP6kZNKwSnfdpN/.PVdza', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1032, 'Avinash Hanumantappa Sangur', NULL, 'avinashsangur99@gmail.com', '8951166019', NULL, '$2y$10$Km2hM78/x3qpm8Ggn9UfHevnNIUr8OSA5ElTSUuswaex6fs7geKBi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1033, 'Ayesha Shabnam', NULL, 'ayeshashabnam842000@gmail.com', '6363942299', NULL, '$2y$10$EWnrcDhbKc6ZcQ.FnADdb.fwJZ7VxydyCdag8DAhEL3MHWBEqaeMK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1034, 'Bavin koya', NULL, 'bavinrodrigues10@gmail.com', '9980141882', NULL, '$2y$10$azwyXQGZ.MPccOfWHbc8jeR7P2auHiQrW1PlXQphPc3fOTpCnzrZO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1035, 'Pavithra H B', NULL, 'bhagavanpavithra1@gmail.com', '7204541876', NULL, '$2y$10$dfkJNFS0QLNBNdcVDU3A2eiQ.bgSo1nKOGBfZ0uh.2XG3WPTpNNR2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1036, 'Bharath H J', NULL, 'bharathhj2000@gmail.com', '8073355128', NULL, '$2y$10$2et/aLaOkuVrvEuazidYWe8flAwqhqA8oAlwxLEUhviuNS3MTn486', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1037, 'Bharath s', NULL, 'bharaths910@gmail.com', '9380709169', NULL, '$2y$10$GiduZP0acG7Pm6itqCO6COcHDLyt3BaaRWo39dfv59tSrqvBatpZK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1038, 'BHARATH V R', NULL, 'bharathvr2016@gmail.com', '8310180591', NULL, '$2y$10$QZsG36PApisnMrLFe2h.QuarocskwewGzjr5gNFsYRSuqDswDyDFy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1039, 'Bhavana BN', NULL, 'bhavanabn2@gmail.com', '9972626857', NULL, '$2y$10$CLiuY/ypwJiXPVEKuUM1feh/.bsUB2iGmAIX/6sOL2I.jkb3KdPT6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1040, 'Bhavana R', NULL, 'bhavanagowda109@gmail.com', '7259420298', NULL, '$2y$10$AaRefjoUZ69Tq7n/qd8uGOslzsJnDy2itbDNjlAs8bnOfKYPfYCgu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:22', '2021-08-23 11:39:22'),
(1041, 'Bhavana GS', NULL, 'bhavanagsalpha@gmail.com', '9449202699', NULL, '$2y$10$y2O2yJ3SZWbmP/dHnZVML.LFZKjrsFTjTV.7TQjLJoRphjTq/BJeC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1042, 'Bhavana t p', NULL, 'bhavanatpsuguru@gmail.com', '6363998263', NULL, '$2y$10$nMAJCOGtzmSkoCjG1ydRIuGcERo88oIcBeP3HSE8v2q5Ia9DvkVjG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1043, 'Bhavana TS', NULL, 'bhavanats111@gmail.com', '6366220397', NULL, '$2y$10$0Wr172UpQCpJxxKjxgBAouz4DH6XWeOp3NmlnlFXOABhBrnf9t5Ku', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1044, 'Bhavana H V', NULL, 'bhavnahv123@gmail.com', '9880229458', NULL, '$2y$10$0d058y8Yjk5fV9MaBXHYvutbqkyrhNhNaMKSra8Zt4l89GTxYlYWy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1045, 'Bhoomika.R', NULL, 'bhoomi2000.29@gmail.co', '8296067787', NULL, '$2y$10$QHeIjOpN6RFnkEFVeIrVw.WblRUfwP.4h1vF2eNz1.RkYC9/Cu3Re', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1046, 'D V BHOOMIKA', NULL, 'bhoomika04112002@gmail.com', '8088077122', NULL, '$2y$10$dvLf8p.5nOPsrOZAbxeSYuVBI0OWCrtVCB16Nzk0xa.fajwcSLllC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1047, 'BHOOMIKA', NULL, 'bhoomika2100@gmail.com', '6362001920', NULL, '$2y$10$36Xznl5ZY0WbsC7AkKh.Y.tpMEOL.xX/7cHdOzJr6NCDwpO/OuEA6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1048, 'BHOOMIKA R', NULL, 'bhoomikagowda1122@gmail.com', '9740654294', NULL, '$2y$10$IjaBuUooAsoh.RshUmTMw.upl.hi66aPIJHtFlflFVwh21Zo2Nb9O', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1049, 'Bhoomika A N', NULL, 'bhoomikaswamy4@gmail.com', '8861243242', NULL, '$2y$10$oUiq8A.k/5Qi0IW9QMkHP.63gRbUuKaZxf7tbxDFkrmGfqsKsOu..', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1050, 'Bhoomika.TJ', NULL, 'bhoomikatj2000@gmail.com', '8073024670', NULL, '$2y$10$yQ7n5e18EsUk6yfjaGEBBOuMH7qhxKyXUa1oYAU6GKR899QBAL7mW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:23', '2021-08-23 11:39:23'),
(1051, 'Bhumika K R', NULL, 'bhoomiramesh23@gmail.com', '9353630355', NULL, '$2y$10$yJSYxbf9NjZWrkhZDbC2q.4DAfCNhdmjwdWbkWDuMTn7hch.ZuEZi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1052, 'BHOOMIKA.C.SHETTY', NULL, 'bhoomishetty1227@gmail.com', '7337716309', NULL, '$2y$10$A2ss6KPE1xUgyH51LUoefuWSofxnhgpfKoPeYRuLw/2YkWyGnMglK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1053, 'Bindushree R', NULL, 'bindushree02112000@gmail.com', '6361671661', NULL, '$2y$10$LwAfvR0cMqZVbdkFi.IhcuOlJzKxrwMNW2e138yakQ6pvVtjWOfie', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1054, 'BRUNDHA.K.M', NULL, 'brundhakm2904@gmail.com', '7624816510', NULL, '$2y$10$P.0mZJWz6LVHLlUutkN7LOqJsdHUqpvhmF.8QVwgLr3qYYyT8FugO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1055, 'Nisha BS', NULL, 'bsnisha.2000@gmail.com', '9606438305', NULL, '$2y$10$0BjSzscwPYw7nCwVXRak7.ueFs0vb6SRO8/x46VLNCmlJG/8dOOKK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1056, 'Chandana BH', NULL, 'cchandanabh@gmail.com', '6364826961', NULL, '$2y$10$AVwsQ0S7bCr4QkprCWzT7eArrSyza0M/da4sDuS84NMxrnNY8cOBK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1057, 'Chaithra B S', NULL, 'chaithrabsckm232@gmail.com', '9380187337', NULL, '$2y$10$i0I3GJWCVk0gUtPJqXyrdeq7DM4t2sagYk1GcUnI2rOxobfauTT1u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1058, 'Chaitra B L', NULL, 'chaitra.chaitra58@gmail.com', '9663826658', NULL, '$2y$10$BZHvA480GpQxzYm277EoIebcZH./C7nvSPxB2xuK9uuPl.aAv210K', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1059, 'CHANDANA B S', NULL, 'chandanabs22001@gmail.com', '6363225435', NULL, '$2y$10$WkH.d62IPXl0tVoY/aXx1OkY817xszVWH.24sEW0s3tWUwoPqPh8G', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1060, 'Chandana K P', NULL, 'chandanakpc45@gmail.com', '9380884564', NULL, '$2y$10$ArZ8.FGhlyk5l2Fo9fJJceI5fDQxfG2wizD4gFDK496NiUj2rd/F6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1061, 'Chandana A N', NULL, 'chandanamay31@gmail.com', '9380656209', NULL, '$2y$10$dQ0uxsQrbplEFT0zeUzWUu5Ek84jxA0JmNlQGxDQx5BGBecMPwTbq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:24', '2021-08-23 11:39:24'),
(1062, 'Chandana K S', NULL, 'chandanaskalose@gmail.com', '9483627848', NULL, '$2y$10$HsMZ92SxNgO8ZpchY1undO6YXjOQL/fySDUg2jd.Y155vs4.Ivw8.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1063, 'CHANDAN H K', NULL, 'chandancandy77@gmail.com', '7892741637', NULL, '$2y$10$JGXDKyuadFN5Amx7eSNRo.r/hjK2Lr4EKrMLebY77G9XWeAu2CM8i', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1064, 'Chandan K N', NULL, 'chandankn10000@gmail.com', '9606582259', NULL, '$2y$10$PaP3vLBTGueGmtAqayz8SOhrANFzpelxhnR5W.0G/R5kZGCUPIQnC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1065, 'Chethan A.S', NULL, 'chethangowda3257@gmail.com', '8971173027', NULL, '$2y$10$XoFyVnmMt99ybs6lHTadpe7kC7HG5TUGmsPt2BwfCSVaRrtT5f2bC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1066, 'Chinmaya s Kumar', NULL, 'chinmayashivkumar1999@gmail.com', '7975801032', NULL, '$2y$10$X3uGr.YqiR/gTIlviM52Xea4fD2goVOoA/A7bJAws/ZFIP2jzn2IO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1067, 'Chinmayi.I.S', NULL, 'chinmayiis2000@gmail.com', '7483183230', NULL, '$2y$10$r5f.fTBR83znc6QAgwKz0.COfecP2EendZavwa2uPNkKWaTW7MGr2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1068, 'Namra Sharfain', NULL, 'coolgirlnams@gmail.com', '7795412725', NULL, '$2y$10$V3v42LmOZyZrFJ8nDFDKiO1/KMSKEG81OGzE2IXgbYUkTwNaMEhaW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1069, 'Chandan V Shet', NULL, 'cvshet@gmail.com', '9916432533', NULL, '$2y$10$NBz.D8HmLkxbQgMMDIIChOtj6wISTZYM0xko6lrKZo71fJKxKqqwy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1070, 'DAKSHATH HP', NULL, 'dakshathgowda6@gmail.com', '8296305545', NULL, '$2y$10$vqoB0uNSORHKVA3noLmyG.sdRCNCk9nFv4fGfnGZiKNeQWm7nEyUG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1071, 'Danya S Gowda', NULL, 'danyasgowda31@gmail.com', '6363896378', NULL, '$2y$10$CC4Qb3sYAA6GLNAXZadrHepNTwUUnZaGxs3KL1PH/GwYN0f81BkOq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1072, 'Darshan A N', NULL, 'darshandarshu427@gmail.com', '7349785117', NULL, '$2y$10$mE8Ei9z7ncwFPUka9fBtY.Hgocmb8eT4v5boaxL8xCNMNfPGuJN/q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1073, 'Darshan L C', NULL, 'darshanlc23@gmail.com', '7676922784', NULL, '$2y$10$v7rKu3vrJxQvcyJ1YXTmxuxWnoSk7omGaNq8kyldzwVLh65PtMR16', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:25', '2021-08-23 11:39:25'),
(1074, 'Darshitha TR', NULL, 'darshithatr19@gmail.com', '8088253793', NULL, '$2y$10$3eQog43/3JvLeHuAGRJWV.SBWhwNlEme.ocTW/Fh0MR8F4C24y7mG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1075, 'Deeksha C M Gowda', NULL, 'deekshagowda44.dg@gmail.com', '9380582395', NULL, '$2y$10$O812YT2QlqXaACQKowz2TepS9z0MPrZryCbb./wsSPuwNa2kQzFcW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1076, 'Deeksha HS', NULL, 'deekshahsgowda@gmail.com', '9480291607', NULL, '$2y$10$//jNGIL1eTLptpAL8f8fXuSGa4.cDSf89Fo3NfDNyq716s8QQ.o0G', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1077, 'Deeksha J', NULL, 'deekshajckm@gmail.com', '8217659996', NULL, '$2y$10$cPbjruoWN6LmDMR6WhvnheTwwFUmlK3xka9dlYW1S128xdgp4603C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1078, 'Deepika R.V', NULL, 'deepikarvbabu@gmail.com', '8497095890', NULL, '$2y$10$T7CxB7F2EUPN7JjwARaTJeDBX5N00ZOwZU4KxGob7f3q.YkdB5whq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1079, 'Deepika kv', NULL, 'deepikavasudev28@gmail.com', '6362619311', NULL, '$2y$10$XFj0kZxOO5um4Zj7KrnoWuqaiGeEfO5nqiHcrtc/2/fBiT7lXgLQ.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1080, 'Deepthi N E', NULL, 'deepthine2000@gmail.com', '9731321757', NULL, '$2y$10$Lc5d8nauOu6GXtd9.cLUi.bdL2aArcPjjUCmGQMhTeA2VWLlpovM2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1081, 'DEEPIKA G', NULL, 'deepubhadravathi123@gmail.com', '9663548209', NULL, '$2y$10$1whDd.6G8S7TWPMMw43QOORHBAoP391ohQABo8FeM3lkq70.MtKGC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1082, 'Deepika c', NULL, 'deepushekarc@gmail.com', '8971095214', NULL, '$2y$10$cEkSgo4u66GaFUNBlyAF4OVw0cwEcCPdhIO0pQQ4NvfVVGcEoGc2y', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1083, 'DEVIKA TR', NULL, 'deevikar1712@gmail.com', '9353181511', NULL, '$2y$10$kRvBvdLGcm.2vl9pSziVZurlGf4aDRi3Y4qy0YV3NHcs/JpOVBOuO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1084, 'Dhanush S V', NULL, 'dhanush.sv5@gmail.com', '6361124947', NULL, '$2y$10$v1GcyItjPMJHjVmnGZKagul6KQ0rT0ieEnqLfl6uGofne1bUUNorS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:26', '2021-08-23 11:39:26'),
(1085, 'Dhanushree V L', NULL, 'dhanushreevl28@gmail.com', '6361679619', NULL, '$2y$10$damfuOtfFq88KrDSGAipZ.cUcPeXew8jdpytO55jgLp/xafTF9y8C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1086, 'DHARSHAN J.S.', NULL, 'dharshu.anjs@gmail.com', '9353847054', NULL, '$2y$10$NaFiA/OPD41Z53/C0G/tV.w1Osyy59d71.4GquBi194K3Ejhh.LV.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1087, 'Divyashree BP', NULL, 'divyaappi131@gmail.com', '9591269147', NULL, '$2y$10$PzvmTrYScFFtylm.AVmaVuJi8fl.FiBY/zKZJXk1ajgUqEOqubZQK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1088, 'Divya K S', NULL, 'divyaks356@gmail.com', '8970132250', NULL, '$2y$10$SbPZB6dNh/7cipy5LTuVrO8BEMLxwaXCrZR/OcvpyotBktKDoAbr2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1089, 'MEGHA K N', NULL, 'divyamegha43@gmail.com', '7676722896', NULL, '$2y$10$wV7DMCJSsiQ/nhFveUNMDe1VTM1yKHQX0jnU8H9qn7qjldVfMuwNC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1090, 'Divya S Nayak', NULL, 'divyasnayak2000@mail.com', '9380746054', NULL, '$2y$10$VnzTiQnoWFt9F.Bt8DNmH.Axv6qe6tgxSo1SFOcjnMayuWFiUT0uu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1091, 'Karan Dareppa karagir', NULL, 'dkkaran97@gmail.com', '8660971912', NULL, '$2y$10$3E18MUfoq/iSQsAHX4xTJeE3A5yNmlt/AMPmV.aGmvC8Ox071OBG6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1092, 'A Eramma', NULL, 'erammaadoor18@gmail.com', '9035714231', NULL, '$2y$10$UbxwlMnEOCImKCTzYdfaMOi0l9n94hQDXUoDZRrXOV52FNlwlHS2C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1093, 'Eshwari B V', NULL, 'eshwarigowda2000@gmail.com', '9380520494', NULL, '$2y$10$d2o04iVgA4Or/AMLdTRmJe9HqJFevMt0hc7WRQwVcPFmPHqcNejdm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1094, 'Farhath fiza', NULL, 'farhathfiza2000@gmail.com', '9620904876', NULL, '$2y$10$YnTcFALMsB7XsTov96kO.u7n4G.EunIFj7vWQeHRXC5SO/05sVEWG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1095, 'Avinash Alban Fernandis', NULL, 'fernandis8055@gmail.com', '8277613404', NULL, '$2y$10$DH6QMmo0VJ3rdyqvtmOnbujIA/4JGgRCgtmnjblU6Uaf6U99HRJ5S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1096, 'FIZA', NULL, 'fizz.tayyaba.9191@gmail.com', '9663508988', NULL, '$2y$10$b2iJzSpt.ENi3XQUk1jbROEK4EV9sc4jA8d5ND.p4PnwX2bNS0ebu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:27', '2021-08-23 11:39:27'),
(1097, 'Gaganashree K Idaramani', NULL, 'gaganashreekidaramani2000@gmail.com', '7349161898', NULL, '$2y$10$VSHA/bNY1KQdu8qpsYUlCOh6Oloo2DccIUE2bbyURU3WzlDtD.8ES', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1098, 'Ganesh Karthik H G', NULL, 'ganeshkarthikhg@gmail.com', '7975537150', NULL, '$2y$10$qPx1liPd5HKCH5J6s8kZXebry.P88URSG23UW1vtART3QBoSeX1.K', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1099, 'Geethanjali E.V.', NULL, 'geethanjaliev@gmail.com', '9972917814', NULL, '$2y$10$5x0179fGywdBuqGIN/UoreKEh4YiTnK225vpllRcqRqNHP7ybW5re', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1100, 'Girish Gowda DK', NULL, 'girishg628@gmail.com', '7975743931', NULL, '$2y$10$leuP6I38PVt2b8SSQ5gExOvxeMiv6ROGJToDzUHBbmc3qcRXHkgFS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1101, 'Govinda Raj DS', NULL, 'govindarajds2000@gmail.com', '7619111330', NULL, '$2y$10$CnlSB1cu9RJ8qu1Zgt3MNO9Vv8vDkyNPq/XovAoS7naCRL8L/YVl6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1102, 'Anusha. A', NULL, 'gowdaanusha323@gmail.com', '9886366565', NULL, '$2y$10$z3Y2G9uN2Y4bkSzfoTy36uUuZQEtMP2bPjNsGeZjVTIa4Uqm3xmQC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1103, 'Bhavana B M', NULL, 'gowdabhavana24@gmail.com', '9900231338', NULL, '$2y$10$2hQCZq8Gd4nn5oUFmSaYNepCxQHvpSXNuGKc/ft0Z6zSdrKMXQDv.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1104, 'Dilip S Y', NULL, 'gowdadilip811@gmail.com', '6361285526', NULL, '$2y$10$rq8kVgpqBLPwy4wqgMRB2.dYpZoGxKw..SCcnf67i1ZYiVQPuAbWu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1105, 'Nikhil Gowda B M', NULL, 'gowdanikhilbm@gmail.com', '8660601667', NULL, '$2y$10$DGJqwcPvtnob.lDgL9vToO8poBalgcPzh1TGzW9a0MCMNqkgSor3a', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1106, 'SATHVIK A K', NULL, 'gowdasathvik14@gmail.com', '7337783572', NULL, '$2y$10$xGHm3VcNQpmyu2Nk64Boz.gvg3YWrdcHzySdVgN1PBakH.Eznrj8.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1107, 'GANESH R', NULL, 'grhsd543@gmail.com', '6361917904', NULL, '$2y$10$rjPEOyOlxOCavpaWG7bKUuVsNzwxJDDulwAM0KefvFudQWUf/K8g6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:28', '2021-08-23 11:39:28'),
(1108, 'Varnitha G S', NULL, 'gsvarnitha@30gmail.com', '8073786358', NULL, '$2y$10$tW5e/TBOnha4YgDNWOBBautamvI/jIZ0yv435Y55rQbGyfW1UYC7i', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1109, 'GuruPrasad B', NULL, 'guru7389@gmail.com', '8747008184', NULL, '$2y$10$r6ORwh6y3ZESJ.Ctf3sxuesxyRPuS8hqzlSqqcqrFTmXay0T2U3Zi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1110, 'Girish N C', NULL, 'guruncnandi@gmail.com', '9632341810', NULL, '$2y$10$pwdjZJOeHxLHC4uaQtYU5eu22s3zp4AC.pX06tnPTqpB33ItBxCPq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1111, 'Halesh M D', NULL, 'haleshmd672000@gmail.com', '9019407276', NULL, '$2y$10$noV0cXv7jjFWCADeHiW3yukcO8euBYfr3El3Nl38vwmlbbzRQJOP6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1112, 'Harish B Choudhary', NULL, 'Harish77choudhary@gmail.com', '8660401226', NULL, '$2y$10$D2iX3LALJAiHRrsjrlFeRuya.WK0ohn4G5t9MoK9Tj/etdZfWITQO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1113, 'Harsha Y M', NULL, 'harshahym@gmail.com', '7022833577', NULL, '$2y$10$LZXzvJiAIErH6PWvBc.Z6uznwNpxjONRM3c8pFUzHsjPkpdsXu46O', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1114, 'Harsha k p', NULL, 'harshakshathriya7@gmail.com', '8861216681', NULL, '$2y$10$YBYP2Jp6cigJ4gZE7J72C.B1N.dcDUNIn6bziAlCQyFhWJ.sgFLIe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1115, 'Harshitha D', NULL, 'harshitha.dharaneshappa@gmail.com', '7348851487', NULL, '$2y$10$7KHSTUmA7aMCYlO9UmX/XOqlrtDrtC6nEbfS6TVDFIAtGwf31I55.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1116, 'HEMA HV', NULL, 'harshitha.hema122001@gmail.com', '9606429858', NULL, '$2y$10$ywKWNsYZCI/9c0aVK3/pfu80cb8feGe.bxKVXbrWiCvWn5a56g462', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1117, 'Harshitha B L', NULL, 'harshithalokesh4958@gmail.com', '9632997605', NULL, '$2y$10$JKcpnpuUyDEKiKAz9UoeCO1thPSaNJ79VnkXFvuTZ4pvo4CFwVz.G', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1118, 'Amrutha H S', NULL, 'hebbare.amrutha@gmail.com', '6361803335', NULL, '$2y$10$MNmVsYuQZ7dSkoOhMNF5I.BkWfFwiabx5ORo9WuWISk5hMh9LrVyW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1119, 'Hemalatha N', NULL, 'hemalathank2001@gmail.com', '9148736246', NULL, '$2y$10$acfTpnXgdO/4vUTq.g7uguBg07TEsxekP1tuG1sDknDASW9HhliQy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1120, 'Hemanth kumar S N', NULL, 'hemanthnagaraj1803@gmail.com', '9611732194', NULL, '$2y$10$CI6uBA/N1TwPLGcT/PdwO.vZf4cuRMKPSKLKhydCW5kJCqOwNuAiS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:29', '2021-08-23 11:39:29'),
(1121, 'HEMANTH SN', NULL, 'hemanthsn0@gmail.com', '7899526007', NULL, '$2y$10$xc6Yre0rJF7/4GW1UwK6E.JNWwYUhbrCbo8rF0rp10Ita.oWNqe1C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1122, 'Hina Fathima', NULL, 'hina.fathima74@gmail.com', '9448179274', NULL, '$2y$10$32GDGsSpppsbf1Q2CHXJmO7HMKCqljZvvDbpLCzsCeFuoHuDc93YC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1123, 'Sindhu H R', NULL, 'hrsindhu2@gmail.com', '8861824615', NULL, '$2y$10$coK1wVmTxzrgT6W4k8HY8OHAyBv7ZlN4ndT/kUOAGmnhKcWzjPkga', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1124, 'H S Darshini', NULL, 'hsdarshini1234@gmail.com', '9880581181', NULL, '$2y$10$bpem5eF7InfalC/3CrZNqOnz6.UntIaGnu.n6JlL9tiak0oiDaHhO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1125, 'HEMANTH H J', NULL, 'huligowdahemu1@gmail.com', '8217457219', NULL, '$2y$10$ADctPXegGrI7EWDjkLerR.KbOsC790drFwPeq1uz5av6g1si8kDE2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1126, 'Impana k s', NULL, 'impanaimpana640@gmail.com', '7676046014', NULL, '$2y$10$VY9IxuUUSCtVm/ALHkGVj.UzzI3z3TCyHg6ia/wOVws7yGzhgFayG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1127, 'Inchara M.D', NULL, 'inchara8998@gmail.com', '7975518753', NULL, '$2y$10$4G0hQwW0JV3cHgeB.TtcB.SBZUYBNnfrH.COTTXnnLbAqWXUmI./S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1128, 'SANJAY TN', NULL, 'itsmesanjaysanju001@gmail.com', '9845870849', NULL, '$2y$10$VwKLFhjkTcL4ohvrB9Uawuc9FuvX1VNxoPU.yLDkJdBsi6gvIP3Ya', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1129, 'JAGATH J S', NULL, 'jagathjs511@gmail.com', '6361206130', NULL, '$2y$10$Wv9h7oJQR8nkjaMNr4SAseKwu99QoaRiY9vzmaL8zAEt8iO7sthna', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1130, 'Jahnavi KJ', NULL, 'jahnavikj2001@gmail.com', '7022336540', NULL, '$2y$10$OxQxWG89GLUxYPXInX7EPewSNDWqEwgr1Y/Dlm4EHTz90TpVb2hcO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1131, 'Jayalakshmi V R', NULL, 'jaya1142000@gmail.com', '8951183788', NULL, '$2y$10$o/nYUJS3cho1Ei0p7CCQKe827Oltny45j6u/T2VxCJYrTDl4onKPK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:30', '2021-08-23 11:39:30'),
(1132, 'Jayashree AS', NULL, 'jayashreesrinivas1234@gmail.com', '7619395329', NULL, '$2y$10$v3X6N/44uA0bX1VKToVrUu/SiPrSqaLo6r/K.4WnX2mY3Ew/HHZwC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1133, 'Jeevan gk', NULL, 'jeevangk42452@gmail.com', '9663022830', NULL, '$2y$10$60B2uGusw0Dh1x.zYzWpnuNsIZLhrAOkaYxVbXNccUGZAREjtQzvC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1134, 'Jeevan P Urs', NULL, 'jeevanjeeva1224@gmail.com', '7483574356', NULL, '$2y$10$VXFev5mwlqTGF1Y0g3nntu1eaOLQ16ZO9EaNZUrA2K.4vA570uuo2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1135, 'Juveria Iram', NULL, 'juveriairam1340@gmail.com', '9148698420', NULL, '$2y$10$9HACOQ1KLOmMdeMQSFGDsuMovULAwiUE0lVzrfd7ENBfrkej9hI6q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1136, 'Jyothi A R', NULL, 'jyothiar1436@gmail.com', '9380545659', NULL, '$2y$10$JXlKLasCHpAqUPwvSAYjwe3SQYDM.QhiJdeUkwargWos.JlJBtqWG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1137, 'Jyothi R', NULL, 'jyothirevanna63@gmail.com', '8762911138', NULL, '$2y$10$4SOcWo.bb1NBaM92H3FBdulrjzYFphWAMD5oizP1Vmfb0MtnTDvGq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1138, 'Kadambari K K', NULL, 'kadambarikk813@gmail.com', '6362356813', NULL, '$2y$10$TH.tuWadByjoAENR3JVWMukFKn4sl0LFmqiBqRwOxTs1aG.v2X6uW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1139, 'KARTHIK M', NULL, 'karthikmahesh1207@gmail.com', '9964223223', NULL, '$2y$10$fwlw8GFAmBhnGSysq7mv1.lE06egbAoYX92Qwvp5fkt5M9S2jz7hm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1140, 'Kavana K', NULL, 'kavanakboudha@gmail.com', '9353619919', NULL, '$2y$10$7XBjLPBdGvbfRkVhmHlH/.8HFURgUjFXIE63pelFpxRiYK0Q3w6V2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1141, 'KAVYA GY', NULL, 'kavyagy321@gmail.com', '6362572805', NULL, '$2y$10$crYbn89maAJMqZY/w2QfoeyYaoMxIglIQJGM2OnaFuKBKP0dvoVbW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1142, 'Kavya ME', NULL, 'kavyame046@gmail.com', '8762435764', NULL, '$2y$10$XPex1o2X2rNf2Dqlimx.E.7O37tnisnWUJBasrnj2HmgO8TpeYbdC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1143, 'Kavya H', NULL, 'kavyapalegar23@gmail.com', '9902191198', NULL, '$2y$10$bcxwsOuvpqjQQmdkhYz6cu8iCEGCv2o.5RvmAjGThyGvK6ayJmiy.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1144, 'KAVYA S', NULL, 'kavyas0201@gmail.com', '6363891356', NULL, '$2y$10$PKU.I/u40fyEi0Qh835gJOtq67kQLObUhH2uYMMO4ggCJbGuprw1e', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:31', '2021-08-23 11:39:31'),
(1145, 'Keerthi R', NULL, 'keerthikitty31@gmail.com', '7760911949', NULL, '$2y$10$7aOFDEWoqSJoZq7qnPoDJe/royfj9igO2Heup3Krsh0tfLNfVOI.2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1146, 'Keerthana D', NULL, 'keerukeerthana46@gmail.com', '6362797909', NULL, '$2y$10$OAjeitedSc4sh1jbTtgSMebq70rwg/lfGD0HEoE2swMIdz2EQ5LiK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1147, 'Kiran AE', NULL, 'kiranaeteju@gmail.com', '9663456359', NULL, '$2y$10$X3fLPc5l8nNq8GFzQ0lws.k6xsoZGdtmy1RQ9KxAMX.UzEZC2gogS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1148, 'KIRAN KUMAR S K', NULL, 'kirankumarsk25820@gmail.com', '9380783813', NULL, '$2y$10$nNTGTGzrloIkcUiARsDNEuou8T2SoaFMiTxff6vojZH0CxF4CcTPW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1149, 'KIRAN S T', NULL, 'kiranst16013@gmail.com', '7760544424', NULL, '$2y$10$u7Y9QEfNo.Z9x0/KccgUNOMyyj6erupwOVRaxcK.Wh1Z84oXUvb2G', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1150, 'KISHAN GS', NULL, 'kishangs1617@gmail.com', '7337755679', NULL, '$2y$10$mCZ6KiokSW1wxQ7B0bZmC.bs74FMwTw1KKoW2nZfhBs5mKJdi1PMq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1151, 'Koushik Gowda H S', NULL, 'koushikgowdahs2000@gmail.com', '8546867457', NULL, '$2y$10$o1AxOhq.F.o9QUOEhrq/fesjihws.7s9r4H6WoXZI.zUGnDv8mgYa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1152, 'Krushik D M', NULL, 'krushikdm28@gmail.com', '9035491843', NULL, '$2y$10$DP2YwySTBuCJ3SSQvbXPYObquuBet.kuYsdx2AmipDxP485b8LPyG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1153, 'Kruthika N.P', NULL, 'kruthikanp44@gmail.com', '6362259191', NULL, '$2y$10$rH7x8UzvIxJHjNNxZbiIwuLR4zi6AiSuRFRtoPXbx745sWOwAsege', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1154, 'Kruthika N S', NULL, 'kruthikans1810@gmail.com', '8073442833', NULL, '$2y$10$WL4ivWQHzA4hM84FrFil2uiSRlQgsZaNZjKO2dPAydyhbl.my.gYy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:32', '2021-08-23 11:39:32'),
(1155, 'Chandana K S', NULL, 'kschandana76@gmail.com', '7349433945', NULL, '$2y$10$Pb2VxdbErplE4Fo4aCMUveGwM2LT5T8vIpBhuUMzyZCWSAArCaAiW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1156, 'VINOD KUMAR KN', NULL, 'kumarvinod99531@gmail.com', '7349292996', NULL, '$2y$10$53mRAozyYaFXShEYPF4RLOUevmmUKbBylsyloyNEdggi5A3SCtrOG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1157, 'GAJJAR KUNJAN BHARGAV', NULL, 'kunjangajjar1522000@gmail.com', '6353974482', NULL, '$2y$10$axaiG9fnaJyGCZhGV9v1m.W3ZBRElqkXn7PRNNcUQoQ/.vmrRXgYK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1158, 'Kushal t b', NULL, 'kushalgowdatb@gmail.com', '7259588235', NULL, '$2y$10$I2iQmLvU7TklldIeMkToJe31z3dIjj1FUdW9a5iT1Tnf6garpiaN.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1159, 'Lavanya KJ', NULL, 'lalikj5359@gmail.com', '8088538957', NULL, '$2y$10$CmubNzgURDjDj6N1Mm7hxeC0Q7ypHgS9SLQULjq5ottviMnSxdxPq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1160, 'Lalithya MS', NULL, 'lalithyaanchan@gmail.com', '84317 53763', NULL, '$2y$10$8rU2mSGVjK7RTzqrv.ilmu9X/Q47RzeWnNGfVvi7/kVXFo1lc/9RK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1161, 'Latha T J', NULL, 'lathatjblr4856@gmail.com', '7259915355', NULL, '$2y$10$pItbbSywkSBjKSLUlS0CReNEWJTeGzpLrj3FYPDiaXuQe3TbAHm5m', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1162, 'LAVANYA LS', NULL, 'lavanyals159@gmail.com', '9380317837', NULL, '$2y$10$nZtA4Tdpd3iEl5IbDrRmpO3AZfxnS.GVgD7iylVy90z7bf.BD.mYa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1163, 'Lavanya Parameshwarappa dammalli', NULL, 'lavanyapd2000@gmail.com', '8884963415', NULL, '$2y$10$.efwFqQYG/qYV3F58WM4wOkFSm/YWcy.eY7LRkqC5u1qXySIdoW6e', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1164, 'LIKITH RN', NULL, 'likithrn99@gmail.com', '9739325865', NULL, '$2y$10$L3PePK0zofH3waDlz1deTuXKj0QYsIvGRGXVQpsA55u419f7AFXYS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1165, 'Lohith AS', NULL, 'lohithasckm7@gmail.com', '7996815081', NULL, '$2y$10$vmycFTUgut/DJ9LRGA36ZObN/jGPpC68lYR8PCRnZj4XvZhlWe26.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1166, 'Madana M V', NULL, 'madanmv2000@gmail.com', '9108332044', NULL, '$2y$10$KSivxPcrD.G0TNsOeTDC0O1PkXnqfs3HFdzAtnD2NtMNEz6FCpPIS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:33', '2021-08-23 11:39:33'),
(1167, 'Madan Raj Gowda', NULL, 'madanrajgowda333@gmail.com', '9481447261', NULL, '$2y$10$X23LB3lnnBDG7NDmoA5Sa./zVhzcbzWqNaB0PuCUH/y8yfdgPuI.q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1168, 'Mahantesh Shastri', NULL, 'mahanteshgshastri@gmail.com', '9900426552', NULL, '$2y$10$B3NgvcJYcrR72mm2eNjQqOmR2tBxfgrXJgi1zKI1muxImGuHgot1O', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1169, 'MamathaM', NULL, 'mamatham2818@gmail.com', '7022068230', NULL, '$2y$10$oHH3.2DXLtloBg22DjQIn.Lo1XuHNb/5KnEOmpAD8OPWFtNhZs0Ry', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1170, 'Manasa S', NULL, 'manasakdr123@gmail.com', '8296563636', NULL, '$2y$10$Wg4NLRw5St2v0q6f0zUnq.No88YlK/6mTIrd2QDnspo4kOB8kSN76', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1171, 'MANJUNATH C C', NULL, 'manjunath7204@gmail.com', '9036100865', NULL, '$2y$10$pnN5pFjTG8IZ87Z8Ga2CNewUeOjbnpWTBwSTIsZGzAxYInDL.QsnO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1172, 'Manoj A M', NULL, 'manojam121@gmail.com', '7975639126', NULL, '$2y$10$YdW2ydfo4yun8P8uXeMu.OrfQ2ZO.MyQd3W0vRrxlaPewM00SqS2K', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1173, 'Manoj.B.H', NULL, 'manojbh2342000@gmail.com', '6362362619', NULL, '$2y$10$vzVEsz1gzHxHh31fyDSKZ.YYwB9FkohFusBZOO/uZJ8C1q0xCLnPO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1174, 'Manoj d', NULL, 'manojdmanu394@gmail.com', '7338541779', NULL, '$2y$10$vIqiPZPGRBk7Z8j/p0eJZOFFJHhyUXWS.2a58x4ZIgU3XCndkJF82', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1175, 'Manoj H M', NULL, 'manojhm89@gmail.com', '8971133160', NULL, '$2y$10$658fEr7ABaJhzIh7vZhzGeQoKuh1JPX4CRVwgBzKBDdqwJ6xWfAlC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1176, 'MANOJ.U', NULL, 'manojhu123@gmail.com', '6361047327', NULL, '$2y$10$vkDZPJbeeHWw8RmuQK0Dnu2/pfmjyKUEEF3YxZQBkLldklBAJ2KlK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1177, 'Manoj N R', NULL, 'manojnr4ai18cs046@gmail.com', '6362261486', NULL, '$2y$10$EdEm4zFptX4CBjrYH/PDuexV14/hzoFzbHK9PbonpM1OUgzHpLIqi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1178, 'Manoj ph', NULL, 'manojphhsn@gmail.com', '6362603540', NULL, '$2y$10$MsvcPVgveiAGWDWNOgxMzubO0CaB2PGOeYlqLKojzRFCUEDh/dKMa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1179, 'Manoj T R', NULL, 'manojtr2000@gmail.com', '6361508665', NULL, '$2y$10$uHq.nXkQVfyBZClkn31PfuN49Qd1A/qlHAX03EfUh7MGYVN6UDC/6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:34', '2021-08-23 11:39:34'),
(1180, 'Mansi Dutt KS', NULL, 'mansimansi539@gmail.com', '7899078917', NULL, '$2y$10$uBoy1Un483.fL357uEtJFedoWE76/pqmuCrXaMrlKorPBZuNjh8g.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1181, 'Manika Kesharwani', NULL, 'manu.manika@gmail.com', '8904914013', NULL, '$2y$10$tj3WEcM1hq03UelQ/RpKoeljKpedhFs6ZnoVQaSkfJOjdqF5yvTTK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1182, 'MAYUR JADHAV', NULL, 'mayursjadhav15@gmail.com', '7676158595', NULL, '$2y$10$UmUFk.4/OpehLxhzPGBftOqZM1WAWvwNLnZFPuD.igeesWdt1BF.u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1183, 'MEGHA D M', NULL, 'meghadm18@gmail.com', '6363532673', NULL, '$2y$10$MHMPncpIbbGR2c64yTSL7uHCnRTaj9/M.QI2uIIuba2CtiwLCHYDW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1184, 'MEGHA GR', NULL, 'meghagr238@gmail.com', '9972219514', NULL, '$2y$10$bWc9/RVDK2mYNDMcpLIQs.QbQm2RbDGMwet7uxna8QoFHrD4TN3/m', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1185, 'Meghana KS', NULL, 'meghanaks0108@gmail.com', '6362226350', NULL, '$2y$10$vM4ZgOoBvLC5whSCg7be.uuzNn88weClOJZ9lMAWBNFMbOuHuOlE.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1186, 'MEGHANA N S', NULL, 'meghanans12@gmail.com', '6360663821', NULL, '$2y$10$twrFzJqnL9H8nm9VWYGcdui0pu/c8oGBfMjRpLrK/s8PYKBFGPVcG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1187, 'MEGHANA G P', NULL, 'meghanapatelgp02@gmail.com', '8722575603', NULL, '$2y$10$CYsO3pt6hO72KfNiGZPSpOLseWYLD9byCqtsjAAMllwO6tx.ou5LK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1188, 'Meghana T R', NULL, 'meghanatr0@gmail.com', '8277213789', NULL, '$2y$10$RItl8jViv.yoQbGQlgdCruRbWeKKuV/JeQlqlezy3keuR.LMmCKCy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1189, 'Megha N Y', NULL, 'meghany67@gmail.com', '9380915630', NULL, '$2y$10$S59wWl6drPjqzg87t1G6sOoi/fvnYAPnuh9Gq7IYPKy.f9Na1aQPW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:35', '2021-08-23 11:39:35'),
(1190, 'Megha K C', NULL, 'mmeghakc@gmail.com', '9632084989', NULL, '$2y$10$qDhHZwjJfrx7k9m8WlDxz.DD..oktu1HZ1tnKKxz5eIoGpB4Pb0AG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1191, 'Mohammad Adeeb', NULL, 'mohammed.adeeb2013@gmail.com', '8884824001', NULL, '$2y$10$kr8PgS2bDOMSVLgdbHxAFuoDIuJNFixD9wpBBeF6ityglMqH4lPiO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1192, 'Mohan Gayakwad u', NULL, 'mohanugayakwadu@gmail.com', '9980284253', NULL, '$2y$10$xyYGCW4d4a0uXJt7aA40h.3mN5JLXh/PUkJcBTYZA1hrdsxJnE12e', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1193, 'Mohith NH', NULL, 'mohith2000nh@gmail.com', '9480636011', NULL, '$2y$10$5nrP.6ijtNGnr9Yr21zOMO1FFappA1XyD7ludRuneQEMc5OVSxgu6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1194, 'MOHSIN ALI', NULL, 'mohsinali832000@gmail.com', '9353091322', NULL, '$2y$10$6AFYAMzg0XRpEJ6KF37ZXeRwOKnEXY8PneJS7ISSqy/g2SNB3sPGu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1195, 'Meghashree B', NULL, 'monikagowda1811@gmail.com', '9481193188', NULL, '$2y$10$8hfOarwAKV/2ze1auzUUfOrhdjnwnf3IOoGICEVdM22AmI5cZ0u2K', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1196, 'Monika M', NULL, 'monikam6720@gmail.com', '8951733929', NULL, '$2y$10$RojYVmFjqyu8H6KHpqlS2OdWfeNUoE/cza00QEZF8u/E31tFL6Joi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1197, 'HIPPARAGI MURAGESH SIDARAY', NULL, 'mshipparagi15@gmail.com', '9686825076', NULL, '$2y$10$hkwwh7xjC0qE1BpjE.Y0gepXhZ9flwQuNBT0sQFxn4U3CWtD7tYmm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1198, 'MuraliKrishna J S', NULL, 'muralikrishna96698@gmail.com', '9380982380', NULL, '$2y$10$JBdDIBqNqIXASIgUXFQfL.EDdaqm2d8dpjC7KJ4JwgbDfVnW1Vf7i', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1199, 'Murali Mohan m', NULL, 'muralisls125@gmail.com', '7975150283', NULL, '$2y$10$6CT5bQAlyjmKqDzBP0A5M.4rDK1A5Yo1nPepGfyTCz5unJbWazqIK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1200, 'Mohammad Mustafa', NULL, 'mustafamustu07@gmail.com', '6361295227', NULL, '$2y$10$GHOL1sPNic7uf/pwfZjjme2FPCWd/e41GxvNYJcAl7fGhA5Ci3AaW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1201, 'ANANTHAKUMAR M V', NULL, 'mvananthkumar@gmail.com', '7349656423', NULL, '$2y$10$tvX/j7543/C/UuU77.1V5.84xxAukQMPT75IPR81x777eT1.FX8vW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:36', '2021-08-23 11:39:36'),
(1202, 'SUKRUTH B NADIGER', NULL, 'nadigersukruth@gmail.com', '7022811945', NULL, '$2y$10$13nJnoWtieQJl43d0LzCUOzd85YPWy/vZKGSke81Ebw3msIr60Q8a', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1203, 'Nagashree HD', NULL, 'nagusharu001@gmail.com', '9380950411', NULL, '$2y$10$Isw5kNQh19EynlhMbUY3ROHGfuZnPs7lnMRX8g/9duqEO/aAH.IUa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1204, 'NAMANA J J', NULL, 'namanajanivara@gmail.com', '8105858748', NULL, '$2y$10$ReU/BUkJrb1UQdRjfJ27.uVR6gq1MTUrBe/8NH/ukTUvO00Ha5jOq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1205, 'Namitha GD', NULL, 'namithagd26@gmail.com', '9380611474', NULL, '$2y$10$z4/wBOiT7z4072ph.T8aKecQc9pIgTLaJdqtxUENaW/Bp/B09Yxam', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1206, 'Nanda Kumar R', NULL, 'nandakumar.ask@gmail.com', '6363464659', NULL, '$2y$10$/WEeTaxBX6G0KH6Kg7OzUOYOL19PwcE4DOsMWkYV3YhGlgfrtk1fW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1207, 'NANDINI C N', NULL, 'nandinicn789@gmail.com', '9148777575', NULL, '$2y$10$qjznTV77zWM4ANi03bxVDu69HjbT/KCHptmwZWMd4Oo7nyY7u5es2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1208, 'Naveen Gowda K.P', NULL, 'naveenkp2018@gmail.com', '7338189155', NULL, '$2y$10$VqjAq0ePcYNidOoHYYGpQerpYSmihZPueOGBalUeofVotigI9Tjvy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1209, 'Nayana A R', NULL, 'nayanaar4@gmail.com', '9980842119', NULL, '$2y$10$FI/W3V1.dHpXF8i7hsE5FuY48S6UnXdBPl9iCBWOOrS80F6HEyiH.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1210, 'Nihar Dev', NULL, 'nihardevckm12@gmail.com', '9380931576', NULL, '$2y$10$evOafM6gQ.Cmac1HEfcNYeD3VVBMBuDrXv31XTftF3ACPYRbTqHAa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1211, 'Niharika T S', NULL, 'niharikats2017@gmail.com', '9448578460', NULL, '$2y$10$Sxru2l5YBFFvSkV6WJGUJOyvSt5F/3L2JixgYa7qk0baM2WU7XA26', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1212, 'Nikhil kb', NULL, 'nikhildevang11@gmail.com', '6361721313', NULL, '$2y$10$/AuVmDxJ0PQviurlqtpjGOru.Ac2KRdDHs3ra5WOYK450UPLiXPli', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1213, 'NIKHIL H S', NULL, 'nikhilgowda1152000@gmail.com', '6366103579', NULL, '$2y$10$vRcS/F26ksYhkRgQ4bU0xevh74s42Q4Mc1A1clqIQZOMqTlKCWulO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(1214, 'Nikitha BL', NULL, 'nikithabl96@gmail.com', '8296009935', NULL, '$2y$10$EvdmS6w9b7SNRw/fBaK4CuFbq/bNdAQ7HMH3aanakMGm2I1R774Aq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:37', '2021-08-23 11:39:37');
INSERT INTO `users` (`id`, `name`, `l_name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `user_type`, `gender`, `standers`, `status`, `created_at`, `updated_at`) VALUES
(1215, 'Nikitha GB', NULL, 'nikithagb084@gmail.com', '8088500383', NULL, '$2y$10$b1KfB/4fTDGdteQZ.vzXqOTKUXiQ/hrEC0YPcAj3RMPH7sXBNTEJG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1216, 'Nikshep GY', NULL, 'nikshepgygowda@gmail.com', '9113980047', NULL, '$2y$10$fpZpPmB50K9XYWDaIff0eOOEvPNI6M/c60nf98mAd40biFC2Db1/i', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1217, 'Nimra', NULL, 'nimraishrath@gmail.com', '9066688940', NULL, '$2y$10$K7uOqYLRzplS9whC9WdNiOwlBX6fOGaVYPk5fkTiIckBp4Gd626SW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1218, 'Niranjan A M', NULL, 'niranjanshetty1999@gmail.com', '6361909315', NULL, '$2y$10$ld7itGDkE3O0gte7UgRIyuQseQpCIclwfQytZ1G83zyd2yfv7JJRe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1219, 'Nisarga Satyananda Nayak', NULL, 'nisarganayak18@gmail.com', '7619271727', NULL, '$2y$10$6NuewhP10mNiJ7aT56o2tugB5z.DB6aZR4kiffXQQ6ilqIeaQ0a3m', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1220, 'NISCHAL B J', NULL, 'nischalbj.2001@gmail.com', '9986367674', NULL, '$2y$10$gb555HtjGXbgv85qkRsDE./vgUHuiyNj.O9sJwYmG/WmRMxT0f.my', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1221, 'Nischal S.B', NULL, 'nischalsb5@gmail.com', '8217340456', NULL, '$2y$10$L2CCWZucXSemOUryiLBrZuR0jNEqoYqj7OfHfOamiKMTHjniu77r2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1222, 'Nisha', NULL, 'Nishapari2418@gmail.com', '9008598299', NULL, '$2y$10$zAM3Ui4vyuGJOQh51idJSelumSUvSEg4NxIF4J.pLaB5UlYc1Yj42', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1223, 'Nishchay G', NULL, 'nishchaygowda24@gmail.com', '7349659776', NULL, '$2y$10$0WMtv62.0Bl0rZpHl.y88OqUnrHkFPS5AAaNBAuN34ffCupn54KnK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1224, 'Amrutha MS', NULL, 'nishu.mshankar@gmail.com', '9611898468', NULL, '$2y$10$tQPE9PafoE8mpMZR2NTlsOm8.B6AJDMOfch0sOijmZPtTXoGWgX8W', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1225, 'Nischith G', NULL, 'nithingopal048@gmail.com', '8660124408', NULL, '$2y$10$1RKScjnJfysYv5k4AD9DtuF8tjbkMOFQg32HwKubbyKztDng6LW32', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1226, 'NITHYA G', NULL, 'nithyagcool@icloud.com', '9738973809', NULL, '$2y$10$UE1o2ZrBw28aXqRCzgh3eOGDBouSsblLM5jm7x94SuuI9DZP/YA12', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1227, 'Nivedita G Hegde', NULL, 'niveditahegde956@gmail.com', '9449561932', NULL, '$2y$10$SyvSzuaFu2l1.TS1xL8JC.dEL7TT/is96Vzs1OoF7Rgvf54DK4sDe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:38', '2021-08-23 11:39:38'),
(1228, 'NIVETHITHAA S', NULL, 'nivethithaa.s8866@gmail.com', '8660653054', NULL, '$2y$10$DtImsvm6KDXtavnsj/BQ3ORO.hfg7r3DQtKLwDcY/LObYgtE7Ws5K', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1229, 'Noor Zeba', NULL, 'noorzeba472@gmail.com', '6364013957', NULL, '$2y$10$AFpD9S2xn0lCYcpGUcz7b.EX.1py6BXzGuKb4MoBZEqH4.gt0hzbO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1230, 'Nireeksha NP', NULL, 'npnireeksha97@gmail.com', '9972136201', NULL, '$2y$10$TRsAzsdW31qDWzBe4KCBCOV/OOoEJRkrWktxiQfVT8bMhbF76Xj3S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1231, 'N R ARUN KUMAR', NULL, 'nrarunkumarr@gmail.com', '7338677060', NULL, '$2y$10$lDVQGaAAVG7gZa1I7HJ7quwcQABDggzm7YDydgGICzy.BN2HUealq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1232, 'Numan Ahmed', NULL, 'numanahmedh@gmail.com', '7349416278', NULL, '$2y$10$mm9BLw.IA1xXCURLLfpYKuLztvnqIu.g3/rzM47jpGri1MEEG/T9W', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1233, 'PARTHA SARATHI YS', NULL, 'parthasanju2000@gmail.com', '9900616494', NULL, '$2y$10$7MC44Oh7Eb2yko5zSUDvLuCgdDMxmVQ.WrxeeiHdEdQMKDz7XBFGa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1234, 'PAVAN GOWDA A.Y', NULL, 'pavan254gowda@gmail.com', '7259933496', NULL, '$2y$10$37CA6qb/H344MoOxRKYCYuJFauNeyOW.RQGghoQPYtzY8B.xzfukW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1235, 'PAVAN R AMBEKAR', NULL, 'pavanrambekar2017@gmail.com', '8217423480', NULL, '$2y$10$n6vYXfGP65FOYqg3mXBL7up7Q1IL7X7ZNdAPMAU2FPawW9bXgJpjy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1236, 'Phalguni Sharaschandra', NULL, 'phalgunisharath17@gmail.com', '8762373399', NULL, '$2y$10$RjKZYeyQs6l0SOkRhUF9cuI/YLA1DeqZS5VMN0YrHhoCblAOGD9mS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1237, 'POOJA CK', NULL, 'poojabangaru461@gmail.com', '6361489018', NULL, '$2y$10$2DwAcotN7Pzsdb6Ry4CLreBeHBrM57jn3jLW7ht1GioTsZNH5Gkdm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:39', '2021-08-23 11:39:39'),
(1238, 'Pooja BB', NULL, 'poojabb3145@gmail.com', '7760685381', NULL, '$2y$10$fzUwGiemetx2Alq43HpXXO3d6SMr34/4qa4y1QEBLqOjOMLPFLWym', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1239, 'Pooja C C', NULL, 'poojacc.ckm@gmail.com', '7899455876', NULL, '$2y$10$pNfaHMfNWFTkDkO08UNmmOMabr.W17G3CH55CargjRxXsM1/Prbfm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1240, 'Pooja HC', NULL, 'poojahc8@gmail.com', '9606113255', NULL, '$2y$10$qAsjSo00.n3pEmeEqfz.8uAD5RQ.sbhO86fvF7s8IaayXULlVN7j.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1241, 'Pooja km', NULL, 'poojakmchik@gmail.com', '9113074719', NULL, '$2y$10$N.KgQZ26vNeGf6evvBir7eX.SMZUH7JiQ.1C/qpm/gaXlOBW9SNU6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1242, 'POOJA M', NULL, 'poojamiduvani@gmail.com', '9480543497', NULL, '$2y$10$S/Vi5ZL9OFASiLzLBQsEn.qtRdLKzyR21ADJVnHDV/g/45ghlvbW2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1243, 'Pooja N', NULL, 'poojanshetty2@gmail.com', '7338289595', NULL, '$2y$10$F/ahqv3zdEfW/U9HKLu5Z.HDBQwt7cPHMblsshka7EEuV5e6jcvUO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1244, 'Poornachandru H K', NULL, 'poornagowdahk@gmail.com', '7624879270', NULL, '$2y$10$pdA5HL7uKo27jEBbai6Kr.sCW0AgrqFymljA6IYJuPPdFQjhGjhd6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1245, 'PRADEEP.H.N', NULL, 'pradeephnckm97@gmail.com', '9108594100', NULL, '$2y$10$s.MMe8kMKluByPSZQ86E4O8.TBP6uMNMd6OwPcrlOjP/KakQ8ytpm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1246, 'Pragathi KY', NULL, 'pragathiigowda@gmail.com', '8762255802', NULL, '$2y$10$D.VzqwOxoyy1YpJPX6ZeDu9oQ41Td9qz.DqwG6IhpvU94Fv0g90wm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1247, 'Pragathi CS', NULL, 'pragathiksshetty274@gmail.com', '7259934765', NULL, '$2y$10$UuhAI/c98S8di3aQVTXodeVt5K0lsL8N0b91cycWtXHxdVHu6TbQK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1248, 'pragna sudhir', NULL, 'pragnasudhir29@gmail.com', '8088538065', NULL, '$2y$10$FK56R6XG/D8lwDpJ.x1KleqNLkzxWVXjmPPSXyXjXvaAT/zonRrE.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1249, 'Prajwal S Moudgalya', NULL, 'prajwalmoudgalya1352@gmail.com', '6361845023', NULL, '$2y$10$OclRqA7N4H0kuUnCmjkztO3h2M0HbEo149oKRDJGgzOBDFYO.nSUe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1250, 'Prajwal H R', NULL, 'prajwalrangappa@gmail.com', '?', NULL, '$2y$10$XMCxE.B2Y/Y0ltJXnjn7wueZqMOUyENoauycmi/5uyIqfhnquNZ4u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:40', '2021-08-23 11:39:40'),
(1251, 'Prakruthi Urs C P', NULL, 'prakruthiurs.cp@gmail.com', '6360580315', NULL, '$2y$10$0LwhpAxCXtFJqgNTR9KNSuJwUBLLTcQsLVbPwcmkvn2QJ80glJ19W', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1252, 'Pramod B J', NULL, 'pramodbj2@gmail.com', '7996489537', NULL, '$2y$10$2zKgQawh3teGKQjJ1tqqRe6l3t6DN/Q2AL3A9zixsh7FklkNveTAi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1253, 'Pranavi K', NULL, 'pranaviksai@gmail.com', '8762414158', NULL, '$2y$10$IC9vqNIQlFazEL.EdPJUOO6T5x9UBE8tQojOHMfEHp2qK05HOI6nW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1254, 'Prapthi D', NULL, 'prapthidgowda148@gmail.com', '7483120696', NULL, '$2y$10$b.S7mWO.x73K/PeFxg9E5OczWZ7K60sqQOTuBEGoD3LNZPRVyRRk6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1255, 'Prasidh R Shetty', NULL, 'prasidhrshetty@gmail.com', '9980114065', NULL, '$2y$10$2yrf.hXnT9Ouej8LcJOz..wE9yTaLuLZjqYIEGctGu0msqK1uN3IC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1256, 'Preetham krishna T R', NULL, 'preethamkrishrathna@gmail.com', '6361534207', NULL, '$2y$10$9EAV10gM1R9KUPoNYxav2OXUDgKsXPvgxyCuKVJQ5yoSKi9zk4yB.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1257, 'Preetham T', NULL, 'preethamt687@gmail.com', '7975031400', NULL, '$2y$10$SA/5Gj49auxOI0nRBj0mO.4.Lt4NlJayV2r8BbUGC8Lc7iSiechnS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1258, 'PRIYANKA H A', NULL, 'priyankaha2904@gmail.com', '7483924873', NULL, '$2y$10$EYYKt98wORRHzANwNqkaOO2oFKjEmqCfCaZ9V6jOI3EOoInVXoi6S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1259, 'Priyanka k shetty', NULL, 'priyankakshetty2000@gmail.com', '6361540319', NULL, '$2y$10$okSzZH.XKWH9wTiOT.TaHumz9IS8n3E7D0Lr9giVRkArXJ50rvz7K', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1260, 'Priyanka S Dammalli', NULL, 'priyankapinkysd184@gmail.com', '9945806518', NULL, '$2y$10$w71d8ajBOCA74G20k7dg5.rNFZ3CFGdfkH7OO/5i1/k/Sj4ssQXzS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:41', '2021-08-23 11:39:41'),
(1261, 'Priya Varshini C S', NULL, 'priyavarshinigowda14@gmail.com', '7676616508', NULL, '$2y$10$hCKND2KJ1FVnsDEqN9ro6.J5BIs3Wtz5qpAkxQQNJ9PrItmcbC6py', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1262, 'PRUTHVIK A CHIKKATUR', NULL, 'pruthvikac2000@gmail.com', '9686006769', NULL, '$2y$10$HKEVBv3qjzADjE/Wz3bG8edHKw92iVXnJdnSzi.V52pnX/L5RjkV6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1263, 'Pruthvishree S K', NULL, 'pruthvishreesk@gmail.com', '9110215006', NULL, '$2y$10$JyvnNPaT5/SmGa6BlTwQfu6h.lDJV8HGjDuUdKBczUGevja0h6ele', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1264, 'Rachana H C', NULL, 'rachanahc04@gmail.com', '6363385218', NULL, '$2y$10$AChINeSPuQfDeoTk7HOJ0uJh4E26SeLru37SGQvL1NNdjB378juH.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1265, 'Rachana M C', NULL, 'rachanamcgowda@gmail.com', '9353347369', NULL, '$2y$10$xT9WnHR/FcndoKZ7DbGQhOgWWmBNv9z/4FzVKgOavJ0gL635X9ilG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1266, 'RACHANA C S', NULL, 'rachanashekar012@gmail.com', '9632826398', NULL, '$2y$10$t94GEB2NZLNn8/zW49prTe2kBW4GREMah212NCh1kf9AHkV.Kpsze', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1267, 'RAGHU', NULL, 'raghugnait@gmail.com', '9845953194', NULL, '$2y$10$kpCcPrlpveQMJLJVZKRsTO.LhIvEj.30lqwutwTFMYUuqDiVRcOGi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1268, 'RAHULSINDHE', NULL, 'rahulmt128@gmail.com', '8123865014', NULL, '$2y$10$pBFh9kCRyhjblfkCK/oNceA9zf0nkS/pRPKHLOSA7s6XVbGsBlRYW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1269, 'Rajath M.G', NULL, 'rajathrajath336@gmail.com', '7899206068', NULL, '$2y$10$N/aJHOjc1M2gcDEf/dHZ6.LBkMmeAwxBoo.nd83qxY7U96l8YXVfe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1270, 'RAJESH D C', NULL, 'rajesh02dc@gmail.com', '7022105861', NULL, '$2y$10$WPsXcfcz0aCkPwHbHW5jt.Xt6cV/MByJXidDexfg09G1vIXtba1M6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1271, 'RAKESH V', NULL, 'rakesh0710.rv@gmail.com', '7625018060', NULL, '$2y$10$aDrUfGhh./WMpy7EalT7a.UmJR4d2KJ4jP4D6iJwC0qBcXtxwlNge', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:42', '2021-08-23 11:39:42'),
(1272, 'Rakesh H C', NULL, 'rakeshhc2000@gmail.com', '7802259365', NULL, '$2y$10$jRNC/zJJblxE8QkbKnvogOmrqYOGte6jc7G3SXMglFah1TvFR8ddK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1273, 'Rakshath M Shetty', NULL, 'rakshath.m.shetty@gmail.com', '9071920174', NULL, '$2y$10$F2bab1zwlhcJNn39r2rDKOl0YEBCFYMESu1xsDIkwqAXiz/5Plq5q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1274, 'RAKSHITHA DP', NULL, 'rakshithadpdp@gmail.com', '7022540316', NULL, '$2y$10$gZiFftE6Fad69Mg91fn7..d9oHS4A.OC2ptuofRcog3j/6dmEaxwi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1275, 'Rakshitha M G', NULL, 'rakshithasgopal2000@gmail.com', '9606140654', NULL, '$2y$10$Tm0FjfkgWfsY5PxXsiXePu9iMH5AuvArIZu8lKNmfAn8RlAfb8kDq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1276, 'RAKSHITH KUMAR IM', NULL, 'rakshithgowda1333@gmail.com', '9611001387', NULL, '$2y$10$NdL3BstZm/Rbqz.iKsZ2suQkIJRXuOMx3U.4vcpLMgpiA/6vlUccy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1277, 'RAMYA R K', NULL, 'ramyark1601@gmail.com', '6361496941', NULL, '$2y$10$Ko4tQUstnv74vTN6WqqjoOfZtXJcXN9QTAZczd5YSHWVR4.DUHUne', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1278, 'Ranganatha M', NULL, 'rangamclk@gmail.com', '6363461041', NULL, '$2y$10$iiXXZe1EwuXaOSuMPdGN/usP4KOfMmb4iUQ22X2cWjVUVQ7ywOt1W', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1279, 'RANISHREE C.M', NULL, 'Ranishreecm@gmail.com', '9449311399', NULL, '$2y$10$gg6PWazp/kml6/VVjP2U2OycDoRey5j5IjHsDMtDA.o/rtFNK3mDO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1280, 'Ranjitha p', NULL, 'ranjithaputtaswamy7@gmail.com', '8296557744', NULL, '$2y$10$BpVMWOpU0kfXhJQA8hoBSufselVFew.PqHwstzd5PvLMn.O7i01zK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1281, 'RANJITHA K M', NULL, 'ranjitharanju1103@gmail.com', '9380036917', NULL, '$2y$10$KIzW6tHep9gqrN4kKblHZu1WT/.wQ9WUl5zGxM.znr7LFCEM4L5WK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:43', '2021-08-23 11:39:43'),
(1282, 'Nagarashmi K', NULL, 'rashmikatriki@gmail.com', '9008031022', NULL, '$2y$10$2HjAdsIeJL9L24pn3HOLZe6X.m4KpVVivmisdUKcHpGf0Y4yyb1Z.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1283, 'Reeth Pradeep', NULL, 'reethpradeep517@gmail.com', '9380718114', NULL, '$2y$10$xh5saWtMBuFWyWbwvUmcWOn5DrBYoJ1ohQCft7fIIJGJKg9fcPkZu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1284, 'Rohan C', NULL, 'rohangowda186@gmail.com', '8147522365', NULL, '$2y$10$/kaeOodmkN6WYVx/mzqvoesQQIpTQVR3ApGGXUiIArfC1w6Ah8AHi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1285, 'ROJA', NULL, 'rojayogannashetty@gmail.com', '8861512375', NULL, '$2y$10$WwaTRsd7xFiQvzuoPDNzR.AcniDy32nspgTT1DLlEVOn775vawOei', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1286, 'Romiya Taranum', NULL, 'romiyataranumckm@gmail.com', '8861355644', NULL, '$2y$10$iUQHpTxlPHaXFZlMcy3OUeh5Qaq1VGdCXqlLA5CqtFetzxAbvnBei', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1287, 'Ronitha R', NULL, 'ronithar2000@gmail.com', '7338277676', NULL, '$2y$10$JgseorF3dMnhKoQtNsDjhu/PJWbQjGbzrP1UcMYrPqiEQaw3u5U8u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1288, 'Roshan M', NULL, 'roshanroshu9071@gmail.com', '9380713873', NULL, '$2y$10$B0GIwX0RaAdcK.Ges13x8uWwTHYrzOabvqQMlr8XCI6b8z3/j73g6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1289, 'Rakshitha R', NULL, 'rrakshitha871@gmail.com', '7019101324', NULL, '$2y$10$s.t3KSgFu6gePX5qF.QFNOstSdHU.uk4SQRdPGCKTT79y4Mo9Bq9u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1290, 'Ruchitha GS', NULL, 'ruchithags23@gmail.com', '9901513037', NULL, '$2y$10$PYlc3k4vXRO3fxn6TfjLEeyXsi81iSSUiAGY2mLcUwTo7pDh2bbxO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1291, 'RUDRAMUNI S', NULL, 'rudrarithi07@gmail.com', '7975179803', NULL, '$2y$10$gJeDGR/PnMT.FrVGwmFdwet2i90bMPV2LsnAy9jwQ03CJkUdvfs4y', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1292, 'Rugwanth Gowda M', NULL, 'rugwanthgowda@gmail.com', '7349670876', NULL, '$2y$10$EF5u6fKLM02C9YmX8F3coeEyh3JwhHawMfVcbCvIrfqw5Eu1wVkxK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:44', '2021-08-23 11:39:44'),
(1293, 'Sachin CJ', NULL, 'sachincj373@gmail.com', '9380116576', NULL, '$2y$10$fKxgvBsUCWPj7Q2mCaVsQ.BRhNMj06AxqVn5lqVcnhF8pkMgJyxZO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1294, 'Sachin K', NULL, 'sachinkaran005@gmail.com', '7022060096', NULL, '$2y$10$uG.OGfEXWVqE/5CCOvaQFuZycT9tB2OLCAZEMHzjET83jrLQ9vWXG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1295, 'SAGAR H U', NULL, 'sagarhu1234@gmail.com', '8296296176', NULL, '$2y$10$1lLX8aG9P8fmRQbFyBtrRerZNz2EIPg5/bj1DmKVtET6yth6U82i.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1296, 'SAGARIKA B S', NULL, 'sagarikabsgowda18@gmail.com', '7349087469', NULL, '$2y$10$jFy/4NpopHb9eQPab4qCsOqqrJHW6J3FU/BRyXEcSuq39CdRv.Foi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1297, 'Sahana NH', NULL, 'sahana18ec094@gmail.com', '9845357722', NULL, '$2y$10$Qb0U6d3P3qsjMTteQitXMeGCp8cX/FzCn0QmRGyJ8P.JoGp0sEj1W', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1298, 'Sahana.H.B', NULL, 'sahanahb52@gmail.com', '7204847958', NULL, '$2y$10$pJrdZ6guBtBL/FXT7Ieb3ONTYzC4nTnS8c7SfADoxfANGAEY6Nm7C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1299, 'Sahana H L', NULL, 'sahanahl2000@gmail.com', '9606428790', NULL, '$2y$10$/IfBNgJtDL1oXihtosL8b.bRaWXX88nKwg./XQ9hdWlsmIftyEg2O', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1300, 'Sahithya E L', NULL, 'sahithyael1010@gmail.com', '9632208641', NULL, '$2y$10$TK5hntA06cFSWm/1w2bllecNcnOeZHhlh0RJgevI81tJZBrB3zgdq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1301, 'Sajith j', NULL, 'sajithmanu128@gmail.com', '9845730172', NULL, '$2y$10$ho506kHNjt6lh77qbXsd5.hZsW7SBTdnSJrD6hUbdWb7eEW5TfJx.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1302, 'Sakshi.A.D.', NULL, 'sakshigowda08@gmail.com', '8762460700', NULL, '$2y$10$ZLlO97kXxXP9cTPjlLXOe.8GO9fREB9cD8/udjDlzbvbHWMUJVHsy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1303, 'SAKSHI V', NULL, 'sakshivijendra@gmail.com', '9980432680', NULL, '$2y$10$L09lNhNAhMwjC4Cc2wUuvuxYnaSvXCdKHMbTDxQhI7P744UT0ifym', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1304, 'Sambram Gowda S M', NULL, 'sambramgowdasdm@gmail.com', '9483086445', NULL, '$2y$10$AEGOcapqiZ8CkxZBpDE1S.N4QTiY8QxcEQKvqbLbPAXYdUzwEoac6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:45', '2021-08-23 11:39:45'),
(1305, 'Samiksha Madival', NULL, 'samikshamadival@gmail.com', '8296410386', NULL, '$2y$10$lmzSGOrYcaQ83PcGHT83EeGUMI.xD8/ObPgjy6tXC8t.J1sEHD472', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1306, 'Sampreetha V Kadagalnad', NULL, 'samprithavk@gmail.com', '6361612548', NULL, '$2y$10$ZsikfuS24/yn45y6R3t2VuwrYLuC/PVySVnL5pWbZ1uXI7nRse4dC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1307, 'SANDHYA S S', NULL, 'sandhyagowda1903@gmail.com', '7259636758', NULL, '$2y$10$TdhVkosvIjmHTzp4Wug6k.jNzsrIEel6A.7/FpSDIcUlRD4MjIOQG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1308, 'Sandhya ID', NULL, 'sandhyaid9@gmail.com', '7338258736', NULL, '$2y$10$mrM8DsbYYZCMoXAnvpQs4uKW3t5P3yvo8B7RiG6TUsnOC2nWoMZHm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1309, 'Sangeetha v v', NULL, 'sangeethavckm@gmail.com', '8088868875', NULL, '$2y$10$cUDs3v/WW/qcssELWyIGOubU61riR5m/g2POGTmrC5k.XhWvwqwGi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1310, 'Sanjay M A', NULL, 'sanjaysanju99458@gmail.com', '8884919795', NULL, '$2y$10$z0OR/k572VZQlVOv50BaMu626WJKZPQ7PPKLd5.9fEcHZFp0SnN1W', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1311, 'Sanjay M U', NULL, 'sanjayugowda555@gmail.com', '6362214352', NULL, '$2y$10$XYJRgRLtJ.wExqh1EIMvtO6EPsAkTC9NIYTo3TwA7PuD2BgNYLAni', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1312, 'Sanjeevkumar k k', NULL, 'sanjeevkumarkrishnappa@gmail.com', '9980992780', NULL, '$2y$10$73s8Z0eU8UXAWCgZ5n7hI.tx4l3m7T9ny3BFRe/naVqeP2vm5f.d2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1313, 'SANJU KS', NULL, 'sanju.ks.kbt@gmail.com', '6362347131', NULL, '$2y$10$W5iTeQyq4oSLX2lWkxMpXe/a3LJxFbYqZO.FT1awCMB.ZBUe8yM36', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1314, 'Sanju U L', NULL, 'sanjumurthyul@gmail.com', '9008954794', NULL, '$2y$10$NZ7t7vx57JhDPnnx.EJSvuKjgs7/dQ910fi/d6JtH3/Z4Jr30RDq.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1315, 'Sannidhi ag', NULL, 'sannidhig25@gmail.com', '9380510176', NULL, '$2y$10$x23eQdvTITYWLb3tiiFF7uNyqVSV.3IPSVRDFSj9GOv3wWBIeP2R2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1316, 'B SAQLEN PASHA', NULL, 'saqlenpasha47@gmail.com', '6361726449', NULL, '$2y$10$OjP9gKxplXTb3jCHB2KcN.dv2KJfsdvgUn6vT1eEgSPMnGHcAjm8u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:46', '2021-08-23 11:39:46'),
(1317, 'Pratheeksha G s', NULL, 'sathipreethu@gmail.com', '7204768128', NULL, '$2y$10$D7dqb.OSIrJY4ap2XmxqDOdMs3vtrHzIr7MDZX1/wY8fBpTu5liaa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1318, 'Sathwik T R', NULL, 'sathwiktr@icloud.com', '9148502071', NULL, '$2y$10$J9pFHG15l937eAC1pkED/eDM..wforVZrVyhsg7Sgn0yJq2AJl6/m', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1319, 'Sachin Bellanakeri', NULL, 'sbellanakeri@gmail.com', '7022727693', NULL, '$2y$10$JwisdgiorAAlvPVeX1shHOfYfuqj1sHGsReBZxPu4nw/CV0jOMwC.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1320, 'Shakira Banu U B', NULL, 'shakiraub08@gmail.com', '8296997343', NULL, '$2y$10$DzpZCdrmNuF/XcuKviYxD.6KSWUEZg22Y26jQYQq8StcbMQDy0O5S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1321, 'Shalini B N', NULL, 'shalinibmballiganw@gmail.com', '8073866133', NULL, '$2y$10$9zEsf.zFIU1LK6NqtoABJO1LZuV/V6jlmVF7ihEb3XJ4iLZbGXrW.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1322, 'Shalini M', NULL, 'shalinishalu0427@gmail.com', '7760402820', NULL, '$2y$10$iz2exQNemjebJaR3VGczVuYGG7PDTuOS2SF3PZfKGOlpubfqEhOvO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1323, 'Shalini TL', NULL, 'shalinitl2000@gmail.com', '7760815963', NULL, '$2y$10$aO0RCuptJY7590E8Rb77zuBlYQ3e569Bjg2lULSdbDwjg5/g6Xev6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1324, 'Shanmukh negalur', NULL, 'shanmukhnegalur@gmail.com', '8748068169', NULL, '$2y$10$/XM1SjDjWfzxolGbCBIJK.vBp2MvuLlBKyEx5XgdY0vnXBVWunaiq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1325, 'SHANTHALA.A.S', NULL, 'shanthalabalu94@gmail.com', '7676782347', NULL, '$2y$10$pZD4DxWaZdfOho3mwnMag.nmCROgDNa8jc/vDFKLu4hAMwyx4lfaq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1326, 'SHARADHI AS', NULL, 'sharadhisomanna51081@gmail.com', '9741228530', NULL, '$2y$10$Vp2etMSBybgdVWfuuUQZKOXqzA7jc7FBJevHBh3Kul4mmT5oyykoW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1327, 'Sharanswamy.B.N.', NULL, 'sharanbennemath@gmail.com', '8296473094', NULL, '$2y$10$ymolYA5f8p2NmA4LjQBtyeN8VQ8S.9mKi6Qp4tsRJLDq.utuL0JzK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1328, 'Sharan Shetty D R', NULL, 'sharanshettydr19@gmail.com', '7899253694', NULL, '$2y$10$csTY6TcDxSLV6umRI53aN.ewjkCUBXEy83rGrVp/Fabis6pTB2q6q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1329, 'Shashank bs', NULL, 'shashank.1215.bs@gmail.com', '7022916593', NULL, '$2y$10$niPKg1EMPkkc/pvGJ8udY.bfe70K1Ou70ImgRLYJYmK5ibBhHLUcG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:47', '2021-08-23 11:39:47'),
(1330, 'SHASHANK B P', NULL, 'shashankbpshashu2540@gmail.com', '7892656105', NULL, '$2y$10$r6ALYa49J4vUh2XqH.6UteQozOwAPVsE2YHDDQE8EiG8/UsnUh1NC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1331, 'Shashank Deekshith B B', NULL, 'shashankdeekshith2016@gmail.com', '8660043568', NULL, '$2y$10$p4RZiXilBBtcnr0Ej15Q3eAilauHzHnvlKoStFh45IZa0Wt442SxC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1332, 'Shashank Shetty B S', NULL, 'shashanknirva99@gmail.com', '9108623254', NULL, '$2y$10$DLfV4ButmguPr98ZjYuSbeCoYvy60zAJq2YJXZfd5vxU9vVGER5YK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1333, 'RIYA', NULL, 'sheikhriya89@gmail.com', '8762647305', NULL, '$2y$10$lclU66Am.8GMqxnX2Dv9Me45vhszveiArLd9EIzLU0rrvJZCaQqJO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1334, 'SHIFANA FATHIMA', NULL, 'shifanashaik99@gmail.com', '6366103534', NULL, '$2y$10$/cECrTbd4B8gfvR/JfCUHOrmbzuLNlvC16.hkmfc0Y/mJ51q1X5L.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1335, 'Shivani C M', NULL, 'shivanicm2000@gmail.com', '9380467637', NULL, '$2y$10$6yvO/92sTXNWV3HL4NG.0uogID7yVkNqBkmTLIGNOrITBexX7c2XW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1336, 'Shivaraj b c', NULL, 'shivb536@gmail.com', '7892111502', NULL, '$2y$10$HY5hqbdsbiPYVs.OjhoZounC7USR1.CRzLVpX/NqayFPTCgsMP0/6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1337, 'Shivalingayya Hiremath', NULL, 'shivuhrt@gmail.com', '7026082987', NULL, '$2y$10$30BNQvnLZV6k/B/1gd/DaeSl21nK.QBsU4Ma1TKPV2woAVL9u5Qxm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1338, 'Shravya D S', NULL, 'shravyads2001@gmail.com', '6361956685', NULL, '$2y$10$b24Zh1KVxMTvubHl8231Ues4cEOrbWTnkjKbcGlav1FzrqDfomQHC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1339, 'Shreya girish', NULL, 'shreyagirish2001@gmail.com', '7899915796', NULL, '$2y$10$vafR.SB8nT2ItfDcq2lVIemIMjuOYgAfObVcVR44AJd0GohFt5bwe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1340, 'Shreya stanik.D', NULL, 'shreyastanikd2001@gmail.com', '7483312605', NULL, '$2y$10$M3PUh1aPGJ.KlOO/AvJrU.qMzr3yGXnHI8HX372OGn9Ufajb3p.TO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1341, 'SHRIDHARA N R', NULL, 'shridhar110gowda@gmail.com', '8296303306', NULL, '$2y$10$5hgs3PVp8gn21rt6KILozeHzG1FVc1PvN8CtKINYYHZf6yG23pScq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:48', '2021-08-23 11:39:48'),
(1342, 'Shriman A S', NULL, 'shrimanshivappa@gmail.com', '8431262572', NULL, '$2y$10$T9vW0HfGos/JlP3m0NEtBul7yGSamxOFIsLUP1/PAlz4e95wSYJc6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1343, 'Shrivathsa B V', NULL, 'shrivathsabv@gmail.com', '6361954271', NULL, '$2y$10$4N3/F6U.Zzu3Z4GpX4538e40XszSWoyZCvUZUJb3luaA9mszRUdQ2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1344, 'Shriya. K. H', NULL, 'shriyareena@gmail.com', '9741399088', NULL, '$2y$10$aOrHaM37PccNbvPRASdTXOnZ4WyDNg5aCl5Liv4QCg78xFvbA.Q0u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1345, 'Shrunga ks', NULL, 'shrungaks4321@gmail.com', '9380148203', NULL, '$2y$10$FWeCw8mXnF.3qydzLkteAuM2rRIjHshxJpKED.UOfhTg.ikGZZ3aG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1346, 'Shubha C O', NULL, 'shubhaco2019@gmail.com', '7974621935', NULL, '$2y$10$cUGQm67gwhh6XEkkwppRU.NoRcmORrkW5HykSLQohg.4lbeP8xluy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1347, 'Shwetha LR', NULL, 'shwethalr2000@gmail.com', '9380086413', NULL, '$2y$10$EaCIIGQbBX3Q07iwocSQuePDUVvGQYzr5ch1If4A2NVXmDrTOa65u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1348, 'Sinchana Dev D', NULL, 'sinchanadev2000@gmail.com', '6366202136', NULL, '$2y$10$XZ1ViDfUSyMzkqx4XAAG9Oi9MJkP5qSlzs/FAKWSo4IfoqPUN719u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1349, 'Sinchana V M', NULL, 'sinchanavm27@gmail.com', '8105443227', NULL, '$2y$10$F7FpIGIq4KWh7Qnz4BZVgeAahddMYj54tMotZVf.1trrbfIp9OGyW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1350, 'Sandeepa G', NULL, 'sndpg7153@gmail.com', '9731771645', NULL, '$2y$10$vZaWoOpSJm5CGiy2ttKkuulcizf/Xl4RlH1IF3YbFxGXLTTJZnZge', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1351, 'Sneha BL', NULL, 'sneha05bl@gmail.com', '6362755394', NULL, '$2y$10$hzwGc1F5HGPerWrrvBVlnu15MgDrEfGr2AsC0rrwP34qNptDPLHDm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1352, 'Sneha.B.G', NULL, 'snehadarshu8860@gmail.com', '9535105794', NULL, '$2y$10$/IDCWOeOYQbYMbYBINvSWOzhVGdK8TsQQAkLJbPFjqp4UaBFQSLOi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1353, 'Sneha S Hegde', NULL, 'snehashegde29@gmail.com', '8277717145', NULL, '$2y$10$cVE1wnTtI03SiKuNdt50geqR996JVpNI8DJWTCMVeH1RZ1SQ6VpzC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:49', '2021-08-23 11:39:49'),
(1354, 'SONIA FATHIMA', NULL, 'soniafathima13@gmail.com', '8277071071', NULL, '$2y$10$CJJg.uTb877DYUAomwbd6.j9Ab5XNATkenDtlVstPfKJMb.1WHKAa', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1355, 'Sonika M Shetty', NULL, 'sonikashetty610@gmail.com', '9663261039', NULL, '$2y$10$9/4a1QJ/8iqq8GPqT3ExU.nlPZgiD.4ttFndyiIn0PdtDIitKBSBS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1356, 'SOUJANYA B S', NULL, 'soujanyabs1234@gmail.com', '9844599392', NULL, '$2y$10$YnJxpy7NMqBZRnHovFI1NejEZMS.tx4G5sU5LNsd8CQWktoZ2xXQu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1357, 'Soundarya Mk', NULL, 'soundarya.mk05@gmail.com', '9901471582', NULL, '$2y$10$160xgl7rfaHbbAxJruL/QupeEJhsfSN7xOB6FrWErtPOiLs0oj4U.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1358, 'Sowmya.M', NULL, 'sowmyam036@gmail.com', '9148175237', NULL, '$2y$10$ZSJa1u7L5WCC36DCVa23aeirImBF8Eke5eQjRZWxT8DdOjYUoskJ.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1359, 'Spoorthi K.Y', NULL, 'spoorthiky11@gmail.com', '9901733583', NULL, '$2y$10$7iK36.sQZuD4mkQal.wTJeAzrPxFw4ognENxqCY5b5YgJyJFXqetm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1360, 'Sachin S P', NULL, 'spsachin0299@gmail.com', '6362048847', NULL, '$2y$10$pOlO.zcjso.ZlMnZgdsOou0q4wP30UY9.1R1R44bl4uZcPAUsHH4K', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1361, 'SRI HARI N U', NULL, 'srihari8569@gmail.com', '7022338569', NULL, '$2y$10$lhkFPkX2zP9u.8zFYZOlJ.HTziicWODM8JSr3/Bp10NquSvYj8nMu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1362, 'Srushti M B', NULL, 'srushtimb433@gmail.com', '8861970433', NULL, '$2y$10$hXfTFQ0Vjk/wYwgEh.idFuxRY4SxHSBYxdmlPD327k1PGVK8tn2s2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1363, 'Nikhil Subramanya', NULL, 'subramanyanikhil20@gmail.com', '9380861530', NULL, '$2y$10$Zf/k7wSjWYUD4f.bJNIgIORNveLAbGLgfwzBlMN78PMInF8LAr0QW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1364, 'SUBRAMANYA M S', NULL, 'subramanyashivakumar2000@gmail.com', '9538527425', NULL, '$2y$10$8ngolHJk8W3xbKd4Xg/x7O.xeW0W14oSAs0TK/0ZwcvXL/AFC1GFi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1365, 'Suchitra NS', NULL, 'suchitra181999@gmail.com', '7338292676', NULL, '$2y$10$Xz0g9/m5pz7VUGW/tvsoneqVISX/pRCL64EXGDxI6QqVWFYSM7H06', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1366, 'SUDARSHAN GN', NULL, 'sudarshan3418@gmail.com', '9606731043', NULL, '$2y$10$vH6NS6M8pifsSphpA6OX6O6fKHuaI7bluRixdB2WL.XE1ZTaywiSW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:50', '2021-08-23 11:39:50'),
(1367, 'SUHANA PARVEEN', NULL, 'suhanasonuparveen@gmail.com', '6361127266', NULL, '$2y$10$yiK4rk5923L5Wi4BuSIy.Os2InCTQc6G4CDEqwzFkhcjzuHzgpu3u', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1368, 'Sukith A S', NULL, 'sukithjagra5678@gmail.com', '8073869243', NULL, '$2y$10$ZXaY.j2/jif.eKE2CHT7NeoVXK8S331whQ2ZVv.KwZZ2Jm.NzXxQ6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1369, 'Suman aj', NULL, 'sumanaj1812@gmail.com', '7022070435', NULL, '$2y$10$J98xnMCIwuSzkxEYSenej.gH/bGs/uVrtNP7x4QtMrizSb.OmAzxi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1370, 'Sumanth S', NULL, 'sumanths7520@gmail.com', '9380300894', NULL, '$2y$10$UQRzeL2Rj4LflNTrAU2BauN.2WEFxbwqSfpRYJbAYfcR1OvUBROvi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1371, 'SUMANTHA U P', NULL, 'sumanthup4@gmail.com', '9535165056', NULL, '$2y$10$cLY07MCX2s8n7pCEZxNtge/PCo6.fKSBWrPbUDVlyOVs3XFaHKL1e', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1372, 'summaiya Fathima', NULL, 'summaiyafathima2001@gmail.com', '6364013166', NULL, '$2y$10$iIU8L.SnekEt0Wo41l/J1.ZOeX0DEmdm.1HFIbIeJMTYsh9Yy0u1q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1373, 'SUNIL R', NULL, 'sunilr222120@gmail.com', '7483442391', NULL, '$2y$10$EzXLAw5VmY6Gpuq3hWsvXeYQcNHLyZgyUN6J7d5nstqfHbTt0o80y', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1374, 'Supritha H H', NULL, 'suprithahgowda22@gmail.com', '9481871966', NULL, '$2y$10$o8pJnAEs94clAtpi3mzm7u.dSnspZYO2fhkevKgAI1K2t1MUUc/Ui', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1375, 'Supritha K L', NULL, 'suprithaurs01@gmail.com', '8310126626', NULL, '$2y$10$kT4E5IbQtFSZ4yrmuieG3OfWO/pO7rL2F2QR0xPH0WYWsiWDxsUYW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1376, 'Supreetha YS', NULL, 'suprithays2001@gmail.com', '7996676843', NULL, '$2y$10$1QhQ9LMLt.yfGWKuRSKMJuZsR07p58hvDInrPslePfpIR7B/bNfs.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1377, 'Supriya K', NULL, 'supriyaknaik6363@gmail.com', '6363913906', NULL, '$2y$10$9ioALbDBfxx1eEvOuf91z.Y1Y2mXkZeNOuo/wFBet1qAdc4QpbSOW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1378, 'Supriya Vinaya', NULL, 'supriyavinaya2000@gmail.com', '9353686316', NULL, '$2y$10$F/ljpsP1R0zWF1NXcJI28eHPMmZ3Y4Z3g3dpUnQ351ccGxmDlyJE6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:51', '2021-08-23 11:39:51'),
(1379, 'Surabhi. C. S', NULL, 'surabhivasista13@gmail.com', '8618241065', NULL, '$2y$10$CIOsGhygTiHCVHeslXDOP.vz2BLrmEc5fqkSPJDTyMDLPgP4qTeT2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1380, 'SUSHANTH L', NULL, 'sushantharjun66@gmail.com', '9986699606', NULL, '$2y$10$zUlfwb5zkZux/zW2JcFco.PcHo7.TMsc0qxUGYNi5IBQx56zrLQ/.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1381, 'Sushma B P', NULL, 'sushma.bp02@gmail.com', '8296150837', NULL, '$2y$10$E.OPvHc273Z2rQLQZoX.iOgrI93qA6TDZQ00.T.BLLJkyCS2C8CpK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1382, 'Sushma BH', NULL, 'sushmabh03@gmail.com', '7259285727', NULL, '$2y$10$J3GNtvIfl37ScxznEpwOtekj59p.n1lKhOOrQKBQlR0xm7vuA0cOO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1383, 'SUSHMA K', NULL, 'sushmakumar970@gmail.com', '9380010273', NULL, '$2y$10$FHKrp/pYgka22Y6nvbUEUukIqJxp5IPmUwKE1Dftm03uZBIZx8fWq', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1384, 'SUSHMA H G', NULL, 'sushmasushma2333@gmail.com', '9845043780', NULL, '$2y$10$J6/mlCs1TzU.kEsX3PKy7eP/JW6n2fRTQLveRWg2XE2sxBpe5fTNW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1385, 'SUVEEN R', NULL, 'suveenr9472@gmail.com', '6363575556', NULL, '$2y$10$69ws1S3fQKcmPROCKqo4x.dIuFPhSSj5/Njlj7N2HRopqsUT7E3/C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1386, 'SWASTHIK R GOWDA', NULL, 'swasthikgowda26@gmail.com', '9380946006', NULL, '$2y$10$gQOdfjF0osk6k2an0GdpNuKsCLtD.cZVVGTvuGKELaDg4BqexgKvK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1387, 'Swathi D', NULL, 'swathishetty495@gmail.com', '7337699509', NULL, '$2y$10$v/77hh8vTnXOWYUiW1BP0.mCMfrMmdi569gCthA/ykuAhaPL//.LO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1388, 'SWATHI S T', NULL, 'swathitgowda2512@gmail.com', '9663478349', NULL, '$2y$10$Kr/dRnzwifgVd1opDfH3l.VsaM9TQGT/3Q6Iu96.IARdm8DmV073.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1389, 'MUSKAN', NULL, 'syedamuskan2000@gmail.com', '9110255476', NULL, '$2y$10$yp/0HIHpoWlxfaHgOeuq0Odh8KjyWduIHPXy17DIgc4qFMiOrXiNK', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1390, 'Syed tarannum unnisa', NULL, 'syedatarannum202@gmail.com', '9480150368', NULL, '$2y$10$4ReUvA0ckMWiARjAZ9EOWu83Xrwuar./wDYYGUuLOL.7mFBXiA.0S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:52', '2021-08-23 11:39:52'),
(1391, 'MOHAMMAD TAHA MOHIYUDDIN', NULL, 'TAHAMOHIYUDDIN@GMAIL.COM', '9902368856', NULL, '$2y$10$2IHkD8QCQ.v/0IBOHSXXU.549dT7.aON1x6SgdmC.OF2/z2DySej6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1392, 'Tanmaya.M', NULL, 'tanmaya1028@gmail.com', '9535392572', NULL, '$2y$10$oIWYP2SEXaZGrh2Yn38DUenRdw6Szh0TSmJxXvDoSw1s3Ed/vA1zO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1393, 'Tanuja SC', NULL, 'tanujasc2000@gmail.com', '8296577494', NULL, '$2y$10$JPZ/7gM0fe7heDhI20gJNuc5tD6fvMxkBVd3Hfi5b07zgPPHbEHlu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1394, 'TEJASWINI G S', NULL, 'tejashwinitejugs@gmail.com', '8618734119', NULL, '$2y$10$CflZ8WqkE1macJ6EwOXb8OFTgt5FRyvbgJ0HG9kPcN5RfH5Xbn2Ni', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1395, 'Tejas J Shetty', NULL, 'tejass805@gmail.com', '9741615133', NULL, '$2y$10$17WVEC976d2zB.yjCp3QGu0aoDC3v4ibtiBsiJynUma/D/n5Ygofu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1396, 'Tejaswini N.A', NULL, 'tejaswini7022teju@gmail.com', '7022161661', NULL, '$2y$10$X4v/A6M7Tgw1yPhUtenQq.jIu8kXErg1YbXu2ykyWPY8e11Qn8neG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1397, 'THAMPITHA Y S', NULL, 'thampu115@gmail.com', '9632065489', NULL, '$2y$10$XR1eZXZH0LTJUsDjCRHbxOijVP6yk9KShGaXUcenI9iEr7p/4gdHi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1398, 'THANMAI M S', NULL, 'thanmaims029@gmail.com', '7483513754', NULL, '$2y$10$v7NfMvpF.PxZ0AlLqD4UAOc2GqwMEvIHdnBisUlHJHoY3wH4HW2u6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1399, 'Thanya Gowtham', NULL, 'Thanyagowtham260@gmail.com', '8971898322', NULL, '$2y$10$WnFz69oofmmdMUeTe7a76eE.9oPerVkIYA1Zb./g/.b1mOSQK1CeC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:53', '2021-08-23 11:39:53'),
(1400, 'Thopegowda mv', NULL, 'thopegowdamv9902@gmail.com', '9901225171', NULL, '$2y$10$Bvk3/l7E24oTv9sSmpgdMOsUHEdQJi91M8EGvs.bXitUlx4FTIZWm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1401, 'Thrinethra PC', NULL, 'thrinethrapc@gmail.com', '7892537132', NULL, '$2y$10$ui1M3ab.Xk/duhNiNw.wG.h4DWa6h.kcBb2EO1FEjC.b.V7l6I8sy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1402, 'THILAK PRASAD B M', NULL, 'tpgowda01@gmail.com', '9663316521', NULL, '$2y$10$ZG26o1rgjVg/ROWKoFjWuOfG6DVRjcglwrvNaKK6pJCSMVa0C0itO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1403, 'UdayaKumar Mahadevayya Reshmi', NULL, 'uddigoddi@gmail.com', '9606899486', NULL, '$2y$10$h6y4QqSbcPZJqj1B17tUDejL446YJ8cSaCqMHgLLZ7cHWw.pL2w0q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1404, 'UJWAL', NULL, 'ujwalushet@gmail.com', '6361727406', NULL, '$2y$10$8epFoCuyTV4ehIqBPYg1guXkGHTwvCSJLX7ACdkvN1Ch2erbGH/yi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1405, 'UMESH T', NULL, 'ut83730@gmail.com', '8748000878', NULL, '$2y$10$cLaXlz40jLfSKV21N8i1H.LnFH4XQB67fTBgp.Nt/cWLz4M51ZwGC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1406, 'Vachan Mayuri HM', NULL, 'vachanmayuri@gmail.com', '8197422566', NULL, '$2y$10$A8mekr7U7Mjm1xwAx/3ggOG6MmDGHDPS.U8lBypB4uePrdkPgUOmC', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1407, 'Vaishnavi M R', NULL, 'vaishnavimr10@gmail.com', '7760784373', NULL, '$2y$10$FvNsf/9hLTIjSVJrI.lbQO/Hu4BEiTXCMewdfdg8zHQPSEIoxV0A.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1408, 'Arpitha V', NULL, 'varpitha189@gmail.com', '7619353636', NULL, '$2y$10$K55XBGASPL7fT.fIer0emOaLUFdcLWmDl2uRJcO7Ij9njKgrFSNIm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1409, 'Varsha MG', NULL, 'varshamg8@gmail.com', '9380018955', NULL, '$2y$10$xbHBxVcFiTFUzDbQUOo84OlGut9OqmQP3POBHGThsCtIGkEpzlAy6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1410, 'Varshini V R', NULL, 'varshinivrl2001@gmail.com', '6363811894', NULL, '$2y$10$ijKn2o53D33.ecxh52f9euNl78fLg8/5sPE13K9yzT9JPF./mEZUu', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1411, 'Varshitha pk', NULL, 'varshithapk018@gmail.com', '7026130186', NULL, '$2y$10$ZmYMsnZMLI2TwlWnjOoH6OQPzK37OaogFsZ.0K6h0gTrVUGFtDK4W', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1412, 'Varun K M', NULL, 'varunkm12@gmail.com', '9380407790', NULL, '$2y$10$ivNrdFLepmN3Sr9N2Vubq.85MsuqvJMt8ueYaeCkJdgsywBzhpWqi', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:54', '2021-08-23 11:39:54'),
(1413, 'Varun R Hebbar', NULL, 'varunrhebbar06@gmail.com', '8277330074', NULL, '$2y$10$HGjChc1GP5imiH4Ut7NCcuEf.m/.06ZqgRhadYpfYsTWyWXCiLWhy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1414, 'Varun Y', NULL, 'varuny102@gmail.com', '6361174240', NULL, '$2y$10$eOuhD6kJstz9BP/2APXlJeQcC1.tocK3J08RWEXM6IcRQoHLZLVY.', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1415, 'Vathsala G.M', NULL, 'Vathsalagowda90@gmail.com', '8549953105', NULL, '$2y$10$NsRebRvfPOBRI02yiMJYQOHqf2k2xSQgRbYltNymLb9SgPV0XMPkO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1416, 'Veena R N', NULL, 'veenarnhsn@gmail.com', '6361493532', NULL, '$2y$10$usfeWMuOy/l0V0xqGuy/UOOWvpLHAkbK9he1lyipSH7bm3MTBfOxS', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1417, 'Vidhathri C V', NULL, 'vidhathricv@gmail.com', '9449361931', NULL, '$2y$10$xd4s1s4D0x7l14AlclxM3.nIkb8zIuBB4Jy.YCkcR0ahH348p0yt6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1418, 'G VIDYASHREE', NULL, 'vidya.ckm123@gmail.com', '9845450729', NULL, '$2y$10$KCBSxc3mXWo0.cYDJZ/EkOLTDS3tI8A0yfT12Sxp1t/6BUYRnV0Ry', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1419, 'VIDYA S', NULL, 'vidyasrinivas2255@gmail.com', '9380477039', NULL, '$2y$10$26rHvVxIhVZg2P.D/rrd2uCujjvaebANQthVxnyblAwq2sjUxKRdO', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1420, 'VIKAS K.N', NULL, 'vikaskamthi143@gmail.com', '7892177979', NULL, '$2y$10$aO.ZjsciKpFEKavt9idvTueYcyDfWCAkoDe3JlLSM0gYC.zrPJNfm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1421, 'Vinay B M', NULL, 'vinaybm2000@gmail.com', '8618503129', NULL, '$2y$10$0hy2YOBxlap1rQRFmDhyIOmhvk.q2Rsv23TfNq/PtnsGy00nqLxg2', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1422, 'Vinaya bm', NULL, 'vinaybm8587@gmail.com', '9741902307', NULL, '$2y$10$zFLfOmDMyqhHgYU9AOger.DCxPSFTvOVWdvjPNUGexykyzwd4THHe', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1423, 'Vinay Prasad M', NULL, 'vinayprasadm4ai18ec410@gmail.com', '9901353992', NULL, '$2y$10$fdp0pv5eERh6OiA1C21xledq84hqQ2Fx9KLjHiurRyVUmFUW2uJ1S', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1424, 'Vinusha C', NULL, 'vinushachandrashekar142@gmail.com', '9449552888', NULL, '$2y$10$DVntQfDIlnUZ.Iy.SsSxbeHiQcuPGQ535tCNKhp87wGbPG0mUbK.i', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:55', '2021-08-23 11:39:55'),
(1425, 'Vishnudev R Gowda', NULL, 'vishnudevrgowda@gmail.com', '8073200785', NULL, '$2y$10$e6YnAiCOhKxh/A3gO3I24.hUCrWSA/KzsU1kXOmLQrYOdMeL6Xj/C', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1426, 'Vishnu Prasad YN', NULL, 'vishnuyn2000@gmail.com', '9731105469', NULL, '$2y$10$x.46UDY44QcHTm941DqxPOdKkeYWxnkjnU.7OG5rG9G.nIOFTW4pW', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1427, 'YAMUNA B M', NULL, 'yamuna.bm22@gmail.com', '6360182769', NULL, '$2y$10$3PoDIlb0PG6fO8s6oDHhr.LVG0XHtzxRuS5vEXqy3R5tyWfDEbFu6', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1428, 'Yashavanth.B.H', NULL, 'yashvanthbhy1997@gmail.com', '7026929248', NULL, '$2y$10$2XL2gQRkTqTktvd4v2z6SevxXiQj3AkLvRDVT/S..fWo3Ao97vPCy', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1429, 'Yashwanth R', NULL, 'yashwanthr2018@gmail.com', '7625010031', NULL, '$2y$10$Zgvjd6MYfMbdn/7TdPeq1OkuSC2oy2XuuPI1tJv7vp7vf72gZpnmm', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1430, 'Mohammed Yasir Baig', NULL, 'yasir28destiny@gmail.com', '9448066780', NULL, '$2y$10$v66oXLQXgJ2WUiPFBfO7meMIc0MQ2iBBUQJJ/G7fRCS5z8tJY..JG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1431, 'Sampoorna HS', NULL, 'yukthapoorna@gmail.com', '8867143875', NULL, '$2y$10$1E8N2mIfQ6s1x.oQLFvskOFkqUaTNdmgKPgYMFyt9tvvEjcRyUhGG', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1432, 'Yashwanth K', NULL, 'yyashwanth1280@gmail.com', '7795563155', NULL, '$2y$10$gnt5guFFLDY1tLx.tQb9XeEi6wBmNcePpVBuqlyRPdYFr/q71gV2q', NULL, 2, NULL, NULL, 1, '2021-08-23 11:39:56', '2021-08-23 11:39:56'),
(1433, 'demo', NULL, 'demopassword@gmail.com', NULL, NULL, '$2y$10$7cAORjf8i3Z6YmiDu.sLbu8Q8rT6nZbEFMNan7AfnW1c8PmVK2aY.', NULL, 2, NULL, NULL, 1, '2021-08-26 07:53:37', '2021-08-26 07:53:37');

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
(2, 3, '2021-07-01', NULL, 'asdfafafg', NULL, NULL, NULL, NULL, '6', NULL, 1, '2021-07-31 04:53:23', '2021-07-31 04:53:23', 'dgsdgf', 'dsfadsfgsad', 'dfg', '41541', NULL, 'A +');

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
(13, 3, 3, 1, '2021-08-27 10:28:55', '2021-08-27 10:28:55'),
(14, 3, 3, 1, '2021-08-27 11:48:26', '2021-08-27 11:48:26');

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
-- Indexes for table `material`
--
ALTER TABLE `material`
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
-- Indexes for table `test_semester`
--
ALTER TABLE `test_semester`
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
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `test_branch`
--
ALTER TABLE `test_branch`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `test_chapter`
--
ALTER TABLE `test_chapter`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `test_college`
--
ALTER TABLE `test_college`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `test_course`
--
ALTER TABLE `test_course`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- AUTO_INCREMENT for table `test_semester`
--
ALTER TABLE `test_semester`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `test_subject`
--
ALTER TABLE `test_subject`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `test_tb_section`
--
ALTER TABLE `test_tb_section`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1434;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
