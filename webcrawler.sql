-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2023 at 12:12 PM
-- Server version: 5.7.33
-- PHP Version: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webcrawler`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` json DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, '[]', 4, 8, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(2, '[]', 1, 5, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(3, '[]', 2, 2, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(4, '[]', 1, 7, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(5, '[]', 10, 1, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(6, '[]', 7, 6, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(7, '[]', 10, 2, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(8, '[]', 8, 8, '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(9, '[]', 1, 1, '2023-10-26 14:16:22', '2023-10-26 14:16:22'),
(10, '[]', 1, 1, '2023-10-26 14:16:22', '2023-10-26 14:16:22');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_26_142217_create_posts_table', 1),
(6, '2023_10_26_142601_create_comments_table', 1),
(7, '2023_10_26_143739_post_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'eaque', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(2, 'ipsa', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(3, 'voluptate', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(4, 'quia', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(5, 'rerum', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(6, 'dolor', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(7, 'magni', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(8, 'similique', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(9, 'libero', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(10, 'et', '[]', '2023-10-26 14:15:51', '2023-10-26 14:15:51'),
(11, 'voluptatibus', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(12, 'voluptates', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(13, 'possimus', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(14, 'exercitationem', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(15, 'repellendus', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(16, 'qui', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(17, 'animi', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(18, 'esse', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(19, 'placeat', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21'),
(20, 'ut', '[]', '2023-10-26 14:16:21', '2023-10-26 14:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Romaine Skiles', 'nveum@example.net', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w8Z28fhvZz', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(2, 'Dr. Montana Smitham PhD', 'gwest@example.net', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x1Yvpoi4Uz', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(3, 'Miss Sister Erdman MD', 'emory.ritchie@example.com', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'puVPEHM6Qt', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(4, 'Erika Hegmann', 'kunde.clinton@example.com', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3y2X9ONMR1', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(5, 'Ava Kunze Jr.', 'xbogisich@example.net', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mUDsaQje45', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(6, 'Prof. Mckenna Baumbach IV', 'fmoen@example.org', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6NUtSgKdAU', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(7, 'Alyce Gusikowski PhD', 'rosetta.franecki@example.com', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oq5vdZ8cim', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(8, 'Dr. Casimir Johnson III', 'keith.schinner@example.com', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '917HFpcjpE', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(9, 'Makenna Feil IV', 'hudson.brandon@example.org', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YJ6LV0Ds9Q', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(10, 'Mr. Chesley Raynor II', 'pouros.domenick@example.org', '2023-10-26 14:15:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WxTTnYJkRe', '2023-10-26 14:15:50', '2023-10-26 14:15:50'),
(11, 'Kamryn Kiehn', 'leonel.kulas@example.com', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FESg2eFgFT', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(12, 'Prof. Chandler Swaniawski PhD', 'zlegros@example.net', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oCaR3BgAtF', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(13, 'Prof. Margret O\'Kon II', 'predovic.savion@example.org', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uiPQGNUw6c', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(14, 'Kitty Zboncak', 'hraynor@example.net', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oAAFNEjCN5', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(15, 'Jany Abbott', 'vbechtelar@example.org', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iR49v2zam8', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(16, 'Elvis Pfeffer', 'stanton.austen@example.com', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mHrNTFecHt', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(17, 'Maegan Champlin I', 'mckenzie29@example.org', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uyt1XiUkWX', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(18, 'Miss Meta Barrows', 'davis.ransom@example.net', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZtaawrKnQM', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(19, 'Dr. Sofia Medhurst', 'gbogan@example.com', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uRSgcH2kos', '2023-10-26 14:16:20', '2023-10-26 14:16:20'),
(20, 'Katrina Langworth', 'skiles.howard@example.org', '2023-10-26 14:16:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LgaH2p7q03', '2023-10-26 14:16:20', '2023-10-26 14:16:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`post_id`,`user_id`),
  ADD KEY `post_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
