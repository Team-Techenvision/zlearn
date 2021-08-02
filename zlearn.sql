-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2021 at 04:50 AM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academics_details`
--

INSERT INTO `academics_details` (`id`, `user_id`, `sslc_perce`, `sslc_year`, `puc_perce`, `puc_year`, `diploma_perce`, `diploma_year`, `ddl_graduation`, `other_graduation`, `ddl_pg`, `other_pg`, `avg_cgpa`, `year_graduation`, `curr_backlog`, `num_year_backlog`, `gap`, `gap_explan`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '12', '2012', '34', '2015', '60', '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 1, '2021-07-31 17:08:40', '2021-07-31 17:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `categories_name` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1 Active 0 inactive',
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
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semister_id` tinyint(4) DEFAULT NULL,
  `subject_id` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `chapter_name`, `semister_id`, `subject_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'trignometry', 1, 1, 1, '2021-07-31 00:22:45', '2021-07-31 00:22:45'),
(2, 'poem', 1, 2, 1, '2021-07-31 01:07:30', '2021-07-31 01:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `college_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `college_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kit college', 1, '2021-07-30 01:04:49', '2021-07-30 01:04:49'),
(2, 'DYP Medical', 1, '2021-07-30 01:05:37', '2021-07-30 04:04:45'),
(3, 'Bharti Vidhyapeeth', 1, '2021-07-30 02:55:57', '2021-07-31 01:57:34'),
(6, 'Bharti vidhyapeeth mumbai', 1, '2021-07-31 16:28:01', '2021-07-31 16:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `education__details`
--

CREATE TABLE `education__details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `compus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` tinyint(4) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education__details`
--

INSERT INTO `education__details` (`id`, `user_id`, `compus`, `degree`, `roll_no`, `education`, `current_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'atfgsagg', 1, 10, 'UG', 'Rajarampuri', 1, '2021-07-31 16:30:10', '2021-07-31 16:30:10'),
(2, 4, 'demo', 2, 50, 'UG', 'demo', 1, '2021-07-31 17:46:29', '2021-07-31 17:46:29');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, '2021_07_31_082426_create_test__types_table', 8);

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
-- Table structure for table `semisters`
--

CREATE TABLE `semisters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semister_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semisters`
--

INSERT INTO `semisters` (`id`, `semister_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1 st', 1, '2021-07-30 04:39:41', '2021-07-31 18:04:11'),
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
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
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
  `standard_id` tinyint(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `semister_id`, `standard_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maths', 1, 4, 1, '2021-07-30 05:47:37', '2021-07-30 05:47:37'),
(2, 'English', 1, 4, 1, '2021-07-30 05:56:42', '2021-07-30 05:56:42'),
(4, 'Maths', 1, 5, 1, '2021-07-30 23:46:41', '2021-07-30 23:46:41'),
(5, 'Hindi', 4, 4, 1, '2021-07-30 23:46:56', '2021-07-30 23:50:50'),
(6, 'Economics', 4, 4, 1, '2021-07-30 23:47:16', '2021-07-30 23:47:16'),
(8, 'Marathi', 1, 4, 1, '2021-07-30 23:51:44', '2021-07-30 23:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE `test_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `user_type` int(20) NOT NULL DEFAULT '2' COMMENT '1 admin user 2 Student',
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standers` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT '1' COMMENT 'Active : 1 inactive : 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `l_name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `user_type`, `gender`, `standers`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 'admin@gmail.com', NULL, NULL, '$2y$10$.SPPmQbIh.L2L.eig6UIfOqp3NM5YDr2C9M7uOLQ9Hdb.thjdPl/2', 'QtOKNmuh8NM0VJrbn6vBupsloV36zNdtGQ6aplj6TD4NkqTq8GY0zgPQpKNW', 1, NULL, NULL, 1, '2021-07-04 05:23:21', '2021-07-04 05:23:21'),
(3, 'Dhananjay', 'Sawant', 'student@gmail.com', '9876543210', NULL, '$2y$10$mF09s6pGPsOY4MZQ4kZIlOBuqibNo/OHV9nfP5LR5zuc79KEl9F52', 'VxazYNg7WqsYAciJHPCjF4cVK80GRxzBgPTMQ0uSxhgSGv2nllAs8r86LzZk', 2, '1', 'UG', 1, '2021-07-08 04:33:21', '2021-07-08 04:33:21'),
(4, 'demo', 'demo', 'demo@gmail.com', '9876543210', NULL, '$2y$10$g93i4TC8A2eKTYDU9TuOpe6A.F53YdCNEodzwQjljr53YzJTnX5jW', NULL, 2, '1', 'UG', 1, '2021-07-31 17:44:24', '2021-07-31 17:44:24'),
(5, 'demo2', NULL, 'demo2@gmail.com', NULL, NULL, '$2y$10$CwEVW3bfgbKjOEHD9AscEOqLjGqv1.fbxhzIueJyIeB8vLVdTl61y', NULL, 2, NULL, NULL, 1, '2021-07-31 17:51:19', '2021-07-31 17:51:19');

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
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-activate,0-de-activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_kyc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roll_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `dob`, `image`, `address`, `city`, `pin_code`, `state`, `country`, `semister`, `role_id`, `status`, `created_at`, `updated_at`, `mother_name`, `father_name`, `occupation`, `kyc_name`, `upload_kyc`, `blood_group`, `compus`, `degree`, `roll_no`, `education`, `current_address`) VALUES
(1, 3, '2021-07-01', NULL, 'dfdfsd', NULL, NULL, NULL, NULL, '1', NULL, 1, '2021-07-31 16:20:03', '2021-07-31 16:20:03', 'asas', 'ffsd', 'dsffsdf', 'Ezqps', NULL, 'sf', 'dgsdghsdh', '1', '124', 'UG', 'sdgsdgsd'),
(2, 4, '2021-07-01', NULL, 'demo', NULL, NULL, NULL, NULL, '7', NULL, 1, '2021-07-31 17:46:29', '2021-07-31 17:46:29', 'demo', 'demo', 'demo', '12345678', NULL, 'B', NULL, NULL, NULL, NULL, NULL);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics_details`
--
ALTER TABLE `academics_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

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
-- Indexes for table `test_types`
--
ALTER TABLE `test_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics_details`
--
ALTER TABLE `academics_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `education__details`
--
ALTER TABLE `education__details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
