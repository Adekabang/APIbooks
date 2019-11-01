-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2019 at 04:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utp_pemint`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `author`, `isbn`, `summary`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Laskar Pelangi', 'Novel', 'Andrea Hirata', '979-3062-79-7', 'Novel ini bercerita tentang kehidupan 10 anak dari keluarga miskin yang bersekolah (SD dan SMP) di sebuah sekolah Muhammadiyah di Belitung yang penuh dengan keterbatasan.', 7, '2019-11-01 14:13:11', '2019-11-01 14:13:11'),
(2, 'Sang Pemimpi', 'Novel', 'Andrea Hirata', '979-3062-92-4', 'Dalam novel Sang Pemimpi, Andrea Hirata bercerita tentang kehidupannya di Belitong pada masa SMA. Tiga tokoh utama dalam karya ini adalah Ikal, Arai dan Jimbron. Ikal tidak lain adalah Andrea Hirata sendiri, sedangkan Arai Ichsanul Mahidin adalah saudara jauhnya yang menjadi yatim piatu ketika masih kecil. Arai disebut simpai keramat karena dalam keluarganya ia adalah orang terakhir yang masih hidup dan ia pun diangkat menjadi anak oleh ayah Ikal. Jimbron merupakan teman Arai dan Ikal yang sangat terobsesi dengan kuda dan gagap bila sedang antusias terhadap sesuatu atau ketika gugup. Ketiganya melewati kisah persahabatan yang terjalin dari kecil hingga mereka bersekolah di SMA Negeri Bukan Main, SMA pertama yang berdiri di Belitung bagian timur.', 3, '2019-11-01 14:15:48', '2019-11-01 14:15:48'),
(3, 'Naruto, Vol. 1: Uzumaki Naruto', 'Komik', 'Masashi Kishimoto', '978-1569319000', 'Naruto is a ninja-in-training with a need for attention, a knack for mischief and, sealed within him, a strange, formidable power. His antics amuse his instructor Kakashi and irritate his teammates, intense Sasuke and witty Sakura, but Naruto is serious about becoming the greatest ninja in the village of Konohagakure! Believe it!', 11, '2019-11-01 14:18:12', '2019-11-01 14:18:12');

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
(1, '2019_11_01_132535_create_users_table', 1),
(3, '2019_11_01_135604_books', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'raska', '$2y$10$Nl1D.7UNcSZYMB1AUgIwOurnzZWswHOloi1p7Kw/0VOGXoOyTZwSC', 'admin', '2019-11-01 13:34:50', '2019-11-01 13:34:50'),
(2, 'user', '$2y$10$pFZ0gu/WpeE.Yzn/r6YcwO4qJ/1kORFr6PinRhwy5rilM5mQzQopS', 'guest', '2019-11-01 14:26:51', '2019-11-01 14:26:51'),
(3, 'admin', '$2y$10$NHshPR4xBtI004Wug2GcyO7VzNwNGbzyxS/Ro/StXgH190PVRdMYq', 'admin', '2019-11-01 15:24:20', '2019-11-01 15:24:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
