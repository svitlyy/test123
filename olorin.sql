-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 17 2023 г., 16:01
-- Версия сервера: 10.5.11-MariaDB-log
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `olorin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `api_log`
--

CREATE TABLE `api_log` (
  `id` int(16) NOT NULL,
  `time` int(32) NOT NULL,
  `query` text NOT NULL,
  `remote_addr` int(16) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `api_log`
--

INSERT INTO `api_log` (`id`, `time`, `query`, `remote_addr`, `type`) VALUES
(20, 1679025322, '{\"url_line\":\"api\\/test\",\"a\":\"1\",\"b\":\"2$f=333\"}', 1270, 'GET'),
(19, 1679025281, '{\"url_line\":\"api\\/test\"}', 1270, 'GET'),
(18, 1679025165, '{\"url_line\":\"api\\/test\",\"s\":\"455\"}', 1270, 'GET'),
(17, 1679025096, '{\"url_line\":\"api\\/test\",\"id\":\"123\",\"name\":\"blahblah\"}', 1270, 'GET'),
(16, 1679025008, '{\"url_line\":\"api\\/test\"}', 1270, 'GET'),
(15, 1679024914, '{\"param1\":\"data1\",\"param2\":\"data2\"}', 1270, 'POST'),
(21, 1679026754, '{\"url_line\":\"api\\/test\",\"a\":\"1\",\"b\":\"2$f=333\"}', 1270, 'GET'),
(22, 1679026764, '{\"url_line\":\"api\\/test\",\"a\":\"1\",\"b\":\"2$f=333\"}', 77111, 'GET'),
(23, 1679027022, '{\"url_line\":\"api\\/test\"}', 1270, 'GET'),
(24, 1679027855, '{\"url_line\":\"api\\/test\"}', 77111, 'GET'),
(25, 1679027943, '{\"url_line\":\"api\\/test\"}', 149154, 'GET'),
(26, 1679047192, '{\"url_line\":\"api\\/test\"}', 17637, 'GET');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'content', 'Content Manager'),
(4, 'admin_demo', 'Admin for Demo');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_users`
--

