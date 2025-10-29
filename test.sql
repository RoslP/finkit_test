-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 29 2025 г., 17:58
-- Версия сервера: 8.3.0
-- Версия PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `plots`
--

DROP TABLE IF EXISTS `plots`;
CREATE TABLE IF NOT EXISTS `plots` (
  `plot_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `billing` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `number` varchar(10) NOT NULL DEFAULT '',
  `size` smallint UNSIGNED NOT NULL DEFAULT '0',
  `price` int UNSIGNED NOT NULL DEFAULT '0',
  `base_fixed` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `electricity_t1` float(11,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `electricity_t2` float(11,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `updated` int UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`plot_id`),
  KEY `number` (`number`),
  KEY `billing` (`billing`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `plots`
--

INSERT INTO `plots` (`plot_id`, `status`, `billing`, `number`, `size`, `price`, `base_fixed`, `electricity_t1`, `electricity_t2`, `updated`) VALUES
(1, 2, 1, '1', 13, 2064378, 0, 0.00, 0.00, 1761745942),
(2, 2, 1, '2', 10, 3367020, 0, 1813.27, 822.59, 1680507313),
(3, 2, 1, '3', 8, 3300000, 0, 0.00, 0.00, 1680514598),
(4, 2, 0, '4', 9, 3025626, 0, 0.00, 0.00, 1677858220),
(5, 2, 0, '5', 21, 6795138, 0, 100.00, 0.00, 1668015240),
(6, 2, 1, '7', 88, 25215000, 1, 0.00, 0.00, 1680514641),
(7, 2, 1, '8', 40, 12500000, 1, 0.00, 0.00, 1680514650),
(8, 2, 1, '9', 43, 13300000, 1, 18637.77, 8762.21, 1680507541),
(9, 0, 1, '10', 41, 15500000, 1, 0.00, 0.00, 1679915811),
(10, 2, 1, '11', 35, 8672101, 1, 0.00, 0.00, 1680514657),
(11, 0, 0, '12', 28, 9900000, 1, 0.00, 0.00, 1680517298),
(12, 2, 1, '18', 18, 4152100, 0, 0.00, 0.00, 1680514669),
(13, 2, 1, '19', 17, 4408000, 0, 12966.18, 5275.78, 1680508300),
(14, 2, 1, '20', 17, 4408000, 0, 0.00, 0.00, 1680514678),
(15, 2, 1, '21', 20, 5200900, 0, 1944.13, 1230.12, 1680508369),
(16, 2, 1, '22', 20, 5200900, 0, 0.00, 0.00, 1680514686),
(17, 2, 1, '23', 17, 4046000, 0, 0.00, 0.00, 1680514704),
(18, 2, 1, '24', 16, 3808000, 0, 0.00, 0.00, 1680514788),
(19, 2, 1, '25', 16, 3808000, 0, 0.00, 0.00, 1680514780),
(20, 2, 1, '26', 15, 3570000, 0, 0.00, 0.00, 1680514774),
(21, 2, 1, '27', 16, 3808000, 0, 0.00, 0.00, 1680514769),
(22, 2, 1, '29', 22, 4473000, 0, 0.00, 0.00, 1680514764),
(23, 2, 1, '30', 12, 2700000, 0, 0.00, 0.00, 1680514759),
(24, 2, 1, '31', 12, 2610000, 0, 515.49, 339.39, 1680508971),
(25, 2, 1, '32', 12, 2610000, 0, 0.00, 0.00, 1680514726),
(26, 2, 1, '33', 10, 2470900, 0, 0.00, 0.00, 1680507739),
(27, 2, 1, '34', 12, 2610000, 0, 6883.92, 3795.69, 1680508516),
(28, 2, 1, '35', 14, 2765700, 0, 0.00, 0.00, 1680514752),
(29, 2, 1, '36', 11, 2390800, 0, 0.00, 0.00, 1680514746),
(30, 0, 0, '37', 45, 9972400, 0, 0.00, 0.00, 1653841036);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `sid` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `token` char(40) NOT NULL DEFAULT '',
  `access` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `tz` smallint NOT NULL DEFAULT '0',
  `created` int UNSIGNED NOT NULL DEFAULT '0',
  `logged` int UNSIGNED NOT NULL DEFAULT '0',
  `updated` int UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`sid`, `user_id`, `token`, `access`, `tz`, `created`, `logged`, `updated`) VALUES
(1, 1, 'ab8dc1e93d4b8fc87647c34e792b95e0902b491c', 1, 240, 1686239445, 1686239445, 1686239882),
(2, 1, '7ec737451d67ff86474fbfe76f35915b0f342e77', 1, 240, 1761474542, 1761474542, 1761760610),
(3, 1, '6bac48ab5343602829ad660a21c77a21eaebb567', 1, 240, 1761533857, 1761533857, 1761533860);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `village_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `plot_id` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` bigint UNSIGNED NOT NULL DEFAULT '0',
  `phone_code` varchar(4) NOT NULL DEFAULT '',
  `phone_attempts_code` int UNSIGNED NOT NULL DEFAULT '0',
  `phone_attempts_sms` int UNSIGNED NOT NULL DEFAULT '0',
  `updated` int UNSIGNED NOT NULL DEFAULT '0',
  `last_login` int UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `phone` (`phone`),
  KEY `plot_id` (`plot_id`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `village_id`, `plot_id`, `access`, `first_name`, `last_name`, `email`, `phone`, `phone_code`, `phone_attempts_code`, `phone_attempts_sms`, `updated`, `last_login`, `is_deleted`) VALUES
(1, 1, '1,2 ,3', 1, 'Carrol', 'Fernandezz', 'test1@gmail.com', 971000000002, '1111', 0, 10, 1761760586, 1761533857, 0),
(2, 1, '2, 3', 1, 'Martin', 'Kurian', 'test2@gmail.com', 971000000002, '1111', 0, 0, 1761760129, 1686227116, 0),
(3, 1, '3', 1, 'Nisha', 'Banchi', 'test3@gmail.com', 971000000003, '1111', 0, 0, 0, 1686227116, 0),
(4, 1, '4', 1, 'Umang', 'Nayak', 'test4@gmail.com', 971000000004, '1111', 0, 0, 0, 1686227116, 0),
(5, 1, '5', 1, 'Mahira', 'Hussain', 'test5@gmail.com', 971000000005, '1111', 0, 0, 1761752797, 1686227116, 1),
(6, 1, '6', 1, 'Muhammad ', 'Ali', 'test6@gmail.com', 971000000006, '1111', 0, 0, 0, 1686227116, 0),
(7, 1, '7', 1, 'Yanina', 'Payares', 'test7@gmail.com', 971000000007, '1111', 0, 0, 0, 1686227116, 0),
(8, 1, '8', 1, 'Iffat', 'Shahzad', 'test8@gmail.com', 971000000008, '1111', 0, 0, 0, 1686227116, 0),
(9, 1, '9', 1, 'Izem', 'Yilmaz', 'test9@gmail.com', 971000000009, '1111', 0, 0, 0, 1686227116, 0),
(10, 1, '5', 1, 'Mhiz', 'Brainy', 'test10@gmail.com', 971000000010, '1111', 0, 0, 0, 1686227116, 0),
(11, 1, '7', 1, 'Nasir', 'Mughal', 'test11@gmail.com', 971000000011, '1111', 0, 0, 0, 1686227116, 0),
(12, 1, '12', 1, 'Jorgen', 'Jorgensen', 'test12@gmail.com', 971000000012, '1111', 0, 0, 0, 1686227116, 0),
(13, 1, '13', 1, 'Lennis', 'Nabalayo', 'test13@gmail.com', 971000000013, '1111', 0, 0, 0, 1686227116, 0),
(14, 1, '5', 1, 'Vipul', 'Bansode', 'test14@gmail.com', 971000000014, '1111', 0, 0, 0, 1686227116, 1),
(15, 1, '15', 1, 'Marina', 'Fonf', 'test15@gmail.com', 971000000015, '1111', 0, 0, 0, 1686227116, 0),
(16, 1, '16', 1, 'Shamir', 'Khan', 'test16@gmail.com', 971000000016, '1111', 0, 0, 0, 1686227116, 0),
(17, 1, '17', 1, 'Ricardo', 'Sabularse', 'test17@gmail.com', 971000000017, '1111', 0, 0, 0, 1686227116, 0),
(18, 1, '18', 1, 'Roger', 'Alam', 'test18@gmail.com', 971000000018, '1111', 0, 0, 0, 1686227116, 0),
(19, 1, '19', 1, 'Vam', 'Kannambra', 'test19@gmail.com', 971000000019, '1111', 0, 0, 0, 1686227116, 0),
(20, 1, '20', 1, 'Naiel', 'Zemour', 'test20@gmail.com', 971000000020, '1111', 0, 0, 0, 1686227116, 0),
(21, 1, '21', 1, 'Sajad', 'Bobs', 'test21@gmail.com', 971000000021, '1111', 0, 0, 0, 1686227116, 0),
(22, 1, '20', 1, 'Mumtaz', 'Falak', 'test22@gmail.com', 971000000022, '1111', 0, 0, 0, 1686227116, 0),
(23, 1, '23', 1, 'Nazia', 'Khan', 'test23@gmail.com', 971000000023, '1111', 0, 0, 0, 1686227116, 0),
(24, 0, '', 0, 'Pavel', 'Roslyi', 'ghhgjgjg@mail.co', 73336661212, '', 0, 0, 1761754490, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
