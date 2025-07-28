-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2025 at 08:58 AM
-- Server version: 8.0.42-0ubuntu0.24.04.2
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen_api`
--
CREATE DATABASE IF NOT EXISTS `lumen_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `lumen_api`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `county_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `county_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Springfield', '2025-07-27 21:40:06', '2025-07-27 21:40:06'),
(3, 1, 'Test City', '2025-07-27 22:01:10', '2025-07-27 22:01:10'),
(4, 1, 'Kolbas2233', '2025-07-27 22:01:26', '2025-07-27 22:01:56'),
(6, 20, 'Szeged', '2025-07-28 08:24:24', '2025-07-28 08:24:24'),
(7, 20, 'Üllés', '2025-07-28 08:37:16', '2025-07-28 08:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Budapest', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(2, 'Pest', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(3, 'Fejér', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(4, 'Komárom-Esztergom', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(5, 'Veszprém', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(6, 'Győr-Moson-Sopron', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(7, 'Vas', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(8, 'Zala', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(9, 'Baranya', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(10, 'Somogy', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(11, 'Tolna', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(12, 'Borsod-Abaúj-Zemplén', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(13, 'Heves', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(14, 'Nógrád', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(15, 'Hajdú-Bihar', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(16, 'Jász-Nagykun-Szolnok', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(17, 'Szabolcs-Szatmár-Bereg', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(18, 'Bács-Kiskun', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(19, 'Békés', '2025-07-27 20:42:43', '2025-07-27 20:42:43'),
(20, 'Csongrád-Csanád', '2025-07-27 20:42:43', '2025-07-27 20:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_07_27_195326_create_counties_table', 1),
(2, '2025_07_27_195623_create_cities_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_county_id_foreign` (`county_id`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_county_id_foreign` FOREIGN KEY (`county_id`) REFERENCES `counties` (`id`);
--
-- Database: `on-premise`
--
CREATE DATABASE IF NOT EXISTS `on-premise` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `on-premise`;

-- --------------------------------------------------------

--
-- Table structure for table `calculated`
--

CREATE TABLE `calculated` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `calculatedData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `calculation_type` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calculated`
--

INSERT INTO `calculated` (`id`, `userId`, `calculatedData`, `calculation_type`) VALUES
(1, 13, '{\"subItemOfDirekte_1\":34,\"subItemOfDirekte_2\":97,\"subItemOfDirekte_3\":42,\"subItemOfDirekte_4\":88,\"subItemOfIndirekte_1\":27,\"subItemOfIndirekte_2\":92,\"subItemOfIndirekte_3\":48,\"subItemOfIndirekte_4\":13,\"subItemOfIndirekte_5\":13,\"subItemOfLaufende_1\":52,\"subItemOfLaufende_2\":64,\"subItemOfLaufende_3\":1,\"subItemOfLaufende_4\":83}', 0),
(3, 14, '{\"subItemOfDirekte_1\":123,\"subItemOfDirekte_2\":205,\"subItemOfDirekte_3\":198,\"subItemOfDirekte_4\":170,\"subItemOfIndirekte_1\":229,\"subItemOfIndirekte_2\":265,\"subItemOfIndirekte_3\":259,\"subItemOfIndirekte_4\":292,\"subItemOfIndirekte_5\":305,\"subItemOfLaufende_1\":406,\"subItemOfLaufende_2\":394,\"subItemOfLaufende_3\":375,\"subItemOfLaufende_4\":358}', 0),
(4, 14, '{\"subItemOfDirekte_1\":152,\"subItemOfDirekte_2\":193,\"subItemOfDirekte_3\":168,\"subItemOfDirekte_4\":246,\"subItemOfIndirekte_1\":243,\"subItemOfIndirekte_2\":262,\"subItemOfIndirekte_3\":241,\"subItemOfIndirekte_4\":284,\"subItemOfIndirekte_5\":328,\"subItemOfLaufende_1\":322,\"subItemOfLaufende_2\":387,\"subItemOfLaufende_3\":369,\"subItemOfLaufende_4\":385}', 0),
(5, 14, '{\"subItemOfDirekte_1\":148,\"subItemOfDirekte_2\":132,\"subItemOfDirekte_3\":166,\"subItemOfDirekte_4\":243,\"subItemOfIndirekte_1\":275,\"subItemOfIndirekte_2\":257,\"subItemOfIndirekte_3\":308,\"subItemOfIndirekte_4\":327,\"subItemOfIndirekte_5\":332,\"subItemOfLaufende_1\":386,\"subItemOfLaufende_2\":405,\"subItemOfLaufende_3\":402,\"subItemOfLaufende_4\":405}', 0),
(6, 14, '{\"subItemOfDirekte_1\":127,\"subItemOfDirekte_2\":146,\"subItemOfDirekte_3\":171,\"subItemOfDirekte_4\":167,\"subItemOfIndirekte_1\":273,\"subItemOfIndirekte_2\":325,\"subItemOfIndirekte_3\":256,\"subItemOfIndirekte_4\":299,\"subItemOfIndirekte_5\":299,\"subItemOfLaufende_1\":386,\"subItemOfLaufende_2\":355,\"subItemOfLaufende_3\":374,\"subItemOfLaufende_4\":354}', 0),
(7, 14, '{\"subItemOfDirekte_1\":80,\"subItemOfDirekte_2\":46,\"subItemOfDirekte_3\":25,\"subItemOfDirekte_4\":95,\"subItemOfIndirekte_1\":24,\"subItemOfIndirekte_2\":95,\"subItemOfIndirekte_3\":8,\"subItemOfIndirekte_4\":8,\"subItemOfIndirekte_5\":84,\"subItemOfLaufende_1\":90,\"subItemOfLaufende_2\":81,\"subItemOfLaufende_3\":71,\"subItemOfLaufende_4\":32}', 0),
(8, 14, '{\"subItemOfDirekte_1\":28,\"subItemOfDirekte_2\":69,\"subItemOfDirekte_3\":59,\"subItemOfDirekte_4\":42,\"subItemOfIndirekte_1\":39,\"subItemOfIndirekte_2\":84,\"subItemOfIndirekte_3\":44,\"subItemOfIndirekte_4\":59,\"subItemOfIndirekte_5\":8,\"subItemOfLaufende_1\":41,\"subItemOfLaufende_2\":90,\"subItemOfLaufende_3\":30,\"subItemOfLaufende_4\":2}', 0),
(9, 14, '{\"subItemOfDirekte_1\":16,\"subItemOfDirekte_2\":48,\"subItemOfDirekte_3\":18,\"subItemOfDirekte_4\":6,\"subItemOfIndirekte_1\":42,\"subItemOfIndirekte_2\":65,\"subItemOfIndirekte_3\":38,\"subItemOfIndirekte_4\":71,\"subItemOfIndirekte_5\":66,\"subItemOfLaufende_1\":103,\"subItemOfLaufende_2\":83,\"subItemOfLaufende_3\":104,\"subItemOfLaufende_4\":91}', 0),
(10, 14, '{\"subItemOfDirekte_1\":58,\"subItemOfDirekte_2\":44,\"subItemOfDirekte_3\":95,\"subItemOfDirekte_4\":25,\"subItemOfIndirekte_1\":12,\"subItemOfIndirekte_2\":49,\"subItemOfIndirekte_3\":46,\"subItemOfIndirekte_4\":23,\"subItemOfIndirekte_5\":91,\"subItemOfLaufende_1\":9,\"subItemOfLaufende_2\":80,\"subItemOfLaufende_3\":72,\"subItemOfLaufende_4\":69}', 0),
(11, NULL, '{\"subItemOfDirekte_1\":57,\"subItemOfDirekte_2\":16,\"subItemOfDirekte_3\":38,\"subItemOfDirekte_4\":71,\"subItemOfIndirekte_1\":78,\"subItemOfIndirekte_2\":52,\"subItemOfIndirekte_3\":92,\"subItemOfIndirekte_4\":5,\"subItemOfIndirekte_5\":34,\"subItemOfLaufende_1\":92,\"subItemOfLaufende_2\":5,\"subItemOfLaufende_3\":30,\"subItemOfLaufende_4\":39}', 0),
(12, 15, '{\"subItemOfDirekte_1\":3,\"subItemOfDirekte_2\":51,\"subItemOfDirekte_3\":87,\"subItemOfDirekte_4\":24,\"subItemOfIndirekte_1\":24,\"subItemOfIndirekte_2\":4,\"subItemOfIndirekte_3\":8,\"subItemOfIndirekte_4\":14,\"subItemOfIndirekte_5\":36,\"subItemOfLaufende_1\":13,\"subItemOfLaufende_2\":11,\"subItemOfLaufende_3\":2,\"subItemOfLaufende_4\":20}', 0),
(13, 15, '{\"subItemOfDirekte_1\":91,\"subItemOfDirekte_2\":11,\"subItemOfDirekte_3\":82,\"subItemOfDirekte_4\":6,\"subItemOfIndirekte_1\":38,\"subItemOfIndirekte_2\":57,\"subItemOfIndirekte_3\":98,\"subItemOfIndirekte_4\":27,\"subItemOfIndirekte_5\":39,\"subItemOfLaufende_1\":14,\"subItemOfLaufende_2\":44,\"subItemOfLaufende_3\":23,\"subItemOfLaufende_4\":78}', 0),
(14, NULL, '{\"subItemOfDirekte_1\":73,\"subItemOfDirekte_2\":33,\"subItemOfDirekte_3\":13,\"subItemOfDirekte_4\":32,\"subItemOfIndirekte_1\":63,\"subItemOfIndirekte_2\":73,\"subItemOfIndirekte_3\":6,\"subItemOfIndirekte_4\":63,\"subItemOfIndirekte_5\":82,\"subItemOfLaufende_1\":62,\"subItemOfLaufende_2\":94,\"subItemOfLaufende_3\":78,\"subItemOfLaufende_4\":37}', 0),
(15, 15, '{\"subItemOfDirekte_1\":19,\"subItemOfDirekte_2\":22,\"subItemOfDirekte_3\":32,\"subItemOfDirekte_4\":78,\"subItemOfIndirekte_1\":36,\"subItemOfIndirekte_2\":95,\"subItemOfIndirekte_3\":87,\"subItemOfIndirekte_4\":95,\"subItemOfIndirekte_5\":50,\"subItemOfLaufende_1\":16,\"subItemOfLaufende_2\":19,\"subItemOfLaufende_3\":71,\"subItemOfLaufende_4\":68}', 0),
(16, 15, '{\"subItemOfDirekte_1\":58,\"subItemOfDirekte_2\":52,\"subItemOfDirekte_3\":39,\"subItemOfDirekte_4\":93,\"subItemOfIndirekte_1\":3,\"subItemOfIndirekte_2\":69,\"subItemOfIndirekte_3\":62,\"subItemOfIndirekte_4\":9,\"subItemOfIndirekte_5\":44,\"subItemOfLaufende_1\":40,\"subItemOfLaufende_2\":36,\"subItemOfLaufende_3\":78,\"subItemOfLaufende_4\":55}', 0),
(17, 15, '{\"calculation_type\":2,\"subItemOfDirekte_1\":70,\"subItemOfDirekte_2\":55,\"subItemOfDirekte_3\":7,\"subItemOfDirekte_4\":48,\"subItemOfIndirekte_1\":78,\"subItemOfIndirekte_2\":42,\"subItemOfIndirekte_3\":63,\"subItemOfIndirekte_4\":71,\"subItemOfIndirekte_5\":90,\"subItemOfLaufende_1\":10,\"subItemOfLaufende_2\":40,\"subItemOfLaufende_3\":36,\"subItemOfLaufende_4\":94}', 2),
(18, 15, '{\"calculation_type\":6,\"subItemOfDirekte_1\":79,\"subItemOfDirekte_2\":90,\"subItemOfDirekte_3\":44,\"subItemOfDirekte_4\":74,\"subItemOfIndirekte_1\":81,\"subItemOfIndirekte_2\":7,\"subItemOfIndirekte_3\":34,\"subItemOfIndirekte_4\":49,\"subItemOfIndirekte_5\":74,\"subItemOfLaufende_1\":61,\"subItemOfLaufende_2\":98,\"subItemOfLaufende_3\":52,\"subItemOfLaufende_4\":33}', 6),
(19, 15, '{\"calculation_type\":6,\"subItemOfDirekte_1\":66,\"subItemOfDirekte_2\":24,\"subItemOfDirekte_3\":97,\"subItemOfDirekte_4\":96,\"subItemOfIndirekte_1\":29,\"subItemOfIndirekte_2\":20,\"subItemOfIndirekte_3\":66,\"subItemOfIndirekte_4\":17,\"subItemOfIndirekte_5\":46,\"subItemOfLaufende_1\":75,\"subItemOfLaufende_2\":21,\"subItemOfLaufende_3\":22,\"subItemOfLaufende_4\":62}', 6),
(20, 15, '{\"calculation_type\":6,\"subItemOfDirekte_1\":59,\"subItemOfDirekte_2\":85,\"subItemOfDirekte_3\":49,\"subItemOfDirekte_4\":88,\"subItemOfIndirekte_1\":49,\"subItemOfIndirekte_2\":9,\"subItemOfIndirekte_3\":89,\"subItemOfIndirekte_4\":46,\"subItemOfIndirekte_5\":3,\"subItemOfLaufende_1\":57,\"subItemOfLaufende_2\":58,\"subItemOfLaufende_3\":61,\"subItemOfLaufende_4\":78}', 6),
(21, 15, '{\"calculation_type\":6,\"subItemOfDirekte_1\":87,\"subItemOfDirekte_2\":55,\"subItemOfDirekte_3\":53,\"subItemOfDirekte_4\":86,\"subItemOfIndirekte_1\":49,\"subItemOfIndirekte_2\":38,\"subItemOfIndirekte_3\":41,\"subItemOfIndirekte_4\":49,\"subItemOfIndirekte_5\":92,\"subItemOfLaufende_1\":36,\"subItemOfLaufende_2\":55,\"subItemOfLaufende_3\":31,\"subItemOfLaufende_4\":74}', 6),
(22, 15, '{\"calculation_type\":6,\"subItemOfDirekte_1\":60,\"subItemOfDirekte_2\":65,\"subItemOfDirekte_3\":48,\"subItemOfDirekte_4\":40,\"subItemOfIndirekte_1\":75,\"subItemOfIndirekte_2\":20,\"subItemOfIndirekte_3\":46,\"subItemOfIndirekte_4\":68,\"subItemOfIndirekte_5\":100,\"subItemOfLaufende_1\":19,\"subItemOfLaufende_2\":71,\"subItemOfLaufende_3\":20,\"subItemOfLaufende_4\":45}', 6),
(23, 15, '{\"calculation_type\":4,\"Capex-Kosten\":\"0\",\"Hardware\":\"0\",\"Infrastruktur\":\"0\",\"Software\":\"0\",\"Installation\":\"0\",\"Bereits vorhandene Infrastruktur\":\"0\",\"Opex-Kosten\":\"0\",\"Personalkosten\":\"0\",\"Wartungskosten\":\"0\",\"Energiekosten\":\"0\",\"Mietkosten\":\"0\",\"Lizenzkosten\":\"0\",\"Time period\":\"0\",\"Inflation rate\":\"0\"}', 4),
(24, 15, '{\"Capex-Kosten\":\"0\",\"Hardware\":\"0\",\"Infrastruktur\":\"0\",\"Software\":\"0\",\"Installation\":\"0\",\"Bereits vorhandene Infrastruktur\":\"0\",\"Opex-Kosten\":\"0\",\"Personalkosten\":\"0\",\"Wartungskosten\":\"0\",\"Energiekosten\":\"0\",\"Mietkosten\":\"0\",\"Lizenzkosten\":\"0\",\"Time period\":\"0\",\"Inflation rate\":\"0\"}', 0),
(25, 15, '{\"Capex_costs\":\"50000\",\"Hardware\":\"30000\",\"Infrastructure\":\"10000\",\"Software\":\"5000\",\"Installation\":\"5000\",\"Existing infrastructure\":\"20000\",\"Opex costs\":\"20000\",\"Personnel costs\":\"7000\",\"Maintenance costs\":\"5000\",\"Energy costs\":\"3000\",\"Rental costs\":\"0\",\"License costs\":\"5000\",\"Time period\":\"7\",\"Inflation rate\":\"3\"}', 0),
(26, 15, '{\"Capex_costs\":\"50000\",\"Hardware\":\"30000\",\"Infrastructure\":\"10000\",\"Software\":\"5000\",\"Installation\":\"5000\",\"Existing infrastructure\":\"20000\",\"Opex costs\":\"20000\",\"Personnel costs\":\"7000\",\"Maintenance costs\":\"5000\",\"Energy costs\":\"3000\",\"Rental costs\":\"0\",\"License costs\":\"5000\",\"Time period\":\"7\",\"Inflation rate\":\"3\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email_address` varchar(50) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `password` varchar(300) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_address`, `password`, `role`) VALUES
(5, 'abc@outlook.com', '$2y$10$cn3EAASus153prdXC2Z/lObETAS06RWbDTjt93AQ55ah.jHSWGwqK', 'USER'),
(6, 'admin@admin.com', '$2y$10$K4YKLzQPo8tsLrurSGPsHuoxVzd9wr9i5H62W2SxkxoGOg1cDHmUO', 'ADMIN'),
(7, 'user2@user.com', '$2y$10$R3v52mJgRftGCAjVns0QOuEMaK1H7r7XyB9tjUeWtbZs9sLttBuP6', 'USER'),
(13, 'test@test.com', '$2y$10$Iyy.ZBf1wcH/4kB8j8ajZeBLTRh3XmWXBSlFrhjowlAD15js426Ky', 'USER'),
(14, 'jane@mail.com', '$2y$10$Hg9ilQV9sgF9ewFyzILyGuYTd8BfzT6Y7c4lslfr6c/AjWuMvHXuK', 'USER'),
(15, 'jane01@mail.com', '$2y$10$sNC1cBXo8GJvOe3on0u62O56DqN8KyD0P17IHmXFH4QLdnqd7XejO', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calculated`
--
ALTER TABLE `calculated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userId_users_id` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calculated`
--
ALTER TABLE `calculated`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calculated`
--
ALTER TABLE `calculated`
  ADD CONSTRAINT `fk_userId_users_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_length` text COLLATE utf8mb3_bin,
  `col_collation` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `col_default` text COLLATE utf8mb3_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `settings_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `template_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('admin', '[{\"db\":\"lumen_api\",\"table\":\"cities\"},{\"db\":\"lumen_api\",\"table\":\"counties\"},{\"db\":\"lumen_api\",\"table\":\"migrations\"},{\"db\":\"on-premise\",\"table\":\"calculated\"},{\"db\":\"on-premise\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `prefs` text COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8mb3_bin NOT NULL,
  `schema_sql` text COLLATE utf8mb3_bin,
  `data_sql` longtext COLLATE utf8mb3_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8mb3_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('admin', '2025-07-28 08:23:30', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":184}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8mb3_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
