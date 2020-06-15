-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3308
-- Время создания: Июн 15 2020 г., 08:05
-- Версия сервера: 8.0.18
-- Версия PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `latin_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `latin_url`) VALUES
(1, 'Rozes', 'rozes'),
(2, 'Tulpes', 'tuples'),
(3, 'Krizantēmas', 'krizantemas'),
(4, 'Lefkojas', 'lefkojas'),
(5, 'Peonijas', 'peonijas'),
(6, 'Hiacintes', 'hiacintes'),
(7, 'Gladiolas', 'gladiolas'),
(8, 'Asteres', 'asteres'),
(9, 'Citi ziedi', 'citi'),
(11, 'Pušķi', 'puski');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `color` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `count` int(11) DEFAULT '0',
  `latin_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `color`, `country`, `description`, `price`, `category_id`, `count`, `latin_url`) VALUES
(1, 'maza roze 1', 'sarkana', 'Latvija', 'rozes apraksts', 0.9, 1, NULL, 'm-roze-LV'),
(2, 'Superīgs pušķis', 'Rotaina', 'Latvija', 'Superīgs pušķis ar baltām rozēm no Polijas, pioniem no Vācijas un saldumiem no Zviedrijas. Florista Artūra darbs.', 99, 11, -3, 'puskis-a-1'),
(3, 'Sarkana tulpe', 'sarkana', 'Polija', 'Polijas tulpes pamatojums', 0.7, 2, 11, 's-tulpe-PL'),
(4, 'Roza tulpe', 'roza', 'Polija', 'Polijas tulpes pamatojums', 0.7, 2, 123, 'r-tulpe-PL'),
(5, 'Dzeltena tulpe', 'dzeltena', 'Polija', 'Polijas tulpes pamatojums', 0.7, 2, 111, 'd-tulpe-PL'),
(6, 'Violeta tulpe', 'violeta', 'Polija', 'Polijas tulpes pamatojums', 0.7, 2, 32, 'v-tulpe-PL'),
(7, 'Oranža tulpe', 'oranža', 'Polija', 'Polijas tulpes pamatojums', 0.7, 2, 65, 'o-tulpe-PL'),
(8, 'Random Tulpe', 'random', 'LV', 'Random Tulpe', 10, 10, 44, 'rendom_tulpe'),
(9, 'Sarkana roze', 'sarkana', 'Polija', 'Skaista sakrkana roze 50 cm no Polijas', 1.35, 1, 2, 'sarkana-roze-50-PL'),
(10, 'Coral sharm peonijas', 'coral', 'Kenija', 'CORAL CHARM peonijas no Kenijas 60cm', 2, 5, 55, 'coral-charm-KEN'),
(11, 'Gardenia peonijas', 'roza', 'Kenija', 'Peonijas Gardenia 22cm', 4.5, 5, 87, 'g-peonijas-KEN'),
(12, 'Emma peonijas', 'balta', 'Kenija', 'Emma peonijas 30cm no Kenijas', 5.5, 5, 654, 'e-peonijas-KEN'),
(13, 'Peter Brand peonijas', 'tumši rubīnsarkani', 'Latvija', 'Peter Brand peonijas no Latvijas 35cm', 5, 5, 55, 'p-b-peonijas-LV'),
(14, 'Bartzella peonijas', 'dzeltena', 'Latvija', 'Peonijas Bartzella no Latvijas 30cm', 3.5, 5, 77, 'b-peonijas-LV'),
(15, 'Amazing sunset rozes', 'orandži-dzeltena', 'Kenija', 'Amazing sunset rozes 50cm', 1.89, 1, 65, 'a-s-rozes-KEN'),
(16, 'Bond roze', 'sarkana', 'Kenija', 'Bond rozes 50cm', 1.1, 1, 43, 'b-rozes-KEN'),
(17, 'Giadrida roze', 'neoni orandža', 'Kenija', 'Rozes giardina 60cm', 3, 1, 211, 'g-rozes-KEN'),
(18, 'Yellow roze', 'dzeltena', 'Kenija', 'Roze dzeltena 40cm', 0.69, 1, 123, 'y-roze-KEN'),
(19, 'Saulainā laime krizantēma', 'dzeltena', 'Lietuva', 'Saulainā laime 50cm ', 2, 3, NULL, 's-l-krizantēmas-LT'),
(20, 'Saba krizantēma', 'violēta', 'Lietuva', 'Krizantēmas Saba 40cm', 1.8, 3, 208, 's-krizantēmas-LT'),
(21, 'Balta krizantēma', 'balta', 'Polija', 'Baltas krizantēmas 45cm', 1.45, 3, NULL, 'b-krizantēma-PL'),
(22, 'Eksotiska krizantēma', 'zila', 'LV', 'Eksotiska krizantēma 50cm no Latvijas', 1.7, 3, 21, 'e-krizantēma-LV'),
(23, 'Zaļa krizantēma', 'zaļa', 'Lietuva', 'Krizantēma zaļa no Lietuvas 45cm', 1.2, 3, NULL, 'z-krizantēma-LT'),
(24, 'Violēta lefkoja', 'violēta', 'Polija', 'Lefkoja violēta no Polijas 37cm', 1.07, 4, 439, 'v-lefkoja-PL'),
(25, 'Lefkoja MIX', 'dažadas', 'Lietuva', 'Lefkoja mix no Lietuvas 50cm', 1, 4, 45, 'lefkoja-m-LT'),
(26, 'Hiacintes MIX', 'dažadas', 'Latvija', 'Pušķis mix hiacintes 25cm', 0.75, 6, 99, 'hiacintes-m-LV'),
(27, 'Mīļas hiacintes', 'roza', 'Latvija', 'Roza hiacintes no Latvijas laukiem', 0.87, 6, 1, 'm-hiacintes-LV'),
(28, 'Gipsy Queen hiacintes', 'koraļļu', 'Igaunija', 'Pašas labākas Gipsy Queen hiacintes', 0.99, 6, 60, 'g-q-hiacintes-EE'),
(29, 'Hiacintes', 'violēta', 'Latvija', 'Violēta hiacintes', 0.99, 6, NULL, 'v-hiacintes-LV'),
(30, 'Gladiolas', 'magenta', 'Čehija', 'Rudenīgas gladiolas no Čehijas', 2.5, 7, 12, 'gladiolas-CZ'),
(31, 'Sarkanas gladiolas', 'sarkana', 'Latvija', 'Gladiolas sarkanas 70cm', 2.8, 7, 1234, 's-gladiolas-LV'),
(32, 'Maigas gladiolas', 'roza', 'Latvija', 'Maigas gladiolas jebkuram notikumām', 2.45, 7, 321, 'm-gladiolas-LV'),
(33, 'Makoņainas gladiolas', 'balta', 'Latvija', 'Gladiolas makoņainas 70cm', 2.67, 7, NULL, 'm-gladiolas-LV'),
(34, 'Mix asteres', 'dažadas', 'Latvija', 'Spīdīgas asteres 30cm', 1.32, 8, 13, 'm-asteres-LV'),
(35, 'Jautras asteres', 'permament rose', 'Ķīņa', 'Jautras asteres 45cm', 1.77, 8, NULL, 'j-asteres-CN'),
(36, 'Neitrālas asteres', 'beža', 'Ķīņa', 'Bežīgas astres no Ķīņas', 1.78, 8, 33, 'n-asteres-CN'),
(37, 'Gradientra asteres', 'balti-violēta', 'Ķīņa', 'Neparastas gardienta asteres', 1.98, 8, NULL, 'g-asteres-CN'),
(38, 'Matainas asteres', 'roza', 'Ķīņa', 'Matainas asteres no Ķīņas', 1.89, 8, 9, 'm-asteres-CN'),
(39, 'Saulespuķe', 'dzeltena', 'Latvija', 'Saulaini ziedi', 2.17, 9, 4, 'saulespuķes-LV'),
(40, 'Frēzijas mix', 'dažadas', 'Igaunija', 'Daudkrasainas frēzijas', 1, 9, 60, 'frēzijas-LV'),
(41, 'Lauku ziedi', 'dažadas', 'Latvija', 'Parasts un ļoti naturāls lauku pušķis', 7.2, 9, NULL, 'l-ziedi-LV'),
(42, 'Orhideja', 'dažadas', 'Spanija', 'Sievišķīgs zieds', 8.2, 9, 98, 'orhideja-LV'),
(43, 'Gerberi mix', 'dažadas', 'Latvija', 'Koši gerberi', 0.65, 9, 433, 'gerberi-LV'),
(44, 'Narcisi', 'dzeltena', 'Polija', 'Saulaini narcisi', 0.3, 9, 223, 's-narcisi-PL');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_orders`
--

DROP TABLE IF EXISTS `goods_orders`;
CREATE TABLE IF NOT EXISTS `goods_orders` (
  `Gid` int(11) NOT NULL,
  `Gname` varchar(50) CHARACTER SET utf8 COLLATE utf8_latvian_ci NOT NULL,
  `Gprice` float NOT NULL,
  `Gamount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods_orders`
--

INSERT INTO `goods_orders` (`Gid`, `Gname`, `Gprice`, `Gamount`) VALUES
(2, 'test1', 9.5, 3),
(20, 'Saba krizantēma', 1.8, 5),
(24, 'Violēta lefkoja', 1.07, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(50) NOT NULL,
  `countf` int(11) NOT NULL,
  `ptoduct_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `city`, `phone`, `countf`, `ptoduct_id`, `comment`) VALUES
