-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Gru 2018, 22:13
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `codethree`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2018_11_28_180528_create_products_table', 1),
(27, '2018_11_29_181115_create_order_table', 1),
(28, '2018_12_03_181402_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `qty`, `price`, `created`, `updated_at`) VALUES
(95, 3, 1, 2, '2000.99', '2018-12-05 20:07:26', NULL),
(96, 3, 2, 1, '2000.99', '2018-12-05 20:07:26', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `name`, `pic`, `description`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL),
(2, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL),
(3, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL),
(4, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL),
(5, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL),
(6, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL),
(7, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL),
(8, 'laptop', 'https://picsum.photos/700/400/?random', 'To jest bardzo dobry laptop moim skromnym zdaniem', '2000.99', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `houseNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `city`, `street`, `houseNumber`, `postCode`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 'admin@admin.pl', NULL, '$2y$10$j3P1bWXu5C91P/V0rWESTejW5KeU1UYnY7DTi7fe3XxqxlpQ9tctK', 'Wodzik', 'dluga', 'aa', NULL, 'sDUPbMiC8BpIkdPOCaJnqvA4GWEvalE2F4gs4IRA9xMaEuYJTg4ZisrY5fEI', '2018-12-05 16:44:51', '2018-12-05 19:11:00'),
(2, 'Szymon', 'Krolik', 'krolik.sz@wp.pl', NULL, '$2y$10$0lTy5MccR.q7xBpsMkqc.u8gYzYSOGfhapEHLA8AUg6UvJRhr/m1G', NULL, 'dluga', NULL, NULL, 'DGgpHKlkHoXfJhRIIf81ELZ46xSCuoYn6IqYqqqsQvDYI11Q3k4GY5N07lmw', '2018-12-05 19:24:29', '2018-12-05 19:26:02'),
(3, 'test', NULL, 'test@test.pl', NULL, '$2y$10$uUnMXFQxSTtzZrceUbtzQuU8AWJ8S2HeYB.wODGz9HgEnJTI9fQjO', NULL, NULL, NULL, NULL, '9dbSHtGM3ayzrN1bcjHlUnWG0rqESlPB6QFGAkx8tfByJPbxAsPxeAg1YftV', '2018-12-05 19:35:49', '2018-12-05 19:35:49');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
