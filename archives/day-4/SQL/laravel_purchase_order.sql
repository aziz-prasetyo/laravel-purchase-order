-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 21, 2023 at 04:15 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_purchase_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2023_09_20_025554_create_products_table', 2),
(10, '2023_09_20_053713_create_purchase_order_lines_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Nobis dolor et placeat sunt optio mollitia.', 'quia', 100000, '1998-02-12 21:24:48', '1987-01-17 16:14:19'),
(2, 'Vitae rem illo quo.', 'quas', 100000, '1987-08-19 13:10:53', '1998-07-12 11:32:29'),
(3, 'Quos error ab qui saepe error.', 'quasi', 100000, '1981-11-10 18:04:04', '1985-03-10 05:13:59'),
(4, 'Est iusto sint suscipit.', 'est', 100000, '1992-05-28 13:50:25', '1992-10-12 12:29:30'),
(5, 'Consequatur tempore et magni repellat numquam voluptatibus.', 'iste', 100000, '2013-08-18 11:24:59', '1971-05-11 02:28:38'),
(6, 'Sint numquam voluptatibus ut earum quia maiores iusto nesciunt.', 'enim', 100000, '2004-08-02 16:32:38', '1992-06-08 05:38:06'),
(7, 'Sapiente doloremque ipsam nemo enim.', 'dolorum', 3228090, '2012-08-16 14:35:43', '1990-09-09 14:46:47'),
(8, 'Qui nobis est consequatur voluptatem temporibus aut.', 'alias', 1744860, '2008-10-25 11:05:33', '1990-07-25 15:51:26'),
(9, 'Quos consectetur eum nihil sint maiores velit voluptatem.', 'sapiente', 4970320, '2016-10-15 02:04:30', '2019-08-18 06:21:18'),
(10, 'Reiciendis sunt exercitationem mollitia temporibus rem optio.', 'et', 568805000, '1978-10-28 07:45:01', '2019-11-20 11:24:36'),
(11, 'Nobis asperiores ut omnis vero omnis omnis aut.', 'temporibus', 7947450, '1977-10-04 00:42:47', '2022-02-27 18:23:06'),
(12, 'Recusandae nesciunt quis distinctio autem nisi.', 'magni', 100000, '2014-05-07 13:56:55', '1976-10-27 00:38:35'),
(13, 'Nostrum illum sit itaque dolores velit sed aut.', 'rerum', 100000, '2002-10-22 20:16:14', '1978-05-05 15:31:42'),
(14, 'Molestias enim ut est quo nisi est.', 'quas', 100000, '1972-12-13 09:59:44', '2018-04-26 00:05:07'),
(15, 'Ut quaerat ipsa rerum ad temporibus sint.', 'reiciendis', 100000, '1992-10-03 20:44:28', '1994-06-11 02:48:36'),
(16, 'Sint consectetur explicabo cupiditate dolor expedita aut.', 'accusamus', 100000, '2014-07-06 19:46:09', '1975-01-01 18:11:49'),
(17, 'Voluptates id excepturi harum quasi.', 'sunt', 100000, '1994-06-14 11:37:52', '1997-09-29 09:31:57'),
(18, 'Animi est sed quas vero vitae qui officia alias.', 'esse', 3880980, '1989-06-04 17:37:38', '1973-05-09 22:12:30'),
(19, 'Earum qui quidem sed quae officiis nisi.', 'quia', 100000, '1975-12-09 05:13:44', '1982-03-20 06:28:24'),
(20, 'Debitis eum voluptas tenetur iure sint occaecati non.', 'necessitatibus', 100000, '2007-06-29 08:38:37', '1999-10-10 12:19:31'),
(21, 'Eum aliquam omnis temporibus vel incidunt id.', 'assumenda', 906884, '1973-12-17 20:43:04', '2012-11-16 22:00:38'),
(22, 'Provident quo harum eos inventore ab omnis mollitia.', 'sit', 3673710, '1978-01-19 03:03:36', '2001-09-08 11:26:12'),
(23, 'Velit neque provident velit rerum.', 'itaque', 4308820, '1973-02-19 12:18:11', '2008-10-11 07:55:09'),
(24, 'Sunt reiciendis et mollitia animi voluptatum ut perspiciatis.', 'eveniet', 5543840, '1988-07-02 01:05:03', '1983-09-27 16:50:48'),
(25, 'Quo vero ea in illo veritatis alias inventore.', 'et', 7482640, '1976-04-14 07:08:24', '1997-02-05 23:47:02'),
(26, 'Nihil est ut porro est sint occaecati eveniet consectetur.', 'quod', 159029000, '1991-03-24 20:41:01', '1981-01-11 16:47:33'),
(27, 'In explicabo ipsa laudantium veritatis ratione tempora repellendus minima.', 'non', 211360000, '1970-06-13 23:20:11', '2016-03-27 03:33:51'),
(28, 'Voluptatem deleniti consequatur culpa sint sapiente.', 'voluptate', 3083390, '2010-01-24 21:30:23', '1972-01-27 12:30:19'),
(29, 'Commodi occaecati facilis libero quo.', 'occaecati', 100000, '2017-05-30 08:34:50', '1998-11-06 22:28:30'),
(30, 'Ipsum temporibus aut aut beatae sed cumque deleniti voluptatem.', 'esse', 364089, '1970-09-10 17:29:27', '2001-04-29 01:17:58'),
(31, 'At blanditiis et vero sunt sunt eum cumque minima.', 'et', 569917000, '1990-05-02 23:20:16', '2012-03-19 18:05:37'),
(32, 'Facere rem aut est.', 'voluptas', 100000, '2004-07-08 23:01:06', '1990-12-29 16:04:52'),
(33, 'Iure officiis enim repudiandae qui repellendus reprehenderit qui.', 'autem', 24080700, '1999-06-13 18:07:39', '1992-10-11 10:51:12'),
(34, 'Quia esse quos at qui.', 'perspiciatis', 100000, '1997-10-11 20:44:35', '1971-04-15 19:38:56'),
(35, 'Voluptates sapiente eos nesciunt officiis fuga.', 'natus', 100000, '2011-09-17 19:25:46', '2015-02-17 20:47:45'),
(36, 'Repellendus quo aut magnam quasi.', 'dignissimos', 100000, '2015-11-15 13:03:41', '2009-05-06 13:24:01'),
(37, 'Eligendi officia exercitationem ut est ducimus.', 'sed', 100000, '1972-06-09 07:56:44', '2012-01-18 08:34:46'),
(38, 'Laborum tempore nobis repudiandae sapiente alias ab molestiae.', 'possimus', 836288, '1991-04-10 10:08:20', '1970-02-23 09:19:01'),
(39, 'Tenetur minus in cupiditate voluptates.', 'eum', 100000, '1989-01-04 00:45:41', '2021-01-14 12:07:08'),
(40, 'Maiores quia qui quidem sed.', 'est', 100000, '1992-12-18 03:24:37', '2004-07-17 20:39:49'),
(41, 'Quis aut consequatur et voluptas possimus.', 'voluptatem', 100000, '1976-01-16 13:41:52', '2006-05-11 19:07:20'),
(42, 'Quaerat eveniet eligendi voluptatem nobis et.', 'facere', 15194800, '1995-10-26 23:43:11', '1980-05-27 15:38:13'),
(43, 'Quae alias voluptas eum sit.', 'voluptatem', 81714400, '1985-04-02 20:37:54', '1983-09-20 22:14:02'),
(44, 'Est ut dolorem assumenda non.', 'quaerat', 107875, '2004-04-29 12:32:10', '1974-05-14 12:59:33'),
(45, 'Dolores et officiis soluta voluptates cum aperiam occaecati repudiandae.', 'aliquid', 100000, '2014-08-26 08:47:18', '1972-04-16 16:52:15'),
(46, 'Dolor quas delectus at eum architecto mollitia repellat occaecati.', 'et', 357838000, '1993-08-24 23:23:43', '2023-02-11 23:31:17'),
(47, 'Tempore iusto laboriosam minus veniam non facere sed.', 'quia', 100000, '1982-08-11 12:16:18', '2021-11-22 09:57:31'),
(48, 'Numquam dignissimos ullam eveniet reiciendis et.', 'voluptatem', 135292, '2007-02-13 03:32:21', '1996-11-30 03:37:50'),
(49, 'Optio doloremque voluptatem est maxime voluptates et.', 'accusantium', 100000, '1999-02-02 17:05:54', '2016-11-05 23:09:12'),
(50, 'Dolorum molestiae eos maiores et in dolor.', 'omnis', 100000, '1974-10-17 07:04:13', '1990-08-30 03:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL,
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_shop_tokens`
--

INSERT INTO `protection_shop_tokens` (`id`, `user_id`, `number`, `expires`, `success_url`, `cancel_url`, `success_url_title`, `cancel_url_title`, `shop_url`) VALUES
(1, 3, 'a7383b8b-b497-4eeb-b22e-037582113400', '2023-09-19 22:08:09', 'http://127.0.0.1:8080/membership/clear-cache?dest=http%3A%2F%2F127.0.0.1%3A8080%2Fmembership', 'http://127.0.0.1:8080', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=a7383b8b-b497-4eeb-b22e-037582113400');

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL,
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_validations`
--

INSERT INTO `protection_validations` (`id`, `user_id`, `ttl`, `validation_result`) VALUES
(1, 3, '2023-09-19 21:42:51', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":false,\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"RED\",\"licensingModel\":\"Subscription\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `discount` float UNSIGNED NOT NULL,
  `total` float UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_lines`
--

INSERT INTO `purchase_order_lines` (`id`, `product_id`, `qty`, `price`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, 35, 2, 2000, 50, 3000, '2023-09-20 20:44:54', '2023-09-20 20:44:54'),
(2, 41, 100, 1000000, 3333, 66670000, '2023-09-20 20:53:16', '2023-09-20 20:53:16'),
(3, 2, 100, 1000, 25, 99750, '2023-09-20 21:02:03', '2023-09-20 21:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$gQE5IZny/DmFdmv8W/iD2O6d/Z98zKHkpNO/SAGfYSjXql6z7AlxS', 1, 'e88206bc-75b6-4b2f-a586-4b22dec5af8d', 1, NULL, NULL, '2023-09-19 22:05:53', '2023-09-20 20:41:02', NULL, '2023-09-21 03:41:02'),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$3f52Hg.X.HjVjwuf3AZclOcqIUoiGvZniMJXC38n52ByXggxYB2fm', 1, '3eaa060c-5247-48ad-aa55-af3931760de9', 1, NULL, NULL, '2023-09-19 22:05:53', '2023-09-19 22:05:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_lines_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD CONSTRAINT `purchase_order_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