(1, 'dadsa', 'Riga', '20080918', 7, 2, 'Paskaidrojums1'),
(6, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(7, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(8, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(9, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(10, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(11, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(12, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(13, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(14, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(15, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(16, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(17, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(18, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(19, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(20, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(21, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(22, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(23, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(24, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(25, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(26, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(27, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(28, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(30, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(31, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(32, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(33, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(34, 'Arturs', 'Riga', '+37120080918', 7, 2, 'Paskaidrojums1'),
(35, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(36, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(37, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(38, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(39, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(40, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(41, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(42, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(43, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(44, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(45, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(46, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(47, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(48, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(49, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(50, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(51, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(52, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(53, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(54, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(55, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(56, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(57, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(58, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(59, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(60, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(61, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(62, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(63, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(64, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(65, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(66, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(67, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(68, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(69, 'Arturs Reisonoks', 'Riga', '+37120080918', 4, 2, 'wqr'),
(70, 'qeqwe', 'vhbjanskd', '6732476487', 2, 3, 'fsfarg'),
(71, 'qeqwe', 'vhbjanskd', '53443234', 2, 3, 'fsfarg'),
(72, 'qeqwe', 'vhbjanskd', '53443234', 2, 3, ''),
(73, 'qeqwe', 'vhbjanskd', '', 2, 3, ''),
(74, '', '', '', 2, 3, ''),
(75, '3213', 'Riga', '121323', 2, 3, '124114fdsf'),
(76, '3213', '', '121323', 2, 3, '124114fdsf'),
(77, '3213', '', '121323', 2, 3, ''),
(78, '3213', 'fafas', '121323', 2, 3, ''),
(79, '3213', 'egbzfdg', '424321', 2, 3, 'rsdgasg'),
(80, 'Arturs Reisonoks', 'Riga', '+37120080918', 50, 9, '.....//'),
(81, 'dsas', 'Riga', '1323124', 2, 3, '14212'),
(82, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(83, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(84, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(85, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(86, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(87, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(88, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(89, 'Arturs Reisonoks', 'Riga', '+37120080918', 3, 9, '12314214'),
(90, 'aaas', 'rwere', '32131', 2, 24, '1wfsdf'),
(91, 'aaas', 'rwere', '32131', 2, 24, '1wfsdf'),
(92, 'Arturs Reisonoks', 'Riga', '+37120080918', 5, 20, 'dgfhjyfgvcrtas'),
(93, 'Arturs Reisonoks', 'Riga', '+37120080918', 7, 24, 'fytyugunkbio');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `latin_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
