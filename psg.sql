-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 23 okt 2020 om 15:31
-- Serverversie: 5.7.31-0ubuntu0.18.04.1
-- PHP-versie: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psg`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `buildings`
--

CREATE TABLE `buildings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `buildings`
--

INSERT INTO `buildings` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fortis gebouw Hasselt', '2020-10-15 14:58:54', '2020-10-15 14:58:54'),
(2, 'App. Zuidzicht', '2020-10-15 14:58:54', '2020-10-15 14:58:54'),
(5, 'App. Centrum Genk', '2020-10-15 14:59:46', '2020-10-15 14:59:46'),
(6, 'Huis Moons Houthalen', '2020-10-15 14:59:46', '2020-10-15 14:59:46');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `building_user`
--

CREATE TABLE `building_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `building_user`
--

INSERT INTO `building_user` (`id`, `user_id`, `building_id`, `created_at`, `updated_at`) VALUES
(1, '20', '1', '2020-10-16 13:22:23', '2020-10-16 13:22:23'),
(2, '21', '2', '2020-10-16 13:53:42', '2020-10-16 13:53:46'),
(3, '21', '1', '2020-10-16 13:54:10', '2020-10-16 13:54:10'),
(6, '38', '1', NULL, NULL),
(7, '38', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
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
-- Tabelstructuur voor tabel `lights`
--

CREATE TABLE `lights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `lights`
--

