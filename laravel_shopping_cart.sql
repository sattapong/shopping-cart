-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 01:57 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_shopping_cart`
--

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
(1, '2019_01_26_093214_create_products_table', 1),
(2, '2019_01_26_155131_create_user_table', 2),
(3, '2019_02_03_145252_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2019-02-03 08:14:32', '2019-02-03 08:14:32', 4, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:30;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-01-26 09:59:17\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:17\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 2\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:30;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-01-26 09:59:17\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:17\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 2\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:30;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:6;a:3:{s:3:\"qty\";i:2;s:5:\"price\";i:140;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-01-26 09:59:18\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:18\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 6\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:70;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:6;s:10:\"created_at\";s:19:\"2019-01-26 09:59:18\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:18\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 6\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:70;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:170;}', '75  18  chayangkul   nai mueang  sub-district   mueang  district  Ubonratchatani  Province  34000', 'Tiger', 'ch_1Dzmg2KobfpYR6qyMdVOjXNu'),
(2, '2019-02-03 10:20:10', '2019-02-03 10:20:10', 4, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:30;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-01-26 09:59:17\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:17\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 2\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:30;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"created_at\";s:19:\"2019-01-26 09:59:17\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:17\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 2\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:30;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";i:40;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-01-26 09:59:18\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:18\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 3\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:40;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:10:\"created_at\";s:19:\"2019-01-26 09:59:18\";s:10:\"updated_at\";s:19:\"2019-01-26 09:59:18\";s:9:\"imagePath\";s:62:\"https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg\";s:5:\"title\";s:14:\"Harry Potter 3\";s:11:\"description\";s:562:\"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\";s:5:\"price\";i:40;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:70;}', '75  18  chayangkul   nai mueang  sub-district   mueang  district  Ubonratchatani  Province  34000', 'Tiger', 'ch_1DzodbKobfpYR6qyXHnbsljI');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagePath`, `title`, `description`, `price`) VALUES
(1, '2019-01-26 02:59:17', '2019-01-26 02:59:17', 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg', 'Harry Potter', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 20),
(2, '2019-01-26 02:59:17', '2019-01-26 02:59:17', 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg', 'Harry Potter 2', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 30),
(3, '2019-01-26 02:59:18', '2019-01-26 02:59:18', 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg', 'Harry Potter 3', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 40),
(4, '2019-01-26 02:59:18', '2019-01-26 02:59:18', 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg', 'Harry Potter 4', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 50),
(5, '2019-01-26 02:59:18', '2019-01-26 02:59:18', 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg', 'Harry Potter 5', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 60),
(6, '2019-01-26 02:59:18', '2019-01-26 02:59:18', 'https://hpmedia.bloomsbury.com/rep/s/9781408855904_309575.jpeg', 'Harry Potter 6', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 70);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `password`, `remember_token`) VALUES
(3, '2019-01-26 10:06:22', '2019-01-26 10:06:22', 'ab_normalclub@hotmail.com', '$2y$10$ml1Rxkg3Dkp7eefiwdl1cO/BJQO8OEi/Hq56SBQz0Yb6l0Iq4W2k2', ''),
(4, '2019-01-26 10:07:35', '2019-01-26 10:07:35', 'nakauycity@gmail.com', '$2y$10$XyMO67rrj01Jj3PWYzC9c.ElklnJ4t6g4bOe2jhY3SH7npG731ylm', 'fKag4sVRh2RToyfi2FeBfpiOcRHIMdVmAgxJhaLUHFFRCy2T2AT2G0W9lOKu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
