-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 24 2015 г., 18:02
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `my_page`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Number` int(255) NOT NULL AUTO_INCREMENT,
  `User_name` char(100) NOT NULL,
  `Email` char(100) NOT NULL,
  `Homepage` char(100) NOT NULL,
  `Opinion` char(250) NOT NULL,
  `adress` char(100) NOT NULL,
  `Date` char(30) NOT NULL,
  `browser` char(100) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`Number`, `User_name`, `Email`, `Homepage`, `Opinion`, `adress`, `Date`, `browser`) VALUES
(13, 'yurecs', 'olga@mail.ru', 'qwerty.com', ' dsfsfs', '127.0.0.1', '12:46, 12th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(14, 'yurecs', 'olga@mail.ru', 'qwerty.com', ' dsfsfs', '127.0.0.1', '12:47, 12th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(15, 'yurecsaa', 'olga@mail.ru', 'qwerty.com', ' dsfsfs', '127.0.0.1', '13:08, 12th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(21, 'yureca', 'profvid@gmail.com', 'aaa', ' ssssss', '127.0.0.1', '14:30, 12th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(22, 'ivanivany', 'yurec@yandex.ru', 'http://aa', 'aaaaaaaa', '127.0.0.1', '14:32, 12th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(23, 'IVAN', 'yurec@yandex.ru', '', ' aaaaaaaaa aaa', '127.0.0.1', '14:36, 12th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(24, 'serega', 'psv9191@mail.ru', '', 'Трохи лучше, но ещё есть куда стремиться', '127.0.0.1', '19:29, 16th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(28, 'serega432', 'psv9191@mail.ru', '', ' lllllll', '127.0.0.1', '19:55, 16th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(29, 'ivan23', 'psv9191@mail.ru', '', ' yurec', '127.0.0.1', '08:42, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(30, 'serega', 'psv9191@mail.ru', '', ' aaaaaa', '127.0.0.1', '09:08, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(31, 'serega', 'psv9191@mail.ru', '', ' aaaaaa', '127.0.0.1', '09:08, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(32, 'serega432', 'psv9191@mail.ru', '', ' AAAAAA', '127.0.0.1', '09:23, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(33, 'serega432', 'psv9191@mail.ru', '', ' SSSSSSSS', '127.0.0.1', '09:28, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(35, 'serega432', 'psv9191@mail.ru', '', '        aaaaaaaa', '127.0.0.1', '10:13, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(36, 'serega432', 'psv9191@mail.ru', '', '  aaaaaaaaaa', '127.0.0.1', '10:15, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(37, 'serega432', 'yurec@mail.ru', '', '    aaaaaaaaaaa', '127.0.0.1', '10:23, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(38, 'serega432', 'psv9191@mail.ru', '', '  zzzzz', '127.0.0.1', '10:25, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(44, 'serega432', 'psv9191@mail.ru', '', '', '127.0.0.1', '10:27, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(45, 'serega432', 'psv9191@mail.ru', '', '', '127.0.0.1', '10:27, 17th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(46, 'serega432', 'psv9191@mail.ru', '', '  aaaa', '127.0.0.1', '10:47, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(47, 'serega432', 'psv9191@mail.ru', '', '  aaaaaaaaaaaaaaaaaa', '127.0.0.1', '11:30, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(49, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:40, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(50, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:42, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(51, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:42, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(52, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:42, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(53, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:42, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(54, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:43, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(55, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:44, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(57, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:46, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(59, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:46, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(60, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:47, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(61, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:47, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(62, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:49, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(63, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:49, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(64, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:49, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(65, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaa', '127.0.0.1', '11:50, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(66, 'serega432', 'psv9191@mail.ru', '', ' uuuuuuuuuu', '127.0.0.1', '11:59, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(67, 'serega432', 'psv9191@mail.ru', '', '  aaaaaaaaaaaa', '127.0.0.1', '12:00, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(68, 'yurec', 'yurasik-48w@yandex.ru', '', '  aaaaaaaaaaaaaa', '127.0.0.1', '12:06, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(69, 'yurec', 'psv9191@mail.ru', '', '  ssssss', '127.0.0.1', '12:41, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(70, 'yurec', 'psv9191@mail.ru', '', '  ssssss', '127.0.0.1', '12:45, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(71, 'yurec', 'psv9191@mail.ru', '', '  ssssss', '127.0.0.1', '12:46, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(72, 'yurec', 'psv9191@mail.ru', '', '  ssssss', '127.0.0.1', '12:46, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(73, 'ivan312', 'psv9191@mail.ru', '', '  aaaaaaaaa', '127.0.0.1', '12:48, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(74, 'ivan312', 'psv9191@mail.ru', '', '  aaaaaaaaa', '127.0.0.1', '12:49, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(75, 'yurec', 'psv9191@mail.ru', '', '  aaaaaa', '127.0.0.1', '12:54, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(76, 'serega432', 'psv9191@mail.ru', '', '  aaaaaaaaaaa', '127.0.0.1', '13:01, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(77, 'serega432', 'psv9191@mail.ru', '', '  aASD', '127.0.0.1', '13:03, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(78, 'serega432', 'psv9191@mail.ru', '', '  qqqqqqqq', '127.0.0.1', '13:30, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(79, 'serega432', 'psv9191@mail.ru', '', '  aaaaa', '127.0.0.1', '13:33, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(80, 'serega432', 'psv9191@mail.ru', '', ' aaaaaaaaaa', '127.0.0.1', '13:38, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(81, 'serega432', 'psv9191@mail.ru', '', 'aaaaaaahaa', '127.0.0.1', '13:43, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(82, 'serega432', 'psv9191@mail.ru', '', '  aaaaaaaa', '127.0.0.1', '13:47, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(83, 'ivab', 'yurec@mail.ru', '', 'aaaaaaa', '127.0.0.1', '13:54, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(84, 'serega432', 'psv9191@mail.ru', '', '  aaaaaa', '127.0.0.1', '14:10, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(85, 'serega432', 'psv9191@mail.ru', '', '  aaaaaa', '127.0.0.1', '14:14, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(86, 'yurec', 'yurec@mail.ru', '', 'aaaaaaaaaaaaaa', '127.0.0.1', '14:26, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(87, 'serega432', 'yurec@mail.ru', 'http://sss.con', '     aaaaaa', '127.0.0.1', '14:39, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(88, 'serega432', 'yuresas@tut.by', 'http://sss.con', '      aaaaaa', '127.0.0.1', '14:41, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(89, 'serega432', 'yuresas@tut.by', 'http://sss.con', '      aaaaaa', '127.0.0.1', '14:41, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(90, 'serega432', 'psv9191@mail.ru', 'http://ssss', '   aaaaaa', '127.0.0.1', '15:18, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(91, 'serega432', 'psv9191@mail.ru', '', '  sssss', '127.0.0.1', '15:21, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(92, 'serega432.', 'psv9191@mail.ru', '', '  sssss', '127.0.0.1', '15:21, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(93, 'serega432', 'psv9191@mail.ru', '', '  sssss', '127.0.0.1', '15:23, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(94, 'serega432.dsfs', 'psv9191@mail.ru', '', '  sssss', '127.0.0.1', '15:23, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(95, 'yurec', 'yurec@mail.ru', '', '     ыыыыыы', '127.0.0.1', '15:29, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(96, 'serega432', 'qqqqqqqqqqq', '', '  qqqqqqqqqq', '127.0.0.1', '15:37, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(97, 'serega432', 'www.yurec@yandex.ru', '', '  qqqqqqqqqq', '127.0.0.1', '15:39, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(98, 'serega432', 'www.yurasik-48w@yandex.ru', '', '   qqqqqqqqqq', '127.0.0.1', '15:39, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(99, 'serega432', 'yurec@mail.ru', '', '  aaaaaaaaaaa', '127.0.0.1', '15:41, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(100, 'serega432', 'asdad@ya.ru', '', ' aaaaaaaaa', '127.0.0.1', '15:42, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(101, 'ivan-ivany4', 'psv9@mail.ru', 'http://ya.ru', '    asdadwqweq', '127.0.0.1', '15:44, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(102, 'ivan-ivany4', 'psv9@mail.ru', 'http://ya.ru', '    asdadwqweq', '127.0.0.1', '15:45, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(103, 'ivan-ivany4', 'psv9191@mail.ru', 'http://ya.ru', '    asdadwqweq', '127.0.0.1', '15:47, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(104, 'ivan-ivany4', 'yurasik-48w@yandex.ru', 'http://ya.ru', '     asdadwqweq', '127.0.0.1', '15:47, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(105, 'ivan-ivany4+', 'yurasik-48w@yandex.ru', 'http://ya.ru', '     asdadwqweq', '127.0.0.1', '15:48, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(106, '-1', 'psv9191@mail.ru', '', '    ыыыыы', '127.0.0.1', '15:48, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(107, '_1', 'psv9191@mail.ru', '', '    ыыыыы', '127.0.0.1', '15:49, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(108, '+1', 'psv9191@mail.ru', '', '    ыыыыы', '127.0.0.1', '15:49, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(109, 'yurec+', 'psv9191@mail.ru', '', '     ыыыыы', '127.0.0.1', '15:51, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(110, 'yurec+', 'psv9191@mail.ru', '', '     ыыыыы', '127.0.0.1', '15:51, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(111, '-y', 'psv9191@mail.ru', '', '     ыыыыы', '127.0.0.1', '15:52, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(112, 'yurec', 'psv9191@mail.ru', '', '     ыыыыы', '127.0.0.1', '15:52, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(113, 'yurec', '1@ru', '', '     ыыыыы', '127.0.0.1', '15:54, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(114, 'yurec+', '1@ru', '', '     ыыыыы', '127.0.0.1', '15:54, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(115, 'yurec+', '1@ru', '', '     ыыыыы', '127.0.0.1', '15:56, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(116, ' y+', 'psv9191@mail.ru', '', '      ыыыыы', '127.0.0.1', '15:56, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(117, ' qq', 'psv9191@mail.ru', '', '      ыыыыы', '127.0.0.1', '15:59, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(118, ' qq_', 'psv9191@mail.ru', '', '      ыыыыы', '127.0.0.1', '15:59, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(119, '12', 'psv9191@mail.ru', '', '      ыыыыы', '127.0.0.1', '16:00, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(120, 'gfffff+', 'psv9191@mail.ru', '', '      ыыыыы', '127.0.0.1', '16:01, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(121, ' qq', 'psv9191@mail.ru', '', '       ыыыыы', '127.0.0.1', '16:06, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(122, ' qq-', 'psv9191@mail.ru', '', '       ыыыыы', '127.0.0.1', '16:06, 20th April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(123, 'yurec', 'Olga_Lapanik@mail.ru', '', '  qqqqqq', '127.0.0.1', '12:05, 21st April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.'),
(124, ' yurec', 'yurasik-48w@yandex.ru', 'http://yandex.ru', '        aaaaaaaaaa', '127.0.0.1', '17:03, 22nd April 2015', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.');

-- --------------------------------------------------------

--
-- Структура таблицы `yurec`
--

CREATE TABLE IF NOT EXISTS `yurec` (
  `yurec43` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
