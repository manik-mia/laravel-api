-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2023 at 09:35 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-api`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_11_133210_create_posts_table', 1);

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
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author`, `post_image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Eos laudantium molestias quis eum delectus.', 'Deontae Bruen', 'https://picsum.photos/seed/picsum/840/700', 'Blanditiis magnam vitae quasi qui natus beatae rem. Aut sit expedita nemo eveniet itaque repellendus. Qui qui sed repudiandae rerum aliquam sed. Sed consequuntur iste voluptas dolorem quia exercitationem.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(2, 'Rerum quos ut possimus saepe soluta a.', 'Mr. Rashawn Purdy', 'https://picsum.photos/seed/picsum/840/600', 'Qui sint illum quibusdam. Quidem dolorem at et et. Quia iure quo qui sunt. Est quasi adipisci facere ea ipsam culpa officia. Neque eos optio autem magni voluptatem sed. Sed porro error est voluptas enim magni praesentium natus. Quos sequi iusto vero veniam animi id nesciunt.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(3, 'In magnam ut unde nisi non provident autem.', 'Dr. Richard Kuhic IV', 'https://picsum.photos/seed/picsum/840/600', 'Et molestiae aut deleniti aut non non voluptatem. Delectus earum aliquam eos aut provident. Aspernatur officiis quasi veniam dolores. Nemo facilis soluta sapiente voluptatibus et deleniti voluptatum voluptatibus. Sit sed dolor dicta. Sint et non exercitationem odio tenetur nemo ut.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(4, 'Odio dicta mollitia natus sit.', 'Giovanni Jacobs', 'https://picsum.photos/seed/picsum/840/600', 'Corrupti velit autem sunt nemo. Et in ea iste molestias maxime autem. Nihil quos placeat omnis libero ducimus. Neque aut adipisci sunt omnis ab asperiores. At omnis est quis dolores beatae.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(5, 'Fuga enim libero nam.', 'Mr. Lance McDermott Sr.', 'https://picsum.photos/seed/picsum/840/600', 'Quisquam eos voluptatibus perspiciatis dolores animi porro. Aut rem ratione debitis rerum culpa quo. Consequatur libero illo aspernatur neque aliquid rerum blanditiis distinctio. Et neque omnis laudantium est officiis occaecati amet earum. Ipsum impedit commodi nesciunt aut iusto odio id qui. Consequuntur optio ducimus inventore beatae consectetur.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(6, 'Est delectus voluptas quibusdam consequuntur iste minus nesciunt quas.', 'Connor Reinger', 'https://picsum.photos/seed/picsum/840/600', 'Quasi a ducimus in quas saepe ut. Voluptates voluptatem ut et modi. Minus quo dolores nesciunt doloribus aliquid sequi minima et. Aliquam sit cumque explicabo quia.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(7, 'Repellat corrupti provident ipsum recusandae et sit qui.', 'Prof. Orland Klein DDS', 'https://picsum.photos/seed/picsum/840/600', 'Cumque praesentium molestias veniam amet corrupti. Id autem fugiat nostrum non. Dolor enim cumque reiciendis amet et. Consectetur consectetur quo sit voluptatum quia. Sint atque tempore eveniet architecto voluptas quis nihil. Nesciunt est eaque mollitia esse repellat.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(8, 'Fugiat quia sequi ab enim sunt exercitationem necessitatibus mollitia.', 'Pablo Price Jr.', 'https://picsum.photos/seed/picsum/840/600', 'Mollitia molestiae praesentium ex hic est eum. Minus accusamus aut autem rerum. Quisquam accusamus rerum fugit reiciendis impedit rerum. Eligendi excepturi excepturi et perferendis eos sed. Ut accusamus quisquam aperiam ut non. Fugiat officiis tenetur aliquam fuga. Aspernatur expedita alias saepe fugit.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(9, 'Expedita aut quos nesciunt aut ab nesciunt.', 'Cary Schneider', 'https://picsum.photos/seed/picsum/840/600', 'Sed aut rerum architecto in quis sapiente quis. Sed assumenda qui aut ut amet est. Odit enim aut omnis et et provident. Expedita sed facere sapiente. Ipsum ea autem unde rerum. Fugit quia facere ut dolorem ex quis a.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(10, 'Et esse aut sint adipisci.', 'Ricardo Watsica', 'https://picsum.photos/seed/picsum/840/700', 'Odio eos nihil vel sit. Illo natus ut tempora est soluta vel aut. Magnam voluptatibus in quis esse voluptatem. Voluptas dignissimos et sunt repellat reprehenderit dolorum eius. Aut quo omnis eius omnis corrupti. Veritatis enim natus aut ut nihil nihil. Non voluptatem iure magni consequatur omnis et id.', '2022-09-11 11:05:33', '2022-09-11 11:05:33'),
(11, 'Post Update from postman 2', 'Manik', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-10-03 08:00:42', '2022-10-03 20:26:49'),
(12, 'Post Update from postman', 'manik', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-10-03 08:01:18', '2022-10-03 20:09:50'),
(13, 'Post title from postman', 'postman', NULL, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sint minus, sequi ea eos fugiat quas velit voluptatibus! Veniam, dignissimos sit?', '2022-10-03 08:01:42', '2022-10-03 08:01:42'),
(15, 'Post title from postman with Image', 'postman', 'uploads/posts/1745676202640073.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sint minus, sequi ea eos fugiat quas velit voluptatibus! Veniam, dignissimos sit?', '2022-10-03 08:15:59', '2022-10-03 08:15:59');

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
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