INSERT INTO `lights` (`id`, `number`, `created_at`, `updated_at`) VALUES
(1, '5', '2020-10-15 15:02:10', '2020-10-15 15:02:10'),
(2, '2', '2020-10-15 15:02:10', '2020-10-15 15:02:10'),
(3, '4', '2020-10-15 15:04:05', '2020-10-15 15:04:05'),
(4, '2', '2020-10-15 15:04:05', '2020-10-15 15:04:05'),
(5, '3', '2020-10-15 15:05:33', '2020-10-15 15:05:33'),
(6, '2', '2020-10-15 15:05:33', '2020-10-15 15:05:33'),
(7, '7', '2020-10-15 15:07:17', '2020-10-15 15:07:21'),
(8, '2', '2020-10-15 15:07:25', '2020-10-15 15:07:30');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_10_12_130543_create_sessions_table', 1),
(7, '2020_10_13_104110_add_roles_to_users_table', 2),
(8, '2020_10_15_121717_create_buildings_table', 3),
(9, '2020_10_15_124532_create_lights_table', 3),
(10, '2020_10_15_124541_create_rooms_table', 3),
(14, '2020_10_16_111008_create_user_buildings_table', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `building_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `light_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `rooms`
--

INSERT INTO `rooms` (`id`, `building_id`, `name`, `light_id`, `created_at`, `updated_at`) VALUES
(3, 1, 'Inkomhal', 1, '2020-10-15 15:00:51', '2020-10-15 15:00:51'),
(4, 1, 'Kantoor ruimte 1', 2, '2020-10-15 15:00:51', '2020-10-15 15:00:51'),
(5, 2, 'Woonkamer', 3, '2020-10-15 15:03:16', '2020-10-15 15:03:16'),
(6, 2, 'Slaapkamer 1', 4, '2020-10-15 15:03:16', '2020-10-15 15:03:16'),
(7, 5, 'Badkamer', 5, '2020-10-15 15:04:45', '2020-10-15 15:04:45'),
(8, 5, 'Kelder', 6, '2020-10-15 15:04:45', '2020-10-15 15:04:45'),
(9, 6, 'Woonkamer + keuken', 7, '2020-10-15 15:06:06', '2020-10-15 15:06:06'),
(10, 6, 'Garage', 8, '2020-10-15 15:06:06', '2020-10-15 15:06:06');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8hojZ6LIikVzUEdH84GpSLwLO7ud0x9sdUbb8jhk', 38, '192.168.10.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQzZldXhJQXBQN2N0NmN6RlRheGw1aEF4SG0zMmxTZjFLaWIwUlJqTCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vaG9tZXN0ZWFkLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDBJcUIyVUVWcFFaQjZ5c1RncnlpTHVZQ0lLSnNlR3FWcXBJMi5XaUZMUnBIL1dUQ0VkYnZPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQwSXFCMlVFVnBRWkI2eXNUZ3J5aUx1WUNJS0pzZUdxVnFwSTIuV2lGTFJwSC9XVENFZGJ2TyI7fQ==', 1603467065),
('P6XvhI9RyZdJpMCEyLm58lpejvGYM0Kwihp6ra1E', NULL, '192.168.10.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTlyUVJFNGZPWFM3NDM2TDRWM3N0TldnTzFabkN4V2lCeFlLT1hsViI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2hvbWVzdGVhZC50ZXN0Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9ob21lc3RlYWQudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1603464749),
('qgyY6uDrWCegtjVsLYmQif3WjvIEFLMmsSmucY52', 38, '192.168.10.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiakJ3anJJWW9vSTZGRmdnaTZHc296dkF4eVFiSTRQTDJRUlBGZW5ROCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vaG9tZXN0ZWFkLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDBJcUIyVUVWcFFaQjZ5c1RncnlpTHVZQ0lLSnNlR3FWcXBJMi5XaUZMUnBIL1dUQ0VkYnZPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQwSXFCMlVFVnBRWkI2eXNUZ3J5aUx1WUNJS0pzZUdxVnFwSTIuV2lGTFJwSC9XVENFZGJ2TyI7fQ==', 1603363104);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Aleko', 'aleko.bongiovanni@hotmail.com', NULL, '$2y$10$f4IzC6Jk9zt5YINIcoVA3OtiZhgh.kiBCzEP55/JyhUyZ4gA6UHem', NULL, NULL, NULL, NULL, NULL, '2020-10-12 14:39:51', '2020-10-13 11:51:48', '1'),
(20, 'aabbbb\'r\'r', 'a@a.comddd', NULL, '$2y$10$TdIQAxARt6jM1K0F4CRodu/76qdOSg0dFaCb6kxQ734Q7w95taUkq', NULL, NULL, NULL, NULL, NULL, '2020-10-14 19:22:10', '2020-10-18 12:19:12', NULL),
(21, '5Zvoornaammmmmfff', 'Uwemail@hotmail.commmmm', NULL, '$2y$10$h3ttku8VFwQLAVTDl27Jc.7JK3AeX3BogpGpgjeCXucsrOCsTO1nW', NULL, NULL, NULL, NULL, NULL, '2020-10-14 19:22:11', '2020-10-18 12:18:13', NULL),
(22, 'dOvoornaam', 'Pjemail@hotmail.com', NULL, '$2y$10$Oiyjebem0xqAfJk8lcYkSeY83kZoYt4WzIzZRNA0IypnChgGtnJi6', NULL, NULL, NULL, NULL, NULL, '2020-10-14 19:22:12', NULL, NULL),
(23, 'OMvoornaam', '4xemail@hotmail.com', NULL, '$2y$10$s39r1kd0ZxSvdX6GWqYosuFKVmEuavKMgkPcIl6nJqlIUdejqAO3C', NULL, NULL, NULL, NULL, NULL, '2020-10-14 19:22:12', NULL, NULL),
(26, 'aangemaakt', 'aleko@bong.com', NULL, '$2y$10$HBAxIpELqKW5dtn8Dg4Lbe2o0JFlupo9XAkTRWnW4Vzn0xQfH1v0O', NULL, NULL, NULL, NULL, NULL, '2020-10-15 14:31:01', '2020-10-15 14:31:01', NULL),
(27, 'aangemaakt2', 'aleko2@bong.com', NULL, '$2y$10$kERRDWBo4vpJqswJagnjVuS1zDrNeJGobuBpENwf3g9W9lind8.ce', NULL, NULL, NULL, NULL, NULL, '2020-10-15 14:31:15', '2020-10-15 14:31:15', NULL),
(28, 'aangemaakt3', 'aleko2@btong.com', NULL, '$2y$10$j6ZmflrjCwkMF7coAYg3wO4ketI3c/ReY8wv9JDK.wLbAHdVNwlCa', NULL, NULL, NULL, NULL, NULL, '2020-10-15 14:31:28', '2020-10-15 14:31:28', NULL),
(29, 'erferfr', 'aleko_lekstokff@hotmafil.com', NULL, '$2y$10$HwjgZuBxUESvAALk4vmGoeie9RREmuJd0cLMEi9I2G2NTVDTy7u66', NULL, NULL, NULL, NULL, NULL, '2020-10-15 14:43:13', '2020-10-15 14:43:13', NULL),
(32, 'dzcdcdscee', 'aleko@dddd.be', NULL, '$2y$10$mmKgDw99PvTqXuCWcnyEg.N2U2Tpz18vfKk1t1mO3Fcgs3EwxjLB.', NULL, NULL, NULL, NULL, NULL, '2020-10-18 09:58:47', '2020-10-18 13:38:54', NULL),
(36, 'dddddddd', 'ddddd@ssmd.com', NULL, '$2y$10$HWlej825kADGxF9PO53t9uZaYINdEMOZKjzWeeFqr2P47jm8mIPuC', NULL, NULL, NULL, NULL, NULL, '2020-10-18 10:06:32', '2020-10-18 10:06:32', NULL),
(37, 'deddeded', 'zszs@zzaa.com', NULL, '$2y$10$6lEB8gUwu.reakwF4Oo/weuRH1mbrsATSXRXPEjd0D1yWqPMbXI8q', NULL, NULL, NULL, NULL, NULL, '2020-10-18 10:07:58', '2020-10-18 10:07:58', NULL),
(38, 'Aleko_user', 'test@zaak.com', NULL, '$2y$10$0IqB2UEVpQZB6ysTgryiLuYCIKJseGqVqpI2.WiFLRpH/WTCEdbvO', NULL, NULL, NULL, NULL, NULL, '2020-10-19 21:11:30', '2020-10-19 21:14:32', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `building_user`
--
ALTER TABLE `building_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexen voor tabel `lights`
--
ALTER TABLE `lights`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexen voor tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `building_user`
--
ALTER TABLE `building_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lights`
--
ALTER TABLE `lights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