CREATE TABLE `auth_users` (
  `id` int(16) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(512) NOT NULL,
  `pass_recovery_code` varchar(256) NOT NULL,
  `token` varchar(256) NOT NULL,
  `active` int(1) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `is_verified_email` int(1) NOT NULL,
  `email_verify_code` varchar(256) NOT NULL,
  `is_verified_phone` int(1) NOT NULL,
  `phone_verify_code` varchar(12) NOT NULL,
  `img` varchar(512) NOT NULL,
  `fb_id` int(16) NOT NULL,
  `google_id` int(16) NOT NULL,
  `default_lang` varchar(4) NOT NULL,
  `app_api_token` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_users`
--

INSERT INTO `auth_users` (`id`, `email`, `username`, `password`, `pass_recovery_code`, `token`, `active`, `phone`, `is_verified_email`, `email_verify_code`, `is_verified_phone`, `phone_verify_code`, `img`, `fb_id`, `google_id`, `default_lang`, `app_api_token`) VALUES
(11, 'torrison1@gmail.com', 'Alex Torrison', 'b988ef37fe801f6bfb00411ec8d231aa', '47adda343f0804fb49407bf2845f9d2d', '', 0, '+380931552970', 1, '', 0, '', '/Uploads/Users/Avatars/11_1580373910_img.jpg', 0, 2147483647, 'en', 'pCsfBce8YD1Sbey'),
(25, 'bigdickol@gmail.com', 'Svitlyy Evgen', 'ea44d89103ac484f12aa1a427178a709', '', '', 0, '', 0, '', 0, '', '', 0, 2147483647, 'ru', ''),
(26, 'evgen.svitlyy@gmail.com', 'Evgen Svitlyy', '43ca36bb01a7f5c72a8349e0c5b50ea5', '', '', 0, '', 0, '', 0, '', '', 0, 2147483647, 'ru', ''),
(27, 'toyfieldua@gmail.com', 'Toyfield Store', 'c8f83e2218c12828427adb7d1370c7fa', '', '', 0, '', 0, '', 0, '', '', 0, 2147483647, 'ru', ''),
(28, 'svitlyy@gmail.com', 'Evgen Svitlyy', '7e18493120d83e032d5ea501af10a6dc', '', '', 0, '', 0, '', 0, '', '', 0, 2147483647, 'ru', ''),
(29, 'test', '', '2db161fd830ab5969e6b71dfe6ce207a', '', '', 0, '', 0, '', 0, '', '', 0, 0, '', ''),
(30, 'test123@gmail.com', '', '376a2df36920cec796458088f7679252', '', '', 0, '', 0, '', 0, '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_users_groups`
--

CREATE TABLE `auth_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_users_groups`
--

INSERT INTO `auth_users_groups` (`id`, `user_id`, `group_id`) VALUES
(168, 11, 1),
(169, 26, 4),
(171, 27, 1),
(170, 29, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `inside_groups_access`
--

CREATE TABLE `inside_groups_access` (
  `groups_access_rel_id` int(8) NOT NULL DEFAULT 0,
  `group_id` int(8) NOT NULL,
  `module_id` int(4) NOT NULL,
  `module_init` int(1) NOT NULL,
  `module_view` int(1) NOT NULL,
  `module_edit` int(1) NOT NULL,
  `access_code` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inside_groups_access`
--

INSERT INTO `inside_groups_access` (`groups_access_rel_id`, `group_id`, `module_id`, `module_init`, `module_view`, `module_edit`, `access_code`) VALUES
(0, 7, 2, 1, 1, 0, ''),
(0, 7, 5, 1, 1, 0, ''),
(0, 7, 79, 1, 1, 0, ''),
(0, 7, 80, 1, 1, 0, ''),
(0, 7, 81, 1, 1, 0, ''),
(0, 7, 4, 1, 1, 0, ''),
(0, 7, 36, 1, 1, 0, ''),
(0, 7, 58, 1, 1, 1, ''),
(0, 7, 62, 1, 1, 1, ''),
(0, 7, 74, 1, 1, 1, ''),
(0, 7, 88, 1, 1, 1, ''),
(0, 7, 89, 1, 1, 1, ''),
(0, 7, 90, 1, 1, 1, ''),
(0, 7, 37, 1, 1, 1, ''),
(0, 7, 3, 1, 1, 1, ''),
(0, 3, 4, 1, 1, 1, ''),
(0, 3, 36, 1, 1, 1, ''),
(0, 3, 40, 1, 1, 1, ''),
(0, 3, 41, 1, 1, 1, ''),
(0, 3, 42, 1, 1, 1, ''),
(0, 3, 60, 1, 1, 1, ''),
(0, 3, 61, 1, 1, 1, ''),
(0, 3, 63, 1, 1, 1, ''),
(0, 3, 37, 1, 1, 1, ''),
(0, 3, 3, 1, 1, 1, ''),
(0, 9, 128, 1, 1, 1, ''),
(0, 9, 102, 1, 1, 1, ''),
(0, 9, 131, 1, 1, 0, ''),
(0, 9, 111, 1, 1, 0, ''),
(0, 9, 130, 1, 1, 0, ''),
(0, 9, 112, 1, 1, 0, ''),
(0, 9, 67, 1, 1, 0, ''),
(0, 9, 4, 1, 1, 0, ''),
(0, 9, 36, 1, 1, 0, ''),
(0, 9, 94, 1, 1, 0, ''),
(0, 9, 99, 1, 1, 0, ''),
(0, 9, 37, 1, 1, 1, ''),
(0, 9, 3, 1, 1, 1, ''),
(0, 2, 37, 1, 1, 0, ''),
(0, 2, 3, 1, 1, 0, ''),
(0, 4, 128, 1, 1, 0, ''),
(0, 4, 2, 1, 1, 0, ''),
(0, 4, 76, 1, 1, 0, ''),
(0, 4, 5, 1, 1, 0, ''),
(0, 4, 7, 1, 1, 0, ''),
(0, 4, 129, 1, 1, 0, ''),
(0, 4, 1, 1, 1, 0, ''),
(0, 4, 79, 1, 1, 0, ''),
(0, 4, 80, 1, 1, 0, ''),
(0, 4, 81, 1, 1, 0, ''),
(0, 4, 4, 1, 1, 0, ''),
(0, 4, 67, 1, 1, 0, ''),
(0, 4, 36, 1, 1, 0, ''),
(0, 4, 57, 1, 1, 0, ''),
(0, 4, 40, 1, 1, 0, ''),
(0, 4, 41, 1, 1, 0, ''),
(0, 4, 42, 1, 1, 0, ''),
(0, 4, 60, 1, 1, 0, ''),
(0, 4, 94, 1, 1, 0, ''),
(0, 4, 119, 1, 1, 0, ''),
(0, 4, 37, 1, 1, 0, ''),
(0, 4, 3, 1, 1, 0, ''),
(0, 1, 128, 1, 1, 1, ''),
(0, 1, 2, 1, 1, 1, ''),
(0, 1, 76, 1, 1, 1, ''),
(0, 1, 5, 1, 1, 1, ''),
(0, 1, 7, 1, 1, 1, ''),
(0, 1, 129, 1, 1, 1, ''),
(0, 1, 1, 1, 1, 1, ''),
(0, 1, 79, 1, 1, 1, ''),
(0, 1, 80, 1, 1, 1, ''),
(0, 1, 81, 1, 1, 1, ''),
(0, 1, 4, 1, 1, 1, ''),
(0, 1, 67, 1, 1, 1, ''),
(0, 1, 36, 1, 1, 1, ''),
(0, 1, 57, 1, 1, 1, ''),
(0, 1, 40, 1, 1, 1, ''),
(0, 1, 41, 1, 1, 1, ''),
(0, 1, 42, 1, 1, 1, ''),
(0, 1, 60, 1, 1, 1, ''),
(0, 1, 94, 1, 1, 1, ''),
(0, 1, 119, 1, 1, 1, ''),
(0, 1, 130, 1, 1, 1, ''),
(0, 1, 37, 1, 1, 1, ''),
(0, 1, 3, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `inside_log`
--

CREATE TABLE `inside_log` (
  `log_id` int(16) NOT NULL,
  `log_datetime` int(32) NOT NULL,
  `log_sql` varchar(2048) NOT NULL,
  `data` text NOT NULL,
  `log_table` varchar(64) NOT NULL,
  `log_user_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `inside_sessions`
--

CREATE TABLE `inside_sessions` (
  `id` int(16) NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `user_agent` varchar(256) DEFAULT NULL,
  `last_activity` varchar(128) DEFAULT NULL,
  `user_data_encrypted` text DEFAULT NULL,
  `start_time` int(16) DEFAULT NULL,
  `closed` int(1) DEFAULT NULL,
  `end_time` int(16) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token_encrypted` varchar(512) NOT NULL,
  `risk` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inside_sessions`
--

INSERT INTO `inside_sessions` (`id`, `ip_address`, `user_agent`, `last_activity`, `user_data_encrypted`, `start_time`, `closed`, `end_time`, `user_id`, `token_encrypted`, `risk`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026899', NULL, 1679014270, NULL, NULL, 0, '61eadf9170bed74e98043d4dfae313c8', NULL),
(2, '192.168.1.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679015775', NULL, 1679015775, NULL, NULL, 0, '3bdd60140aa15edcadf69fb0fbbd3125', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679015984', NULL, 1679015984, NULL, NULL, 0, '6ce5f54c431838e3f7144b26a2ec5408', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679016040', NULL, 1679016040, NULL, NULL, 0, '7fcc6e377b541354eeacf8b90378618b', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679016045', NULL, 1679016045, NULL, NULL, 0, '060e9173a07986ee2fb5893a97c1278d', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679055136', NULL, 1679016127, NULL, NULL, 29, '2df620538ff9ce296cb658acfd33933c', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679016194', NULL, 1679016194, NULL, NULL, 0, 'b5ab6fad94009ce0a312143ce65b5e77', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679016195', NULL, 1679016195, NULL, NULL, 0, '01f31cd2cf2b85e558aea4ec38f3a76b', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679016309', NULL, 1679016309, NULL, NULL, 0, '4749a6db9947f3a50aa405d61a83c604', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679016310', NULL, 1679016310, NULL, NULL, 0, '072f27027c470347fa6dae79eb77b664', NULL),
(64, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027263', NULL, 1679027263, NULL, NULL, 28, 'b92c873c3f935cf1e0ce2892cf231f9d', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679023169', NULL, 1679023169, NULL, NULL, 0, 'ee9feaa546e2e3afd77ede0d767495e0', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679023301', NULL, 1679023301, NULL, NULL, 0, '2f430f332c1d8c22caba06f0f8250aed', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679023666', NULL, 1679023666, NULL, NULL, 0, 'efcf7137187d132ac59df3bc53c7d2c2', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679023676', NULL, 1679023676, NULL, NULL, 0, 'f836d77580eea6969de69081a8c3d1c6', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679024267', NULL, 1679024267, NULL, NULL, 0, '829551c2f8f3d9aadf56acd3acf659db', NULL),
(16, '127.0.0.1', NULL, '1679024580', NULL, 1679024580, NULL, NULL, 0, 'd25d75eca6b09ddc02ed04415708b21f', NULL),
(17, '127.0.0.1', NULL, '1679024591', NULL, 1679024591, NULL, NULL, 0, 'd7054b69d40b9e1d2666d1012ff288c6', NULL),
(18, '127.0.0.1', NULL, '1679024672', NULL, 1679024672, NULL, NULL, 0, '5afb3102c6344bf846afa80ac0c635e8', NULL),
(19, '127.0.0.1', NULL, '1679024759', NULL, 1679024759, NULL, NULL, 0, '4767a91a1ce39d0c714b2b8fa508ec64', NULL),
(20, '127.0.0.1', NULL, '1679024914', NULL, 1679024914, NULL, NULL, 0, '125b9b19ba174f369ca1a12ae7fb3bfe', NULL),
(21, '127.0.0.1', NULL, '1679025008', NULL, 1679025008, NULL, NULL, 0, 'bce103ee3f9ab2c4ba1d0b86d924b252', NULL),
(22, '127.0.0.1', NULL, '1679025096', NULL, 1679025096, NULL, NULL, 0, 'ea7c381e45fdb6d55ac0a4ffaec2aa87', NULL),
(23, '178.133.92.28', 'Mozilla/5.0 (Android 13; Mobile; rv:109.0) Gecko/110.0 Firefox/110.0', '1679025916', NULL, 1679025916, NULL, NULL, 0, '2204de608547540c841dd0712470113a', NULL),
(24, '178.133.92.28', 'Mozilla/5.0 (Android 13; Mobile; rv:109.0) Gecko/110.0 Firefox/110.0', '1679025935', NULL, 1679025935, NULL, NULL, 0, '2d2af54c3de5789e295286325aad4b03', NULL),
(25, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026066', NULL, 1679026066, NULL, NULL, 0, '32e4b960a055b9e139a3f7351889488d', NULL),
(26, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026222', NULL, 1679026222, NULL, NULL, 0, '02c8fa7634427b427d3b4a0e2a2fcacf', NULL),
(27, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026239', NULL, 1679026239, NULL, NULL, 0, '06a81b735867b5704ae9125d7a327aae', NULL),
(28, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026243', NULL, 1679026243, NULL, NULL, 0, 'eba80776a97be4262e9ed5526cd03e89', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026289', NULL, 1679026289, NULL, NULL, 0, 'cbcb7024c71aeb649a7ef5c4db093395', NULL),
(30, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026294', NULL, 1679026294, NULL, NULL, 0, 'c6aa90398322673a8ac652426bf3a4f6', NULL),
(31, '178.133.92.28', 'Mozilla/5.0 (Android 13; Mobile; rv:109.0) Gecko/110.0 Firefox/110.0', '1679026307', NULL, 1679026307, NULL, NULL, 0, '9be778813d5ce6a980fe0c731dd5c41b', NULL),
(32, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026475', NULL, 1679026475, NULL, NULL, 0, '1eb5cb817772035437b020b80eaab6cb', NULL),
(33, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026480', NULL, 1679026480, NULL, NULL, 0, 'b871482ee90b0becdbaf51fc41a72f68', NULL),
(34, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026536', NULL, 1679026536, NULL, NULL, 0, 'f838c4a17eeab008fc615f49a06fcdae', NULL),
(35, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026539', NULL, 1679026539, NULL, NULL, 0, '10cc219247f5bb25acf05709e0d97cdc', NULL),
(36, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026545', NULL, 1679026545, NULL, NULL, 27, '1b875efbd073f5a5c0347e2314af1e3d', NULL),
(37, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026558', NULL, 1679026558, NULL, NULL, 0, 'd259950bf285e848818422bd13cd18b9', NULL),
(38, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026563', NULL, 1679026563, NULL, NULL, 0, '40bcff26fbfb494319a8865e3647c0ab', NULL),
(39, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026566', NULL, 1679026566, NULL, NULL, 27, '51a54c0fc4ecde6bed224b6818ca6691', NULL),
(40, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026567', NULL, 1679026567, NULL, NULL, 0, 'a626ef424016befb97edb163c71ec3b3', NULL),
(41, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026568', NULL, 1679026568, NULL, NULL, 0, 'c08223f6b2deb1a6720e28e3232b460f', NULL),
(42, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026612', NULL, 1679026612, NULL, NULL, 0, '45d75c5a29897b6fa2e311ae75c1b108', NULL),
(43, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026616', NULL, 1679026616, NULL, NULL, 0, '44746462ca781a2f678775945e5a534e', NULL),
(44, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679026764', NULL, 1679026764, NULL, NULL, 0, '98662a6902ea11f77d4165507104513e', NULL),
(45, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026922', NULL, 1679026922, NULL, NULL, 28, '94bccf465b68468ca9ec8c8101f219d1', NULL),
(46, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026946', NULL, 1679026946, NULL, NULL, 28, '73ab5e5088b7bbab714f84fd42363253', NULL),
(47, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026948', NULL, 1679026948, NULL, NULL, 0, '22323f8e42b281c8562af848ccd9ccb0', NULL),
(48, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026949', NULL, 1679026949, NULL, NULL, 0, 'a658a0bda6e5a60b1ab48ec2991b614a', NULL),
(49, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026951', NULL, 1679026951, NULL, NULL, 0, '809d9041e985c81fa95caa9a8415f923', NULL),
(50, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026954', NULL, 1679026954, NULL, NULL, 0, '80339b826be2faab4664e20648c6ecf7', NULL),
(51, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026957', NULL, 1679026957, NULL, NULL, 0, 'd0a8952967733723f3e1c09d4a0b2814', NULL),
(52, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026961', NULL, 1679026961, NULL, NULL, 0, '1b36b7e422c944fd5512088578bdcf37', NULL),
(53, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026962', NULL, 1679026962, NULL, NULL, 0, '2ff9755b0ed30b0aaf318947782e9148', NULL),
(54, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026968', NULL, 1679026968, NULL, NULL, 28, '86d5770aae9c5b8e9c40856c52ba1ab0', NULL),
(55, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026970', NULL, 1679026970, NULL, NULL, 0, '5c62951dbfa94f6b688dba6ca5430d66', NULL),
(56, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026971', NULL, 1679026971, NULL, NULL, 0, '7ed37a25fae7eea622363f1ce7583182', NULL),
(57, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679026997', NULL, 1679026997, NULL, NULL, 0, '757a5b2ad7f0eac64aa045a4845b22fb', NULL),
(58, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027001', NULL, 1679027001, NULL, NULL, 28, 'c5e975e30c1cf0118eeb1c722805fe8d', NULL),
(59, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027003', NULL, 1679027003, NULL, NULL, 0, 'e1497fc08280ed220ee661aca8376943', NULL),
(60, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027004', NULL, 1679027004, NULL, NULL, 0, 'a1ee897dd6dc3896b0e12ed4f8917fde', NULL),
(61, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027015', NULL, 1679027015, NULL, NULL, 0, 'a77184dadf328692079ef0e3668abe0d', NULL),
(62, '77.111.244.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679027044', NULL, 1679027044, NULL, NULL, 0, '635e9f38a564b55b2d26924960efffc8', NULL),
(63, '77.111.244.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679027046', NULL, 1679027046, NULL, NULL, 0, 'a5c2f3132e1871272c3c49d52689d279', NULL),
(65, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027264', NULL, 1679027264, NULL, NULL, 0, '45c95098d5fcc16a9e356851b737adc2', NULL),
(66, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027266', NULL, 1679027266, NULL, NULL, 0, '932a23a18fe14b2a93469d03071fdf48', NULL),
(67, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027303', NULL, 1679027303, NULL, NULL, 0, '0080aa3c37094b9de753979ccb528e29', NULL),
(68, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027306', NULL, 1679027306, NULL, NULL, 0, 'dfdeca51fb19e585ff2889b884785a31', NULL),
(69, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027312', NULL, 1679027312, NULL, NULL, 26, 'ba633d23be82cf2e668c1e582ca9a7a6', NULL),
(70, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027313', NULL, 1679027313, NULL, NULL, 0, '60f6b2213f7fcb6d5452c09555c2a3b2', NULL),
(71, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027315', NULL, 1679027315, NULL, NULL, 0, '639b8dcec9b94e0414f40beed77d056d', NULL),
(72, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679027318', NULL, 1679027318, NULL, NULL, 0, '9f194cf49298ca626e75cc66b574ebfb', NULL),
(73, '193.32.162.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '1679027616', NULL, 1679027616, NULL, NULL, 0, '0e42d92e0a4fb9e212e4ece89a01954e', NULL),
(74, '77.111.244.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679027831', NULL, 1679027831, NULL, NULL, 0, '21387866a91c22cb20d07da9ab571a71', NULL),
(75, '77.111.244.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679027832', NULL, 1679027832, NULL, NULL, 0, 'b7336b36815c3b378afc569b6d5ead2a', NULL),
(76, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679027855', NULL, 1679027855, NULL, NULL, 0, '7463d15df87461f7ef7e356288d00e07', NULL),
(77, '149.154.161.216', 'TelegramBot (like TwitterBot)', '1679027938', NULL, 1679027938, NULL, NULL, 0, '9a9eaac8d364c013e9701cf7f4332fd5', NULL),
(78, '149.154.161.237', 'TelegramBot (like TwitterBot)', '1679027943', NULL, 1679027943, NULL, NULL, 0, 'e0139105cf690ddd6ef8b29e19d839ef', NULL),
(79, '45.93.16.15', 'libwww-perl/6.67', '1679028355', NULL, 1679028355, NULL, NULL, 0, 'dbc88ff3bd50c65899a97821e2cd5f5d', NULL),
(80, '45.93.16.15', 'libwww-perl/6.67', '1679028434', NULL, 1679028434, NULL, NULL, 0, 'dd56c21accbeaf7c2f60f1fe85e9a905', NULL),
(81, '128.199.77.96', 'Mozilla/5.0 (X11; Linux x86_64; rv:98.0) Gecko/20100101 Firefox/98.0', '1679034784', NULL, 1679034784, NULL, NULL, 0, 'fffbcb85341791b1cbd24386c3be016a', NULL),
(82, '178.32.197.85', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '1679034887', NULL, 1679034887, NULL, NULL, 0, '8b6b99fa3bd4ef0b101185fbb7200081', NULL),
(83, '193.32.162.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '1679035160', NULL, 1679035160, NULL, NULL, 0, 'ea36ae794439ab88bb227ef7c25a7a18', NULL),
(84, '142.4.218.114', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '1679038155', NULL, 1679038155, NULL, NULL, 0, '9d44673658699a1787846bdcd5700055', NULL),
(85, '162.243.132.21', 'Mozilla/5.0 zgrab/0.x', '1679038831', NULL, 1679038831, NULL, NULL, 0, '55a8a67707dd7563308e495223162687', NULL),
(86, '139.162.192.32', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0', '1679039116', NULL, 1679039116, NULL, NULL, 0, 'cd86fbf14ccd4f667b86cd4b20341434', NULL),
(87, '170.64.176.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '1679039476', NULL, 1679039476, NULL, NULL, 0, 'ed522ae00e6c4c605069420604e14248', NULL),
(88, '179.43.177.242', 'Hello World', '1679039713', NULL, 1679039713, NULL, NULL, 0, '298a85b565585fad285a908de6ff651e', NULL),
(89, '59.89.127.57', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '1679043391', NULL, 1679043391, NULL, NULL, 0, 'fd2bd56564240f9520732348e0a62712', NULL),
(90, '128.14.134.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '1679044202', NULL, 1679044202, NULL, NULL, 0, '3bfb8179bef8c88c90349a546c479e81', NULL),
(91, '176.37.18.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Mobile/15E148 Safari/604.1', '1679047192', NULL, 1679047192, NULL, NULL, 0, '36ef05dc170379ed3c4abc146c3cf411', NULL),
(92, '176.37.18.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Mobile/15E148 Safari/604.1', '1679047221', NULL, 1679047221, NULL, NULL, 0, 'ee939ce7a4d4a3b3da361893f1bd93bf', NULL),
(93, '176.37.18.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Mobile/15E148 Safari/604.1', '1679047222', NULL, 1679047222, NULL, NULL, 0, 'b3c3c022caa27d6531e65534621da721', NULL),
(94, '176.37.18.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Mobile/15E148 Safari/604.1', '1679047239', NULL, 1679047239, NULL, NULL, 0, '32a30328c05d817b3fcfb3d86c080d2d', NULL),
(95, '176.37.18.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Mobile/15E148 Safari/604.1', '1679047241', NULL, 1679047241, NULL, NULL, 0, '4a4e4920427178940b0e16a13771e9bf', NULL),
(96, '103.212.90.168', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '1679048556', NULL, 1679048556, NULL, NULL, 0, '34bf5fbc0343ef678394d93c5540e24f', NULL),
(97, '193.32.162.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '1679049513', NULL, 1679049513, NULL, NULL, 0, 'f76ef64aaa11e0d8dcfe12e8eb553154', NULL),
(98, '35.238.116.105', NULL, '1679050341', NULL, 1679050341, NULL, NULL, 0, 'cd7fbff1acc95f544d69f637c156f439', NULL),
(99, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053244', NULL, 1679053244, NULL, NULL, 0, '52bcdb3a10978ce99d92bd693377863e', NULL),
(100, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053246', NULL, 1679053246, NULL, NULL, 0, '04c374d8ad2d39f0054472a9382e3d5a', NULL),
(101, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053253', NULL, 1679053253, NULL, NULL, 28, '01e0bbbcf163ba60421f7d4a582b0da4', NULL),
(102, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053254', NULL, 1679053254, NULL, NULL, 0, '670bb667ca3e6a17a95ed139f4510ef6', NULL),
(103, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053255', NULL, 1679053255, NULL, NULL, 0, '520a205e4812c7a908e51816e825681e', NULL),
(104, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053729', NULL, 1679053729, NULL, NULL, 0, '10911093251103fbd8629aa5d42263fa', NULL),
(105, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053756', NULL, 1679053756, NULL, NULL, 26, 'c36989dfcc3896d3cc0c803bb0a29a06', NULL),
(106, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053757', NULL, 1679053757, NULL, NULL, 0, '8840bf55d32dfde46fa39a959108e9a6', NULL),
(107, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053758', NULL, 1679053758, NULL, NULL, 0, '0bb6194d0de067987cc33a0ddddf7478', NULL),
(108, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053831', NULL, 1679053831, NULL, NULL, 0, 'e07ad48c1c9383c69c634e4fa132b524', NULL),
(109, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053837', NULL, 1679053837, NULL, NULL, 26, '7a1bc2ec7ba11b330059d616e7ad7d8c', NULL),
(110, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053838', NULL, 1679053838, NULL, NULL, 0, 'd3df8f139af15a983cde518ebe1e9a19', NULL),
(111, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679053840', NULL, 1679053840, NULL, NULL, 0, '83a99252fe65c672d37de9cba126d20c', NULL),
(112, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053941', NULL, 1679053941, NULL, NULL, 0, 'fd50509a22d07d6f0d5997aaf308f5c8', NULL),
(113, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053943', NULL, 1679053943, NULL, NULL, 0, '2a659f86381c4b981ee6acdc78abca47', NULL),
(114, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053948', NULL, 1679053948, NULL, NULL, 27, 'ab9c2f71845543f34e7062e4821616e8', NULL),
(115, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053950', NULL, 1679053950, NULL, NULL, 0, '42eb886172b850e3b1e6396a499643a2', NULL),
(116, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053951', NULL, 1679053951, NULL, NULL, 0, '52e1100226b9a7c788f3cba79332a97d', NULL),
(117, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053960', NULL, 1679053960, NULL, NULL, 0, '0ca3f95307853f266b8fe949bc8361e5', NULL),
(118, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053990', NULL, 1679053990, NULL, NULL, 0, '105c8c7490fe565200ce25b1730f6916', NULL),
(119, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053992', NULL, 1679053992, NULL, NULL, 0, '77c38ef4c4b8d4826b184439da2649f6', NULL),
(120, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053993', NULL, 1679053993, NULL, NULL, 0, '2d8d40c9c4200bbdf800d499cb7f8dc4', NULL),
(121, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679053995', NULL, 1679053995, NULL, NULL, 0, 'dfdce355fc4119cc284e0636dcc38c99', NULL),
(122, '77.111.244.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '1679054010', NULL, 1679054010, NULL, NULL, 27, '106d24938bb7f3be5265562b625af20e', NULL),
(123, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679054038', NULL, 1679054038, NULL, NULL, 0, 'd0703c563bc38b4e4d02b71cc498a34b', NULL),
(124, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679054042', NULL, 1679054042, NULL, NULL, 0, 'a6833575e9db361b8c49a7c2eef8d88f', NULL),
(125, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679054044', NULL, 1679054044, NULL, NULL, 0, '998ea8f87d03c57c36d13081ba041e17', NULL),
(129, '176.37.18.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/108.0.5359.52 Mobile/15E148 Safari/604.1', '1679054648', NULL, 1679054431, NULL, NULL, 29, '3806262b2698bd91fca273932c181242', NULL),
(126, '149.154.161.196', 'TelegramBot (like TwitterBot)', '1679054384', NULL, 1679054384, NULL, NULL, 0, '14188552543f649a3412cd12c770036f', NULL),
(127, '85.159.0.251', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '1679054387', NULL, 1679054387, NULL, NULL, 0, 'dc53fb3977e13e70a393e0b8bf3c84a7', NULL),
(128, '176.37.18.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Mobile/15E148 Safari/604.1', '1679054497', NULL, 1679054402, NULL, NULL, 29, '07dfd4464be419692b6383e4d5ead01a', NULL),
(130, '149.154.161.203', 'TelegramBot (like TwitterBot)', '1679054627', NULL, 1679054627, NULL, NULL, 0, '8364ae97e87684d4e88dc02344578820', NULL),
(131, '192.168.1.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '1679054998', NULL, 1679054998, NULL, NULL, 0, '2c00653ab962866a4964bb7b64fd041c', NULL),
(132, '179.43.177.242', 'Hello World', '1679055323', NULL, 1679055323, NULL, NULL, 0, '93d70c7f5c25a6ec64fe9206e93a1be4', NULL),
(133, '137.226.113.9', 'Mozilla/5.0 researchscan.comsys.rwth-aachen.de', '1679055625', NULL, 1679055625, NULL, NULL, 0, 'd5e88715cd0a593389819f8f325ad32c', NULL),
(134, '64.62.197.218', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Safari/605.1.15', '1679056572', NULL, 1679056572, NULL, NULL, 0, 'aa0ac053cdd74553fa33dbefa1defe03', NULL),
(135, '176.58.118.33', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0', '1679056797', NULL, 1679056797, NULL, NULL, 0, '94d54658ad800846d05e3858a89c3551', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `inside_sessions_actions`
--

CREATE TABLE `inside_sessions_actions` (
  `id` int(32) NOT NULL,
  `session_id` int(16) NOT NULL,
  `time` int(16) NOT NULL,
  `url` varchar(128) NOT NULL,
  `ip_address` varchar(32) NOT NULL,
  `user_agent` varchar(64) NOT NULL,
  `action` varchar(32) NOT NULL,
  `risk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inside_sessions_actions`
--

INSERT INTO `inside_sessions_actions` (`id`, `session_id`, `time`, `url`, `ip_address`, `user_agent`, `action`, `risk`) VALUES
(1, 1, 1679014642, 'https://localhost/', '', '', 'user #0', 0),
(2, 1, 1679014730, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(3, 1, 1679014808, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(4, 1, 1679014857, 'https://localhost/', '', '', 'user #0', 0),
(5, 1, 1679014859, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(6, 1, 1679014978, 'https://localhost/', '', '', 'user #0', 0),
(7, 1, 1679014981, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(8, 1, 1679015032, 'https://localhost/', '', '', 'user #0', 0),
(9, 1, 1679015033, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(10, 1, 1679015038, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh58nO3d737-By-6jcJAERS1hgOqv7nV_6nulv3qqX_trRxQkkscxtlcryRc1iFNKg&sc', '', '', 'user #0', 0),
(11, 1, 1679015038, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh58nO3d737-By-6jcJAERS1hgOqv7nV_6nulv3qqX_trRxQkkscxtlcryRc1iFNKg&sc', '', '', 'social google register user #25', 0),
(12, 1, 1679015065, 'http://localhost/', '', '', 'user #25', 0),
(13, 1, 1679015097, 'http://localhost/inside/panel/menu_tree', '', '', 'user #25', 0),
(14, 1, 1679015105, 'http://localhost/auth/page/logout', '', '', 'user #25', 0),
(15, 1, 1679015105, 'http://localhost/auth/page/logout', '', '', 'logout user #25', 0),
(16, 1, 1679015106, 'http://localhost/', '', '', 'user #0', 0),
(17, 1, 1679015108, 'http://localhost/auth/page/login', '', '', 'user #0', 0),
(18, 1, 1679015112, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh4rv4ppr43rvTM6nCZDL-YGwouH2Jq6pGNMBDRltvKG8PdBVuFVsxxAaxzl00mRRw&sc', '', '', 'user #0', 0),
(19, 1, 1679015113, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh4rv4ppr43rvTM6nCZDL-YGwouH2Jq6pGNMBDRltvKG8PdBVuFVsxxAaxzl00mRRw&sc', '', '', 'social google login user #25', 0),
(20, 1, 1679015114, 'https://localhost/auth/page/profile', '', '', 'user #25', 0),
(21, 1, 1679015205, 'https://localhost/auth/page/profile', '', '', 'user #25', 0),
(22, 1, 1679015206, 'https://localhost/', '', '', 'user #25', 0),
(23, 1, 1679015208, 'https://localhost/auth/page/profile', '', '', 'user #25', 0),
(24, 1, 1679015211, 'https://localhost/auth/page/logout', '', '', 'user #25', 0),
(25, 1, 1679015211, 'https://localhost/auth/page/logout', '', '', 'logout user #25', 0),
(26, 1, 1679015212, 'https://localhost/', '', '', 'user #0', 0),
(27, 1, 1679015214, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(28, 1, 1679015221, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh5Ypetl3H20fNsEgC1d-9nEOTju5qd7d0AAvU21oMqEvB4YomB3YMsZ8AonRzGW7g&sc', '', '', 'user #0', 0),
(29, 1, 1679015221, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh5Ypetl3H20fNsEgC1d-9nEOTju5qd7d0AAvU21oMqEvB4YomB3YMsZ8AonRzGW7g&sc', '', '', 'social google register user #26', 0),
(30, 1, 1679015228, 'https://localhost/auth/page/login', '', '', 'user #26', 0),
(31, 1, 1679015231, 'https://localhost/auth/page/profile', '', '', 'user #26', 0),
(32, 1, 1679015264, 'https://localhost/auth/page/profile', '', '', 'user #26', 0),
(33, 1, 1679015265, 'https://localhost/', '', '', 'user #26', 0),
(34, 1, 1679015267, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(35, 1, 1679015271, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(36, 1, 1679015271, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(37, 1, 1679015275, 'https://localhost/inside/auto/table/it_content', '', '', 'user #26', 0),
(38, 1, 1679015329, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(39, 1, 1679015331, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(40, 1, 1679015334, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(41, 1, 1679015334, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(42, 1, 1679015338, 'https://localhost/', '', '', 'user #26', 0),
(43, 1, 1679015340, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(44, 1, 1679015344, 'https://localhost/inside/auto/table/auth_groups', '', '', 'user #26', 0),
(45, 1, 1679015344, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(46, 1, 1679015352, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(47, 1, 1679015352, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(48, 1, 1679015372, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(49, 1, 1679015373, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(50, 1, 1679015376, 'https://localhost/inside/auto/table/inside_log', '', '', 'user #26', 0),
(51, 1, 1679015379, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(52, 1, 1679015380, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(53, 1, 1679015388, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(54, 1, 1679015388, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(55, 1, 1679015393, 'https://localhost/inside/auto/table/it_content', '', '', 'user #26', 0),
(56, 1, 1679015438, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(57, 1, 1679015442, 'https://localhost/inside/auto/table/it_requests', '', '', 'user #26', 0),
(58, 1, 1679015442, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(59, 1, 1679015450, 'https://localhost/inside/auto/table/auth_users', '', '', 'user #26', 0),
(60, 1, 1679015455, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(61, 1, 1679015465, 'https://localhost/', '', '', 'user #26', 0),
(62, 1, 1679015466, 'https://localhost/auth/page/profile', '', '', 'user #26', 0),
(63, 2, 1679015775, 'http://192.168.1.172/', '', '', 'new_session', 0),
(64, 1, 1679016033, 'https://localhost/auth/page/profile', '', '', 'user #26', 0),
(65, 4, 1679016040, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(66, 5, 1679016045, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(67, 1, 1679016052, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh6LYJrMEoW35t60ObdCU475coktrOClO0nu8YYqNEnEwDNYGLvMoyANLdj7fS-ZjQ&sc', '', '', 'user #26', 0),
(68, 1, 1679016052, 'https://localhost/auth/page/google_redirect/?code=4%2F0AWtgzh6LYJrMEoW35t60ObdCU475coktrOClO0nu8YYqNEnEwDNYGLvMoyANLdj7fS-ZjQ&sc', '', '', 'social google login user #26', 0),
(69, 1, 1679016053, 'https://localhost/auth/page/profile', '', '', 'user #26', 0),
(70, 6, 1679016127, 'https://olorin.nash.net.ua/', '', '', 'new_session', 0),
(71, 6, 1679016132, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(72, 7, 1679016194, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(73, 8, 1679016195, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(74, 9, 1679016309, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(75, 10, 1679016310, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(76, 6, 1679016317, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh5itgdR3mGzAC2xSIWbFNZalI_vpYJ9PTBrUfhCj9X7CNkizjTWXvJy3WTu', '', '', 'user #0', 0),
(77, 6, 1679016317, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh5itgdR3mGzAC2xSIWbFNZalI_vpYJ9PTBrUfhCj9X7CNkizjTWXvJy3WTu', '', '', 'social google login user #26', 0),
(78, 6, 1679016318, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(79, 6, 1679016322, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(80, 6, 1679016326, 'https://olorin.nash.net.ua/', '', '', 'user #26', 0),
(81, 6, 1679016327, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #26', 0),
(82, 6, 1679016334, 'https://olorin.nash.net.ua/inside/panel/database', '', '', 'user #26', 0),
(83, 1, 1679016701, 'https://localhost/auth/page/profile', '', '', 'user #26', 0),
(84, 1, 1679016704, 'https://localhost/', '', '', 'user #26', 0),
(85, 1, 1679016705, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(86, 1, 1679016752, 'https://localhost/inside/auto/table/inside_log', '', '', 'user #26', 0),
(87, 1, 1679016757, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(88, 1, 1679016762, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(89, 1, 1679016763, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(90, 1, 1679016852, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(91, 1, 1679016857, 'https://localhost/inside/auto/table/it_content', '', '', 'user #26', 0),
(92, 1, 1679016863, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(93, 1, 1679016865, 'https://localhost/inside/auto/table/inside_log', '', '', 'user #26', 0),
(94, 1, 1679016916, 'https://localhost/inside/auto/table/inside_log', '', '', 'user #26', 0),
(95, 1, 1679016917, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(96, 1, 1679016933, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(97, 1, 1679016934, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(98, 1, 1679016995, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(99, 1, 1679016995, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(100, 1, 1679016996, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(101, 1, 1679016997, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(102, 1, 1679017041, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(103, 1, 1679017042, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(104, 1, 1679017073, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(105, 1, 1679017074, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(106, 1, 1679017208, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(107, 1, 1679017209, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(108, 1, 1679017214, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(109, 1, 1679017385, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(110, 1, 1679017392, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(111, 1, 1679017394, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(112, 1, 1679017394, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(113, 1, 1679017399, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(114, 1, 1679017574, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(115, 1, 1679017576, 'https://localhost/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(116, 1, 1679017577, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(117, 1, 1679017582, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(118, 1, 1679017585, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(119, 1, 1679017619, 'https://localhost/inside/auto/add_dialog/', '', '', 'user #26', 0),
(120, 1, 1679017624, 'https://localhost/inside/auto/table/it_content', '', '', 'user #26', 0),
(121, 1, 1679017627, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(122, 1, 1679017639, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(123, 1, 1679017640, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(124, 1, 1679019301, 'https://localhost/api/test', '', '', 'user #26', 0),
(125, 1, 1679019318, 'https://localhost/api/test', '', '', 'user #26', 0),
(126, 1, 1679019334, 'https://localhost/api/test', '', '', 'user #26', 0),
(127, 1, 1679019369, 'https://localhost/api/test', '', '', 'user #26', 0),
(128, 1, 1679020117, 'https://localhost/api/test', '', '', 'user #26', 0),
(129, 1, 1679020142, 'https://localhost/api/test?d=4', '', '', 'user #26', 0),
(130, 1, 1679020148, 'https://localhost/api/test?d=4', '', '', 'user #26', 0),
(131, 1, 1679020163, 'https://localhost/api/test?and=4', '', '', 'user #26', 0),
(132, 1, 1679020184, 'https://localhost/api/test?and=4', '', '', 'user #26', 0),
(133, 1, 1679020201, 'https://localhost/api/test', '', '', 'user #26', 0),
(134, 1, 1679020746, 'https://localhost/api/test', '', '', 'user #26', 0),
(135, 1, 1679020964, 'https://localhost/api/test', '', '', 'user #26', 0),
(136, 1, 1679020992, 'https://localhost/api/test?s=4', '', '', 'user #26', 0),
(137, 1, 1679021173, 'https://localhost/api/test', '', '', 'user #26', 0),
(138, 1, 1679021206, 'https://localhost/api/test', '', '', 'user #26', 0),
(139, 1, 1679021216, 'https://localhost/api/test?s=3', '', '', 'user #26', 0),
(140, 1, 1679021231, 'https://localhost/api/test?s=3', '', '', 'user #26', 0),
(141, 1, 1679021234, 'https://localhost/api/test', '', '', 'user #26', 0),
(142, 1, 1679021463, 'https://localhost/api/test', '', '', 'user #26', 0),
(143, 1, 1679021479, 'https://localhost/api/test', '', '', 'user #26', 0),
(144, 1, 1679022023, 'https://localhost/api/test', '', '', 'user #26', 0),
(145, 1, 1679022031, 'https://localhost/api/test', '', '', 'user #26', 0),
(146, 1, 1679022845, 'https://localhost/api/test', '', '', 'user #26', 0),
(147, 1, 1679022904, 'https://localhost/api/test', '', '', 'user #26', 0),
(148, 1, 1679023151, 'https://localhost/api/test', '', '', 'user #26', 0),
(149, 11, 1679023169, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(150, 12, 1679023301, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(151, 13, 1679023666, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(152, 14, 1679023676, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(153, 1, 1679023789, 'https://localhost/api/test', '', '', 'user #26', 0),
(154, 1, 1679023791, 'https://localhost/api/test', '', '', 'user #26', 0),
(155, 1, 1679024054, 'https://localhost/api/test?s=4', '', '', 'user #26', 0),
(156, 1, 1679024060, 'https://localhost/api/test?s=4', '', '', 'user #26', 0),
(157, 1, 1679024066, 'https://localhost/api/test?s=455', '', '', 'user #26', 0),
(158, 1, 1679024077, 'https://localhost/api/test?s=455', '', '', 'user #26', 0),
(159, 1, 1679024198, 'https://localhost/api/test', '', '', 'user #26', 0),
(160, 15, 1679024267, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(161, 1, 1679024288, 'https://localhost/api/test', '', '', 'user #26', 0),
(162, 1, 1679024441, 'https://localhost/api/test?s=455', '', '', 'user #26', 0),
(163, 16, 1679024580, 'http://olorin.nash.net.ua/api/test?id=123&name=blahblah', '', '', 'new_session', 0),
(164, 17, 1679024591, 'http://olorin.nash.net.ua/api/test?id=123&name=blahblah', '', '', 'new_session', 0),
(165, 18, 1679024672, 'http://olorin.nash.net.ua/api/test?id=123&name=blahblah', '', '', 'new_session', 0),
(166, 19, 1679024759, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(167, 20, 1679024914, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(168, 21, 1679025008, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(169, 22, 1679025096, 'http://olorin.nash.net.ua/api/test?id=123&name=blahblah', '', '', 'new_session', 0),
(170, 1, 1679025165, 'https://localhost/api/test?s=455', '', '', 'user #26', 0),
(171, 6, 1679025281, 'https://olorin.nash.net.ua/api/test', '', '', 'user #26', 0),
(172, 6, 1679025322, 'https://olorin.nash.net.ua/api/test?a=1&b=2$f=333', '', '', 'user #26', 0),
(173, 6, 1679025353, 'https://olorin.nash.net.ua/', '', '', 'user #26', 0),
(174, 6, 1679025357, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #26', 0),
(175, 6, 1679025378, 'https://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'user #26', 0),
(176, 6, 1679025381, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #26', 0),
(177, 6, 1679025388, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #26', 0),
(178, 6, 1679025542, 'https://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'user #26', 0),
(179, 6, 1679025542, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #26', 0),
(180, 23, 1679025916, 'http://olorin.nash.net.ua:53205/', '', '', 'new_session', 0),
(181, 24, 1679025935, 'http://olorin.nash.net.ua:53205/', '', '', 'new_session', 0),
(182, 26, 1679026222, 'http://94.244.190.127:53205/', '', '', 'new_session', 0),
(183, 27, 1679026239, 'http://olorin.nash.net.ua:53205/', '', '', 'new_session', 0),
(184, 28, 1679026243, 'http://olorin.nash.net.ua:53205/auth/page/login', '', '', 'new_session', 0),
(185, 29, 1679026289, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(186, 30, 1679026294, 'http://olorin.nash.net.ua:53205/', '', '', 'new_session', 0),
(187, 31, 1679026307, 'http://olorin.nash.net.ua:53205/auth/page/login', '', '', 'new_session', 0),
(188, 32, 1679026475, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(189, 33, 1679026480, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(190, 34, 1679026536, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(191, 35, 1679026539, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(192, 36, 1679026545, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4PLNg5CWmOZuZUeNnzUqLl0QrFEX8fu6xEbrtlSrcEVUH7vPzo2Wn4dPhLU', '', '', 'new_session', 0),
(193, 36, 1679026546, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4PLNg5CWmOZuZUeNnzUqLl0QrFEX8fu6xEbrtlSrcEVUH7vPzo2Wn4dPhLU', '', '', 'social google register user #27', 0),
(194, 37, 1679026558, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(195, 38, 1679026563, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(196, 39, 1679026566, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh690vc0Az9vb1qr2-2PKWIalnD5PUyUJTVpphLOYDPfXr0P0xqkUamMa9ubL', '', '', 'new_session', 0),
(197, 39, 1679026566, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh690vc0Az9vb1qr2-2PKWIalnD5PUyUJTVpphLOYDPfXr0P0xqkUamMa9ubL', '', '', 'social google login user #27', 0),
(198, 40, 1679026567, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(199, 41, 1679026568, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(200, 42, 1679026612, 'http://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'new_session', 0),
(201, 43, 1679026616, 'http://olorin.nash.net.ua/inside/auto/scope/', '', '', 'new_session', 0),
(202, 6, 1679026754, 'https://olorin.nash.net.ua/api/test?a=1&b=2$f=333', '', '', 'user #26', 0),
(203, 44, 1679026764, 'http://olorin.nash.net.ua/api/test?a=1&b=2$f=333', '', '', 'new_session', 0),
(204, 1, 1679026798, 'https://localhost/inside/auto/table/api_log', '', '', 'user #26', 0),
(205, 1, 1679026799, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(206, 1, 1679026807, 'https://localhost/inside/auto/edit_dialog/', '', '', 'user #26', 0),
(207, 1, 1679026838, 'https://localhost/inside/auto/scope/', '', '', 'user #26', 0),
(208, 1, 1679026899, 'https://localhost/inside/panel/menu_tree', '', '', 'user #26', 0),
(209, 1, 1679026914, 'https://localhost/auth/page/logout', '', '', 'user #26', 0),
(210, 1, 1679026914, 'https://localhost/auth/page/logout', '', '', 'logout user #26', 0),
(211, 1, 1679026915, 'https://localhost/', '', '', 'user #0', 0),
(212, 1, 1679026917, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(213, 45, 1679026922, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4PnF3rq9rIEC7oHq4BFo6396XJdJ8TzSU2DYfT1NqSaX1Rb_HIATteDQpMB', '', '', 'new_session', 0),
(214, 45, 1679026923, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4PnF3rq9rIEC7oHq4BFo6396XJdJ8TzSU2DYfT1NqSaX1Rb_HIATteDQpMB', '', '', 'social google register user #28', 0),
(215, 1, 1679026939, 'https://localhost/', '', '', 'user #0', 0),
(216, 1, 1679026941, 'https://localhost/auth/page/login', '', '', 'user #0', 0),
(217, 46, 1679026946, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh57vJNRHRkmNhol3t-4nHAW5lby80r06pvqwhfeCmemugiSNkw_jpzbmF6Db', '', '', 'new_session', 0),
(218, 46, 1679026946, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh57vJNRHRkmNhol3t-4nHAW5lby80r06pvqwhfeCmemugiSNkw_jpzbmF6Db', '', '', 'social google login user #28', 0),
(219, 47, 1679026948, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(220, 48, 1679026949, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(221, 49, 1679026951, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(222, 50, 1679026954, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(223, 51, 1679026957, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(224, 52, 1679026961, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(225, 53, 1679026962, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(226, 54, 1679026968, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh7WMciAz_eZHjLhjWeQtG9WMSGrADE5OLSAxT8TQEtyMFPYoRtTs_zrm0bfK', '', '', 'new_session', 0),
(227, 54, 1679026968, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh7WMciAz_eZHjLhjWeQtG9WMSGrADE5OLSAxT8TQEtyMFPYoRtTs_zrm0bfK', '', '', 'social google login user #28', 0),
(228, 55, 1679026970, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(229, 56, 1679026971, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(230, 57, 1679026997, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(231, 58, 1679027001, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6apWKsat3aMRQS_YGZND4Ekhw2aPwivZNiE-9DFfMI1Q_SXy3d1RV83r_am', '', '', 'new_session', 0),
(232, 58, 1679027001, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6apWKsat3aMRQS_YGZND4Ekhw2aPwivZNiE-9DFfMI1Q_SXy3d1RV83r_am', '', '', 'social google login user #28', 0),
(233, 59, 1679027003, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(234, 60, 1679027004, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(235, 61, 1679027015, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(236, 6, 1679027022, 'https://olorin.nash.net.ua/api/test', '', '', 'user #26', 0),
(237, 6, 1679027029, 'https://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'user #26', 0),
(238, 6, 1679027031, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #26', 0),
(239, 62, 1679027044, 'http://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'new_session', 0),
(240, 63, 1679027046, 'http://olorin.nash.net.ua/inside/auto/scope/', '', '', 'new_session', 0),
(241, 6, 1679027253, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #26', 0),
(242, 6, 1679027253, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #26', 0),
(243, 6, 1679027254, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(244, 6, 1679027256, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(245, 64, 1679027263, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6WtMaL9uCWbj3MDR16-wgxm-xaFn5gquo7xKB9krxUjAL6zSY5NGd70e0nv', '', '', 'new_session', 0),
(246, 64, 1679027263, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6WtMaL9uCWbj3MDR16-wgxm-xaFn5gquo7xKB9krxUjAL6zSY5NGd70e0nv', '', '', 'social google login user #28', 0),
(247, 65, 1679027264, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(248, 66, 1679027266, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(249, 67, 1679027303, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(250, 68, 1679027306, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(251, 69, 1679027312, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh5R7R50q2WbsatQjEkCRgGcHlt2s4puyk_G8_JmcrKDc0jlRx01LCFTVOUic', '', '', 'new_session', 0),
(252, 69, 1679027312, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh5R7R50q2WbsatQjEkCRgGcHlt2s4puyk_G8_JmcrKDc0jlRx01LCFTVOUic', '', '', 'social google login user #26', 0),
(253, 70, 1679027313, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(254, 71, 1679027315, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(255, 72, 1679027318, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(256, 73, 1679027616, 'http://94.244.190.127/', '', '', 'new_session', 0),
(257, 74, 1679027831, 'http://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'new_session', 0),
(258, 75, 1679027832, 'http://olorin.nash.net.ua/inside/auto/scope/', '', '', 'new_session', 0),
(259, 76, 1679027855, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(260, 77, 1679027938, 'http://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'new_session', 0),
(261, 78, 1679027943, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(262, 79, 1679028355, 'http://94.244.190.127/', '', '', 'new_session', 0),
(263, 80, 1679028434, 'http://94.244.190.127/', '', '', 'new_session', 0),
(264, 81, 1679034784, 'http://localhost:8080/', '', '', 'new_session', 0),
(265, 82, 1679034887, 'http://94.244.190.127/', '', '', 'new_session', 0),
(266, 83, 1679035160, 'http://94.244.190.127/', '', '', 'new_session', 0),
(267, 84, 1679038155, 'http://94.244.190.127/', '', '', 'new_session', 0),
(268, 85, 1679038831, 'http://94.244.190.127/', '', '', 'new_session', 0),
(269, 86, 1679039116, 'http://94.244.190.127/', '', '', 'new_session', 0),
(270, 87, 1679039476, 'http://94.244.190.127/', '', '', 'new_session', 0),
(271, 88, 1679039713, 'http://94.244.190.127:80/', '', '', 'new_session', 0),
(272, 89, 1679043391, 'http://94.244.190.127:80/', '', '', 'new_session', 0),
(273, 90, 1679044202, 'http://94.244.190.127/', '', '', 'new_session', 0),
(274, 91, 1679047192, 'http://olorin.nash.net.ua/api/test', '', '', 'new_session', 0),
(275, 92, 1679047221, 'http://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'new_session', 0),
(276, 93, 1679047222, 'http://olorin.nash.net.ua/inside/auto/scope/', '', '', 'new_session', 0),
(277, 94, 1679047239, 'http://olorin.nash.net.ua/inside/auto/scope/', '', '', 'new_session', 0),
(278, 95, 1679047241, 'http://olorin.nash.net.ua/inside/auto/scope/', '', '', 'new_session', 0),
(279, 96, 1679048556, 'http://94.244.190.127:80/', '', '', 'new_session', 0),
(280, 97, 1679049513, 'http://94.244.190.127/', '', '', 'new_session', 0),
(281, 98, 1679050341, 'http://94.244.190.127/', '', '', 'new_session', 0),
(282, 99, 1679053244, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(283, 100, 1679053246, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(284, 101, 1679053253, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh7_6i6Y00nVsavB1w47KXSIQ9_J6Q2vcUCkw5JA-abEtKxFoqeZcNPM004Cp', '', '', 'new_session', 0),
(285, 101, 1679053253, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh7_6i6Y00nVsavB1w47KXSIQ9_J6Q2vcUCkw5JA-abEtKxFoqeZcNPM004Cp', '', '', 'social google login user #28', 0),
(286, 102, 1679053254, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(287, 103, 1679053255, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(288, 104, 1679053729, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(289, 6, 1679053745, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(290, 6, 1679053749, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(291, 105, 1679053756, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6qijJckAGXKdRHEHjRStRmyj2H_O52xTpvvRMoaKLJgj0NcdW-k2Bq-qSl-', '', '', 'new_session', 0),
(292, 105, 1679053756, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6qijJckAGXKdRHEHjRStRmyj2H_O52xTpvvRMoaKLJgj0NcdW-k2Bq-qSl-', '', '', 'social google login user #26', 0),
(293, 106, 1679053757, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(294, 107, 1679053758, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(295, 108, 1679053831, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(296, 109, 1679053837, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4u3NMkb15xobbrvmwASTUgy9CDBXlV_ZYF2UtsWUsyThxptWzAjtqfxOQUl', '', '', 'new_session', 0),
(297, 109, 1679053837, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4u3NMkb15xobbrvmwASTUgy9CDBXlV_ZYF2UtsWUsyThxptWzAjtqfxOQUl', '', '', 'social google login user #26', 0),
(298, 110, 1679053838, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(299, 111, 1679053840, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(300, 112, 1679053941, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(301, 113, 1679053943, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(302, 114, 1679053948, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6pNz2z0lLfCoT3afPtfU_iL_PQfJJ-udgH_xGrRZH1KhubzO0h5BZDtdQ8b', '', '', 'new_session', 0),
(303, 114, 1679053948, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6pNz2z0lLfCoT3afPtfU_iL_PQfJJ-udgH_xGrRZH1KhubzO0h5BZDtdQ8b', '', '', 'social google login user #27', 0),
(304, 115, 1679053950, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(305, 116, 1679053951, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(306, 117, 1679053960, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(307, 118, 1679053990, 'http://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh6-CZVfbJcBxf0bne7NG-LiGLIVEFogrW2Df-nQZ8Plh2SJMSm4y3Oa9WPGN', '', '', 'new_session', 0),
(308, 119, 1679053992, 'http://olorin.nash.net.ua/auth/page/profile', '', '', 'new_session', 0),
(309, 120, 1679053993, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(310, 121, 1679053995, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(311, 122, 1679054010, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4G2XamHNhSDy_PbjHLCt_9pR_sA7yRNtS-r-L30RHHCEnylpvlLLiZjrfx', '', '', 'new_session', 0),
(312, 122, 1679054010, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4G2XamHNhSDy_PbjHLCt_9pR_sA7yRNtS-r-L30RHHCEnylpvlLLiZjrfx', '', '', 'social google login user #27', 0),
(313, 122, 1679054011, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #27', 0),
(314, 122, 1679054017, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #27', 0),
(315, 122, 1679054021, 'https://olorin.nash.net.ua/', '', '', 'user #27', 0),
(316, 122, 1679054024, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #27', 0),
(317, 123, 1679054038, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(318, 124, 1679054042, 'http://olorin.nash.net.ua/', '', '', 'new_session', 0),
(319, 125, 1679054044, 'http://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(320, 6, 1679054048, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh7E3wiLTy0JafVvQwuu19O1v9J7Y5FFQj0Cw3oD-M4lsh4Qtg3-NVaxWKMa', '', '', 'user #0', 0),
(321, 6, 1679054048, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh7E3wiLTy0JafVvQwuu19O1v9J7Y5FFQj0Cw3oD-M4lsh4Qtg3-NVaxWKMa', '', '', 'social google login user #26', 0),
(322, 6, 1679054049, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(323, 6, 1679054052, 'https://olorin.nash.net.ua/', '', '', 'user #26', 0),
(324, 6, 1679054054, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #26', 0),
(325, 6, 1679054244, 'https://olorin.nash.net.ua/', '', '', 'user #26', 0),
(326, 6, 1679054364, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(327, 6, 1679054368, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(328, 6, 1679054371, 'https://olorin.nash.net.ua/', '', '', 'user #26', 0),
(329, 6, 1679054372, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #26', 0),
(330, 126, 1679054384, 'https://olorin.nash.net.ua/', '', '', 'new_session', 0),
(331, 127, 1679054387, 'http://94.244.190.127:80/', '', '', 'new_session', 0),
(332, 6, 1679054389, 'https://olorin.nash.net.ua/', '', '', 'user #26', 0),
(333, 6, 1679054392, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(334, 6, 1679054393, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #26', 0),
(335, 6, 1679054393, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #26', 0),
(336, 6, 1679054395, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(337, 6, 1679054396, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(338, 6, 1679054401, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh60gT7EnPEHLAm3Xi1nbIk3LHz17oPBQir8jOpiRv_6vn83-1BnnU9EOIgZ', '', '', 'user #0', 0),
(339, 6, 1679054401, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh60gT7EnPEHLAm3Xi1nbIk3LHz17oPBQir8jOpiRv_6vn83-1BnnU9EOIgZ', '', '', 'social google login user #27', 0),
(340, 128, 1679054402, 'https://olorin.nash.net.ua/', '', '', 'new_session', 0),
(341, 6, 1679054402, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #27', 0),
(342, 128, 1679054404, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(343, 128, 1679054409, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(344, 6, 1679054424, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #27', 0),
(345, 6, 1679054429, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #27', 0),
(346, 6, 1679054429, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #27', 0),
(347, 6, 1679054430, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(348, 129, 1679054431, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(349, 6, 1679054432, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(350, 129, 1679054436, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(351, 6, 1679054437, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4GdUwgKWU3QRnzfg47qFYr1DNxMSMu7ARd0tIc3boxt6tggzmcD2cGo7Co', '', '', 'user #0', 0),
(352, 6, 1679054437, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh4GdUwgKWU3QRnzfg47qFYr1DNxMSMu7ARd0tIc3boxt6tggzmcD2cGo7Co', '', '', 'social google login user #26', 0),
(353, 6, 1679054439, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(354, 6, 1679054440, 'https://olorin.nash.net.ua/', '', '', 'user #26', 0),
(355, 6, 1679054441, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #26', 0),
(356, 129, 1679054445, 'https://olorin.nash.net.ua/auth/api/check_reg/', '', '', 'user #0', 0),
(357, 129, 1679054445, 'https://olorin.nash.net.ua/auth/api/check_reg/', '', '', 'register user #29', 0),
(358, 129, 1679054445, 'https://olorin.nash.net.ua/auth/api/check_reg/', '', '', 'login user #29', 0),
(359, 129, 1679054445, 'https://olorin.nash.net.ua/auth/page/profile?reg=1', '', '', 'user #29', 0),
(360, 6, 1679054452, 'https://olorin.nash.net.ua/inside/auto/table/api_log', '', '', 'user #26', 0),
(361, 6, 1679054453, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #26', 0),
(362, 6, 1679054466, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #26', 0),
(363, 6, 1679054469, 'https://olorin.nash.net.ua/inside/auto/table/inside_top_menu', '', '', 'user #26', 0),
(364, 6, 1679054470, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #26', 0),
(365, 128, 1679054497, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #0', 0),
(366, 128, 1679054497, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(367, 128, 1679054499, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(368, 128, 1679054499, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(369, 128, 1679054500, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(370, 128, 1679054500, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(371, 128, 1679054502, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(372, 128, 1679054502, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(373, 128, 1679054502, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(374, 128, 1679054502, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(375, 128, 1679054502, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(376, 128, 1679054502, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(377, 128, 1679054503, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(378, 128, 1679054503, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(379, 128, 1679054503, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(380, 128, 1679054503, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(381, 128, 1679054507, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(382, 128, 1679054507, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(383, 128, 1679054507, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #29', 0),
(384, 128, 1679054508, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(385, 128, 1679054513, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(386, 128, 1679054513, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(387, 128, 1679054515, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(388, 128, 1679054515, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(389, 128, 1679054516, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(390, 128, 1679054516, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(391, 128, 1679054516, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(392, 128, 1679054516, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(393, 128, 1679054516, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(394, 128, 1679054516, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(395, 128, 1679054517, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(396, 128, 1679054517, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(397, 128, 1679054517, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(398, 128, 1679054517, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(399, 128, 1679054534, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(400, 128, 1679054534, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(401, 6, 1679054563, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(402, 6, 1679054566, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #26', 0),
(403, 6, 1679054570, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #26', 0),
(404, 6, 1679054570, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #26', 0),
(405, 6, 1679054571, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(406, 6, 1679054573, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(407, 129, 1679054574, 'https://olorin.nash.net.ua/auth/page/profile?reg=1', '', '', 'user #29', 0),
(408, 129, 1679054576, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #29', 0),
(409, 6, 1679054578, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh5y3rpMua92MXkVgrRbcalPMnaQgl2mw3lDBY3aabN7wpojg1XkURQPZgyA', '', '', 'user #0', 0),
(410, 6, 1679054578, 'https://olorin.nash.net.ua/auth/page/google_redirect/?code=4%2F0AWtgzh5y3rpMua92MXkVgrRbcalPMnaQgl2mw3lDBY3aabN7wpojg1XkURQPZgyA', '', '', 'social google login user #27', 0),
(411, 6, 1679054579, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #27', 0),
(412, 6, 1679054583, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #27', 0),
(413, 6, 1679054600, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #27', 0),
(414, 6, 1679054600, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #27', 0),
(415, 6, 1679054601, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(416, 6, 1679054603, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(417, 6, 1679054610, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #0', 0),
(418, 6, 1679054610, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(419, 6, 1679054616, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(420, 6, 1679054616, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(421, 6, 1679054619, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(422, 6, 1679054619, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(423, 6, 1679054620, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #29', 0),
(424, 6, 1679054620, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(425, 129, 1679054621, 'https://olorin.nash.net.ua/inside/auto/table/auth_groups', '', '', 'user #29', 0),
(426, 129, 1679054621, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #29', 0),
(427, 130, 1679054627, 'https://olorin.nash.net.ua/inside/auto/table/auth_groups', '', '', 'new_session', 0),
(428, 6, 1679054635, 'https://olorin.nash.net.ua/inside/auto/table/auth_groups', '', '', 'user #29', 0),
(429, 6, 1679054636, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #29', 0),
(430, 129, 1679054648, 'https://olorin.nash.net.ua/inside/auto/add_dialog/', '', '', 'user #29', 0),
(431, 129, 1679054650, 'https://olorin.nash.net.ua/inside/auto/add_dialog/', '', '', 'user #29', 0),
(432, 129, 1679054655, 'https://olorin.nash.net.ua/inside/auto/edit_dialog/', '', '', 'user #29', 0),
(433, 6, 1679054725, 'https://olorin.nash.net.ua/inside/auto/table/inside_top_menu', '', '', 'user #29', 0),
(434, 6, 1679054725, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #29', 0),
(435, 6, 1679054727, 'https://olorin.nash.net.ua/inside/panel/menu_tree', '', '', 'user #29', 0),
(436, 6, 1679054733, 'https://olorin.nash.net.ua/inside/auto/table/inside_top_menu', '', '', 'user #29', 0),
(437, 6, 1679054734, 'https://olorin.nash.net.ua/inside/auto/scope/', '', '', 'user #29', 0),
(438, 6, 1679054743, 'https://olorin.nash.net.ua/', '', '', 'user #29', 0),
(439, 6, 1679054747, 'https://olorin.nash.net.ua/', '', '', 'user #29', 0),
(440, 6, 1679054748, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #29', 0),
(441, 6, 1679054750, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #29', 0),
(442, 6, 1679054750, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #29', 0),
(443, 6, 1679054751, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(444, 6, 1679054752, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(445, 6, 1679054759, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #0', 0),
(446, 6, 1679054759, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(447, 6, 1679054969, 'https://olorin.nash.net.ua/auth/api/check_reg/', '', '', 'user #29', 0),
(448, 6, 1679054969, 'https://olorin.nash.net.ua/auth/api/check_reg/', '', '', 'register user #30', 0),
(449, 6, 1679054969, 'https://olorin.nash.net.ua/auth/api/check_reg/', '', '', 'login user #30', 0),
(450, 6, 1679054969, 'https://olorin.nash.net.ua/auth/page/profile?reg=1', '', '', 'user #30', 0),
(451, 6, 1679054978, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #30', 0),
(452, 6, 1679054980, 'https://olorin.nash.net.ua/', '', '', 'user #30', 0),
(453, 6, 1679054985, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #30', 0),
(454, 6, 1679054987, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #30', 0),
(455, 6, 1679054987, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #30', 0),
(456, 6, 1679054988, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(457, 6, 1679054989, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(458, 6, 1679054992, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #0', 0),
(459, 6, 1679054992, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #30', 0),
(460, 6, 1679054994, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #30', 0),
(461, 6, 1679054994, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #30', 0),
(462, 131, 1679054998, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'new_session', 0),
(463, 6, 1679055004, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #30', 0),
(464, 6, 1679055004, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #30', 0),
(465, 6, 1679055136, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #30', 0),
(466, 6, 1679055137, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #30', 0),
(467, 6, 1679055137, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #30', 0),
(468, 6, 1679055140, 'https://olorin.nash.net.ua/', '', '', 'user #30', 0),
(469, 6, 1679055142, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #30', 0),
(470, 6, 1679055144, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'user #30', 0),
(471, 6, 1679055144, 'https://olorin.nash.net.ua/auth/page/logout', '', '', 'logout user #30', 0),
(472, 6, 1679055145, 'https://olorin.nash.net.ua/', '', '', 'user #0', 0),
(473, 6, 1679055146, 'https://olorin.nash.net.ua/auth/page/login', '', '', 'user #0', 0),
(474, 6, 1679055151, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'user #0', 0),
(475, 6, 1679055151, 'https://olorin.nash.net.ua/auth/api/check_login/', '', '', 'login user #29', 0),
(476, 6, 1679055151, 'https://olorin.nash.net.ua/auth/page/profile', '', '', 'user #29', 0),
(477, 132, 1679055323, 'http://94.244.190.127:80/', '', '', 'new_session', 0),
(478, 133, 1679055625, 'https://94.244.190.127/', '', '', 'new_session', 0),
(479, 134, 1679056572, 'http://94.244.190.127/', '', '', 'new_session', 0),
(480, 135, 1679056797, 'http://94.244.190.127/', '', '', 'new_session', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `inside_top_menu`
--

CREATE TABLE `inside_top_menu` (
  `top_menu_id` int(8) NOT NULL,
  `top_menu_parent_id` int(8) DEFAULT NULL,
  `top_menu_haschild` int(1) DEFAULT NULL,
  `top_menu_name` varchar(64) DEFAULT NULL,
  `top_menu_module_name` varchar(64) DEFAULT NULL,
  `top_menu_url` varchar(128) DEFAULT NULL,
  `top_menu_invisible` int(1) DEFAULT NULL COMMENT '=1 invisible',
  `top_menu_priority` int(3) DEFAULT NULL,
  `top_menu_width` int(8) DEFAULT NULL,
  `top_menu_widthchild` int(8) DEFAULT NULL,
  `top_menu_icon` varchar(64) DEFAULT NULL,
  `top_menu_icon_url` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `inside_top_menu`
--

INSERT INTO `inside_top_menu` (`top_menu_id`, `top_menu_parent_id`, `top_menu_haschild`, `top_menu_name`, `top_menu_module_name`, `top_menu_url`, `top_menu_invisible`, `top_menu_priority`, `top_menu_width`, `top_menu_widthchild`, `top_menu_icon`, `top_menu_icon_url`) VALUES
(1, 2, 0, 'Groups', 'inside_auth_groups', '/inside/auto/table/auth_groups', 0, 51, 0, 0, '', ''),
(2, 0, 1, 'Settings', 'inside_inside_top_menu', '', 0, 2, 0, 0, 'fa fa-cogs', '/inside/auto/table/inside_top_menu'),
(3, 0, 0, 'LogOut', '', '/auth/page/logout', 0, 70, 0, 0, 'fa fa-sign-out', '/auth/page/logout'),
(4, 0, 1, 'Web-Site CMS', 'inside_it_content', '', 0, 4, 0, 0, 'fa fa-file-text-o', '/inside/auto/table/it_content'),
(5, 2, 0, 'Inside-menu', 'inside_inside_top_menu', '/inside/auto/table/inside_top_menu', 0, 1, 0, 0, '', ''),
(7, 2, 0, 'Users', 'inside_users', '/inside/auto/table/auth_users', 0, 2, 0, 0, '', ''),
(37, 0, 0, 'Exit', 'inside_it_categories', '/', 0, 6, 0, 0, 'fa fa-road', '/'),
(67, 4, 0, 'Requests', 'inside_it_requests', '/inside/auto/table/it_requests', 0, -35, 0, 0, '', ''),
(76, 2, 0, 'Inside Log', '', '/inside/auto/table/inside_log', 0, 0, 0, 0, '', ''),
(79, 0, 1, 'Languages', '', '', 1, 4, 0, 0, 'fa fa-book', '/inside/auto/table/wm_vocabulary'),
(80, 79, 0, 'Lang Names', '\n                                                inside_wm_lang ', '/inside/auto/table/wm_lang', 0, 4, 0, 0, '', ''),
(81, 79, 0, 'Vocabulary', 'inside_wm_vocabulary', '/inside/auto/table/wm_vocabulary', 0, 4, 0, 0, '', ''),
(94, 0, 1, 'Advanced', '', '', 1, 5, 0, 0, 'fa fa-tree', '/inside/panel/menu_tree/'),
(119, 94, 0, 'Menu tree', 'menu_tree', '/inside/panel/menu_tree', 0, -1, 0, 0, '', ''),
(128, 0, 0, 'Inside Menu Tree', 'inside_menu_tree', '/inside/panel/menu_tree', 0, -1, 0, 0, 'fa fa-home', '/inside/panel/menu_tree'),
(129, 2, 0, 'Database View', 'inside_inside_modules', '/inside/panel/database', 0, 3, 0, 0, '', ''),
(147, 0, 1, 'NashNet', '', '', 0, 1, 0, 0, 'fa fa-refresh', '/inside/auto/table/employees'),
(153, 147, 1, 'ERP', '', '', 0, 10, 0, 0, '', ''),
(156, 153, 0, 'ERP Terminal', 'erp_terminal', '/terminals/tree', 0, 0, 0, 0, '', ''),
(157, 2, 0, 'Worker Tasks ', '', '/inside/auto/table/worker_tasks', 0, 0, 0, 0, '', ''),
(158, 147, 1, 'Справочники', '', '', 0, 0, 0, 0, '', ''),
(159, 147, 1, 'Основная БД', '', '', 0, 11, 0, 0, '', ''),
(166, 147, 1, 'Рабочие таблицы', '', '', 0, 0, 0, 0, '', ''),
(169, 147, 1, 'Интерфейсы', '', '', 0, 0, 0, 0, '', ''),
(182, 0, 1, 'Мои данные', '', '', 0, 0, 0, 0, 'fa fa-user', '/erp/user/desktop'),
(184, 182, 0, 'Мой Лог Действий', 'inside_erp_logs_my', '/erp/logs/my', 0, 0, 0, 0, '', ''),
(185, 182, 0, 'Рабочий стол', 'inside_erp_user_desktop', '/erp/user/desktop', 0, 0, 0, 0, '', ''),
(186, 147, 1, 'Архив', '', '', 0, 99, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `it_requests`
--

CREATE TABLE `it_requests` (
  `requests_id` int(8) NOT NULL,
  `requests_user_contacts` varchar(512) NOT NULL,
  `requests_user_name` varchar(64) NOT NULL,
  `requests_user_email` varchar(64) NOT NULL,
  `requests_user_id` int(8) NOT NULL,
  `requests_user_city` varchar(64) NOT NULL,
  `requests_user_phone` varchar(32) NOT NULL,
  `requests_user_site` varchar(64) NOT NULL,
  `requests_datetime` int(32) NOT NULL,
  `requests_message` varchar(2048) NOT NULL,
  `requests_invisible` int(1) NOT NULL,
  `requests_priority` int(3) NOT NULL,
  `requests_type` int(2) NOT NULL,
  `requests_result` int(2) NOT NULL,
  `requests_url` varchar(512) NOT NULL,
  `requests_name` varchar(256) NOT NULL,
  `requests_virtual_type` int(4) NOT NULL,
  `virtual1` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lang_names`
--

CREATE TABLE `lang_names` (
  `id` int(4) NOT NULL,
  `lang_alias` varchar(32) NOT NULL,
  `lang_name` varchar(256) NOT NULL,
  `lang_img` varchar(256) NOT NULL,
  `priority` int(4) NOT NULL,
  `off` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lang_names`
--

INSERT INTO `lang_names` (`id`, `lang_alias`, `lang_name`, `lang_img`, `priority`, `off`) VALUES
(1, 'en', 'English', '', 0, 0),
(2, 'ru', 'Russian', '', 0, 0),
(3, 'ua', 'Ukraine', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `lang_vocabulary`
--

CREATE TABLE `lang_vocabulary` (
  `vocabulary_id` int(8) NOT NULL,
  `vocabulary_name` text NOT NULL,
  `vocabulary_alias` varchar(64) NOT NULL,
  `vocabulary_lang` varchar(8) NOT NULL,
  `vocabulary_type` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lang_vocabulary`
--

INSERT INTO `lang_vocabulary` (`vocabulary_id`, `vocabulary_name`, `vocabulary_alias`, `vocabulary_lang`, `vocabulary_type`) VALUES
(1, 'Сохранить', 'save_data', 'ru', 0),
(2, 'Save data', 'save_data', 'en', 0),
(3, 'Номер телефона', 'phone_number', 'ru', 0),
(4, 'Доп. информация', 'about_info', 'ru', 0),
(20, 'Язык', 'language', 'ru', 0),
(21, 'Мова', 'language', 'ua', 0),
(22, 'Language', 'language', 'en', 0),
(7, 'Сменить Email или Пароль', 'pass_email_change', 'ru', 0),
(8, 'Ваш пароль', 'current_password', 'ru', 0),
(9, 'Новый пароль', 'new_password', 'ru', 0),
(10, 'Новый пароль еще раз', 'repeat_new_password', 'ru', 0),
(11, 'Обновить', 'update', 'ru', 0),
(23, 'Russian', 'lang_ru', 'en', 0),
(24, 'Російська', 'lang_ru', 'ua', 0),
(25, 'Русский', 'lang_ru', 'ru', 0),
(26, 'Ukrainian', 'lang_ua', 'en', 0),
(16, 'Данные сохранены!', 'data_saved', 'ru', 0),
(27, 'Українська', 'lang_ua', 'ua', 0),
(28, 'Украинский', 'lang_ua', 'ru', 0),
(29, 'English', 'lang_en', 'en', 0),
(30, 'Англійська', 'lang_en', 'ua', 0),
(31, 'Английский', 'lang_en', 'ru', 0),
(32, 'My Profile', 'my_profile', 'en', 0),
(33, 'Личный кабинет', 'my_profile', 'ru', 0),
(34, 'Вход / Регистрация', 'login_reg_top', 'ru', 0),
(35, 'Login / Sing Up', 'login_reg_top', 'en', 0),
(36, 'Change email or password', 'pass_email_change', 'en', 3),
(37, 'Сменить email или пароль', 'pass_email_change', 'ru', 3),
(38, 'Ваш пароль', 'current_password', 'ru', 3),
(39, 'Сurrent password', 'current_password', 'en', 3),
(40, 'New password', 'new_password', 'en', 3),
(41, 'Новый пароль', 'new_password', 'ru', 3),
(42, 'New password again', 'repeat_new_password', 'en', 3),
(43, 'Новый пароль еще раз', 'repeat_new_password', 'ru', 3),
(44, 'Сохранить изменения', 'save_changes', 'ru', 3),
(45, 'Save changes', 'save_changes', 'en', 3),
(222, 'з 2006 року у IT та бізнесі', 'copy_footer_line', 'ua', 2),
(76, 'Login to system', 'login_h1', 'en', 3),
(77, 'Вход в личный кабинет', 'login_h1', 'ru', 3),
(78, 'Password', 'password', 'en', 3),
(223, 'from 2006 in IT and eCommerce', 'copy_footer_line', 'en', 2),
(224, 'с 2006 года в IT и маркетинге', 'copy_footer_line', 'ru', 2),
(225, 'Усі права захищені', 'all_r_reserved', 'ua', 2),
(226, 'All rights reserved', 'all_r_reserved', 'en', 2),
(227, 'Все права защищены', 'all_r_reserved', 'ru', 2),
(231, 'У нас можна замовити аналіз рынку, розробку веб-сайта, програмування стартапу, та інші IT та Digital послуги.', 'main_page_h2', 'ua', 2),
(232, 'У нас можно заказать анализ рынка, разработку веб-сайта, программирование стартапа, и другие IT и Digital услуги.', 'main_page_h2', 'ru', 2),
(233, 'You can order market analysis, website development, make your startup, and purchase other IT and Digital services.', 'main_page_h2', 'en', 2),
(234, 'from', 'from', 'en', 2),
(235, 'от', 'from', 'ru', 2),
(236, 'від', 'from', 'ua', 2),
(237, 'Всего', 'total', 'ru', 2),
(238, 'Усього', 'total', 'ua', 2),
(239, 'Total', 'total', 'en', 2),
(240, 'Веб-сайт', 'website', 'ua', 2),
(241, 'Веб-сайт', 'website', 'ru', 2),
(242, 'Web-site', 'website', 'en', 2),
(243, 'Alexandr Torrison', 'company_ceo', 'ua', 2),
(244, 'Alexandr Torrison', 'company_ceo', 'ru', 2),
(245, 'Alex Torrison, CEO', 'company_ceo', 'en', 2),
(246, 'Я менеджер и разработчик большинства проектов Digital-Outsourcing. В 2009 году перешел в IT бизнес из торговли товарами и услугами. Хорошо понимаю клиентов и их ожидания в разработке и автоматизации.', 'ceo_pitch', 'ru', 2),
(247, 'I am the manager and developer of most Digital-Outsourcing projects. In 2009, I have gone to IT business from goods and services trading. I have well understanding of the client&#8217;s expectations in the development and business process automatization.', 'ceo_pitch', 'en', 2),
(79, 'Пароль', 'password', 'ru', 3),
(80, 'Forget password', 'forget_password', 'en', 3),
(81, 'Забыли пароль', 'forget_password', 'ru', 3),
(82, 'Войти', 'login_btn', 'ru', 3),
(83, 'Sign In', 'login_btn', 'en', 3),
(84, 'Восстановление пароля', 'pass_recovery_h1', 'ru', 3),
(85, 'Password recovery', 'pass_recovery_h1', 'en', 3),
(86, 'Отмена', 'cancel', 'ru', 3),
(87, 'Cancel', 'cancel', 'en', 3),
(88, 'Send instructions', 'send_instructions', 'en', 3),
(89, 'Выслать инструкции', 'send_instructions', 'ru', 3),
(198, 'Home', 'main_page', 'en', 1),
(199, 'Главная', 'main_page', 'ru', 0),
(200, 'Головна', 'main_page', 'ua', 0),
(201, 'Послуги', 'services', 'ua', 0),
(202, 'Услуги', 'services', 'ru', 0),
(203, 'Services', 'services', 'en', 1),
(204, 'Portfolio', 'portfolio', 'en', 1),
(205, 'Портфоліо', 'portfolio', 'ua', 0),
(94, 'No data for your request!', 'search_no_data', 'en', 4),
(95, 'По вашему запросу нет данных!', 'search_no_data', 'ru', 4),
(96, 'Быстрый поиск', 'fast_search_placeholder_short', 'ru', 4),
(97, 'Quick search', 'fast_search_placeholder_short', 'en', 4),
(206, 'Портфолио', 'portfolio', 'ru', 0),
(207, 'Інформація', 'info', 'ua', 1),
(208, 'Информация', 'info', 'ru', 1),
(209, 'Info', 'info', 'en', 1),
(100, 'Update', 'update', 'ru', 0),
(210, 'Бібліотека', 'library', 'ua', 1),
(211, 'Библиотека', 'library', 'ru', 1),
(212, 'Library', 'library', 'en', 1),
(213, 'Контакты', 'contacts', 'ru', 1),
(214, 'Contacts', 'contacts', 'en', 1),
(215, 'Контакти', 'contacts', 'ua', 1),
(216, 'Website, Front-End, Back-End, API, Startups, Web-Services Development, and Custom IT Web-services Support and Management.', 'footer_mini_text', 'en', 2),
(217, 'Заказать сайт, Front-End, Back-End, API, стартапы, разработка веб-сервисов, поддержка и управление проектами, IT услуги.', 'footer_mini_text', 'ru', 2),
(218, 'Замовити сайт, Front-End, Back-End, API, веб-сервіси, підтримка та управління проектами, IT-послуги.', 'footer_mini_text', 'ua', 2),
(219, 'Заказать сайт, Front-End, Back-End, API, стартапы, разработка веб-сервисов, поддержка и управление проектами, IT услуги.', 'footer_mini_text', 'ru', 2),
(113, 'Description', 'description', 'en', 4),
(114, 'Описание', 'description', 'ru', 4),
(115, 'Название', 'obj_name', 'ru', 4),
(116, 'Object name', 'obj_name', 'en', 4),
(117, 'Редактировать объект', 'edit_object', 'ru', 4),
(118, 'Edit object', 'edit_object', 'en', 4),
(119, 'Вид связи', 'rel_type', 'ru', 4),
(120, 'Relation type', 'rel_type', 'en', 4),
(220, 'Website, Front-End, Back-End, API, Startups, Web-Services Development, and Custom IT Web-services Support and Management.', 'footer_mini_text', 'en', 2),
(127, 'Add object', 'add_btn', 'en', 4),
(128, 'Добавить', 'add_btn', 'ru', 4),
(221, 'Замовити сайт, Front-End, Back-End, API, веб-сервіси, підтримка та управління проектами, IT-послуги.', 'footer_mini_text', 'ua', 2),
(131, 'Delete', 'delete', 'en', 4),
(132, 'Удалить', 'delete', 'ru', 4),
(133, 'Редактировать', 'edit_toggle_btn', 'ru', 4),
(134, 'Edit information', 'edit_toggle_btn', 'en', 4),
(183, 'Система для створення веб-сервісів Inside0', 'main_page_h1', 'ua', 2),
(137, 'Добавить новый объект', 'add_new_object', 'ru', 4),
(138, 'Add new object', 'add_new_object', 'en', 4),
(184, 'Система для создания веб-сервисов Inside0', 'main_page_h1', 'ru', 2),
(185, 'Inside is the \"box\" for web-development', 'main_page_h1', 'en', 2),
(186, 'Over 5 years of experience in one box. 3 times faster and 3 times cheaper development. Simple code.', 'main_page_h2', 'en', 2),
(187, 'Більше 5 років досвіду в одній системі. У 3 рази швидша і в 3 рази дешевша розробка. Простий код.', 'main_page_h2', 'ua', 2),
(148, 'Available to me and the performer', 'access_1', 'en', 0),
(188, 'Более 5 лет опыта в одной коробке. В 3 раза быстрее и в 3 раза дешевле разработка. Простой код.', 'main_page_h2', 'ru', 2),
(189, 'Задати питання?', 'ask_question', 'ua', 2),
(190, 'Задать вопрос?', 'ask_question', 'ru', 2),
(191, 'Ask a question?', 'ask_question', 'en', 2),
(192, 'Зробити замовлення', 'order_now_btn', 'ua', 2),
(193, 'Онлайн заказ!', 'order_now_btn', 'ru', 2),
(194, 'Make an order NOW!', 'order_now_btn', 'en', 2),
(195, 'Мой кабинет', 'my_profile', 'ru', 2),
(196, 'My Profile', 'my_profile', 'en', 2),
(197, 'Мій кабінет', 'my_profile', 'ua', 2),
(170, 'Verify email', 'verify_email', 'en', 0),
(171, 'Верифицировать email', 'verify_email', 'ru', 0),
(172, 'Change password', 'change_password', 'en', 0),
(173, 'Изменить пароль', 'change_password', 'ru', 0),
(174, 'Verify phone', 'verify_phone', 'en', 0),
(175, 'Верифицировать телефон', 'verify_phone', 'ru', 0),
(176, 'Change phone/email', 'phone_email_change', 'en', 0),
(177, 'Изменить телефон/email', 'phone_email_change', 'ru', 0),
(178, 'Загрузка...', 'loading', 'ru', 1),
(179, 'Телефон НЕ указан!', 'no_phone', 'ru', 1),
(180, 'Данный телефон содержит ошибки', 'phone_not_valid', 'ru', 0),
(181, 'Данный Email содержит ошибки или уже используется', 'email_not_valid', 'ru', 0),
(182, 'Верифицирован!', 'verified', 'ru', 0),
(248, 'Я менеджер та розробник більшості проектів Digital-Outsourcing. У 2009 році перейшов у IT бізнес із торгівлі товарами та послугами. Добре розумію клієнтів та їх очікування у розробці і автоматизації.', 'ceo_pitch', 'ua', 2),
(249, 'Чому вигідно працювати з нами?', 'why_good_work_with_us', 'ua', 2),
(250, 'Почему выгодно работать с нами?', 'why_good_work_with_us', 'ru', 2),
(251, 'The advantages of our team', 'why_good_work_with_us', 'en', 2),
(252, '<li>Free IT consulting (1-2 hours)</li>\n<li>We have special stable software solutions</li>\n<li>We fundamentally research every element of your business</li>\n<li>Flexible payment terms, possibility of postpay by stages</li>\n<li>Simple program code, database and technical documents</li>\n<li>Our systems are easily to scale</li>\n<li>Low prices for services, such as PHP dev - from $10 / h</li>', 'why_good_work_with_us_list', 'en', 2),
(253, '<li>Безкоштовна IT консультація перед початком робіт (до 2-х годин)</li>\n<li>Ми використовуємо власні готові програмні рішення</li>\n<li>Ми фундаментально підходимо до кожного елементу вашого бізнесу</li>\n<li>Гнучкі умови оплати, можливість постоплати етапами</li>\n<li>Простий програмний код, база даних та технічні документи</li>\n<li>Наші системи легко розширювати та редагувати</li>\n<li>Низькі ціни за IT послуги, наприклад PHP коштує від 10$ / год</li>', 'why_good_work_with_us_list', 'ua', 2),
(254, '<li>Бесплатная IT консультация перед началом работ (до 2-х часов)</li>\n<li>Мы используем собственные готовые программные решения</li>\n<li>Мы фундаментально подходим к каждому элементу вашего бизнеса</li>\n<li>Гибкие условия оплаты, возможность постоплаты этапами</li>\n<li>Простой программный код, база данных и технические документы</li>\n<li>Наши системы легко расширяемы с удобной структурой</li>\n<li>Низкие цены за услуги, например PHP dev - from 10$/h</li>', 'why_good_work_with_us_list', 'ru', 2),
(255, 'Система Inside0', 'service_1', 'ua', 2),
(256, 'Система Inside0', 'service_1', 'ru', 2),
(257, 'Inside0 System', 'service_1', 'en', 2),
(258, 'Сайт на Inside0', 'service_2', 'ru', 2),
(259, ' Web-Site with Inside!', 'service_2', 'en', 2),
(260, 'Сайт на Inside0', 'service_2', 'ua', 2),
(261, 'міс', 'mo', 'ua', 2),
(262, 'mo', 'mo', 'en', 2),
(263, 'мес', 'mo', 'ru', 2),
(264, 'Наші контакти', 'сontact_us', 'ua', 2),
(265, 'Contact us', 'сontact_us', 'en', 2),
(266, 'Отправить запрос', 'сontact_us', 'ru', 2),
(267, 'Унікальний проект', 'service_3', 'ua', 2),
(268, 'Уникальный стартап', 'service_3', 'ru', 2),
(269, 'Custom Project', 'service_3', 'en', 2),
(270, '<li>Низькі ціни</li>\n<li>Адмін панель</li>\n<li>Готовий дизайн</li>\n<li>Легка CMS</li>\n<li>Каталог інформації</li>', 'service_1_list', 'ua', 2),
(361, 'История создания Inside0', 'info_block_title', 'ru', 2),
(271, '<li>Low costs</li>\n<li>Inside Admin Panel</li>\n<li>Free template</li>\n<li>Easy CMS</li>\n<li>Blog System</li>', 'service_1_list', 'en', 2),
(272, '<li>Низкие цены</li>\n<li>Админ панель</li>\n<li>Готовый дизайн</li>\n<li>Легкая CMS</li>\n<li>Каталог информации</li>', 'service_1_list', 'ru', 2),
(273, '<li>Inside Admin Panel</li>\n<li>Landing Page</li>\n<li>Онлайн каталог</li>\n<li>Сторінка товару</li>\n<li>Блог та статті</li>', 'service_2_list', 'ua', 2),
(274, '<li>Inside Admin Panel</li>\n<li>Landing Page</li>\n<li>Онлайн каталог</li>\n<li>Страница товара</li>\n<li>Блог и статьи</li>', 'service_2_list', 'ru', 2),
(275, '<li>Inside Admin Panel</li>\n<li>Special MAIN Page</li>\n<li>Catalog List</li>\n<li>Product Page</li>\n<li>Blog System</li>', 'service_2_list', 'en', 2),
(276, '<li> Розширена адмін. панель </li>\n<li> Дизайн та UI/UX</li>\n<li> Велика база даних</li>\n<li> PHP програмування </li>\n<li> API система </li>', 'service_3_list', 'ua', 2),
(277, '<li>Расширяемая админ. панель</li>\n<li>Дизайн и UI/UX</li>\n<li>Сложная база данных</li>\n<li>PHP программирование</li>\n<li>API система</li>\n', 'service_3_list', 'ru', 2),
(278, '<li>Inside Admin Panel</li>\n<li>Professional CMS</li>\n<li>Full-stack Development</li>\n<li>API System Core</li>\n<li>Special Solutions</li>', 'service_3_list', 'en', 2),
(279, '1. Коли почалася робота над продуктом?', 'new_1_title', 'ua', 2),
(280, '1. Когда началась работа над продуктом?', 'new_1_title', 'ru', 2),
(281, '1. When did the Inside found?', 'new_1_title', 'en', 2),
(282, 'Далі', 'more_info', 'ua', 2),
(283, 'Подробнее', 'more_info', 'ru', 2),
(284, 'More info', 'more_info', 'en', 2),
(285, '1. Без опису бізнес процесів ускладнюється його розвиток та автоматизація', 'new_1_title', 'ua', 2),
(286, '1. Без описания бизнес процессов усложняется его развитие и автоматизация', 'new_1_title', 'ru', 2),
(287, '1. Business Processes like a core in any business!', 'new_1_title', 'en', 2),
(288, 'The first version was created for the Flower.net.ua perfumery store in 2007 at Perl.', 'new_1_description', 'en', 2),
(289, 'Перша версія була створена для магазину парфумерії Flower.net.ua у 2007 році на Perl.', 'new_1_description', 'ua', 2),
(360, 'Історія створення Inside системи', 'info_block_title', 'ua', 2),
(290, 'Первая версия была создана для магазина парфюмерии Flower.net.ua в 2007 году на Perl.', 'new_1_description', 'ru', 2),
(291, '2. Навіщо знадобилося стільки років створювати Inside0?', 'new_2_title', 'ua', 2),
(292, '2. Зачем понадобилось столько лет создавать Inside0?', 'new_2_title', 'ru', 2),
(293, '2. Why did it take so many years to create Inside0?', 'new_2_title', 'en', 2),
(294, '3. Куди далі?', 'new_3_title', 'ua', 2),
(295, '3. Куда дальше?', 'new_3_title', 'ru', 2),
(296, '3. What plans do we have?', 'new_3_title', 'en', 2),
(297, 'Every year there was doubt and it seemed that the ideal solution for creating web services must enter the market, but new CMS and frameworks were always upset by their complexity and inconvenience of programming.\nThus, the system was a worthy alternative and, over time, got better and better.', 'new_2_description', 'en', 2),
(298, 'Каждый год было сомнение и казалось, что вот-вот на рынок выйдет идеальное решение для создания веб-сервисов, но всегда новые CMS и сборки огорчали своей сложностью и неудобством программирования.\nТаким образом система была достойной альтернативой и со временем становилась все лучше и лучше.', 'new_2_description', 'ru', 2),
(299, 'Щороку були сумніви та здавалося, що ось-ось на ринок вийде ідеальне рішення для створення веб-сервісів, але завжди нові CMS та збірки засмучували своєю складністю та незручністю програмування.\nТаким чином система була гідною альтернативою і з часом ставала все краще і краще.', 'new_2_description', 'ua', 2),
(300, 'We are currently preparing an advertising campaign and, after the first stage of sales, we plan to invest in the buildup version of CodeIgniter 3 and try to collaborate with the CodeIgniter Community in Canada.', 'new_3_description', 'en', 2),
(367, 'Name', 'name', 'en', 2),
(368, 'Ім’я', 'name', 'ua', 2),
(301, 'Зараз ми готуємо рекламну кампанію і після першого етапу продажу плануємо вкласти зароблені кошти у збірку версії на CodeIgniter 3 та спробувати співпрацювати з ком&#8217;юніті CodeIgniter у Канаді.', 'new_3_description', 'ua', 2),
(364, 'Contacts us', 'contact_us_h3', 'en', 2),
(365, 'Напишите нам', 'contact_us_h3', 'ru', 2),
(366, 'Имя', 'name', 'ru', 2),
(302, 'Сейчас мы готовим рекламную кампанию и после первого этапа продаж планируем вложить заработанные средства в сборку версии на CodeIgniter 3 и пробовать сотрудничать с комьюнити CodeIgniter в Канаде.', 'new_3_description', 'ru', 2),
(363, 'Напишіть нам', 'contact_us_h3', 'ua', 2),
(303, 'Ціни на деякі послуги та технології на основі Inside0', 'price_list_title', 'ua', 2),
(304, 'Цены на некоторые услуги и технологии на базе Inside0', 'price_list_title', 'ru', 2),
(305, 'Popular Inside0 solutions price-list', 'price_list_title', 'en', 2),
(306, 'ТОП-проекти з портфоліо', 'last_portfolio_projects', 'ua', 2),
(307, 'Last portfolio projects', 'last_portfolio_projects', 'en', 2),
(308, 'ТОП-проекты из портфолио', 'last_portfolio_projects', 'ru', 2),
(309, '(Ссылка на страницу портфолио)', 'last_portfolio_projects_link', 'ru', 2),
(310, '(Посилання на сторінку портфоліо)', 'last_portfolio_projects_link', 'ua', 2),
(311, '(Click here for show full portfolio projects list)', 'last_portfolio_projects_link', 'en', 2),
(312, 'Українська IT компанія Digital Outsourcing', 'seo_title_main_page', 'ua', 2),
(313, 'IT компания Digital Outsourcing', 'seo_title_main_page', 'ru', 2),
(314, 'Digital IT Outsourcing company', 'seo_title_main_page', 'en', 2),
(315, 'Digital marketing and IT outsourcing company, web professionals, freelancers, php development, project management services', 'seo_description_main_page', 'en', 2),
(316, 'Замовлення IT послуг, Digital маркетинг, ІТ аутсорсінг, веб-розробка, студія веб-сайтів.', 'seo_description_main_page', 'ua', 2),
(317, 'Заказать разработку IT проектов, \"диджитал\" маркетинг, IT аутсорсинг, веб-разработка, студия веб-сайтов.', 'seo_description_main_page', 'ru', 2),
(318, 'Закрыть', 'close', 'ru', 2),
(359, 'Close', 'close', 'en', 2),
(321, 'Ім&#8217;я та контакти (Email, Телефон, Skype):', 'request_form_label_1', 'ua', 2),
(322, 'Name and contacts (Email, Phone, Skype):', 'request_form_label_1', 'en', 2),
(323, 'Имя и контакты (Email, Телефон, Skype):', 'request_form_label_1', 'ru', 2),
(324, 'Повідомлення', 'message', 'ua', 2),
(325, 'Message', 'message', 'en', 2),
(326, 'Сообщение', 'message', 'ru', 2),
(327, 'Спасибо, мы свяжемся с вами позже!', 'thx_text_1', 'ru', 2),
(328, 'Thank you, we will contact you soon!', 'thx_text_1', 'en', 2),
(329, 'Дякую, ми зв&#8217;яжемося з вами пізніше!', 'thx_text_1', 'ua', 2),
(330, 'Оновити форму', 'refresh_form', 'ua', 2),
(331, 'Refresh form', 'refresh_form', 'en', 2),
(332, 'Обновить форму', 'refresh_form', 'ru', 2),
(333, 'Отправить', 'send_message', 'ru', 2),
(334, 'Send message', 'send_message', 'en', 2),
(335, 'Відправити', 'send_message', 'ua', 2),
(336, '<h2 class=\"featurette-heading\">Веб-студия и разработка сайтов от Digital-Outsourcing</h2>\n        <p>\n            И 500 символов текста сюда. И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n        </p>\n        <h2>\n            У нас вы можете заказать мобильное приложение недорого\n        </h2>\n        <p>\n            И 500 символов текста сюда. И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n        </p>\n\n        <h2>\n            Также мы делаем описание бизнес процессов для бизнеса\n        </h2>\n        <p>\n            И 500 символов текста сюда. И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n        </p>', 'seo_text_bottom', 'ua', 2),
(337, '<h2 class=\"featurette-heading\">Inside 4 from Digital-Outsourcing</h2>\n        <p>\n            Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. \n        </p>\n        <h2>\n            Easy MVC Basis and Framework\n        </h2>\n        <p>\n            Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. \n        </p>\n\n        <h2>\n            Readymade solution for any Web System\n        </h2>\n        <p>\n            Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. Text text text text. \n        </p>', 'seo_text_bottom', 'en', 2),
(421, 'PWA App', 'pwa_app', 'en', 1),
(338, '<h2 class=\"featurette-heading\">Лучший движок для разработки веб сайтов</h2>\n        <p>\n            И 500 символов текста сюда. И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n        </p>\n        <h2>\n            Inside0 - это PHP фреймворк CodeIgniter с дополнениями\n        </h2>\n        <p>\n            И 500 символов текста сюда. И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n        </p>\n\n        <h2>\n            Готовая сборка для программирование - это лучшая CMS для сайта\n        </h2>\n        <p>\n            И 500 символов текста сюда. И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n            И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.И 500 символов текста сюда.\n        </p>', 'seo_text_bottom', 'ru', 2),
(339, 'Категория', 'category1', 'ru', 2),
(340, 'Категорія', 'category1', 'ua', 2),
(341, 'Category', 'category1', 'en', 2),
(342, 'Найменування', 'e_name1', 'ua', 2),
(343, 'Service Name', 'e_name1', 'en', 2),
(344, 'Наименование', 'e_name1', 'ru', 2),
(345, 'Ціна', 'price1', 'ua', 2),
(346, 'Price', 'price1', 'en', 2),
(347, 'Цена', 'price1', 'ru', 2),
(348, 'Час', 'time1', 'ua', 2),
(349, 'Время', 'time1', 'ru', 2),
(350, 'Time', 'time1', 'en', 2),
(351, '[дней]', 'days', 'ru', 2),
(352, 'days', 'days', 'en', 2),
(353, '[днів]', 'days', 'ua', 2),
(354, '[час]', 'hours', 'ru', 2),
(355, 'hours', 'hours', 'en', 2),
(356, '[год]', 'hours', 'ua', 2),
(358, 'Закрити', 'close', 'ua', 2),
(362, 'The history about Inside System', 'info_block_title', 'en', 2),
(369, 'Телефон', 'phone', 'ua', 2),
(370, 'Phone', 'phone', 'en', 2),
(371, 'Телефон', 'phone', 'ru', 2),
(372, 'Наши контакты', 'our_contacts', 'ru', 2),
(373, 'Our contacts', 'our_contacts', 'en', 2),
(374, 'Наші контакти', 'our_contacts', 'ua', 2),
(375, 'Наш телефон', 'our_phone', 'ua', 2),
(376, 'Our phone', 'our_phone', 'en', 2),
(377, 'Наш телефон', 'our_phone', 'ru', 2),
(378, '+38 (093) 155-29-70 - Александр', 'manager_phone', 'ru', 2),
(379, '+38 (093) 155-29-70 - Alexandr', 'manager_phone', 'en', 2),
(380, '+38 (093) 155-29-70 - Олександр', 'manager_phone', 'ua', 2),
(381, 'Email', 'our_email', 'en', 2),
(382, 'Наш email', 'our_email', 'ua', 2),
(383, 'Наш email', 'our_email', 'ru', 2),
(384, 'Наш адрес: <span>Мы находимся в БЦ Парус</span>', 'our_address', 'ru', 2),
(385, 'Address: <span> BC \"Parus\"</span>', 'our_address', 'en', 2),
(386, 'Наша адреса: <span>Ми знаходимось у БЦ Парус</span>', 'our_address', 'ua', 2),
(387, 'Worktime: 14:00-17:00 UTC +2', 'office_time', 'en', 2),
(388, 'Час для зустрічі в офісі:14:00-17:00<br>(можемо приїхати до вам у гості)', 'office_time', 'ua', 2),
(389, 'Время для встреч в офисе:14:00-17:00<br>(можем приехать к вам в офис)', 'office_time', 'ru', 2),
(390, 'Ваше повідомлення збережено!', 'message_saved', 'ua', 2),
(391, 'Message saved!', 'message_saved', 'en', 2),
(392, 'Ваше сообщение сохранено!', 'message_saved', 'ru', 2),
(393, 'Введіть адресу електронної пошти', 'enter_email_here', 'ua', 3),
(394, 'Введите адрес электронной почты', 'enter_email_here', 'ru', 3),
(395, 'Enter your email', 'enter_email_here', 'en', 3),
(396, 'Зареєструватися', 'sign_up', 'ua', 3),
(397, 'Зарегистрироваться', 'sign_up', 'ru', 3),
(398, 'Sign Up', 'sign_up', 'en', 3),
(399, 'An email will be sent to your email address with instructions for changing your password.', 'pass_recovery_mess', 'en', 3),
(400, 'На адресу вашої електронної пошти буде надіслано лист з інструкцією по зміні пароля', 'pass_recovery_mess', 'ua', 3),
(401, 'На адрес вашей электронной почты будет выслано письмо с инструкцией по смене пароля', 'pass_recovery_mess', 'ru', 3),
(402, 'Увійти за допомогою', 'login_with', 'ua', 3),
(403, 'Войти с помощью', 'login_with', 'ru', 3),
(404, 'Login with', 'login_with', 'en', 3),
(405, 'Personal data', 'personal_data', 'en', 3),
(406, 'Личный данные', 'personal_data', 'ru', 3),
(407, 'Особисті дані', 'personal_data', 'ua', 3),
(417, 'Your Best Offer!', 'your_best_offer', 'en', 2),
(418, 'Ваше лучшее предложение!', 'your_best_offer', 'ru', 2),
(419, 'Information about something to motivate customers immediately make an online order or register to get a promotional code. This information must be short and interesting. Also, it can be some kind of short story or fun fairy tale with magic and dragons :)\n<br><br>\nDiscount: -10%\n<br>\nOr some kind of present!', 'sale_info', 'en', 2),
(420, 'Информация о акции для мотивации клиентов сразу-же оставить онлайн заказ или зарегистрироваться в личном кабинете и получить промо-код!\n                    <br><br>\n                    Это может дать скидку: -10%\n                    <br>\n                    Или какой-то подарок!', 'sale_info', 'ru', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `api_log`
--
ALTER TABLE `api_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth_users`
--
ALTER TABLE `auth_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `password` (`password`(333)),
  ADD KEY `pass_recovery_code` (`pass_recovery_code`),
  ADD KEY `email_verify_code` (`email_verify_code`),
  ADD KEY `phone_verify_code` (`phone_verify_code`);

--
-- Индексы таблицы `auth_users_groups`
--
ALTER TABLE `auth_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Индексы таблицы `inside_log`
--
ALTER TABLE `inside_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Индексы таблицы `inside_sessions`
--
ALTER TABLE `inside_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inside_sessions_actions`
--
ALTER TABLE `inside_sessions_actions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inside_top_menu`
--
ALTER TABLE `inside_top_menu`
  ADD PRIMARY KEY (`top_menu_id`);

--
-- Индексы таблицы `it_requests`
--
ALTER TABLE `it_requests`
  ADD PRIMARY KEY (`requests_id`);

--
-- Индексы таблицы `lang_names`
--
ALTER TABLE `lang_names`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lang_vocabulary`
--
ALTER TABLE `lang_vocabulary`
  ADD PRIMARY KEY (`vocabulary_id`),
  ADD KEY `vocabulary_lang` (`vocabulary_lang`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `api_log`
--
ALTER TABLE `api_log`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `auth_users`
--
ALTER TABLE `auth_users`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `auth_users_groups`
--
ALTER TABLE `auth_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT для таблицы `inside_log`
--
ALTER TABLE `inside_log`
  MODIFY `log_id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `inside_sessions`
--
ALTER TABLE `inside_sessions`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT для таблицы `inside_sessions_actions`
--
ALTER TABLE `inside_sessions_actions`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT для таблицы `inside_top_menu`
--
ALTER TABLE `inside_top_menu`
  MODIFY `top_menu_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT для таблицы `it_requests`
--
ALTER TABLE `it_requests`
  MODIFY `requests_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `lang_names`
--
ALTER TABLE `lang_names`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `lang_vocabulary`
--
ALTER TABLE `lang_vocabulary`
  MODIFY `vocabulary_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
