-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 08:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Quis maiores magni enim non.', 'In consequatur et dolore. Odio autem quia vel. Harum aspernatur ea nesciunt ipsam iste ipsum et. Nobis voluptatum corrupti laborum deserunt.', 4, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(2, 'Ipsum nemo atque vero ducimus ab placeat.', 'Quos labore iste voluptatem ut maiores corrupti quo. Non debitis ducimus in. Veritatis rem in et provident modi ut ea. Voluptas nisi dolorem esse aspernatur. Maxime ad consequatur quibusdam enim corrupti et facere.', 3, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(3, 'Deserunt ipsum natus quo.', 'In fuga est in provident et modi et. Aut animi quia sint. Ad et aperiam est itaque repellat enim. Consequatur enim sapiente expedita dolorem saepe ut.', 4, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(4, 'Deleniti voluptatum voluptatum sit non id dolor cum.', 'Accusamus fugiat et eos qui aut velit. Deleniti animi quas rerum quo. Itaque in et fugit. Dignissimos voluptatem illum voluptates adipisci voluptatibus quo.', 5, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(5, 'Nesciunt provident quibusdam eos qui aperiam.', 'Odio error ad reprehenderit et et dolorem. Et sed consequuntur mollitia. Dignissimos voluptatem dolor totam debitis sint.', 2, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(6, 'Consequatur sit asperiores ut ad laboriosam tenetur quis.', 'Fuga sint ipsa est. Corrupti commodi culpa animi architecto. Accusamus reprehenderit doloremque ut reprehenderit quasi.', 2, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(7, 'Nisi et eius laudantium ipsum.', 'Sapiente qui ea voluptatum. Ab ipsam suscipit exercitationem iure.', 1, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(8, 'Et doloremque dignissimos quos sed aut ut.', 'Vitae magnam explicabo sapiente eum unde. Ad consequatur voluptas itaque exercitationem. Qui dignissimos ea quidem quis aut harum sed ratione. Dicta voluptatem consectetur consequatur quos. Neque eos suscipit aspernatur sed.', 2, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(9, 'Voluptatibus eveniet quae temporibus nobis aut.', 'Veniam nihil accusantium dolore cupiditate. Omnis nisi ut saepe omnis sunt repudiandae qui odit. Nihil necessitatibus facilis earum numquam nesciunt quia. Ut maiores mollitia aliquid modi.', 2, '2024-06-06 07:14:21', '2024-06-06 07:14:21'),
(10, 'Deleniti corporis possimus praesentium aliquam.', 'Odit voluptatem tempore suscipit repellendus. Aspernatur numquam cum blanditiis debitis itaque tempora ullam. Pariatur ut corporis quia dolorem magni modi nesciunt.', 2, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(11, 'Accusantium doloremque vitae natus quia possimus.', 'Non voluptatem molestiae eaque delectus id ipsam. Fugit cupiditate et velit doloribus excepturi recusandae et. Porro ad amet qui est voluptatem enim mollitia. Iure harum omnis nihil adipisci. Velit voluptas laudantium tempora eos.', 1, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(12, 'Placeat quis et in qui expedita provident perspiciatis.', 'Recusandae nostrum nam quasi eligendi. Cumque quidem dolor fuga vel voluptatem magnam. Natus ab voluptate ut eius quam tenetur. Qui voluptas perspiciatis quod aliquam recusandae.', 2, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(13, 'Architecto repellat nam voluptatibus ipsam laborum sit.', 'Officia delectus possimus aut quaerat dolorem placeat laborum. Expedita rem minus recusandae laborum. Non laudantium omnis eum aut et veritatis illo minima.', 3, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(14, 'Et officiis et id eum quam quasi et.', 'Est vel sit quasi impedit quam. Iste ad praesentium velit est quibusdam. Saepe odit facilis voluptatem nulla. Cum sequi facilis id consequuntur a. Maxime voluptates facilis quis debitis voluptatem distinctio.', 2, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(15, 'Eius dolore dignissimos sit consectetur.', 'Ducimus quo cum et recusandae corporis. Ratione ut ipsum occaecati ipsum quod et. Est animi quas nemo quos.', 1, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(16, 'Repellendus expedita necessitatibus occaecati sunt numquam.', 'Quia amet aspernatur voluptas et est repellat dicta. Qui officia porro aut eum non qui perspiciatis magnam. Molestias est culpa quis sit architecto rerum doloribus.', 4, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(17, 'Impedit qui repellendus qui vitae mollitia.', 'Vel voluptas beatae qui. Excepturi asperiores aliquam ut ut odit quia. Pariatur quidem libero qui doloribus.', 1, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(18, 'Dignissimos et voluptas quisquam.', 'Quasi sunt est illum dolores. Adipisci accusantium quia est sint molestias. Reiciendis deleniti nam totam tempore soluta unde.', 2, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(19, 'Qui dolorem alias aut officiis.', 'Omnis maxime aliquam et adipisci hic ex velit. Aut rerum aperiam quod architecto porro itaque. Occaecati quia porro vel nemo voluptas eligendi aut. Incidunt minima facere omnis veniam aut ratione soluta.', 2, '2024-06-06 07:14:22', '2024-06-06 07:14:22'),
(20, 'Ut cumque fuga velit explicabo dolore ut.', 'Ut eligendi non et quis natus libero ducimus. Blanditiis qui nihil dolorum sed aut. Asperiores harum porro cumque. Quibusdam pariatur et repellendus magnam expedita.', 3, '2024-06-06 07:14:22', '2024-06-06 07:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2024_06_06_132700_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kyawlinnaing808@gmail.com', '$2y$10$QA4zp6FJX3axCVaBiWRwCOilpql0ZQaKCwuGBxJ/b5.lPTO//2ceu', '2024-06-08 07:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kyaw Lin Naing', 'kyawlinnaing808@gmail.com', NULL, '$2y$10$bfKxiiGpGzgItyVXEhWQ3u2I5tn86u/dvEdM0kJWMNvQI9GX/n6zK', NULL, '2024-06-07 01:12:50', '2024-06-07 01:12:50'),
(2, 'Kyaw Lin Naing', 'kyaw@gmail.com', NULL, '$2y$10$8K4EqMIwHYsntpZOyFEPPOLn/98v4tX3Cwr.nq4nRpXIOvn6rsFtO', '4f7iZkypmYHAgwsbmvHWTa7z2FHqsaILZSlgPPZDquNHmz1E47moqnYbf64f', '2024-06-12 07:01:36', '2024-06-12 07:01:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
