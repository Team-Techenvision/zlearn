-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 02:26 PM
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
(1, 3, 'fdhdhfd', 1, 'dfdfhd', 1, '2021-08-07 10:20:21', '2021-08-07 10:20:21');

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
(1, 1, 'Chandragupta Maurya', 1, '2021-08-02 04:57:21', '2021-08-02 04:57:21'),
(2, 1, 'Rudradaman', 0, '2021-08-02 04:57:21', '2021-08-02 06:52:36'),
(3, 1, 'Chandragupta II', 1, '2021-08-02 04:57:21', '2021-08-02 04:57:21'),
(4, 1, 'Skandagupta', 1, '2021-08-02 04:57:21', '2021-08-02 04:57:21'),
(5, 4, 'Sacrifices', 1, '2021-08-02 05:35:50', '2021-08-02 05:35:50'),
(6, 4, 'Family ceremonies', 1, '2021-08-02 05:35:50', '2021-08-02 05:35:50'),
(7, 5, 'Gulzara Singh Mann', 1, '2021-08-03 05:06:12', '2021-08-03 05:06:12'),
(8, 5, 'Avinash Sable', 1, '2021-08-03 05:06:12', '2021-08-03 05:06:12'),
(9, 5, 'Gopal Saini', 1, '2021-08-03 05:06:12', '2021-08-03 05:06:12'),
(10, 5, 'Madan Singh', 1, '2021-08-03 05:06:12', '2021-08-03 05:06:12'),
(11, 6, 'A', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(12, 6, 'B', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(13, 6, 'C', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(14, 6, 'D', 1, '2021-08-03 06:34:22', '2021-08-03 06:34:22'),
(15, 7, 'August 8', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(16, 7, 'August 1', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(17, 7, 'July 30', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(18, 7, 'July 28', 1, '2021-08-03 06:35:13', '2021-08-03 06:35:13'),
(19, 8, 'A', 1, '2021-08-03 06:50:42', '2021-08-03 06:50:42'),
(20, 8, 'B', 1, '2021-08-03 06:50:42', '2021-08-03 06:50:42'),
(21, 8, 'C', 1, '2021-08-03 06:50:42', '2021-08-03 06:50:42'),
(22, 8, 'D', 1, '2021-08-03 06:50:42', '2021-08-03 06:50:42'),
(23, 9, 'A', 1, '2021-08-04 06:21:06', '2021-08-04 06:21:06'),
(24, 9, 'B', 1, '2021-08-04 06:21:06', '2021-08-04 06:21:06'),
(25, 9, 'C', 1, '2021-08-04 06:21:06', '2021-08-04 06:21:06'),
(26, 9, 'D', 1, '2021-08-04 06:21:06', '2021-08-04 06:21:06'),
(27, 10, 'A', 1, '2021-08-04 06:21:56', '2021-08-04 06:21:56'),
(28, 10, 'B', 1, '2021-08-04 06:21:56', '2021-08-04 06:21:56'),
(29, 11, 'Save lives', 1, '2021-08-06 00:19:04', '2021-08-06 00:19:04'),
(30, 11, 'The future we want, the UN we need', 1, '2021-08-06 00:19:04', '2021-08-06 00:19:04'),
(31, 11, 'Human Trafficking: Call Your Government To Action', 1, '2021-08-06 00:19:04', '2021-08-06 00:19:04'),
(32, 11, 'Victims voices lead the way', 1, '2021-08-06 00:19:04', '2021-08-06 00:19:04'),
(33, 12, 'Save lives', 1, '2021-08-06 00:27:37', '2021-08-06 00:27:37'),
(34, 12, 'The future we want, the UN we need', 1, '2021-08-06 00:27:37', '2021-08-06 00:27:37'),
(35, 12, 'Human Trafficking: Call Your Government To Action', 1, '2021-08-06 00:27:37', '2021-08-06 00:27:37'),
(36, 12, 'Victims voices lead the way', 1, '2021-08-06 00:27:38', '2021-08-06 00:27:38'),
(37, 13, 'ROSCOSMOS and NASA', 1, '2021-08-06 00:31:51', '2021-08-06 00:31:51'),
(38, 13, 'NASA and CNSA', 1, '2021-08-06 00:31:51', '2021-08-06 00:31:51'),
(39, 13, 'ISRO and ROSCOSMOS', 1, '2021-08-06 00:31:51', '2021-08-06 00:31:51'),
(40, 13, 'ISRO and NASA', 1, '2021-08-06 00:31:51', '2021-08-06 00:31:51'),
(41, 14, 'A', 1, '2021-08-06 23:23:43', '2021-08-06 23:23:43'),
(42, 14, 'B', 1, '2021-08-06 23:23:43', '2021-08-06 23:23:43'),
(43, 14, 'C', 1, '2021-08-06 23:23:43', '2021-08-06 23:23:43'),
(44, 14, 'D', 1, '2021-08-06 23:23:43', '2021-08-06 23:23:43'),
(45, 15, 'A', 1, '2021-08-06 23:38:12', '2021-08-06 23:38:12'),
(46, 15, 'B', 1, '2021-08-06 23:38:12', '2021-08-06 23:38:12'),
(47, 15, 'C', 1, '2021-08-06 23:38:12', '2021-08-06 23:38:12'),
(48, 15, 'D', 1, '2021-08-06 23:38:13', '2021-08-06 23:38:13'),
(49, 16, 'Ajatsatru', 1, '2021-08-09 00:33:02', '2021-08-09 00:33:02'),
(50, 16, 'Ashoka', 1, '2021-08-09 00:33:02', '2021-08-09 00:33:02'),
(51, 16, 'Kanishka', 1, '2021-08-09 00:33:02', '2021-08-09 00:33:02'),
(52, 16, 'Kalasoka', 1, '2021-08-09 00:33:02', '2021-08-09 00:33:02'),
(53, 17, 'A', 1, '2021-08-09 00:37:10', '2021-08-09 00:37:10'),
(54, 17, 'B', 1, '2021-08-09 00:37:10', '2021-08-09 00:37:10'),
(55, 17, 'C', 1, '2021-08-09 00:37:10', '2021-08-09 00:37:10'),
(56, 17, 'D', 1, '2021-08-09 00:37:10', '2021-08-09 00:37:10'),
(57, 19, 'A', 1, '2021-08-09 00:39:09', '2021-08-09 00:39:09'),
(58, 19, 'B', 1, '2021-08-09 00:39:09', '2021-08-09 00:39:09'),
(59, 19, 'C', 1, '2021-08-09 00:39:09', '2021-08-09 00:39:09'),
(60, 19, 'D', 1, '2021-08-09 00:39:09', '2021-08-09 00:39:09'),
(61, 1, 'Hastivarman', 1, '2021-08-09 04:03:25', '2021-08-09 04:03:25'),
(62, 1, 'Mantaraja', 1, '2021-08-09 04:03:25', '2021-08-09 04:03:25'),
(63, 1, 'Nilaraja', 1, '2021-08-09 04:03:25', '2021-08-09 04:03:25'),
(64, 1, 'Vishnugopa', 1, '2021-08-09 04:03:25', '2021-08-09 04:03:25'),
(65, 2, 'ex2', 1, '2021-08-09 04:06:13', '2021-08-09 04:06:13'),
(66, 2, '2x', 1, '2021-08-09 04:06:13', '2021-08-09 04:06:13'),
(67, 2, '2ex2', 1, '2021-08-09 04:06:13', '2021-08-09 04:06:13'),
(68, 2, '2xex2', 1, '2021-08-09 04:06:13', '2021-08-09 04:06:13'),
(69, 3, '{1,2,3} and {2,3,4}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16'),
(70, 3, '{1,3,5} and {1,3,5,7}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16'),
(71, 3, '{3,4,7} and {7,4,3}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16'),
(72, 3, '{1,2,7} and {2,7,1,4}', 1, '2021-08-09 06:25:16', '2021-08-09 06:25:16');

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
(4, 3, 'dfgdhdfh', 'images/Certificate/90712.jpeg', 1, '2021-08-07 10:20:21', '2021-08-07 10:20:21');

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
(6, 'Current Affairs 2021', 1, 9, 1, '2021-08-06 00:17:10', '2021-08-06 00:17:10');

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
  `degree` tinyint(4) DEFAULT NULL,
  `roll_no` tinyint(4) DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 3, 'fdhdh', 1, 'dfhdfh', 1, '2021-08-07 10:20:21', '2021-08-07 10:20:21');

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
(1, 9, 6, NULL, 0, 'Who among the following was the ruler of Kanchi during the time of Samudragupta ?', NULL, '4', 'test', 3, 1, '2', 1, '2021-08-09 04:01:27', '2021-08-09 04:03:25'),
(2, 1, 5, NULL, 0, 'Find the derivative of ex2', NULL, '4', 'Mathematics Multiple Choice Questions & Answers', 3, 1, '4', 1, '2021-08-09 04:05:23', '2021-08-09 04:06:13'),
(3, 1, 1, NULL, 0, 'Which of the following two sets equal?', NULL, '4', 'Equal Sets', 3, 1, '2', 1, '2021-08-09 06:24:32', '2021-08-09 06:25:16');

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
(1, 3, 1, 9, NULL, 3, 1, '2021-08-09 04:49:22', '2021-08-09 04:49:22'),
(2, 3, 1, 10, NULL, 1, 1, '2021-08-09 04:49:22', '2021-08-09 04:49:22'),
(3, 3, 1, 12, NULL, 4, 1, '2021-08-09 04:49:22', '2021-08-09 04:49:22'),
(4, 3, 1, 13, NULL, 4, 1, '2021-08-09 04:49:22', '2021-08-09 04:49:22'),
(5, 3, 1, 14, NULL, 3, 1, '2021-08-09 04:49:22', '2021-08-09 04:49:22'),
(6, 3, 1, 15, NULL, 1, 1, '2021-08-09 04:49:23', '2021-08-09 04:49:23');

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
(4, 'Maths', 1, 5, 1, '2021-07-30 23:46:41', '2021-07-30 23:46:41'),
(5, 'Hindi', 4, 4, 1, '2021-07-30 23:46:56', '2021-07-30 23:50:50'),
(6, 'Economics', 4, 4, 1, '2021-07-30 23:47:16', '2021-07-30 23:47:16'),
(8, 'Marathi', 1, 4, 1, '2021-07-30 23:51:44', '2021-07-30 23:52:08'),
(9, 'Current Affairs', 4, 6, 1, '2021-08-06 00:16:33', '2021-08-06 00:16:33'),
(10, 'Engineering physics', 5, 2, 1, '2021-08-07 00:07:28', '2021-08-07 00:10:33');

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

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_type_id` int(20) DEFAULT NULL,
  `test_instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` tinyint(20) DEFAULT NULL,
  `semester_id` tinyint(20) DEFAULT NULL,
  `traning_program` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_level` int(10) DEFAULT NULL,
  `question_pattern` int(10) DEFAULT NULL,
  `total_question` int(255) DEFAULT NULL,
  `total_marks` int(255) DEFAULT NULL,
  `time_per_question` int(50) DEFAULT NULL,
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

INSERT INTO `tests` (`id`, `test_name`, `test_type_id`, `test_instruction`, `branch_id`, `semester_id`, `traning_program`, `description`, `question_level`, `question_pattern`, `total_question`, `total_marks`, `time_per_question`, `hours`, `minute`, `exam_date`, `exam_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Practice', 2, 'test', 4, 4, 'test', 'test', 3, 1, 10, 10, 10, 1, 0, '2021-08-10', '15:07:00', 1, '2021-08-09 04:07:44', '2021-08-09 04:07:44'),
(2, 'Ancient Indian History', 2, 'test2', 3, 4, 'test2', 'test', 3, 1, 10, 10, 1, 1, 0, '2021-08-12', '15:09:00', 1, '2021-08-09 04:09:23', '2021-08-09 04:09:23');

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
(1, 1, 5, '2021-08-09 04:07:44', '2021-08-09 04:07:44'),
(2, 2, 6, '2021-08-09 04:09:23', '2021-08-09 04:09:23'),
(3, 1, 1, '2021-08-09 04:07:44', '2021-08-09 04:07:44');

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
(3, 2, 3, '2021-08-09 04:09:23', '2021-08-09 04:09:23');

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
(2, 2, 3, '2021-08-09 04:09:23', '2021-08-09 04:09:23');

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
(4, 1, 2, 1, '2021-08-09 06:28:12', '2021-08-09 06:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `test_section`
--

CREATE TABLE `test_section` (
  `id` int(20) NOT NULL,
  `test_section_name` varchar(255) DEFAULT NULL,
  `status` int(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_section`
--

INSERT INTO `test_section` (`id`, `test_section_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quantitative Aptitude', 1, '2021-08-07 12:41:30', '2021-08-07 12:41:30'),
(2, 'Verbal Ability', 1, '2021-08-07 12:41:49', '2021-08-07 12:41:49'),
(3, 'Analytical Ability', 0, '2021-08-07 12:42:02', '2021-08-09 00:15:06');

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
(6, 2, 9, '2021-08-09 04:09:23', '2021-08-09 04:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE `test_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_types`
--

INSERT INTO `test_types` (`id`, `test_type_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Class room Test ', 1, NULL, NULL),
(2, 'Practice Test ', 1, NULL, NULL),
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
(1, 'admin', NULL, 'admin@gmail.com', NULL, NULL, '$2y$10$.SPPmQbIh.L2L.eig6UIfOqp3NM5YDr2C9M7uOLQ9Hdb.thjdPl/2', '07pDo2Iox7Gjfwj5XhuqIjb08GjpkglRfB3TGNvbPsg9hM2yNC5bAWJTU5gY', 1, NULL, NULL, 1, '2021-07-04 05:23:21', '2021-07-04 05:23:21'),
(3, 'Dhananjay', 'Sawant', 'student@gmail.com', '9876543210', NULL, '$2y$10$mF09s6pGPsOY4MZQ4kZIlOBuqibNo/OHV9nfP5LR5zuc79KEl9F52', 'CcOIUCgBXenRYR5FVpV1lUGj3iTzXcswryzPZpaYvMFvmz4T4UMzR9I1Rcxy', 2, NULL, NULL, 1, '2021-07-08 04:33:21', '2021-07-08 04:33:21'),
(4, 'rahul', NULL, 'student1@gmail.com', NULL, NULL, '$2y$10$nH0Ba7P/gZIZqOW6dLC8SOVnhQ5p0Nv0LQqqpNRwEqL.Drjr1M64C', NULL, 1, NULL, NULL, 1, '2021-07-31 04:18:00', '2021-07-31 04:18:00'),
(5, 'demo', NULL, 'demo@gmail.com', NULL, NULL, '$2y$10$pi8/wl09oeckbrfLY4xnCeUMZPDpin7aiZwBHhp2XxSpS4UvK3dwW', NULL, 2, NULL, NULL, 1, '2021-07-31 05:11:47', '2021-07-31 05:11:47'),
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
(2, 3, '2021-07-01', NULL, 'asdfafafg', NULL, NULL, NULL, NULL, '5', NULL, 1, '2021-07-31 04:53:23', '2021-07-31 04:53:23', 'dgsdgf', 'dsfadsfgsad', 'dfg', '41541', NULL, 'fafafgfdsagsg');

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
(1, 3, 1, 1, '2021-08-09 04:49:21', '2021-08-09 04:49:21');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academic_projects`
--
ALTER TABLE `academic_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interships`
--
ALTER TABLE `interships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `technical_skills`
--
ALTER TABLE `technical_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_chapter`
--
ALTER TABLE `test_chapter`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_college`
--
ALTER TABLE `test_college`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_course`
--
ALTER TABLE `test_course`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_name`
--
ALTER TABLE `test_name`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `test_question`
--
ALTER TABLE `test_question`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_section`
--
ALTER TABLE `test_section`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_subject`
--
ALTER TABLE `test_subject`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
