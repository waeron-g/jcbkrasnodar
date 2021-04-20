-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 20 2021 г., 20:26
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jcbk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'admin', 'admin', '', 'mumbai', '', 'mumbai', '123456', 222, 3516, ''),
(2, 2, 'admin', 'admin', '', 'mumbai', '', 'mumbai', '12345', 216, 3397, ''),
(3, 2, 'admin', 'admin', '', 'mumbai', '', 'mumbai', '123456', 222, 3516, ''),
(4, 3, 'admin', 'admin', 'GHI', 'B-12 udhna', '', 'surat', '12345', 222, 3522, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'N6FO7WifSP551RefVHFhNjybwaMfwWd2aJIMNM9Tx2UtFndpfCHD9YBlumYZJZdpnMBq4wxmfHcPKuGQb9P9t3RC5G29sOrfB6xOe43DSlafwgt0dLFHbVlbJKSO0cHifOG5y1Lsc8K2lj1tG997CIE4rkjc3JD2JXStV5jX8kWuZ31HDP0ThGeneyMnyWhYarrVvMdUMGWpQboPpr7F63xuEJeEOmeGEC289uWSzn3pdpf6aMO38Zgnt8JxFYx4', 1, '2018-02-20 12:18:37', '2018-02-20 12:18:37'),
(2, 'Default', '2eaLA43WFIbzyNT7z9sqRYpFVJCaRhZXyszu8drBPgGmgUIY4IN1bMLhUrusprH7nylaGeq1RWbOrkeqCsLhPyggyi0vwYjY1kTNjtvJTYCNNX6EnjkTT7rNw8EIpYrQ1c0po22Tyj3rLo0ajxsdEz3HCGLHQNj9Lg0hzY3xrxqlZ5y7KAP4o6oobdPUHpi1AWmY2FoVnRL35WDfXTjkkFogqkGFb3yuyvmsqXISCLhuUiJ4mpP3b1UTc85H2R6K', 1, '2018-03-09 06:57:25', '2018-03-09 06:57:25'),
(3, 'Default', 'gFzN9K5DxkEjUTjzuLVf8tlnQBC4hnxvCyK2vfHFCJISj2XViOZPpCj6dsS769V4lmX13q3WWutxe4HhGmEvJ6FrOvgDy7yYEGd00T1wy7zQtarcX4m5qj0u6ynGA4PZClXS80UDLxFX6nXq2nyjBRVJ2PbVwzJE0mSm8cIw393WfHoF3JhdfqfdspKbcXeK0PrHBKAOWz9qRyZ4CyCzKMI6qYsT7LifpdGQAOHIiwNTAbOBTk1n50zAvspy4pom', 1, '2018-03-15 05:32:07', '2018-03-15 05:32:07'),
(4, 'Default', 'qDwVFhjffMBnjMAabH6Qz4JTKeqQlWDYzGnvDeTFPuvEfG11xdTxlcxMrAlA27otwq2IBPu52N3z1paW5ZS0uPFvxBLlfeY9Ima1tCkyVj70TK7Zhjgd5Nvhn6jbr91ATu2EWwSzFDe8dhwhXM5dHYhtrN0O5itwqUCCArlTjJ3mD2ErT06dGjU0GFy4ksEgrpAS1kVqBPYXB8WES8cOnMbAGPdxg1uK4LI3AF0fLPaowXDbSxXHzmDLMbMtvBHN', 1, '2018-05-28 18:00:20', '2018-05-28 18:00:20'),
(5, 'Default', 'VPZGMKY2nu0pMKW0FcHJ43Gf9Dm3mWC9C8GDCe6nzZJ6mGM5znqDc0OJIBnvrlWN9nEGBubm95MrnCGf727rE1ZBFioUXKntUPVxWAaNqXCkwo5cyoye9EOrw73mlRtUdcEjJK82rtppnKb7WlEXeDiwOyCZ93P7HuM2RUfIlvMIFuZ7u4gTeCGPG345qXABxzw1w3wza8I0PpMTOv0xU234DNyu9dJuZy65JQ8x7MLOxUEbTnnbRc0h0wUUeRW5', 1, '2019-02-04 09:49:58', '2019-02-04 09:49:58'),
(6, 'Default', 'fHFAZCDY6qwtivL7wwarWrEkyRI6kZR2mV3k09mQZXgQoLrzKvgpOIgNKjX88zhkgyIn65VOSHK6WVODDZCFqUb1fs4oXS1Us8N96ixUFz2U46MWMoPK94AaGIgGtHBdauQFkifVFvzsRADwIBAaxS4IG9mw9br1BF7C2Bz4va38ZeYg1AmvemiU9ZvudE2VUfmuuafm5ctvOs29nuAO8lfkUjc07r07nzPz6p5M0jYnoSj855l7j9t16nl6df9n', 1, '2019-03-12 09:54:19', '2019-03-12 09:54:19'),
(7, 'Default', 'TDAwYDaBzxvTM8ttN1TbYRlA3NsFuC2OSGvYOckweAlveucZQGkcfubHV2m3tKA0q0caaMGsAz0EQue7x1GWSf6pRUTYvEJQUPIb02khlqV4XgP7YsOssaBk6zJc04zNxrrECMdVsKu5P1swSKXsBUJ0eP6tbgaeo1Z8EydGBpzNgPXiWoTrSCJEn4FENKPzzgZahhrTxlz6Pu70wkoAIJKJVuorTy56bZtedyP3YNtK1K2ZdtNeL3LXnmJUzjGz', 1, '2019-03-15 10:38:00', '2019-03-15 10:38:00'),
(8, 'Default', '4ALXPKynZ7AnxbRVOW4lehSXvg8H9WT9N58WXer27ga6cWVprtJphNuAzB4RohSit6uodZ2yw2GT9f1NEXJEdFLCB3DDInE6mnWkw4hsweF5o2qlniqyqvlivk3yC6Rk4CdxVQxvcSR6sUj0HHL229SO6LceZvM6Atbi2bPBMj6eyHTR6ElGQCd3JpGrvHWNQVoGdqH4kzOSTDVuG4Ie0iNQtI39m36Xa0pdOX17pmXnCtv4o2N0sq20wtMKFS7S', 1, '2019-04-27 09:12:17', '2019-04-27 09:12:17'),
(9, 'Default', 'jcogVuXPH6Lra9yJx0E46Fhgsv6hntSoIo1yWJFwQdDPkmqWUwhulhePwuT9OIfXAm63BH4GBX7q8H21b5oHGWpxVTk8fJ5nVVA8i1JVQ8H3IuK2yVpRDFwW3WCpcvlV2lBTeMNKf9QT4UkeH1NjK6jDLhuGeNhyoXZwc2xu7IaTNWpsF04E8OU0lJVkyGDcvxtSxPr00wOyILXw2D9y8AW2o91vItgsA3XOTHz84iqPTRUCJSaSFtOlYXhtqAjV', 1, '2020-02-01 13:51:48', '2020-02-01 13:51:48'),
(10, 'Default', 'oduMBMM7ivxb6AUorxv8EDGTM6QVB79sEHV84K5i4cb7CJcGu1YABGyXyklcJWXc0L5XZDa8fJwTeDS9vMrt8lXhCwk4FKwdSQdi411uZcM4DmnbYrIzcJFj69NegVBPgDidUESBFWcAcG0Pwo8na0skg39wP72HvCr8x3HOLnm9o3xfaCbjvAgi0hpbSqIolFtwcxcjNFHHv6XdMtVwKz17juGO6Snw1mO1ay5aJVxSCFfabTF64Ylfhehiei2c', 1, '2021-04-20 17:16:02', '2021-04-20 17:16:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(1, 3, 'Description'),
(2, 3, 'No. of Cores'),
(4, 3, 'test 1'),
(5, 3, 'test 2'),
(6, 3, 'test 3'),
(7, 3, 'test 4'),
(8, 3, 'test 5'),
(9, 3, 'test 6'),
(10, 3, 'test 7'),
(11, 3, 'test 8'),
(3, 3, 'Clockspeed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 0),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Left banner', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(101, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(123, 8, 1, 'NFL', '', 'catalog/4.png', 0),
(122, 8, 1, 'Sony', '', 'catalog/2.png', 0),
(121, 8, 1, 'Coca Cola', '', 'catalog/1.png', 0),
(120, 8, 1, 'Burger King', '', 'catalog/7.png', 0),
(118, 8, 1, 'Canon', '', 'catalog/5.png', 0),
(119, 8, 1, 'Harley Davidson', '', 'catalog/6.png', 0),
(117, 8, 1, 'Disney', '', 'catalog/4.png', 0),
(116, 8, 1, 'Dell', '', 'catalog/3.png', 0),
(115, 8, 1, 'Starbucks', '', 'catalog/2.png', 0),
(114, 8, 1, 'Nintendo', '', 'catalog/1.png', 0),
(140, 9, 2, 'Left banner', '#', 'catalog/left-banner-1.jpg', 0),
(190, 7, 2, 'Mainbanner3', '#', '', 3),
(126, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(127, 8, 2, 'NFL', '', 'catalog/4.png', 0),
(128, 8, 2, 'Sony', '', 'catalog/2.png', 0),
(129, 8, 2, 'Coca Cola', '', 'catalog/1.png', 0),
(130, 8, 2, 'Burger King', '', 'catalog/7.png', 0),
(131, 8, 2, 'Canon', '', 'catalog/5.png', 0),
(132, 8, 2, 'Harley Davidson', '', 'catalog/6.png', 0),
(133, 8, 2, 'Disney', '', 'catalog/4.png', 0),
(134, 8, 2, 'Dell', '', 'catalog/3.png', 0),
(189, 7, 2, 'Mainbanner2', '#', 'catalog/main-banner-2.jpg', 2),
(136, 8, 2, 'Starbucks', '', 'catalog/2.png', 0),
(137, 8, 2, 'Nintendo', '', 'catalog/1.png', 0),
(139, 9, 1, 'Left banner', '#', 'catalog/left-banner-1.jpg', 0),
(188, 7, 2, 'Mainbanner1', '#', 'catalog/main-banner-1.jpg', 1),
(187, 7, 1, 'Mainbanner3', '#', '', 3),
(186, 7, 1, 'Mainbanner2', '#', 'catalog/main-banner-2.jpg', 2),
(185, 7, 1, 'Mainbanner1', '#', 'catalog/main-banner-1.jpg', 1),
(191, 6, 3, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(192, 8, 3, 'NFL', '', 'catalog/4.png', 0),
(193, 8, 3, 'Sony', '', 'catalog/2.png', 0),
(194, 8, 3, 'Coca Cola', '', 'catalog/1.png', 0),
(195, 8, 3, 'Burger King', '', 'catalog/7.png', 0),
(196, 8, 3, 'Canon', '', 'catalog/5.png', 0),
(197, 8, 3, 'Harley Davidson', '', 'catalog/6.png', 0),
(198, 8, 3, 'Disney', '', 'catalog/4.png', 0),
(199, 8, 3, 'Dell', '', 'catalog/3.png', 0),
(200, 8, 3, 'Starbucks', '', 'catalog/2.png', 0),
(201, 8, 3, 'Nintendo', '', 'catalog/1.png', 0),
(202, 9, 3, 'Left banner', '#', 'catalog/left-banner-1.jpg', 0),
(203, 7, 3, 'Mainbanner3', '#', '', 3),
(204, 7, 3, 'Mainbanner2', '#', 'catalog/main-banner-2.jpg', 2),
(205, 7, 3, 'Mainbanner1', '#', 'catalog/main-banner-1.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger`
--

CREATE TABLE `oc_blogger` (
  `blogger_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_blogger`
--

INSERT INTO `oc_blogger` (`blogger_id`, `module_id`, `status`, `image`, `date_added`, `date_modified`) VALUES
(1, 43, 1, 'catalog/blog-1.jpg', '2018-02-28 11:19:34', '2018-03-15 07:10:02'),
(2, 43, 1, 'catalog/blog-2.jpg', '2018-02-28 11:20:08', '2018-03-15 07:10:16'),
(3, 43, 1, 'catalog/blog-3.jpg', '2018-02-28 11:20:51', '2018-03-15 07:10:30'),
(4, 43, 1, 'catalog/blog-4.jpg', '2018-02-28 11:21:26', '2018-03-15 07:10:44'),
(5, 43, 1, 'catalog/blog-5.jpg', '2018-02-28 11:21:58', '2018-03-15 07:10:57'),
(6, 43, 1, 'catalog/blog-6.jpg', '2018-02-28 11:22:25', '2018-03-15 07:11:10');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger_comment`
--

CREATE TABLE `oc_blogger_comment` (
  `blogger_comment_id` int(11) NOT NULL,
  `blogger_id` int(11) NOT NULL,
  `approved` int(1) NOT NULL DEFAULT 0,
  `author` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger_comment_description`
--

CREATE TABLE `oc_blogger_comment_description` (
  `blogger_comment_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger_description`
--

CREATE TABLE `oc_blogger_description` (
  `blogger_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_blogger_description`
--

INSERT INTO `oc_blogger_description` (`blogger_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'Praesentium Voluptatum Deleniti', '&lt;p&gt;Suspendisse posuere, diam in bibendum lobortis, turpis ipsum aliquam risus, sit amet dictum ligula lorem non nisl. Ut vitae nibh id massa vulputate euismod ut quis justo. Ut bibendum sem at massa lacinia, eget elementum ante consectetur. Nulla id pharetra dui, at rhoncus urna. Maecenas non porttitor purus. Nullam ullamcorper nisl quis ornare molestie.&lt;/p&gt;&lt;p&gt;Etiam eget erat est. Phasellus elit justo, mattis non lorem non, aliquam aliquam ps. Sed fermentum consectetur magna, eget semper ante. Aliquam scelerisque justo velit. Fusce cursus blandit dolor, in sodales urna vulputate lobortis. Nulla ut tellus turpis. Nullam lacus sem, volutpat id odio sed, cursus tristique eros. Duis at pellentesque magna. Donec magna nisi, vulputate ac nulla eu, ultricies tincidunt tellus. Nunc tincidunt sem urna, nec venenatis libero vehicula ut.&lt;br&gt;&lt;/p&gt;      '),
(2, 1, 'Omnis Voluptas Assumenda Est', '&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;          '),
(3, 1, 'Matters To This Principle Of Selection', '&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text&lt;/b&gt;. &lt;/p&gt;&lt;p&gt;It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;/p&gt;&lt;p&gt; Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;      '),
(4, 1, 'Voluptatem Accusantium Doloremque', '&lt;p&gt;If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&amp;nbsp;&lt;/p&gt;&lt;p&gt;It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&lt;/p&gt;      '),
(5, 1, 'Quis Autem Reprehender Pariatur', '&lt;p&gt;&lt;b&gt;1914 translation by H. Rackham&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects&lt;/p&gt;&lt;p&gt;&lt;b&gt;Section 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&quot;&lt;br&gt;&lt;/p&gt;      '),
(6, 1, 'Necessitatibus Saepe Eveniet', '&lt;div&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500s&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/div&gt;        '),
(1, 2, 'Praesentium Voluptatum Deleniti', '&lt;p&gt;Suspendisse posuere, diam in bibendum lobortis, turpis ipsum aliquam risus, sit amet dictum ligula lorem non nisl. Ut vitae nibh id massa vulputate euismod ut quis justo. Ut bibendum sem at massa lacinia, eget elementum ante consectetur. Nulla id pharetra dui, at rhoncus urna. Maecenas non porttitor purus. Nullam ullamcorper nisl quis ornare molestie.&lt;/p&gt;&lt;p&gt;Etiam eget erat est. Phasellus elit justo, mattis non lorem non, aliquam aliquam ps. Sed fermentum consectetur magna, eget semper ante. Aliquam scelerisque justo velit. Fusce cursus blandit dolor, in sodales urna vulputate lobortis. Nulla ut tellus turpis. Nullam lacus sem, volutpat id odio sed, cursus tristique eros. Duis at pellentesque magna. Donec magna nisi, vulputate ac nulla eu, ultricies tincidunt tellus. Nunc tincidunt sem urna, nec venenatis libero vehicula ut.&lt;br&gt;&lt;/p&gt;      '),
(2, 2, 'Omnis Voluptas Assumenda Est', '&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;            '),
(3, 2, 'Matters To This Principle Of Selection', '&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text&lt;/b&gt;. &lt;/p&gt;&lt;p&gt;It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;/p&gt;&lt;p&gt; Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;      '),
(4, 2, 'Voluptatem Accusantium Doloremque', '&lt;p&gt;If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&amp;nbsp;&lt;/p&gt;&lt;p&gt;It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&lt;/p&gt;        '),
(5, 2, 'Quis Autem Reprehender Pariatur', '&lt;p&gt;&lt;b&gt;1914 translation by H. Rackham&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects&lt;/p&gt;&lt;p&gt;&lt;b&gt;Section 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&quot;&lt;br&gt;&lt;/p&gt;        '),
(6, 2, 'Necessitatibus Saepe Eveniet', '&lt;div&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500s&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/div&gt;          ');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(5, 0, 1, '146b0313cb945d0330b6453de7', 43, 0, '[]', 1, '2018-03-15 08:35:21'),
(6, 0, 3, 'e273c368743342882178e47146', 32, 0, '[]', 1, '2019-04-29 11:48:01');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/category-banner.jpg', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2020-02-01 14:03:28'),
(27, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:34', '2019-04-30 12:05:24'),
(20, 'catalog/category-banner.jpg', 0, 1, 3, 1, 1, '2009-01-05 21:49:43', '2020-02-01 14:00:39'),
(24, 'catalog/category-banner.jpg', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2020-02-01 14:02:26'),
(18, 'catalog/category-banner.jpg', 0, 1, 0, 2, 0, '2009-01-05 21:49:15', '2020-02-01 14:02:09'),
(17, 'catalog/category-banner.jpg', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2020-02-01 14:03:14'),
(28, '', 25, 0, 0, 2, 1, '2009-02-02 13:11:12', '2019-04-30 12:12:32'),
(26, '', 20, 0, 1, 2, 1, '2009-01-31 01:55:14', '2019-01-08 17:31:55'),
(30, '', 25, 0, 0, 4, 1, '2009-02-02 13:11:59', '2019-04-30 12:13:13'),
(31, '', 25, 0, 0, 5, 1, '2009-02-03 14:17:24', '2019-04-30 12:13:36'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2019-04-30 12:12:52'),
(33, 'catalog/category-banner.jpg', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2020-02-01 14:02:53'),
(35, '', 25, 0, 0, 3, 1, '2010-09-17 10:06:48', '2019-04-30 12:14:02'),
(37, '', 43, 0, 0, 2, 1, '2010-09-18 14:03:39', '2019-04-30 12:10:19'),
(38, '', 43, 0, 0, 1, 1, '2010-09-18 14:03:51', '2019-04-30 12:11:20'),
(39, '', 43, 0, 0, 3, 1, '2010-09-18 14:04:17', '2019-04-30 12:11:00'),
(40, '', 43, 0, 0, 4, 1, '2010-09-18 14:05:36', '2019-04-30 12:10:41'),
(43, '', 20, 0, 0, 3, 1, '2010-09-18 14:06:49', '2019-04-30 12:09:49'),
(49, '', 27, 0, 0, 1, 1, '2010-11-07 11:14:04', '2019-04-30 12:07:05'),
(50, '', 27, 0, 0, 2, 1, '2010-11-07 11:14:23', '2019-04-30 12:06:15'),
(51, '', 27, 0, 0, 3, 1, '2010-11-07 11:14:38', '2019-04-30 12:06:34'),
(52, '', 27, 0, 0, 4, 1, '2010-11-07 11:16:09', '2019-04-30 12:05:50'),
(53, '', 26, 0, 0, 1, 1, '2010-11-07 11:28:53', '2019-04-30 12:08:38'),
(54, '', 26, 0, 0, 2, 1, '2010-11-07 11:29:16', '2019-04-30 12:09:02'),
(55, '', 26, 0, 0, 3, 1, '2010-11-08 10:31:32', '2019-04-30 12:07:39'),
(56, '', 26, 0, 0, 4, 1, '2010-11-08 10:31:50', '2019-04-30 12:08:07'),
(57, '', 0, 1, 1, 3, 0, '2011-04-26 08:53:16', '2020-02-01 14:01:20'),
(58, '', 0, 0, 1, 3, 1, '2018-12-20 14:08:10', '2020-02-01 14:00:56'),
(59, '', 0, 1, 1, 2, 1, '2018-12-29 11:00:51', '2020-02-01 14:02:40'),
(60, '', 0, 1, 1, 2, 1, '2018-12-29 11:02:20', '2020-02-01 14:03:41');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(32, 2, 'Grinder', '', 'Grinder', '', ''),
(20, 2, 'Toolbox', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Toolbox', 'Example of category description', ''),
(49, 2, 'Glass Cutter', '', 'Glass Cutter', '', ''),
(53, 2, 'Hex Wrench', '', 'Hex Wrench', '', ''),
(54, 1, 'Pitchfork', '', 'Pitchfork', '', ''),
(33, 3, 'Кувалда', '', 'Lighting', '', ''),
(20, 3, 'Матераилы', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Toolbox', 'Example of category description', ''),
(39, 1, 'Saws‎', '', 'Saws‎', '', ''),
(40, 1, 'Axes‎', '', 'Axes‎', '', ''),
(18, 2, 'Curry Leaves', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Curry Leaves', '', ''),
(18, 3, 'Шуроповерт', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Curry Leaves', '', ''),
(50, 1, 'Screwdriver', '', 'Screwdriver', '', ''),
(51, 1, 'Scraper', '', 'Scraper', '', ''),
(56, 1, 'Hacksaw', '', 'Hacksaw', '', ''),
(57, 2, 'Black cardamom', '', 'Black cardamom', '', ''),
(35, 1, 'Bolt Cutter', '', 'Bolt Cutter', '', ''),
(24, 3, 'Гайковерт', '', 'Featured', '', ''),
(57, 3, 'Молотки', '', 'Black cardamom', '', ''),
(28, 2, 'Glue Gun', '', 'Glue Gun', '', ''),
(26, 2, 'Accessories', '', 'Accessories', '', ''),
(25, 3, 'Защитные маски', '', 'Sawhorse', '', ''),
(28, 1, 'Glue Gun', '', 'Glue Gun', '', ''),
(30, 1, 'Crowbar', '', 'Crowbar', '', ''),
(55, 1, 'Circular Saw', '', 'Circular Saw', '', ''),
(54, 2, 'Pitchfork', '', 'Pitchfork', '', ''),
(53, 1, 'Hex Wrench', '', 'Hex Wrench', '', ''),
(37, 1, 'Scissors', '', 'Scissors', '', ''),
(38, 1, 'Knives', '', 'Knives', '', ''),
(31, 2, 'Electric Drill', '', 'Electric Drill', '', ''),
(27, 1, 'Materials', '', 'Materials', '', ''),
(52, 2, 'Miter Box', '', 'Miter Box', '', ''),
(51, 2, 'Scraper', '', 'Scraper', '', ''),
(26, 1, 'Accessories', '', 'Accessories', '', ''),
(56, 2, 'Hacksaw', '', 'Hacksaw', '', ''),
(43, 1, 'Cutting Tools‎', '', 'Cutting Tools‎', '', ''),
(37, 2, 'Scissors', '', 'Scissors', '', ''),
(59, 3, 'Компрессоры', '', 'Featured', '', ''),
(49, 1, 'Glass Cutter', '', 'Glass Cutter', '', ''),
(52, 1, 'Miter Box', '', 'Miter Box', '', ''),
(31, 1, 'Electric Drill', '', 'Electric Drill', '', ''),
(32, 1, 'Grinder', '', 'Grinder', '', ''),
(60, 3, 'Краскопульты', '', 'Toolmaker', '', ''),
(58, 3, 'Аксессуары', '', 'Accessories', '', ''),
(17, 3, 'Болгарки', '', 'Miter Box', '', ''),
(27, 2, 'Materials', '', 'Materials', '', ''),
(50, 2, 'Screwdriver', '', 'Screwdriver', '', ''),
(55, 2, 'Circular Saw', '', 'Circular Saw', '', ''),
(43, 2, 'Cutting Tools‎', '', 'Cutting Tools‎', '', ''),
(40, 2, 'Axes‎', '', 'Axes‎', '', ''),
(39, 2, 'Saws‎', '', 'Saws‎', '', ''),
(38, 2, 'Knives', '', 'Knives', '', ''),
(30, 2, 'Crowbar', '', 'Crowbar', '', ''),
(35, 2, 'Bolt Cutter', '', 'Bolt Cutter', '', ''),
(20, 1, 'Toolbox', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Toolbox', 'Example of category description', ''),
(54, 3, 'Pitchfork', '', 'Pitchfork', '', ''),
(17, 1, 'Miter Box', '', 'Miter Box', '', ''),
(24, 1, 'Featured', '', 'Featured', '', ''),
(39, 3, 'Saws‎', '', 'Saws‎', '', ''),
(40, 3, 'Axes‎', '', 'Axes‎', '', ''),
(18, 1, 'Curry Leaves', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Curry Leaves', '', ''),
(50, 3, 'Screwdriver', '', 'Screwdriver', '', ''),
(51, 3, 'Scraper', '', 'Scraper', '', ''),
(56, 3, 'Hacksaw', '', 'Hacksaw', '', ''),
(57, 1, 'Black cardamom', '', 'Black cardamom', '', ''),
(35, 3, 'Bolt Cutter', '', 'Bolt Cutter', '', ''),
(33, 1, 'Lighting', '', 'Lighting', '', ''),
(28, 3, 'Glue Gun', '', 'Glue Gun', '', ''),
(30, 3, 'Crowbar', '', 'Crowbar', '', ''),
(59, 1, 'Featured', '', 'Featured', '', ''),
(55, 3, 'Circular Saw', '', 'Circular Saw', '', ''),
(53, 3, 'Hex Wrench', '', 'Hex Wrench', '', ''),
(37, 3, 'Scissors', '', 'Scissors', '', ''),
(38, 3, 'Knives', '', 'Knives', '', ''),
(58, 1, 'Accessories', '', 'Accessories', '', ''),
(27, 3, 'Materials', '', 'Materials', '', ''),
(26, 3, 'Accessories', '', 'Accessories', '', ''),
(43, 3, 'Cutting Tools‎', '', 'Cutting Tools‎', '', ''),
(60, 1, 'Toolmaker', '', 'Toolmaker', '', ''),
(49, 3, 'Glass Cutter', '', 'Glass Cutter', '', ''),
(52, 3, 'Miter Box', '', 'Miter Box', '', ''),
(31, 3, 'Electric Drill', '', 'Electric Drill', '', ''),
(32, 3, 'Grinder', '', 'Grinder', '', ''),
(25, 1, 'Sawhorse', '', 'Sawhorse', '', ''),
(58, 2, 'Accessories', '', 'Accessories', '', ''),
(24, 2, 'Featured', '', 'Featured', '', ''),
(59, 2, 'Featured', '', 'Featured', '', ''),
(33, 2, 'Lighting', '', 'Lighting', '', ''),
(17, 2, 'Miter Box', '', 'Miter Box', '', ''),
(25, 2, 'Sawhorse', '', 'Sawhorse', '', ''),
(60, 2, 'Toolmaker', '', 'Toolmaker', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 9),
(17, 10),
(17, 11),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 9),
(18, 10),
(18, 11),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 9),
(20, 10),
(20, 11),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 9),
(24, 10),
(24, 11),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 9),
(25, 10),
(25, 11),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 9),
(26, 10),
(26, 11),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 9),
(27, 10),
(27, 11),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 9),
(28, 10),
(28, 11),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 9),
(30, 10),
(30, 11),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 9),
(31, 10),
(31, 11),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 9),
(32, 10),
(32, 11),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 9),
(33, 10),
(33, 11),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 5),
(35, 6),
(35, 7),
(35, 9),
(35, 10),
(35, 11),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(43, 5),
(43, 6),
(43, 7),
(43, 9),
(43, 10),
(43, 11),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(57, 5),
(57, 6),
(57, 7),
(57, 9),
(57, 10),
(57, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 35, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(39, 20, 0),
(37, 20, 0),
(40, 20, 0),
(17, 17, 0),
(33, 33, 0),
(37, 43, 1),
(37, 37, 2),
(38, 43, 1),
(38, 38, 2),
(39, 43, 1),
(39, 39, 2),
(40, 43, 1),
(40, 40, 2),
(43, 20, 0),
(43, 43, 1),
(38, 20, 0),
(56, 20, 0),
(55, 20, 0),
(54, 26, 1),
(53, 20, 0),
(52, 20, 0),
(49, 20, 0),
(49, 49, 2),
(50, 20, 0),
(50, 50, 2),
(51, 27, 1),
(51, 51, 2),
(52, 27, 1),
(52, 52, 2),
(51, 20, 0),
(50, 27, 1),
(49, 27, 1),
(53, 26, 1),
(53, 53, 2),
(54, 20, 0),
(54, 54, 2),
(55, 26, 1),
(55, 55, 2),
(56, 26, 1),
(56, 56, 2),
(57, 57, 0),
(58, 58, 0),
(59, 59, 0),
(60, 60, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(18, 0, 0),
(25, 0, 0),
(57, 0, 0),
(17, 0, 0),
(24, 0, 0),
(33, 0, 0),
(27, 0, 0),
(26, 0, 0),
(43, 0, 0),
(28, 0, 0),
(35, 0, 0),
(30, 0, 0),
(31, 0, 0),
(49, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(38, 0, 0),
(37, 0, 0),
(39, 0, 0),
(40, 0, 0),
(32, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(35, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(43, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2020-02-01 10:57:21'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00'),
(4, 'Рубль', 'RUB', '', 'руб', '', 1.00000000, 1, '2021-04-20 17:17:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'admin', 'admin', 'admin@localhost.com', '1234567891', '', 'dde174b4a4e99de1738b7c1e92aec6fd815a65fa', 'bMga217VL', NULL, NULL, 0, 1, '', '123.201.227.244', 1, 0, '', '', '2018-03-01 05:27:47'),
(2, 1, 0, 1, 'admin', 'admin', 'admin@gmail.com', '1234567891', '', '5d70a5055c8e45e49546739420561fe4492a9e88', '789fGBVTk', NULL, NULL, 0, 2, '', '123.201.227.244', 1, 0, '', '', '2018-03-15 09:37:18'),
(3, 1, 0, 2, 'admin', 'admin', 'admin1@localhost.com', '01234567890', '', '3def696ac8d4a9c7658da339274590348ac2fb7a', 'Ew3w9w6mR', NULL, NULL, 0, 4, '', '192.168.0.155', 1, 0, '', '', '2018-05-29 16:27:41'),
(4, 1, 0, 1, 'admin', 'admin', 'demo@codezeel.com', 'demo@codezeel.com', '', '3eaee048f34666890ecdebed6ecf454657ae9875', 'Ef0CaT0Hl', NULL, NULL, 0, 0, '', '116.73.194.54', 1, 0, '', '', '2019-03-15 11:11:58');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '219.91.237.34', '2018-03-01 05:27:47'),
(2, 1, '123.201.227.244', '2018-03-15 08:34:42'),
(3, 2, '123.201.227.244', '2018-03-15 09:37:19'),
(4, 3, '192.168.0.152', '2018-05-29 16:28:04'),
(5, 3, '192.168.0.151', '2018-05-30 13:47:45'),
(6, 3, '192.168.0.155', '2019-01-08 17:21:39'),
(7, 4, '116.73.194.54', '2019-03-15 11:11:59');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(2, 'admin@localhost.com', '192.168.0.152', 2, '2018-05-30 05:22:41', '2018-05-30 09:45:48'),
(3, 'admin@localhost.com', '192.168.0.151', 4, '2018-05-30 08:17:23', '2018-05-30 08:17:40'),
(4, 'admin@localhost.com', '192.168.0.155', 2, '2019-01-08 11:51:27', '2019-04-29 06:10:58'),
(5, 'admin@localhost.com', '192.168.1.151', 3, '2019-03-15 09:31:40', '2019-03-15 09:31:50');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(3, 47, '2018-05-29 16:32:28'),
(3, 43, '2019-04-27 15:44:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'html'),
(43, 'module', 'filter'),
(44, 'module', 'special'),
(45, 'module', 'information'),
(46, 'module', 'newsletters'),
(55, 'module', 'category_tab'),
(48, 'module', 'blogger'),
(50, 'module', 'divido_calculator'),
(54, 'module', 'latest'),
(56, 'module', 'bestseller');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'russian_oc3.ocmod.zip', '2020-02-01 13:53:53'),
(2, 0, 'export-import-multilingual_oc3x.ocmod.zip', '2021-04-20 20:18:14'),
(3, 0, 'mega-menu-horizontal_oc3.ocmod.zip', '2021-04-20 20:19:07'),
(4, 0, 'ocmod.net_webp_oc3x.ocmod.zip', '2021-04-20 20:20:15'),
(5, 0, 'optimblog.ocmod.zip', '2021-04-20 20:20:57'),
(6, 0, 'Featured_Plus_1.02.ocmod.zip', '2021-04-20 20:22:03'),
(7, 0, '[ocmod.net] brainy-filter-pro-5.1.3_oc3x.ocmod.zip', '2021-04-20 20:23:55');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'admin/language/ru-ru', '2020-02-01 13:53:57'),
(2, 1, 'catalog/language/ru-ru', '2020-02-01 13:53:57'),
(3, 1, 'admin/language/ru-ru/catalog', '2020-02-01 13:53:57'),
(4, 1, 'admin/language/ru-ru/common', '2020-02-01 13:53:57'),
(5, 1, 'admin/language/ru-ru/customer', '2020-02-01 13:53:57'),
(6, 1, 'admin/language/ru-ru/design', '2020-02-01 13:53:57'),
(7, 1, 'admin/language/ru-ru/error', '2020-02-01 13:53:57'),
(8, 1, 'admin/language/ru-ru/extension', '2020-02-01 13:53:57'),
(9, 1, 'admin/language/ru-ru/localisation', '2020-02-01 13:53:57'),
(10, 1, 'admin/language/ru-ru/mail', '2020-02-01 13:53:57'),
(11, 1, 'admin/language/ru-ru/marketing', '2020-02-01 13:53:57'),
(12, 1, 'admin/language/ru-ru/marketplace', '2020-02-01 13:53:57'),
(13, 1, 'admin/language/ru-ru/report', '2020-02-01 13:53:57'),
(14, 1, 'admin/language/ru-ru/ru-ru.php', '2020-02-01 13:53:57'),
(15, 1, 'admin/language/ru-ru/ru-ru.png', '2020-02-01 13:53:57'),
(16, 1, 'admin/language/ru-ru/sale', '2020-02-01 13:53:57'),
(17, 1, 'admin/language/ru-ru/setting', '2020-02-01 13:53:57'),
(18, 1, 'admin/language/ru-ru/tool', '2020-02-01 13:53:57'),
(19, 1, 'admin/language/ru-ru/user', '2020-02-01 13:53:57'),
(20, 1, 'catalog/language/ru-ru/account', '2020-02-01 13:53:57'),
(21, 1, 'catalog/language/ru-ru/affiliate', '2020-02-01 13:53:57'),
(22, 1, 'catalog/language/ru-ru/api', '2020-02-01 13:53:57'),
(23, 1, 'catalog/language/ru-ru/checkout', '2020-02-01 13:53:57'),
(24, 1, 'catalog/language/ru-ru/common', '2020-02-01 13:53:57'),
(25, 1, 'catalog/language/ru-ru/error', '2020-02-01 13:53:57'),
(26, 1, 'catalog/language/ru-ru/extension', '2020-02-01 13:53:57'),
(27, 1, 'catalog/language/ru-ru/information', '2020-02-01 13:53:57'),
(28, 1, 'catalog/language/ru-ru/mail', '2020-02-01 13:53:57'),
(29, 1, 'catalog/language/ru-ru/product', '2020-02-01 13:53:57'),
(30, 1, 'catalog/language/ru-ru/ru-ru.php', '2020-02-01 13:53:57'),
(31, 1, 'catalog/language/ru-ru/ru-ru.png', '2020-02-01 13:53:57'),
(32, 1, 'catalog/language/ru-ru/tool', '2020-02-01 13:53:57'),
(33, 1, 'admin/language/ru-ru/catalog/attribute.php', '2020-02-01 13:53:57'),
(34, 1, 'admin/language/ru-ru/catalog/attribute_group.php', '2020-02-01 13:53:57'),
(35, 1, 'admin/language/ru-ru/catalog/category.php', '2020-02-01 13:53:57'),
(36, 1, 'admin/language/ru-ru/catalog/download.php', '2020-02-01 13:53:57'),
(37, 1, 'admin/language/ru-ru/catalog/filter.php', '2020-02-01 13:53:57'),
(38, 1, 'admin/language/ru-ru/catalog/information.php', '2020-02-01 13:53:57'),
(39, 1, 'admin/language/ru-ru/catalog/manufacturer.php', '2020-02-01 13:53:57'),
(40, 1, 'admin/language/ru-ru/catalog/option.php', '2020-02-01 13:53:57'),
(41, 1, 'admin/language/ru-ru/catalog/product.php', '2020-02-01 13:53:57'),
(42, 1, 'admin/language/ru-ru/catalog/recurring.php', '2020-02-01 13:53:57'),
(43, 1, 'admin/language/ru-ru/catalog/review.php', '2020-02-01 13:53:57'),
(44, 1, 'admin/language/ru-ru/common/column_left.php', '2020-02-01 13:53:57'),
(45, 1, 'admin/language/ru-ru/common/dashboard.php', '2020-02-01 13:53:57'),
(46, 1, 'admin/language/ru-ru/common/filemanager.php', '2020-02-01 13:53:57'),
(47, 1, 'admin/language/ru-ru/common/footer.php', '2020-02-01 13:53:57'),
(48, 1, 'admin/language/ru-ru/common/forgotten.php', '2020-02-01 13:53:57'),
(49, 1, 'admin/language/ru-ru/common/header.php', '2020-02-01 13:53:57'),
(50, 1, 'admin/language/ru-ru/common/login.php', '2020-02-01 13:53:57'),
(51, 1, 'admin/language/ru-ru/common/reset.php', '2020-02-01 13:53:57'),
(52, 1, 'admin/language/ru-ru/customer/custom_field.php', '2020-02-01 13:53:57'),
(53, 1, 'admin/language/ru-ru/customer/customer.php', '2020-02-01 13:53:57'),
(54, 1, 'admin/language/ru-ru/customer/customer_approval.php', '2020-02-01 13:53:57'),
(55, 1, 'admin/language/ru-ru/customer/customer_group.php', '2020-02-01 13:53:57'),
(56, 1, 'admin/language/ru-ru/design/banner.php', '2020-02-01 13:53:57'),
(57, 1, 'admin/language/ru-ru/design/language.php', '2020-02-01 13:53:57'),
(58, 1, 'admin/language/ru-ru/design/layout.php', '2020-02-01 13:53:57'),
(59, 1, 'admin/language/ru-ru/design/menu.php', '2020-02-01 13:53:57'),
(60, 1, 'admin/language/ru-ru/design/theme.php', '2020-02-01 13:53:57'),
(61, 1, 'admin/language/ru-ru/design/translation.php', '2020-02-01 13:53:57'),
(62, 1, 'admin/language/ru-ru/error/not_found.php', '2020-02-01 13:53:57'),
(63, 1, 'admin/language/ru-ru/error/permission.php', '2020-02-01 13:53:57'),
(64, 1, 'admin/language/ru-ru/extension/analytics', '2020-02-01 13:53:57'),
(65, 1, 'admin/language/ru-ru/extension/captcha', '2020-02-01 13:53:57'),
(66, 1, 'admin/language/ru-ru/extension/dashboard', '2020-02-01 13:53:57'),
(67, 1, 'admin/language/ru-ru/extension/extension', '2020-02-01 13:53:57'),
(68, 1, 'admin/language/ru-ru/extension/feed', '2020-02-01 13:53:57'),
(69, 1, 'admin/language/ru-ru/extension/fraud', '2020-02-01 13:53:57'),
(70, 1, 'admin/language/ru-ru/extension/module', '2020-02-01 13:53:57'),
(71, 1, 'admin/language/ru-ru/extension/openbay', '2020-02-01 13:53:57'),
(72, 1, 'admin/language/ru-ru/extension/payment', '2020-02-01 13:53:57'),
(73, 1, 'admin/language/ru-ru/extension/shipping', '2020-02-01 13:53:57'),
(74, 1, 'admin/language/ru-ru/extension/store.php', '2020-02-01 13:53:57'),
(75, 1, 'admin/language/ru-ru/extension/theme', '2020-02-01 13:53:57'),
(76, 1, 'admin/language/ru-ru/extension/total', '2020-02-01 13:53:57'),
(77, 1, 'admin/language/ru-ru/localisation/country.php', '2020-02-01 13:53:57'),
(78, 1, 'admin/language/ru-ru/localisation/currency.php', '2020-02-01 13:53:57'),
(79, 1, 'admin/language/ru-ru/localisation/geo_zone.php', '2020-02-01 13:53:57'),
(80, 1, 'admin/language/ru-ru/localisation/language.php', '2020-02-01 13:53:57'),
(81, 1, 'admin/language/ru-ru/localisation/length_class.php', '2020-02-01 13:53:57'),
(82, 1, 'admin/language/ru-ru/localisation/location.php', '2020-02-01 13:53:57'),
(83, 1, 'admin/language/ru-ru/localisation/order_status.php', '2020-02-01 13:53:57'),
(84, 1, 'admin/language/ru-ru/localisation/return_action.php', '2020-02-01 13:53:57'),
(85, 1, 'admin/language/ru-ru/localisation/return_reason.php', '2020-02-01 13:53:57'),
(86, 1, 'admin/language/ru-ru/localisation/return_status.php', '2020-02-01 13:53:57'),
(87, 1, 'admin/language/ru-ru/localisation/stock_status.php', '2020-02-01 13:53:57'),
(88, 1, 'admin/language/ru-ru/localisation/tax_class.php', '2020-02-01 13:53:57'),
(89, 1, 'admin/language/ru-ru/localisation/tax_rate.php', '2020-02-01 13:53:57'),
(90, 1, 'admin/language/ru-ru/localisation/weight_class.php', '2020-02-01 13:53:57'),
(91, 1, 'admin/language/ru-ru/localisation/zone.php', '2020-02-01 13:53:57'),
(92, 1, 'admin/language/ru-ru/mail/affiliate.php', '2020-02-01 13:53:57'),
(93, 1, 'admin/language/ru-ru/mail/customer.php', '2020-02-01 13:53:57'),
(94, 1, 'admin/language/ru-ru/mail/forgotten.php', '2020-02-01 13:53:57'),
(95, 1, 'admin/language/ru-ru/mail/return.php', '2020-02-01 13:53:57'),
(96, 1, 'admin/language/ru-ru/mail/voucher.php', '2020-02-01 13:53:57'),
(97, 1, 'admin/language/ru-ru/marketing/affiliate.php', '2020-02-01 13:53:57'),
(98, 1, 'admin/language/ru-ru/marketing/contact.php', '2020-02-01 13:53:57'),
(99, 1, 'admin/language/ru-ru/marketing/coupon.php', '2020-02-01 13:53:57'),
(100, 1, 'admin/language/ru-ru/marketing/marketing.php', '2020-02-01 13:53:57'),
(101, 1, 'admin/language/ru-ru/marketplace/api.php', '2020-02-01 13:53:57'),
(102, 1, 'admin/language/ru-ru/marketplace/event.php', '2020-02-01 13:53:57'),
(103, 1, 'admin/language/ru-ru/marketplace/extension.php', '2020-02-01 13:53:57'),
(104, 1, 'admin/language/ru-ru/marketplace/install.php', '2020-02-01 13:53:57'),
(105, 1, 'admin/language/ru-ru/marketplace/installer.php', '2020-02-01 13:53:57'),
(106, 1, 'admin/language/ru-ru/marketplace/marketplace.php', '2020-02-01 13:53:57'),
(107, 1, 'admin/language/ru-ru/marketplace/modification.php', '2020-02-01 13:53:57'),
(108, 1, 'admin/language/ru-ru/marketplace/openbay.php', '2020-02-01 13:53:57'),
(109, 1, 'admin/language/ru-ru/report/online.php', '2020-02-01 13:53:57'),
(110, 1, 'admin/language/ru-ru/report/report.php', '2020-02-01 13:53:57'),
(111, 1, 'admin/language/ru-ru/report/statistics.php', '2020-02-01 13:53:57'),
(112, 1, 'admin/language/ru-ru/sale/order.php', '2020-02-01 13:53:57'),
(113, 1, 'admin/language/ru-ru/sale/recurring.php', '2020-02-01 13:53:57'),
(114, 1, 'admin/language/ru-ru/sale/return.php', '2020-02-01 13:53:57'),
(115, 1, 'admin/language/ru-ru/sale/voucher.php', '2020-02-01 13:53:57'),
(116, 1, 'admin/language/ru-ru/sale/voucher_theme.php', '2020-02-01 13:53:57'),
(117, 1, 'admin/language/ru-ru/setting/setting.php', '2020-02-01 13:53:57'),
(118, 1, 'admin/language/ru-ru/setting/store.php', '2020-02-01 13:53:57'),
(119, 1, 'admin/language/ru-ru/tool/backup.php', '2020-02-01 13:53:57'),
(120, 1, 'admin/language/ru-ru/tool/log.php', '2020-02-01 13:53:57'),
(121, 1, 'admin/language/ru-ru/tool/upload.php', '2020-02-01 13:53:57'),
(122, 1, 'admin/language/ru-ru/user/api.php', '2020-02-01 13:53:57'),
(123, 1, 'admin/language/ru-ru/user/user.php', '2020-02-01 13:53:57'),
(124, 1, 'admin/language/ru-ru/user/user_group.php', '2020-02-01 13:53:57'),
(125, 1, 'catalog/language/ru-ru/account/account.php', '2020-02-01 13:53:57'),
(126, 1, 'catalog/language/ru-ru/account/address.php', '2020-02-01 13:53:57'),
(127, 1, 'catalog/language/ru-ru/account/download.php', '2020-02-01 13:53:57'),
(128, 1, 'catalog/language/ru-ru/account/edit.php', '2020-02-01 13:53:57'),
(129, 1, 'catalog/language/ru-ru/account/forgotten.php', '2020-02-01 13:53:57'),
(130, 1, 'catalog/language/ru-ru/account/login.php', '2020-02-01 13:53:57'),
(131, 1, 'catalog/language/ru-ru/account/logout.php', '2020-02-01 13:53:57'),
(132, 1, 'catalog/language/ru-ru/account/newsletter.php', '2020-02-01 13:53:57'),
(133, 1, 'catalog/language/ru-ru/account/order.php', '2020-02-01 13:53:57'),
(134, 1, 'catalog/language/ru-ru/account/password.php', '2020-02-01 13:53:57'),
(135, 1, 'catalog/language/ru-ru/account/recurring.php', '2020-02-01 13:53:57'),
(136, 1, 'catalog/language/ru-ru/account/register.php', '2020-02-01 13:53:57'),
(137, 1, 'catalog/language/ru-ru/account/reset.php', '2020-02-01 13:53:57'),
(138, 1, 'catalog/language/ru-ru/account/return.php', '2020-02-01 13:53:57'),
(139, 1, 'catalog/language/ru-ru/account/reward.php', '2020-02-01 13:53:57'),
(140, 1, 'catalog/language/ru-ru/account/success.php', '2020-02-01 13:53:57'),
(141, 1, 'catalog/language/ru-ru/account/transaction.php', '2020-02-01 13:53:57'),
(142, 1, 'catalog/language/ru-ru/account/voucher.php', '2020-02-01 13:53:57'),
(143, 1, 'catalog/language/ru-ru/account/wishlist.php', '2020-02-01 13:53:57'),
(144, 1, 'catalog/language/ru-ru/affiliate/account.php', '2020-02-01 13:53:57'),
(145, 1, 'catalog/language/ru-ru/affiliate/edit.php', '2020-02-01 13:53:57'),
(146, 1, 'catalog/language/ru-ru/affiliate/forgotten.php', '2020-02-01 13:53:57'),
(147, 1, 'catalog/language/ru-ru/affiliate/login.php', '2020-02-01 13:53:57'),
(148, 1, 'catalog/language/ru-ru/affiliate/logout.php', '2020-02-01 13:53:57'),
(149, 1, 'catalog/language/ru-ru/affiliate/password.php', '2020-02-01 13:53:57'),
(150, 1, 'catalog/language/ru-ru/affiliate/payment.php', '2020-02-01 13:53:57'),
(151, 1, 'catalog/language/ru-ru/affiliate/register.php', '2020-02-01 13:53:57'),
(152, 1, 'catalog/language/ru-ru/affiliate/success.php', '2020-02-01 13:53:57'),
(153, 1, 'catalog/language/ru-ru/affiliate/tracking.php', '2020-02-01 13:53:57'),
(154, 1, 'catalog/language/ru-ru/affiliate/transaction.php', '2020-02-01 13:53:57'),
(155, 1, 'catalog/language/ru-ru/api/cart.php', '2020-02-01 13:53:57'),
(156, 1, 'catalog/language/ru-ru/api/coupon.php', '2020-02-01 13:53:57'),
(157, 1, 'catalog/language/ru-ru/api/customer.php', '2020-02-01 13:53:57'),
(158, 1, 'catalog/language/ru-ru/api/login.php', '2020-02-01 13:53:57'),
(159, 1, 'catalog/language/ru-ru/api/order.php', '2020-02-01 13:53:57'),
(160, 1, 'catalog/language/ru-ru/api/payment.php', '2020-02-01 13:53:57'),
(161, 1, 'catalog/language/ru-ru/api/reward.php', '2020-02-01 13:53:57'),
(162, 1, 'catalog/language/ru-ru/api/shipping.php', '2020-02-01 13:53:57'),
(163, 1, 'catalog/language/ru-ru/api/voucher.php', '2020-02-01 13:53:57'),
(164, 1, 'catalog/language/ru-ru/checkout/cart.php', '2020-02-01 13:53:57'),
(165, 1, 'catalog/language/ru-ru/checkout/checkout.php', '2020-02-01 13:53:57'),
(166, 1, 'catalog/language/ru-ru/checkout/failure.php', '2020-02-01 13:53:57'),
(167, 1, 'catalog/language/ru-ru/checkout/success.php', '2020-02-01 13:53:57'),
(168, 1, 'catalog/language/ru-ru/common/cart.php', '2020-02-01 13:53:57'),
(169, 1, 'catalog/language/ru-ru/common/currency.php', '2020-02-01 13:53:57'),
(170, 1, 'catalog/language/ru-ru/common/footer.php', '2020-02-01 13:53:57'),
(171, 1, 'catalog/language/ru-ru/common/header.php', '2020-02-01 13:53:57'),
(172, 1, 'catalog/language/ru-ru/common/language.php', '2020-02-01 13:53:57'),
(173, 1, 'catalog/language/ru-ru/common/maintenance.php', '2020-02-01 13:53:57'),
(174, 1, 'catalog/language/ru-ru/common/menu.php', '2020-02-01 13:53:57'),
(175, 1, 'catalog/language/ru-ru/common/search.php', '2020-02-01 13:53:57'),
(176, 1, 'catalog/language/ru-ru/error/not_found.php', '2020-02-01 13:53:57'),
(177, 1, 'catalog/language/ru-ru/extension/captcha', '2020-02-01 13:53:57'),
(178, 1, 'catalog/language/ru-ru/extension/module', '2020-02-01 13:53:57'),
(179, 1, 'catalog/language/ru-ru/extension/openbay', '2020-02-01 13:53:57'),
(180, 1, 'catalog/language/ru-ru/extension/payment', '2020-02-01 13:53:57'),
(181, 1, 'catalog/language/ru-ru/extension/recurring', '2020-02-01 13:53:57'),
(182, 1, 'catalog/language/ru-ru/extension/shipping', '2020-02-01 13:53:57'),
(183, 1, 'catalog/language/ru-ru/extension/total', '2020-02-01 13:53:57'),
(184, 1, 'catalog/language/ru-ru/information/blogger.php', '2020-02-01 13:53:57'),
(185, 1, 'catalog/language/ru-ru/information/contact.php', '2020-02-01 13:53:57'),
(186, 1, 'catalog/language/ru-ru/information/information.php', '2020-02-01 13:53:57'),
(187, 1, 'catalog/language/ru-ru/information/sitemap.php', '2020-02-01 13:53:57'),
(188, 1, 'catalog/language/ru-ru/information/tracking.php', '2020-02-01 13:53:57'),
(189, 1, 'catalog/language/ru-ru/mail/affiliate.php', '2020-02-01 13:53:57'),
(190, 1, 'catalog/language/ru-ru/mail/customer.php', '2020-02-01 13:53:57'),
(191, 1, 'catalog/language/ru-ru/mail/forgotten.php', '2020-02-01 13:53:57'),
(192, 1, 'catalog/language/ru-ru/mail/order.php', '2020-02-01 13:53:57'),
(193, 1, 'catalog/language/ru-ru/mail/review.php', '2020-02-01 13:53:57'),
(194, 1, 'catalog/language/ru-ru/mail/voucher.php', '2020-02-01 13:53:57'),
(195, 1, 'catalog/language/ru-ru/product/category.php', '2020-02-01 13:53:57'),
(196, 1, 'catalog/language/ru-ru/product/compare.php', '2020-02-01 13:53:57'),
(197, 1, 'catalog/language/ru-ru/product/manufacturer.php', '2020-02-01 13:53:57'),
(198, 1, 'catalog/language/ru-ru/product/product.php', '2020-02-01 13:53:57'),
(199, 1, 'catalog/language/ru-ru/product/search.php', '2020-02-01 13:53:57'),
(200, 1, 'catalog/language/ru-ru/product/special.php', '2020-02-01 13:53:57'),
(201, 1, 'catalog/language/ru-ru/tool/upload.php', '2020-02-01 13:53:57'),
(202, 1, 'admin/language/ru-ru/extension/analytics/google_analytics.php', '2020-02-01 13:53:57'),
(203, 1, 'admin/language/ru-ru/extension/captcha/basic_captcha.php', '2020-02-01 13:53:57'),
(204, 1, 'admin/language/ru-ru/extension/captcha/google_captcha.php', '2020-02-01 13:53:57'),
(205, 1, 'admin/language/ru-ru/extension/dashboard/activity.php', '2020-02-01 13:53:57'),
(206, 1, 'admin/language/ru-ru/extension/dashboard/chart.php', '2020-02-01 13:53:57'),
(207, 1, 'admin/language/ru-ru/extension/dashboard/customer.php', '2020-02-01 13:53:57'),
(208, 1, 'admin/language/ru-ru/extension/dashboard/map.php', '2020-02-01 13:53:57'),
(209, 1, 'admin/language/ru-ru/extension/dashboard/online.php', '2020-02-01 13:53:57'),
(210, 1, 'admin/language/ru-ru/extension/dashboard/order.php', '2020-02-01 13:53:57'),
(211, 1, 'admin/language/ru-ru/extension/dashboard/recent.php', '2020-02-01 13:53:57'),
(212, 1, 'admin/language/ru-ru/extension/dashboard/sale.php', '2020-02-01 13:53:57'),
(213, 1, 'admin/language/ru-ru/extension/extension/analytics.php', '2020-02-01 13:53:57'),
(214, 1, 'admin/language/ru-ru/extension/extension/captcha.php', '2020-02-01 13:53:57'),
(215, 1, 'admin/language/ru-ru/extension/extension/dashboard.php', '2020-02-01 13:53:57'),
(216, 1, 'admin/language/ru-ru/extension/extension/feed.php', '2020-02-01 13:53:57'),
(217, 1, 'admin/language/ru-ru/extension/extension/fraud.php', '2020-02-01 13:53:57'),
(218, 1, 'admin/language/ru-ru/extension/extension/module.php', '2020-02-01 13:53:57'),
(219, 1, 'admin/language/ru-ru/extension/extension/payment.php', '2020-02-01 13:53:57'),
(220, 1, 'admin/language/ru-ru/extension/extension/shipping.php', '2020-02-01 13:53:57'),
(221, 1, 'admin/language/ru-ru/extension/extension/theme.php', '2020-02-01 13:53:57'),
(222, 1, 'admin/language/ru-ru/extension/extension/total.php', '2020-02-01 13:53:57'),
(223, 1, 'admin/language/ru-ru/extension/feed/google_base.php', '2020-02-01 13:53:57'),
(224, 1, 'admin/language/ru-ru/extension/feed/google_sitemap.php', '2020-02-01 13:53:57'),
(225, 1, 'admin/language/ru-ru/extension/fraud/ip.php', '2020-02-01 13:53:57'),
(226, 1, 'admin/language/ru-ru/extension/module/account.php', '2020-02-01 13:53:57'),
(227, 1, 'admin/language/ru-ru/extension/module/affiliate.php', '2020-02-01 13:53:57'),
(228, 1, 'admin/language/ru-ru/extension/module/banner.php', '2020-02-01 13:53:57'),
(229, 1, 'admin/language/ru-ru/extension/module/bestseller.php', '2020-02-01 13:53:57'),
(230, 1, 'admin/language/ru-ru/extension/module/carousel.php', '2020-02-01 13:53:57'),
(231, 1, 'admin/language/ru-ru/extension/module/category.php', '2020-02-01 13:53:57'),
(232, 1, 'admin/language/ru-ru/extension/module/featured.php', '2020-02-01 13:53:57'),
(233, 1, 'admin/language/ru-ru/extension/module/filter.php', '2020-02-01 13:53:57'),
(234, 1, 'admin/language/ru-ru/extension/module/google_hangouts.php', '2020-02-01 13:53:57'),
(235, 1, 'admin/language/ru-ru/extension/module/html.php', '2020-02-01 13:53:57'),
(236, 1, 'admin/language/ru-ru/extension/module/information.php', '2020-02-01 13:53:57'),
(237, 1, 'admin/language/ru-ru/extension/module/latest.php', '2020-02-01 13:53:57'),
(238, 1, 'admin/language/ru-ru/extension/module/pp_button.php', '2020-02-01 13:53:57'),
(239, 1, 'admin/language/ru-ru/extension/module/slideshow.php', '2020-02-01 13:53:57'),
(240, 1, 'admin/language/ru-ru/extension/module/special.php', '2020-02-01 13:53:57'),
(241, 1, 'admin/language/ru-ru/extension/module/store.php', '2020-02-01 13:53:57'),
(242, 1, 'admin/language/ru-ru/extension/payment/bank_transfer.php', '2020-02-01 13:53:57'),
(243, 1, 'admin/language/ru-ru/extension/payment/cheque.php', '2020-02-01 13:53:57'),
(244, 1, 'admin/language/ru-ru/extension/payment/cod.php', '2020-02-01 13:53:57'),
(245, 1, 'admin/language/ru-ru/extension/payment/free_checkout.php', '2020-02-01 13:53:57'),
(246, 1, 'admin/language/ru-ru/extension/payment/liqpay.php', '2020-02-01 13:53:57'),
(247, 1, 'admin/language/ru-ru/extension/payment/pp_express.php', '2020-02-01 13:53:57'),
(248, 1, 'admin/language/ru-ru/extension/payment/pp_express_order.php', '2020-02-01 13:53:57'),
(249, 1, 'admin/language/ru-ru/extension/payment/pp_express_refund.php', '2020-02-01 13:53:57'),
(250, 1, 'admin/language/ru-ru/extension/payment/pp_express_search.php', '2020-02-01 13:53:57'),
(251, 1, 'admin/language/ru-ru/extension/payment/pp_express_view.php', '2020-02-01 13:53:57'),
(252, 1, 'admin/language/ru-ru/extension/payment/pp_pro.php', '2020-02-01 13:53:57'),
(253, 1, 'admin/language/ru-ru/extension/payment/pp_standard.php', '2020-02-01 13:53:57'),
(254, 1, 'admin/language/ru-ru/extension/shipping/citylink.php', '2020-02-01 13:53:57'),
(255, 1, 'admin/language/ru-ru/extension/shipping/flat.php', '2020-02-01 13:53:57'),
(256, 1, 'admin/language/ru-ru/extension/shipping/free.php', '2020-02-01 13:53:57'),
(257, 1, 'admin/language/ru-ru/extension/shipping/item.php', '2020-02-01 13:53:57'),
(258, 1, 'admin/language/ru-ru/extension/shipping/pickup.php', '2020-02-01 13:53:57'),
(259, 1, 'admin/language/ru-ru/extension/shipping/weight.php', '2020-02-01 13:53:57'),
(260, 1, 'admin/language/ru-ru/extension/theme/theme_default.php', '2020-02-01 13:53:57'),
(261, 1, 'admin/language/ru-ru/extension/total/coupon.php', '2020-02-01 13:53:57'),
(262, 1, 'admin/language/ru-ru/extension/total/credit.php', '2020-02-01 13:53:57'),
(263, 1, 'admin/language/ru-ru/extension/total/handling.php', '2020-02-01 13:53:57'),
(264, 1, 'admin/language/ru-ru/extension/total/low_order_fee.php', '2020-02-01 13:53:57'),
(265, 1, 'admin/language/ru-ru/extension/total/reward.php', '2020-02-01 13:53:57'),
(266, 1, 'admin/language/ru-ru/extension/total/shipping.php', '2020-02-01 13:53:57'),
(267, 1, 'admin/language/ru-ru/extension/total/sub_total.php', '2020-02-01 13:53:57'),
(268, 1, 'admin/language/ru-ru/extension/total/tax.php', '2020-02-01 13:53:57'),
(269, 1, 'admin/language/ru-ru/extension/total/total.php', '2020-02-01 13:53:57'),
(270, 1, 'admin/language/ru-ru/extension/total/voucher.php', '2020-02-01 13:53:57'),
(271, 1, 'catalog/language/ru-ru/extension/captcha/basic_captcha.php', '2020-02-01 13:53:57'),
(272, 1, 'catalog/language/ru-ru/extension/captcha/google_captcha.php', '2020-02-01 13:53:57'),
(273, 1, 'catalog/language/ru-ru/extension/module/account.php', '2020-02-01 13:53:57'),
(274, 1, 'catalog/language/ru-ru/extension/module/affiliate.php', '2020-02-01 13:53:57'),
(275, 1, 'catalog/language/ru-ru/extension/module/bestseller.php', '2020-02-01 13:53:57'),
(276, 1, 'catalog/language/ru-ru/extension/module/blogger.php', '2020-02-01 13:53:57'),
(277, 1, 'catalog/language/ru-ru/extension/module/carousel.php', '2020-02-01 13:53:57'),
(278, 1, 'catalog/language/ru-ru/extension/module/category.php', '2020-02-01 13:53:57'),
(279, 1, 'catalog/language/ru-ru/extension/module/category_tab.php', '2020-02-01 13:53:57'),
(280, 1, 'catalog/language/ru-ru/extension/module/codezeeltabs.php', '2020-02-01 13:53:57'),
(281, 1, 'catalog/language/ru-ru/extension/module/divido_calculator.php', '2020-02-01 13:53:57'),
(282, 1, 'catalog/language/ru-ru/extension/module/featured.php', '2020-02-01 13:53:57'),
(283, 1, 'catalog/language/ru-ru/extension/module/filter.php', '2020-02-01 13:53:57'),
(284, 1, 'catalog/language/ru-ru/extension/module/google_hangouts.php', '2020-02-01 13:53:57'),
(285, 1, 'catalog/language/ru-ru/extension/module/information.php', '2020-02-01 13:53:57'),
(286, 1, 'catalog/language/ru-ru/extension/module/latest.php', '2020-02-01 13:53:57'),
(287, 1, 'catalog/language/ru-ru/extension/module/laybuy_layout.php', '2020-02-01 13:53:57'),
(288, 1, 'catalog/language/ru-ru/extension/module/newsletter.php', '2020-02-01 13:53:57'),
(289, 1, 'catalog/language/ru-ru/extension/module/special.php', '2020-02-01 13:53:57'),
(290, 1, 'catalog/language/ru-ru/extension/module/store.php', '2020-02-01 13:53:57'),
(291, 1, 'catalog/language/ru-ru/extension/payment/bank_transfer.php', '2020-02-01 13:53:57'),
(292, 1, 'catalog/language/ru-ru/extension/payment/cheque.php', '2020-02-01 13:53:57'),
(293, 1, 'catalog/language/ru-ru/extension/payment/cod.php', '2020-02-01 13:53:57'),
(294, 1, 'catalog/language/ru-ru/extension/payment/free_checkout.php', '2020-02-01 13:53:57'),
(295, 1, 'catalog/language/ru-ru/extension/payment/liqpay.php', '2020-02-01 13:53:57'),
(296, 1, 'catalog/language/ru-ru/extension/payment/moneybookers.php', '2020-02-01 13:53:57'),
(297, 1, 'catalog/language/ru-ru/extension/payment/pp_express.php', '2020-02-01 13:53:57'),
(298, 1, 'catalog/language/ru-ru/extension/payment/pp_pro.php', '2020-02-01 13:53:57'),
(299, 1, 'catalog/language/ru-ru/extension/payment/pp_standard.php', '2020-02-01 13:53:57'),
(300, 1, 'catalog/language/ru-ru/extension/recurring/pp_express.php', '2020-02-01 13:53:57'),
(301, 1, 'catalog/language/ru-ru/extension/shipping/citylink.php', '2020-02-01 13:53:57'),
(302, 1, 'catalog/language/ru-ru/extension/shipping/flat.php', '2020-02-01 13:53:57'),
(303, 1, 'catalog/language/ru-ru/extension/shipping/free.php', '2020-02-01 13:53:57'),
(304, 1, 'catalog/language/ru-ru/extension/shipping/item.php', '2020-02-01 13:53:57'),
(305, 1, 'catalog/language/ru-ru/extension/shipping/pickup.php', '2020-02-01 13:53:57'),
(306, 1, 'catalog/language/ru-ru/extension/shipping/weight.php', '2020-02-01 13:53:57'),
(307, 1, 'catalog/language/ru-ru/extension/total/coupon.php', '2020-02-01 13:53:57'),
(308, 1, 'catalog/language/ru-ru/extension/total/credit.php', '2020-02-01 13:53:57'),
(309, 1, 'catalog/language/ru-ru/extension/total/handling.php', '2020-02-01 13:53:57'),
(310, 1, 'catalog/language/ru-ru/extension/total/low_order_fee.php', '2020-02-01 13:53:57'),
(311, 1, 'catalog/language/ru-ru/extension/total/reward.php', '2020-02-01 13:53:57'),
(312, 1, 'catalog/language/ru-ru/extension/total/shipping.php', '2020-02-01 13:53:57'),
(313, 1, 'catalog/language/ru-ru/extension/total/sub_total.php', '2020-02-01 13:53:57'),
(314, 1, 'catalog/language/ru-ru/extension/total/total.php', '2020-02-01 13:53:57'),
(315, 1, 'catalog/language/ru-ru/extension/total/voucher.php', '2020-02-01 13:53:57'),
(316, 2, 'system/library/export_import', '2021-04-20 20:18:28'),
(317, 2, 'admin/controller/extension/export_import.php', '2021-04-20 20:18:28'),
(318, 2, 'admin/model/extension/export_import.php', '2021-04-20 20:18:28'),
(319, 2, 'admin/view/image/export-import', '2021-04-20 20:18:28'),
(320, 2, 'admin/view/stylesheet/export_import.css', '2021-04-20 20:18:28'),
(321, 2, 'system/library/export_import/Classes', '2021-04-20 20:18:28'),
(322, 2, 'admin/language/en-gb/extension/export_import.php', '2021-04-20 20:18:28'),
(323, 2, 'admin/language/ru-ru/extension/export_import.php', '2021-04-20 20:18:28'),
(324, 2, 'admin/view/image/export-import/loading.gif', '2021-04-20 20:18:28'),
(325, 2, 'admin/view/template/extension/export_import.twig', '2021-04-20 20:18:28'),
(326, 2, 'system/library/export_import/Classes/PHPExcel', '2021-04-20 20:18:28'),
(327, 2, 'system/library/export_import/Classes/PHPExcel.php', '2021-04-20 20:18:28'),
(328, 2, 'system/library/export_import/Classes/PHPExcel/Autoloader.php', '2021-04-20 20:18:28'),
(329, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage', '2021-04-20 20:18:28'),
(330, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php', '2021-04-20 20:18:28'),
(331, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine', '2021-04-20 20:18:28'),
(332, 2, 'system/library/export_import/Classes/PHPExcel/Calculation', '2021-04-20 20:18:28'),
(333, 2, 'system/library/export_import/Classes/PHPExcel/Calculation.php', '2021-04-20 20:18:28'),
(334, 2, 'system/library/export_import/Classes/PHPExcel/Cell', '2021-04-20 20:18:28'),
(335, 2, 'system/library/export_import/Classes/PHPExcel/Cell.php', '2021-04-20 20:18:28'),
(336, 2, 'system/library/export_import/Classes/PHPExcel/Chart', '2021-04-20 20:18:28'),
(337, 2, 'system/library/export_import/Classes/PHPExcel/Chart.php', '2021-04-20 20:18:28'),
(338, 2, 'system/library/export_import/Classes/PHPExcel/Comment.php', '2021-04-20 20:18:28'),
(339, 2, 'system/library/export_import/Classes/PHPExcel/DocumentProperties.php', '2021-04-20 20:18:28'),
(340, 2, 'system/library/export_import/Classes/PHPExcel/DocumentSecurity.php', '2021-04-20 20:18:28'),
(341, 2, 'system/library/export_import/Classes/PHPExcel/Exception.php', '2021-04-20 20:18:28'),
(342, 2, 'system/library/export_import/Classes/PHPExcel/HashTable.php', '2021-04-20 20:18:28'),
(343, 2, 'system/library/export_import/Classes/PHPExcel/Helper', '2021-04-20 20:18:28'),
(344, 2, 'system/library/export_import/Classes/PHPExcel/IComparable.php', '2021-04-20 20:18:28'),
(345, 2, 'system/library/export_import/Classes/PHPExcel/IOFactory.php', '2021-04-20 20:18:28'),
(346, 2, 'system/library/export_import/Classes/PHPExcel/NamedRange.php', '2021-04-20 20:18:28'),
(347, 2, 'system/library/export_import/Classes/PHPExcel/Reader', '2021-04-20 20:18:28'),
(348, 2, 'system/library/export_import/Classes/PHPExcel/ReferenceHelper.php', '2021-04-20 20:18:28'),
(349, 2, 'system/library/export_import/Classes/PHPExcel/RichText', '2021-04-20 20:18:28'),
(350, 2, 'system/library/export_import/Classes/PHPExcel/RichText.php', '2021-04-20 20:18:28'),
(351, 2, 'system/library/export_import/Classes/PHPExcel/Settings.php', '2021-04-20 20:18:28'),
(352, 2, 'system/library/export_import/Classes/PHPExcel/Shared', '2021-04-20 20:18:28'),
(353, 2, 'system/library/export_import/Classes/PHPExcel/Style', '2021-04-20 20:18:28'),
(354, 2, 'system/library/export_import/Classes/PHPExcel/Style.php', '2021-04-20 20:18:28'),
(355, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet', '2021-04-20 20:18:28'),
(356, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet.php', '2021-04-20 20:18:28'),
(357, 2, 'system/library/export_import/Classes/PHPExcel/WorksheetIterator.php', '2021-04-20 20:18:28'),
(358, 2, 'system/library/export_import/Classes/PHPExcel/Writer', '2021-04-20 20:18:28'),
(359, 2, 'system/library/export_import/Classes/PHPExcel/locale', '2021-04-20 20:18:28'),
(360, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php', '2021-04-20 20:18:28'),
(361, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php', '2021-04-20 20:18:28'),
(362, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php', '2021-04-20 20:18:28'),
(363, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php', '2021-04-20 20:18:28'),
(364, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php', '2021-04-20 20:18:28'),
(365, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php', '2021-04-20 20:18:28'),
(366, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php', '2021-04-20 20:18:28'),
(367, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php', '2021-04-20 20:18:28'),
(368, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php', '2021-04-20 20:18:28'),
(369, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php', '2021-04-20 20:18:28'),
(370, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php', '2021-04-20 20:18:28'),
(371, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php', '2021-04-20 20:18:28'),
(372, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php', '2021-04-20 20:18:28'),
(373, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php', '2021-04-20 20:18:28'),
(374, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php', '2021-04-20 20:18:28'),
(375, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Database.php', '2021-04-20 20:18:28'),
(376, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php', '2021-04-20 20:18:29'),
(377, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php', '2021-04-20 20:18:29'),
(378, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Exception.php', '2021-04-20 20:18:29'),
(379, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php', '2021-04-20 20:18:29'),
(380, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Financial.php', '2021-04-20 20:18:29'),
(381, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php', '2021-04-20 20:18:29'),
(382, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php', '2021-04-20 20:18:29'),
(383, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Function.php', '2021-04-20 20:18:29'),
(384, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Functions.php', '2021-04-20 20:18:29'),
(385, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Logical.php', '2021-04-20 20:18:29'),
(386, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php', '2021-04-20 20:18:29'),
(387, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php', '2021-04-20 20:18:29'),
(388, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php', '2021-04-20 20:18:29'),
(389, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/TextData.php', '2021-04-20 20:18:29'),
(390, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Token', '2021-04-20 20:18:29'),
(391, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt', '2021-04-20 20:18:29'),
(392, 2, 'system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php', '2021-04-20 20:18:29'),
(393, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DataType.php', '2021-04-20 20:18:29'),
(394, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php', '2021-04-20 20:18:29'),
(395, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php', '2021-04-20 20:18:29'),
(396, 2, 'system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php', '2021-04-20 20:18:29'),
(397, 2, 'system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php', '2021-04-20 20:18:29'),
(398, 2, 'system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php', '2021-04-20 20:18:29'),
(399, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Axis.php', '2021-04-20 20:18:29'),
(400, 2, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php', '2021-04-20 20:18:29'),
(401, 2, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php', '2021-04-20 20:18:29'),
(402, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Exception.php', '2021-04-20 20:18:29'),
(403, 2, 'system/library/export_import/Classes/PHPExcel/Chart/GridLines.php', '2021-04-20 20:18:29'),
(404, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Layout.php', '2021-04-20 20:18:29'),
(405, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Legend.php', '2021-04-20 20:18:29'),
(406, 2, 'system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php', '2021-04-20 20:18:29'),
(407, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Properties.php', '2021-04-20 20:18:29'),
(408, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer', '2021-04-20 20:18:29'),
(409, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Title.php', '2021-04-20 20:18:29'),
(410, 2, 'system/library/export_import/Classes/PHPExcel/Helper/HTML.php', '2021-04-20 20:18:29'),
(411, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Abstract.php', '2021-04-20 20:18:29'),
(412, 2, 'system/library/export_import/Classes/PHPExcel/Reader/CSV.php', '2021-04-20 20:18:29'),
(413, 2, 'system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php', '2021-04-20 20:18:29'),
(414, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php', '2021-04-20 20:18:29'),
(415, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007', '2021-04-20 20:18:29'),
(416, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php', '2021-04-20 20:18:29'),
(417, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5', '2021-04-20 20:18:29'),
(418, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5.php', '2021-04-20 20:18:29'),
(419, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Exception.php', '2021-04-20 20:18:29'),
(420, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php', '2021-04-20 20:18:29'),
(421, 2, 'system/library/export_import/Classes/PHPExcel/Reader/HTML.php', '2021-04-20 20:18:29'),
(422, 2, 'system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php', '2021-04-20 20:18:29'),
(423, 2, 'system/library/export_import/Classes/PHPExcel/Reader/IReader.php', '2021-04-20 20:18:29'),
(424, 2, 'system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php', '2021-04-20 20:18:29'),
(425, 2, 'system/library/export_import/Classes/PHPExcel/Reader/SYLK.php', '2021-04-20 20:18:29'),
(426, 2, 'system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php', '2021-04-20 20:18:29'),
(427, 2, 'system/library/export_import/Classes/PHPExcel/RichText/Run.php', '2021-04-20 20:18:29'),
(428, 2, 'system/library/export_import/Classes/PHPExcel/RichText/TextElement.php', '2021-04-20 20:18:29'),
(429, 2, 'system/library/export_import/Classes/PHPExcel/Shared/CodePage.php', '2021-04-20 20:18:29'),
(430, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Date.php', '2021-04-20 20:18:29'),
(431, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Drawing.php', '2021-04-20 20:18:29'),
(432, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher', '2021-04-20 20:18:29'),
(433, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher.php', '2021-04-20 20:18:29'),
(434, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Excel5.php', '2021-04-20 20:18:29'),
(435, 2, 'system/library/export_import/Classes/PHPExcel/Shared/File.php', '2021-04-20 20:18:29'),
(436, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Font.php', '2021-04-20 20:18:29'),
(437, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA', '2021-04-20 20:18:29'),
(438, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE', '2021-04-20 20:18:29'),
(439, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE.php', '2021-04-20 20:18:29'),
(440, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLERead.php', '2021-04-20 20:18:29'),
(441, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip', '2021-04-20 20:18:29'),
(442, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php', '2021-04-20 20:18:29'),
(443, 2, 'system/library/export_import/Classes/PHPExcel/Shared/String.php', '2021-04-20 20:18:29'),
(444, 2, 'system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php', '2021-04-20 20:18:29'),
(445, 2, 'system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php', '2021-04-20 20:18:29'),
(446, 2, 'system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php', '2021-04-20 20:18:29'),
(447, 2, 'system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php', '2021-04-20 20:18:29'),
(448, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend', '2021-04-20 20:18:29'),
(449, 2, 'system/library/export_import/Classes/PHPExcel/Style/Alignment.php', '2021-04-20 20:18:29'),
(450, 2, 'system/library/export_import/Classes/PHPExcel/Style/Border.php', '2021-04-20 20:18:29'),
(451, 2, 'system/library/export_import/Classes/PHPExcel/Style/Borders.php', '2021-04-20 20:18:29'),
(452, 2, 'system/library/export_import/Classes/PHPExcel/Style/Color.php', '2021-04-20 20:18:29'),
(453, 2, 'system/library/export_import/Classes/PHPExcel/Style/Conditional.php', '2021-04-20 20:18:29'),
(454, 2, 'system/library/export_import/Classes/PHPExcel/Style/Fill.php', '2021-04-20 20:18:29'),
(455, 2, 'system/library/export_import/Classes/PHPExcel/Style/Font.php', '2021-04-20 20:18:29'),
(456, 2, 'system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php', '2021-04-20 20:18:29'),
(457, 2, 'system/library/export_import/Classes/PHPExcel/Style/Protection.php', '2021-04-20 20:18:29'),
(458, 2, 'system/library/export_import/Classes/PHPExcel/Style/Supervisor.php', '2021-04-20 20:18:29'),
(459, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter', '2021-04-20 20:18:29'),
(460, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php', '2021-04-20 20:18:29'),
(461, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php', '2021-04-20 20:18:29'),
(462, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php', '2021-04-20 20:18:29'),
(463, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Column.php', '2021-04-20 20:18:29'),
(464, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php', '2021-04-20 20:18:29'),
(465, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php', '2021-04-20 20:18:29'),
(466, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php', '2021-04-20 20:18:29'),
(467, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php', '2021-04-20 20:18:29'),
(468, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing', '2021-04-20 20:18:29'),
(469, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php', '2021-04-20 20:18:29'),
(470, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php', '2021-04-20 20:18:29'),
(471, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php', '2021-04-20 20:18:29'),
(472, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php', '2021-04-20 20:18:29'),
(473, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php', '2021-04-20 20:18:29'),
(474, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php', '2021-04-20 20:18:29'),
(475, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php', '2021-04-20 20:18:29'),
(476, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Row.php', '2021-04-20 20:18:29'),
(477, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php', '2021-04-20 20:18:29'),
(478, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php', '2021-04-20 20:18:29'),
(479, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php', '2021-04-20 20:18:29'),
(480, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php', '2021-04-20 20:18:29'),
(481, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Abstract.php', '2021-04-20 20:18:29'),
(482, 2, 'system/library/export_import/Classes/PHPExcel/Writer/CSV.php', '2021-04-20 20:18:29'),
(483, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007', '2021-04-20 20:18:29'),
(484, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php', '2021-04-20 20:18:29'),
(485, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5', '2021-04-20 20:18:29'),
(486, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5.php', '2021-04-20 20:18:29'),
(487, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Exception.php', '2021-04-20 20:18:29'),
(488, 2, 'system/library/export_import/Classes/PHPExcel/Writer/HTML.php', '2021-04-20 20:18:29'),
(489, 2, 'system/library/export_import/Classes/PHPExcel/Writer/IWriter.php', '2021-04-20 20:18:29'),
(490, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument', '2021-04-20 20:18:29'),
(491, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php', '2021-04-20 20:18:29'),
(492, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF', '2021-04-20 20:18:29'),
(493, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF.php', '2021-04-20 20:18:29'),
(494, 2, 'system/library/export_import/Classes/PHPExcel/locale/bg', '2021-04-20 20:18:29'),
(495, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs', '2021-04-20 20:18:29'),
(496, 2, 'system/library/export_import/Classes/PHPExcel/locale/da', '2021-04-20 20:18:29'),
(497, 2, 'system/library/export_import/Classes/PHPExcel/locale/de', '2021-04-20 20:18:29'),
(498, 2, 'system/library/export_import/Classes/PHPExcel/locale/en', '2021-04-20 20:18:29'),
(499, 2, 'system/library/export_import/Classes/PHPExcel/locale/es', '2021-04-20 20:18:29'),
(500, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi', '2021-04-20 20:18:29'),
(501, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr', '2021-04-20 20:18:29'),
(502, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu', '2021-04-20 20:18:29'),
(503, 2, 'system/library/export_import/Classes/PHPExcel/locale/it', '2021-04-20 20:18:29'),
(504, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl', '2021-04-20 20:18:29'),
(505, 2, 'system/library/export_import/Classes/PHPExcel/locale/no', '2021-04-20 20:18:29'),
(506, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl', '2021-04-20 20:18:29'),
(507, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt', '2021-04-20 20:18:29'),
(508, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru', '2021-04-20 20:18:29'),
(509, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv', '2021-04-20 20:18:29'),
(510, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr', '2021-04-20 20:18:29'),
(511, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php', '2021-04-20 20:18:29'),
(512, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt', '2021-04-20 20:18:29'),
(513, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php', '2021-04-20 20:18:29'),
(514, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php', '2021-04-20 20:18:29'),
(515, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php', '2021-04-20 20:18:29'),
(516, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color', '2021-04-20 20:18:29'),
(517, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php', '2021-04-20 20:18:29'),
(518, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php', '2021-04-20 20:18:29'),
(519, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php', '2021-04-20 20:18:29'),
(520, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php', '2021-04-20 20:18:29'),
(521, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php', '2021-04-20 20:18:29'),
(522, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style', '2021-04-20 20:18:29'),
(523, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer', '2021-04-20 20:18:29'),
(524, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php', '2021-04-20 20:18:29'),
(525, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer', '2021-04-20 20:18:29'),
(526, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php', '2021-04-20 20:18:29'),
(527, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT', '2021-04-20 20:18:29'),
(528, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php', '2021-04-20 20:18:29'),
(529, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php', '2021-04-20 20:18:29'),
(530, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php', '2021-04-20 20:18:29'),
(531, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php', '2021-04-20 20:18:29'),
(532, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php', '2021-04-20 20:18:29'),
(533, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php', '2021-04-20 20:18:29'),
(534, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils', '2021-04-20 20:18:29'),
(535, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php', '2021-04-20 20:18:29'),
(536, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS', '2021-04-20 20:18:29'),
(537, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php', '2021-04-20 20:18:29'),
(538, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt', '2021-04-20 20:18:29'),
(539, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php', '2021-04-20 20:18:29'),
(540, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt', '2021-04-20 20:18:29'),
(541, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php', '2021-04-20 20:18:29'),
(542, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php', '2021-04-20 20:18:29'),
(543, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php', '2021-04-20 20:18:29'),
(544, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php', '2021-04-20 20:18:29'),
(545, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php', '2021-04-20 20:18:29'),
(546, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php', '2021-04-20 20:18:29'),
(547, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php', '2021-04-20 20:18:29'),
(548, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column', '2021-04-20 20:18:29'),
(549, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php', '2021-04-20 20:18:29'),
(550, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php', '2021-04-20 20:18:29'),
(551, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php', '2021-04-20 20:18:29'),
(552, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php', '2021-04-20 20:18:29'),
(553, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php', '2021-04-20 20:18:29'),
(554, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php', '2021-04-20 20:18:29'),
(555, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php', '2021-04-20 20:18:29'),
(556, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php', '2021-04-20 20:18:29'),
(557, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php', '2021-04-20 20:18:29'),
(558, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php', '2021-04-20 20:18:29'),
(559, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php', '2021-04-20 20:18:29'),
(560, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php', '2021-04-20 20:18:29'),
(561, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php', '2021-04-20 20:18:29'),
(562, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php', '2021-04-20 20:18:29'),
(563, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php', '2021-04-20 20:18:29'),
(564, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php', '2021-04-20 20:18:29');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(565, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php', '2021-04-20 20:18:29'),
(566, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php', '2021-04-20 20:18:29'),
(567, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php', '2021-04-20 20:18:29'),
(568, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php', '2021-04-20 20:18:29'),
(569, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php', '2021-04-20 20:18:29'),
(570, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php', '2021-04-20 20:18:29'),
(571, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php', '2021-04-20 20:18:29'),
(572, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell', '2021-04-20 20:18:29'),
(573, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php', '2021-04-20 20:18:29'),
(574, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php', '2021-04-20 20:18:29'),
(575, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php', '2021-04-20 20:18:29'),
(576, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php', '2021-04-20 20:18:29'),
(577, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php', '2021-04-20 20:18:29'),
(578, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php', '2021-04-20 20:18:29'),
(579, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php', '2021-04-20 20:18:29'),
(580, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php', '2021-04-20 20:18:29'),
(581, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php', '2021-04-20 20:18:29'),
(582, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php', '2021-04-20 20:18:29'),
(583, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php', '2021-04-20 20:18:29'),
(584, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php', '2021-04-20 20:18:29'),
(585, 2, 'system/library/export_import/Classes/PHPExcel/locale/bg/config', '2021-04-20 20:18:29'),
(586, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs/config', '2021-04-20 20:18:29'),
(587, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs/functions', '2021-04-20 20:18:29'),
(588, 2, 'system/library/export_import/Classes/PHPExcel/locale/da/config', '2021-04-20 20:18:29'),
(589, 2, 'system/library/export_import/Classes/PHPExcel/locale/da/functions', '2021-04-20 20:18:29'),
(590, 2, 'system/library/export_import/Classes/PHPExcel/locale/de/config', '2021-04-20 20:18:29'),
(591, 2, 'system/library/export_import/Classes/PHPExcel/locale/de/functions', '2021-04-20 20:18:29'),
(592, 2, 'system/library/export_import/Classes/PHPExcel/locale/en/uk', '2021-04-20 20:18:29'),
(593, 2, 'system/library/export_import/Classes/PHPExcel/locale/es/config', '2021-04-20 20:18:29'),
(594, 2, 'system/library/export_import/Classes/PHPExcel/locale/es/functions', '2021-04-20 20:18:29'),
(595, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi/config', '2021-04-20 20:18:29'),
(596, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi/functions', '2021-04-20 20:18:29'),
(597, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr/config', '2021-04-20 20:18:29'),
(598, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr/functions', '2021-04-20 20:18:29'),
(599, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu/config', '2021-04-20 20:18:29'),
(600, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu/functions', '2021-04-20 20:18:29'),
(601, 2, 'system/library/export_import/Classes/PHPExcel/locale/it/config', '2021-04-20 20:18:29'),
(602, 2, 'system/library/export_import/Classes/PHPExcel/locale/it/functions', '2021-04-20 20:18:29'),
(603, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl/config', '2021-04-20 20:18:29'),
(604, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl/functions', '2021-04-20 20:18:29'),
(605, 2, 'system/library/export_import/Classes/PHPExcel/locale/no/config', '2021-04-20 20:18:29'),
(606, 2, 'system/library/export_import/Classes/PHPExcel/locale/no/functions', '2021-04-20 20:18:29'),
(607, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl/config', '2021-04-20 20:18:29'),
(608, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl/functions', '2021-04-20 20:18:29'),
(609, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br', '2021-04-20 20:18:29'),
(610, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/config', '2021-04-20 20:18:29'),
(611, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/functions', '2021-04-20 20:18:29'),
(612, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru/config', '2021-04-20 20:18:29'),
(613, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru/functions', '2021-04-20 20:18:29'),
(614, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv/config', '2021-04-20 20:18:29'),
(615, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv/functions', '2021-04-20 20:18:29'),
(616, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr/config', '2021-04-20 20:18:29'),
(617, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr/functions', '2021-04-20 20:18:29'),
(618, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php', '2021-04-20 20:18:29'),
(619, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php', '2021-04-20 20:18:29'),
(620, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php', '2021-04-20 20:18:29'),
(621, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php', '2021-04-20 20:18:29'),
(622, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php', '2021-04-20 20:18:29'),
(623, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer', '2021-04-20 20:18:29'),
(624, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php', '2021-04-20 20:18:29'),
(625, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer', '2021-04-20 20:18:29'),
(626, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php', '2021-04-20 20:18:29'),
(627, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php', '2021-04-20 20:18:29'),
(628, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php', '2021-04-20 20:18:29'),
(629, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php', '2021-04-20 20:18:29'),
(630, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php', '2021-04-20 20:18:29'),
(631, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php', '2021-04-20 20:18:29'),
(632, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php', '2021-04-20 20:18:29'),
(633, 2, 'system/library/export_import/Classes/PHPExcel/locale/en/uk/config', '2021-04-20 20:18:29'),
(634, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/config', '2021-04-20 20:18:29'),
(635, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/functions', '2021-04-20 20:18:29'),
(636, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php', '2021-04-20 20:18:29'),
(637, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE', '2021-04-20 20:18:29'),
(638, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php', '2021-04-20 20:18:29'),
(639, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php', '2021-04-20 20:18:29'),
(640, 3, 'admin/view/javascript/supermenu', '2021-04-20 20:19:22'),
(641, 3, 'catalog/view/javascript/supermenu', '2021-04-20 20:19:22'),
(642, 3, 'admin/controller/extension/module/supermenu.php', '2021-04-20 20:19:22'),
(643, 3, 'admin/view/javascript/supermenu/jquery.minicolors.css', '2021-04-20 20:19:22'),
(644, 3, 'admin/view/javascript/supermenu/jquery.minicolors.min.js', '2021-04-20 20:19:22'),
(645, 3, 'admin/view/javascript/supermenu/jquery.minicolors.png', '2021-04-20 20:19:22'),
(646, 3, 'catalog/controller/extension/module/supermenu.php', '2021-04-20 20:19:22'),
(647, 3, 'catalog/view/javascript/supermenu/home_icon.png', '2021-04-20 20:19:22'),
(648, 3, 'catalog/view/javascript/supermenu/home_iconh.png', '2021-04-20 20:19:22'),
(649, 3, 'catalog/view/javascript/supermenu/jquery.hoverIntent.minified.js', '2021-04-20 20:19:22'),
(650, 3, 'catalog/view/javascript/supermenu/mkidb.png', '2021-04-20 20:19:22'),
(651, 3, 'catalog/view/javascript/supermenu/mkidr.png', '2021-04-20 20:19:22'),
(652, 3, 'catalog/view/javascript/supermenu/mkidrr.png', '2021-04-20 20:19:22'),
(653, 3, 'catalog/view/javascript/supermenu/supermenu-responsive-rtl.js', '2021-04-20 20:19:22'),
(654, 3, 'catalog/view/javascript/supermenu/supermenu-responsive.js', '2021-04-20 20:19:22'),
(655, 3, 'catalog/view/javascript/supermenu/supermenu-rtl.css', '2021-04-20 20:19:22'),
(656, 3, 'catalog/view/javascript/supermenu/supermenu.css', '2021-04-20 20:19:22'),
(657, 3, 'admin/language/en-gb/extension/module/supermenu.php', '2021-04-20 20:19:22'),
(658, 3, 'admin/language/ru-ru/extension/module/supermenu.php', '2021-04-20 20:19:22'),
(659, 3, 'admin/view/template/extension/module/supermenu.twig', '2021-04-20 20:19:22'),
(660, 3, 'catalog/language/en-gb/extension/module/supermenu.php', '2021-04-20 20:19:22'),
(661, 3, 'catalog/language/ru-ru/extension/module/supermenu.php', '2021-04-20 20:19:22'),
(662, 3, 'catalog/view/theme/default/template/extension/module/supermenu.twig', '2021-04-20 20:19:22'),
(663, 4, 'admin/controller/extension/module/webp.php', '2021-04-20 20:20:28'),
(664, 4, 'admin/language/en-gb/extension/module/webp.php', '2021-04-20 20:20:28'),
(665, 4, 'admin/language/ru-ru/extension/module/webp.php', '2021-04-20 20:20:28'),
(666, 4, 'admin/view/template/extension/module/webp.twig', '2021-04-20 20:20:28'),
(667, 5, 'admin/controller/extension/information', '2021-04-20 20:21:14'),
(668, 5, 'admin/model/extension/information', '2021-04-20 20:21:14'),
(669, 5, 'catalog/controller/extension/information', '2021-04-20 20:21:14'),
(670, 5, 'catalog/model/extension/information', '2021-04-20 20:21:14'),
(671, 5, 'catalog/view/javascript/optimblog.js', '2021-04-20 20:21:14'),
(672, 5, 'admin/controller/extension/extension/information.php', '2021-04-20 20:21:14'),
(673, 5, 'admin/controller/extension/information/optimblog.php', '2021-04-20 20:21:14'),
(674, 5, 'admin/language/en-gb/extension/information', '2021-04-20 20:21:14'),
(675, 5, 'admin/language/ru-ru/extension/information', '2021-04-20 20:21:14'),
(676, 5, 'admin/model/extension/information/optimblog.php', '2021-04-20 20:21:14'),
(677, 5, 'admin/view/template/extension/information', '2021-04-20 20:21:15'),
(678, 5, 'catalog/controller/extension/information/category.php', '2021-04-20 20:21:15'),
(679, 5, 'catalog/controller/extension/information/optimblog.php', '2021-04-20 20:21:15'),
(680, 5, 'catalog/language/en-gb/extension/information', '2021-04-20 20:21:15'),
(681, 5, 'catalog/language/en-gb/information/category.php', '2021-04-20 20:21:15'),
(682, 5, 'catalog/language/ru-ru/extension/information', '2021-04-20 20:21:15'),
(683, 5, 'catalog/language/ru-ru/information/category.php', '2021-04-20 20:21:15'),
(684, 5, 'catalog/model/extension/information/optimblog_category.php', '2021-04-20 20:21:15'),
(685, 5, 'catalog/model/extension/information/optimblog_information.php', '2021-04-20 20:21:15'),
(686, 5, 'catalog/model/extension/information/optimblog_product.php', '2021-04-20 20:21:15'),
(687, 5, 'catalog/model/extension/information/optimblog_review.php', '2021-04-20 20:21:15'),
(688, 5, 'admin/language/en-gb/extension/extension/information.php', '2021-04-20 20:21:15'),
(689, 5, 'admin/language/en-gb/extension/information/optimblog.php', '2021-04-20 20:21:15'),
(690, 5, 'admin/language/en-gb/extension/information/optimblog_category.php', '2021-04-20 20:21:15'),
(691, 5, 'admin/language/en-gb/extension/information/optimblog_customer_search.php', '2021-04-20 20:21:15'),
(692, 5, 'admin/language/en-gb/extension/information/optimblog_information.php', '2021-04-20 20:21:15'),
(693, 5, 'admin/language/en-gb/extension/information/optimblog_product.php', '2021-04-20 20:21:15'),
(694, 5, 'admin/language/en-gb/extension/information/optimblog_review.php', '2021-04-20 20:21:15'),
(695, 5, 'admin/language/ru-ru/extension/extension/information.php', '2021-04-20 20:21:15'),
(696, 5, 'admin/language/ru-ru/extension/information/optimblog.php', '2021-04-20 20:21:15'),
(697, 5, 'admin/language/ru-ru/extension/information/optimblog_category.php', '2021-04-20 20:21:15'),
(698, 5, 'admin/language/ru-ru/extension/information/optimblog_customer_search.php', '2021-04-20 20:21:15'),
(699, 5, 'admin/language/ru-ru/extension/information/optimblog_information.php', '2021-04-20 20:21:15'),
(700, 5, 'admin/language/ru-ru/extension/information/optimblog_product.php', '2021-04-20 20:21:15'),
(701, 5, 'admin/language/ru-ru/extension/information/optimblog_review.php', '2021-04-20 20:21:15'),
(702, 5, 'admin/view/template/extension/extension/information.twig', '2021-04-20 20:21:15'),
(703, 5, 'admin/view/template/extension/information/optimblog.twig', '2021-04-20 20:21:15'),
(704, 5, 'catalog/language/en-gb/extension/information/optimblog_information.php', '2021-04-20 20:21:15'),
(705, 5, 'catalog/language/en-gb/extension/information/optimblog_product.php', '2021-04-20 20:21:15'),
(706, 5, 'catalog/language/en-gb/extension/information/optimblog_review.php', '2021-04-20 20:21:15'),
(707, 5, 'catalog/language/ru-ru/extension/information/optimblog_information.php', '2021-04-20 20:21:15'),
(708, 5, 'catalog/language/ru-ru/extension/information/optimblog_product.php', '2021-04-20 20:21:15'),
(709, 5, 'catalog/language/ru-ru/extension/information/optimblog_review.php', '2021-04-20 20:21:15'),
(710, 5, 'catalog/view/theme/default/template/information/category.twig', '2021-04-20 20:21:15'),
(711, 7, 'system/library/sqllib.php', '2021-04-20 20:24:07'),
(712, 7, 'admin/model/extension/module', '2021-04-20 20:24:07'),
(713, 7, 'admin/view/image/brainyfilter', '2021-04-20 20:24:07'),
(714, 7, 'admin/view/javascript/bootstrap.colorpickersliders.min.js', '2021-04-20 20:24:07'),
(715, 7, 'admin/view/javascript/brainyfilter.js', '2021-04-20 20:24:07'),
(716, 7, 'admin/view/javascript/jquery.autocomplete.min.js', '2021-04-20 20:24:07'),
(717, 7, 'admin/view/javascript/jquery.fn.sortable.min.js', '2021-04-20 20:24:07'),
(718, 7, 'admin/view/javascript/tinycolor.js', '2021-04-20 20:24:07'),
(719, 7, 'admin/view/stylesheet/bootstrap.colorpickersliders.min.css', '2021-04-20 20:24:07'),
(720, 7, 'admin/view/stylesheet/brainyfilter.css', '2021-04-20 20:24:07'),
(721, 7, 'catalog/view/javascript/brainyfilter.js', '2021-04-20 20:24:07'),
(722, 7, 'catalog/view/javascript/jquery-ui.slider.min.js', '2021-04-20 20:24:07'),
(723, 7, 'catalog/view/javascript/jquery.ui.touch-punch.min.js', '2021-04-20 20:24:07'),
(724, 7, 'admin/controller/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(725, 7, 'admin/model/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(726, 7, 'admin/view/image/brainyfilter/bf-alert.png', '2021-04-20 20:24:07'),
(727, 7, 'admin/view/image/brainyfilter/bf-arrows.png', '2021-04-20 20:24:07'),
(728, 7, 'admin/view/image/brainyfilter/bf-move-arrows.png', '2021-04-20 20:24:07'),
(729, 7, 'admin/view/image/brainyfilter/bf-note.png', '2021-04-20 20:24:07'),
(730, 7, 'admin/view/image/brainyfilter/bf-update-cache.png', '2021-04-20 20:24:07'),
(731, 7, 'admin/view/image/brainyfilter/bf-update.png', '2021-04-20 20:24:07'),
(732, 7, 'admin/view/image/brainyfilter/info.png', '2021-04-20 20:24:07'),
(733, 7, 'admin/view/image/brainyfilter/menu-icons.png', '2021-04-20 20:24:07'),
(734, 7, 'admin/view/image/brainyfilter/plus.png', '2021-04-20 20:24:07'),
(735, 7, 'admin/view/image/brainyfilter/save-menu-sprite.png', '2021-04-20 20:24:07'),
(736, 7, 'admin/view/image/brainyfilter/sprite.png', '2021-04-20 20:24:07'),
(737, 7, 'catalog/controller/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(738, 7, 'catalog/model/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(739, 7, 'admin/language/en-gb/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(740, 7, 'admin/language/ru-ru/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(741, 7, 'admin/view/template/extension/module/brainyfilter.twig', '2021-04-20 20:24:07'),
(742, 7, 'admin/view/template/extension/module/brainyfilter_ocmod.twig', '2021-04-20 20:24:07'),
(743, 7, 'catalog/language/en-gb/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(744, 7, 'catalog/language/ru-ru/extension/module/brainyfilter.php', '2021-04-20 20:24:07'),
(745, 7, 'catalog/view/theme/default/image/brainyfilter', '2021-04-20 20:24:07'),
(746, 7, 'catalog/view/theme/default/stylesheet/brainyfilter.css', '2021-04-20 20:24:07'),
(747, 7, 'catalog/view/theme/default/stylesheet/jquery-ui.slider.min.css', '2021-04-20 20:24:07'),
(748, 7, 'catalog/view/theme/default/image/brainyfilter/bf-hl-arrows.png', '2021-04-20 20:24:07'),
(749, 7, 'catalog/view/theme/default/image/brainyfilter/bf-hl-arrows@2x.png', '2021-04-20 20:24:07'),
(750, 7, 'catalog/view/theme/default/image/brainyfilter/loading-big.gif', '2021-04-20 20:24:07'),
(751, 7, 'catalog/view/theme/default/image/brainyfilter/loading-big@2x.gif', '2021-04-20 20:24:07'),
(752, 7, 'catalog/view/theme/default/image/brainyfilter/loading.gif', '2021-04-20 20:24:08'),
(753, 7, 'catalog/view/theme/default/image/brainyfilter/loading@2x.gif', '2021-04-20 20:24:08'),
(754, 7, 'catalog/view/theme/default/image/brainyfilter/responsive-layout-icons.png', '2021-04-20 20:24:08'),
(755, 7, 'catalog/view/theme/default/image/brainyfilter/responsive-layout-icons@2x.png', '2021-04-20 20:24:08'),
(756, 7, 'catalog/view/theme/default/image/brainyfilter/search.png', '2021-04-20 20:24:08'),
(757, 7, 'catalog/view/theme/default/image/brainyfilter/search@2x.png', '2021-04-20 20:24:08'),
(758, 7, 'catalog/view/theme/default/image/brainyfilter/showmore-cover.png', '2021-04-20 20:24:08'),
(759, 7, 'catalog/view/theme/default/image/brainyfilter/sprite.png', '2021-04-20 20:24:08'),
(760, 7, 'catalog/view/theme/default/image/brainyfilter/sprite@2x.png', '2021-04-20 20:24:08'),
(761, 7, 'catalog/view/theme/default/image/brainyfilter/stars-1.png', '2021-04-20 20:24:08'),
(762, 7, 'catalog/view/theme/default/image/brainyfilter/stars-1@2x.png', '2021-04-20 20:24:08'),
(763, 7, 'catalog/view/theme/default/image/brainyfilter/stars-2.png', '2021-04-20 20:24:08'),
(764, 7, 'catalog/view/theme/default/image/brainyfilter/stars-2@2x.png', '2021-04-20 20:24:08'),
(765, 7, 'catalog/view/theme/default/image/brainyfilter/stars-3.png', '2021-04-20 20:24:08'),
(766, 7, 'catalog/view/theme/default/image/brainyfilter/stars-3@2x.png', '2021-04-20 20:24:08'),
(767, 7, 'catalog/view/theme/default/image/brainyfilter/stars-4.png', '2021-04-20 20:24:08'),
(768, 7, 'catalog/view/theme/default/image/brainyfilter/stars-4@2x.png', '2021-04-20 20:24:08'),
(769, 7, 'catalog/view/theme/default/image/brainyfilter/stars-5.png', '2021-04-20 20:24:08'),
(770, 7, 'catalog/view/theme/default/image/brainyfilter/stars-5@2x.png', '2021-04-20 20:24:08'),
(771, 7, 'catalog/view/theme/default/image/brainyfilter/subcategory-arrow.png', '2021-04-20 20:24:08'),
(772, 7, 'catalog/view/theme/default/template/extension/module/brainyfilter.twig', '2021-04-20 20:24:08');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(4, 1, 0),
(3, 1, 0),
(2, 1, 0),
(1, 1, 1),
(7, 2, 3),
(6, 2, 2),
(5, 2, 1),
(9, 3, 1),
(10, 3, 2),
(11, 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(3, 1, 1, 'Yellow'),
(2, 1, 1, 'Red'),
(1, 1, 1, 'Blue'),
(6, 1, 2, 'Medium'),
(5, 1, 2, 'Small'),
(9, 1, 3, '5'),
(10, 1, 3, '10'),
(11, 1, 3, '15'),
(7, 1, 2, 'Large'),
(4, 1, 1, 'Green'),
(3, 2, 1, 'Yellow'),
(2, 2, 1, 'Red'),
(1, 2, 1, 'Blue'),
(6, 2, 2, 'Medium'),
(5, 2, 2, 'Small'),
(9, 2, 3, '5'),
(10, 2, 3, '10'),
(11, 2, 3, '15'),
(7, 2, 2, 'Large'),
(4, 2, 1, 'Green'),
(3, 3, 1, 'Yellow'),
(2, 3, 1, 'Red'),
(1, 3, 1, 'Blue'),
(6, 3, 2, 'Medium'),
(5, 3, 2, 'Small'),
(9, 3, 3, '5'),
(10, 3, 3, '10'),
(11, 3, 3, '15'),
(7, 3, 2, 'Large'),
(4, 3, 1, 'Green');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Color'),
(2, 1, 'Size'),
(3, 1, 'Weight'),
(1, 2, 'Color'),
(2, 2, 'Size'),
(3, 2, 'Weight'),
(1, 3, 'Color'),
(2, 3, 'Size'),
(3, 3, 'Weight');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'About Us', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(4, 3, 'О Нас', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Delivery Information', '', ''),
(6, 3, 'Гарантия товара', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Delivery Information', '', ''),
(3, 3, 'Политика конфиденциальности', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(5, 3, 'Условия покупки', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(4, 1, 'About Us', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;100% Fully Responsive&lt;/h3&gt;\r\n&lt;div class=&quot;image1&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;These days Mobile is the handiest device to access internet. Hence your website must be mobile accessible as compatibility.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Cross Browser Compatibility&lt;/h3&gt;\r\n&lt;div class=&quot;image2&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Cross-browser means web application works with all versions of all browsers. To claim cross-browser compatibility, the website is nowadays expected to support browsers.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;Dedicated support team&lt;/h3&gt;\r\n&lt;div class=&quot;image3&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Our support team guarantees to respond you within 24 working hours. We will process tickets and respond you to in the queue order.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;aboutus&quot;&gt;\r\n&lt;h3&gt;High Quality Products&lt;/h3&gt;\r\n&lt;div class=&quot;image4&quot;&gt; &lt;/div&gt;\r\n&lt;div class=&quot;about-content&quot;&gt;Website design can do wonders for your traffic. Giving a fresh look to your website makes your visitors think that you care for them and are ready to change with time.&lt;/div&gt;\r\n&lt;/div&gt;', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(3, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Arabic', 'ar', 'ar', '', '', 2, 1),
(3, 'Русский', 'ru-ru', 'ru-RU,ru_RU.UTF-8,ru_RU,ru-ru,russian', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Codezeel Blog');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(1975, 7, 'html.52', 'footerleft', 0),
(1974, 7, 'html.62', 'headertop', 0),
(1991, 12, 'newsletters', 'footerbefore', 0),
(1990, 12, 'html.62', 'headertop', 0),
(1966, 3, 'newsletters', 'footerbefore', 0),
(2009, 4, 'newsletters', 'footerbefore', 0),
(1965, 3, 'html.62', 'headertop', 0),
(1957, 10, 'html.55', 'footerbefore', 1),
(1949, 6, 'html.55', 'footerbefore', 1),
(2042, 13, 'newsletters', 'footerbefore', 0),
(2051, 9, 'html.55', 'footerbefore', 1),
(1935, 1, 'html.63', 'footerright', 0),
(1964, 3, 'bestseller.64', 'column_left', 3),
(1973, 7, 'bestseller.64', 'column_left', 2),
(2000, 8, 'newsletters', 'footerbefore', 0),
(1999, 8, 'html.62', 'headertop', 0),
(2008, 4, 'html.62', 'headertop', 0),
(2018, 11, 'newsletters', 'footerbefore', 0),
(2027, 5, 'newsletters', 'footerbefore', 0),
(1989, 12, 'bestseller.64', 'column_left', 2),
(1982, 14, 'newsletters', 'footerbefore', 0),
(1956, 10, 'newsletters', 'footerbefore', 0),
(1934, 1, 'html.52', 'footerleft', 0),
(1955, 10, 'html.62', 'headertop', 0),
(1981, 14, 'html.62', 'headertop', 0),
(1998, 8, 'information', 'column_left', 2),
(2007, 4, 'bestseller.64', 'column_left', 2),
(2017, 11, 'html.62', 'headertop', 0),
(2026, 5, 'html.62', 'headertop', 0),
(1948, 6, 'newsletters', 'footerbefore', 0),
(2041, 13, 'html.62', 'headertop', 0),
(1947, 6, 'html.62', 'headertop', 0),
(1954, 10, 'information', 'column_left', 1),
(2016, 11, 'information', 'column_left', 2),
(1963, 3, 'banner.32', 'column_left', 2),
(1980, 14, 'information', 'column_left', 2),
(1933, 1, 'html.55', 'footerbefore', 1),
(1932, 1, 'newsletters', 'footerbefore', 0),
(2050, 9, 'newsletters', 'footerbefore', 0),
(2025, 5, 'bestseller.64', 'column_left', 2),
(1946, 6, 'information', 'column_left', 1),
(1945, 6, 'account', 'column_left', 0),
(1953, 10, 'account', 'column_left', 0),
(1962, 3, 'filter', 'column_left', 1),
(2034, 2, 'html.55', 'footerbefore', 1),
(2040, 13, 'bestseller.64', 'column_left', 2),
(2049, 9, 'html.62', 'headertop', 0),
(1931, 1, 'html.62', 'headertop', 0),
(1972, 7, 'banner.32', 'column_left', 1),
(1979, 14, 'banner.32', 'column_left', 1),
(1988, 12, 'banner.32', 'column_left', 1),
(1997, 8, 'banner.32', 'column_left', 1),
(2006, 4, 'banner.32', 'column_left', 1),
(2015, 11, 'banner.32', 'column_left', 1),
(2024, 5, 'banner.32', 'column_left', 1),
(2033, 2, 'newsletters', 'footerbefore', 0),
(2039, 13, 'banner.32', 'column_left', 1),
(2048, 9, 'information', 'column_left', 1),
(2047, 9, 'account', 'column_left', 0),
(1927, 1, 'featured.50', 'content_bottom', 4),
(1928, 1, 'html.37', 'content_bottom', 5),
(1929, 1, 'blogger.43', 'content_bottom', 6),
(1971, 7, 'category', 'column_left', 0),
(1978, 14, 'category', 'column_left', 0),
(1987, 12, 'category', 'column_left', 0),
(1996, 8, 'category', 'column_left', 0),
(2005, 4, 'category', 'column_left', 0),
(2014, 11, 'category', 'column_left', 0),
(2023, 5, 'category', 'column_left', 0),
(2032, 2, 'html.62', 'headertop', 0),
(2038, 13, 'category', 'column_left', 0),
(1930, 1, 'carousel.29', 'content_bottom', 7),
(1926, 1, 'html.61', 'content_bottom', 3),
(1925, 1, 'category_tab.59', 'content_bottom', 2),
(1924, 1, 'html.60', 'content_bottom', 1),
(1923, 1, 'special.40', 'content_bottom', 0),
(1922, 1, 'html.57', 'content_top', 1),
(1921, 1, 'slideshow.27', 'content_top', 0),
(1936, 1, 'html.35', 'footerbottom', 0),
(1961, 3, 'category', 'column_left', 0),
(1950, 6, 'html.52', 'footerleft', 0),
(1951, 6, 'html.63', 'footerright', 0),
(1952, 6, 'html.35', 'footerbottom', 0),
(1958, 10, 'html.52', 'footerleft', 0),
(1959, 10, 'html.63', 'footerright', 0),
(1960, 10, 'html.35', 'footerbottom', 0),
(1967, 3, 'html.55', 'footerbefore', 1),
(1968, 3, 'html.52', 'footerleft', 0),
(1969, 3, 'html.63', 'footerright', 0),
(1970, 3, 'html.35', 'footerbottom', 0),
(1976, 7, 'html.63', 'footerright', 0),
(1977, 7, 'html.35', 'footerbottom', 0),
(1983, 14, 'html.55', 'footerbefore', 1),
(1984, 14, 'html.52', 'footerleft', 0),
(1985, 14, 'html.63', 'footerright', 0),
(1986, 14, 'html.35', 'footerbottom', 0),
(1992, 12, 'html.55', 'footerbefore', 1),
(1993, 12, 'html.52', 'footerleft', 0),
(1994, 12, 'html.63', 'footerright', 0),
(1995, 12, 'html.35', 'footerbottom', 0),
(2001, 8, 'html.55', 'footerbefore', 1),
(2002, 8, 'html.52', 'footerleft', 0),
(2003, 8, 'html.63', 'footerright', 0),
(2004, 8, 'html.35', 'footerbottom', 0),
(2010, 4, 'html.55', 'footerbefore', 1),
(2011, 4, 'html.52', 'footerleft', 0),
(2012, 4, 'html.63', 'footerright', 0),
(2013, 4, 'html.35', 'footerbottom', 0),
(2019, 11, 'html.55', 'footerbefore', 1),
(2020, 11, 'html.52', 'footerleft', 0),
(2021, 11, 'html.63', 'footerright', 0),
(2022, 11, 'html.35', 'footerbottom', 0),
(2028, 5, 'html.55', 'footerbefore', 1),
(2029, 5, 'html.52', 'footerleft', 0),
(2030, 5, 'html.63', 'footerright', 0),
(2031, 5, 'html.35', 'footerbottom', 0),
(2035, 2, 'html.52', 'footerleft', 0),
(2036, 2, 'html.63', 'footerright', 0),
(2037, 2, 'html.35', 'footerbottom', 0),
(2043, 13, 'html.55', 'footerbefore', 1),
(2044, 13, 'html.52', 'footerleft', 0),
(2045, 13, 'html.62', 'footerright', 0),
(2046, 13, 'html.35', 'footerbottom', 0),
(2052, 9, 'html.52', 'footerleft', 0),
(2053, 9, 'html.63', 'footerright', 0),
(2054, 9, 'html.35', 'footerbottom', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(272, 6, 0, 'account/%'),
(273, 10, 0, 'affiliate/%'),
(274, 3, 0, 'product/category'),
(270, 1, 0, 'common/home'),
(282, 2, 0, 'product/product'),
(280, 11, 0, 'information/information'),
(275, 7, 0, 'checkout/%'),
(278, 8, 0, 'information/contact'),
(284, 9, 0, 'information/sitemap'),
(279, 4, 0, ''),
(281, 5, 0, 'product/manufacturer'),
(277, 12, 0, 'product/compare'),
(283, 13, 0, 'product/search'),
(276, 14, 0, 'information/blogger/blogs');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in'),
(1, 3, 'Centimeter', 'cm'),
(2, 3, 'Millimeter', 'mm'),
(3, 3, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 2, 'Export/Import Tool (V3.22) for OpenCart 3.x', 'Export/Import Tool (V3.22) for OpenCart 3.x', 'mhccorp.com', '3.x-3.22', 'https://www.mhccorp.com', '<modification>\n	<name>Export/Import Tool (V3.22) for OpenCart 3.x</name>\n	<code>Export/Import Tool (V3.22) for OpenCart 3.x</code>\n	<version>3.x-3.22</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/upload\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'extension/export_import\')) {\n				$maintenance[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'extension/export_import\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/en{*}/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/ru{*}/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Экспорт / Импорт\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n', 1, '2021-04-20 20:18:34'),
(2, 4, 'WebP Image Converter', 'WebP', 'https://ocmod.net', '4.2', 'https://ocmod.net', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>WebP Image Converter</name>\n    <code>WebP</code>\n    <version>4.2</version>\n    <author>https://ocmod.net</author>\n    <link>https://ocmod.net</link>\n\n    <file path=\"catalog/model/tool/image.php\">\n        <operation>\n        <search><![CDATA[ModelToolImage]]></search>\n        <add trim=\"true\" position=\"after\"><![CDATA[\n    public function webpSupport() {\n        if ($this->config->get(\'module_webp_status\')) {\n            $webp = gd_info();\n            \n            if (isset($this->request->server[\'HTTP_ACCEPT\']) && strpos($this->request->server[\'HTTP_ACCEPT\'], \'webp\')) {\n                $status = true;\n            } elseif (isset($this->request->server[\'HTTP_USER_AGENT\']) && strpos($this->request->server[\'HTTP_USER_AGENT\'], \'Firefox\')) {\n                $status = true;\n            } else {\n                $status = false;\n            }\n\n            if ($webp[\'WebP Support\'] && $status) {\n                return true;\n            } else {\n                return false;\n            }\n        }\n        return false;\n    }\n        ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$image_new = str_replace(\']]></search>\n            <add trim=\"true\" position=\"before\"><![CDATA[\n        $image_webp = false;\n        $webp_support = $this->webpSupport();\n        if(!isset($type)){$type=\'\';}\n        if ($webp_support && strtolower($extension) != \'gif\') {\n            error_reporting(0);\n            ini_set(\'display_errors\', 0);\n            $image_webp = \'cache/webp/\' . utf8_substr($filename, 0, utf8_strrpos($filename, \'.\')) . \'-\' . (int)$width . \'x\' . (int)$height . $type . \'.webp\';\n            if (!is_file(DIR_IMAGE . $image_webp) || (filemtime(DIR_IMAGE . $image_new) > filemtime(DIR_IMAGE . $image_webp))) {\n                $path = \'\';\n                $directories = explode(\'/\', dirname($image_webp));\n                foreach ($directories as $directory) {\n                    $path = $path . \'/\' . $directory;\n                    if (!is_dir(DIR_IMAGE . $path)) {\n                        @mkdir(DIR_IMAGE . $path, 0777);\n                    }\n                }\n                if (strtolower($extension) == \'jpg\' || strtolower($extension) == \'jpeg\') {\n                    $image_default = imagecreatefromjpeg(DIR_IMAGE . $image_new);\n                }\n                elseif (strtolower($extension) == \'png\') {\n                    $image_default = imagecreatefrompng(DIR_IMAGE . $image_new);\n                }\n                imagewebp($image_default, DIR_IMAGE . $image_webp, ($this->config->get(\'module_webp_quality\') ? $this->config->get(\'module_webp_quality\') : 80));\n                imagedestroy($image_default);\n                if (filesize(DIR_IMAGE . $image_webp) % 2 == 1) {\n                    file_put_contents(DIR_IMAGE . $image_webp, \"\\0\", FILE_APPEND);\n                }\n            }\n        }\n        if ($webp_support && is_file(DIR_IMAGE . $image_webp)){\n            $image_new = $image_webp;\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/journal3/cache.php\">\n        <operation error=\"skip\">\n        <search><![CDATA[return $data;]]></search>\n        <add trim=\"true\" position=\"replace\" index=\"1\"><![CDATA[\n            if (isset($_SERVER[\'HTTP_USER_AGENT\']) && strpos($_SERVER[\'HTTP_USER_AGENT\'], \'Safari\') && !strpos($_SERVER[\'HTTP_USER_AGENT\'], \'Chrome\')) {\n                $status = true;\n            } else {\n                $status = false;\n            }\n\n            if($status){\n                return false;\n            } else {\n                return $data;\n            }\n        ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2021-04-20 20:20:32');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(3, 5, '  OptimBlog', 'optimblog', 'Dmitriy Khokhlov | optimlab.com', '3.0.1.2', 'http://optimlab.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>  OptimBlog</name>\n  <code>optimblog</code>\n  <version>3.0.1.2</version>\n  <author>Dmitriy Khokhlov | optimlab.com</author>\n  <link>http://optimlab.com</link>\n\n<!-- optimblog-admin.ocmod -->\n\n  <file path=\"admin/controller/startup/permission.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$extension = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'extension/information\',\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Category -->\n  <file path=\"admin/controller/catalog/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'placeholder\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		// Images\n		if (isset($this->request->post[\'category_image\'])) {\n			$category_images = $this->request->post[\'category_image\'];\n		} elseif (isset($this->request->get[\'category_id\'])) {\n			$category_images = $this->model_catalog_category->getCategoryImages($this->request->get[\'category_id\']);\n		} else {\n			$category_images = array();\n		}\n\n		$data[\'category_images\'] = array();\n\n		foreach ($category_images as $category_image) {\n			if (is_file(DIR_IMAGE . $category_image[\'image\'])) {\n				$image = $category_image[\'image\'];\n				$thumb = $category_image[\'image\'];\n			} else {\n				$image = \'\';\n				$thumb = \'no_image.png\';\n			}\n\n			$data[\'category_images\'][] = array(\n				\'image\'      => $image,\n				\'thumb\'      => $this->model_tool_image->resize($thumb, 100, 100),\n				\'sort_order\' => $category_image[\'sort_order\']\n			);\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'category_seo_url\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'information\'])) {\n			$data[\'information\'] = $this->request->post[\'information\'];\n		} elseif (!empty($category_info)) {\n			$data[\'information\'] = $category_info[\'information\'];\n		} else {\n			$data[\'information\'] = isset($this->request->get[\'filter_information\']) ? $this->request->get[\'filter_information\'] : \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'filter_name\' => $this->request->get[\'filter_name\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'filter_information\' => isset($this->request->get[\'filter_information\']) ? $this->request->get[\'filter_information\'] : \'\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$url = \'\';\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_information\'])) {\n			$url .= \'&filter_information=\' . $this->request->get[\'filter_information\'];\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort_sort_order\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=sort_order\' . $url, true);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n        $data[\'sort_information\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=information\' . $url, true);\n\n		$url = \'\';\n\n		if (isset($this->request->get[\'sort\'])) {\n			$url .= \'&sort=\' . $this->request->get[\'sort\'];\n		}\n\n		if (isset($this->request->get[\'order\'])) {\n			$url .= \'&order=\' . $this->request->get[\'order\'];\n		}\n\n		if (isset($this->request->get[\'page\'])) {\n			$url .= \'&page=\' . $this->request->get[\'page\'];\n		}\n\n		$data[\'type_all\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n		$data[\'type_product\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_information=0\' . $url, true);\n		$data[\'type_information\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_information=1\' . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$category_total = $this->model_catalog_category->getTotalCategories();\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$category_total = $this->model_catalog_category->getTotalCategories($filter_data);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_information\'])) {\n			$filter_information = $this->request->get[\'filter_information\'];\n		} else {\n			$filter_information = null;\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			\'order\' => $order,\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'filter_information\' => $filter_information,\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'sort_order\'  => $result[\'sort_order\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'information\' => $result[\'information\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'order\'] = $order;\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$data[\'filter_information\'] = $filter_information;\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->get[\'category_id\']) && $this->request->post[\'parent_id\']) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if ($this->request->post[\'parent_id\']) {\n			$results = $this->model_catalog_category->getCategoryPath($this->request->post[\'parent_id\']);\n			\n			foreach ($results as $result) {\n				$path_info = $this->model_catalog_category->getCategory($result[\'path_id\']);\n\n				if (($path_info[\'information\'] && !isset($this->request->post[\'information\'])) || (!$path_info[\'information\'] && isset($this->request->post[\'information\']))) {\n					$this->error[\'parent\'] = $this->language->get(\'error_parent\');\n					\n					break;\n				}\n			}\n		}\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[description = \'\" . $this->db->escape($value[\'description\']) . \"\', ]]></search>\n        <add position=\"replace\"><![CDATA[header = \'\" . $this->db->escape($value[\'header\']) . \"\', short_description = \'\" . $this->db->escape($value[\'short_description\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\', ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'name\'             => $result[\'name\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'header\'            => $result[\'header\'],\n				\'short_description\' => $result[\'short_description\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[date_modified = NOW()]]></search>\n        <add position=\"replace\"><![CDATA[information = \'\" . (isset($data[\'information\']) ? (int)$data[\'information\'] : 0) . \"\', date_modified = NOW()]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		foreach ($data[\'category_description\'] as $language_id => $value) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($data[\'category_image\'])) {\n			foreach ($data[\'category_image\'] as $category_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"category_image SET category_id = \'\" . (int)$category_id . \"\', image = \'\" . $this->db->escape($category_image[\'image\']) . \"\', sort_order = \'\" . (int)$category_image[\'sort_order\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_description WHERE category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_image WHERE category_id = \'\" . (int)$category_id . \"\'\");\n\n		if (isset($data[\'category_image\'])) {\n			foreach ($data[\'category_image\'] as $category_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"category_image SET category_id = \'\" . (int)$category_id . \"\', image = \'\" . $this->db->escape($category_image[\'image\']) . \"\', sort_order = \'\" . (int)$category_image[\'sort_order\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_description WHERE category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_image WHERE category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getCategorySeoUrls($category_id) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getCategoryImages($category_id) {\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"category_image WHERE category_id = \'\" . (int)$category_id . \"\' ORDER BY sort_order ASC\");\n\n		return $query->rows;\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[c1.sort_order]]></search>\n        <add position=\"replace\"><![CDATA[c1.sort_order, c1.information]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$sql .= \" GROUP BY cp.category_id\";\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($data[\'filter_information\'])) {\n			$sql .= \" AND c1.information = \'\" . (int)$data[\'filter_information\'] . \"\' AND c2.information = \'\" . (int)$data[\'filter_information\'] . \"\'\";\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$sort_data = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'information\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[getTotalCategories()]]></search>\n        <add position=\"replace\"><![CDATA[getTotalCategories($data = array())]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"category\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$sql = \"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"category\";\n\n		$sql .= \" WHERE category_id != \'\'\";\n\n		if (isset($data[\'filter_information\'])) {\n			$sql .= \" AND information = \'\" . (int)$data[\'filter_information\'] . \"\'\";\n		}\n\n		$query = $this->db->query($sql);\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/category_form.twig\">\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n                  <div class=\"form-group\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-header{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_header }}\">{{ entry_header }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"category_description[{{ language.language_id }}][header]\" value=\"{{ category_description[language.language_id] ? category_description[language.language_id].header }}\" placeholder=\"{{ entry_header }}\" id=\"input-header{{ language.language_id }}\" class=\"form-control\" />\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-short-description{{ language.language_id }}\">{{ entry_short_description }}<br /><button type=\"button\" class=\"btn btn-primary btn-xs summernote\" data-toggle=\"button\" aria-pressed=\"false\" autocomplete=\"off\" data-language=\"{{ language.language_id }}\">Summernote</button></label>\n                    <div class=\"col-sm-10\">\n                      <textarea name=\"category_description[{{ language.language_id }}][short_description]\" placeholder=\"{{ entry_short_description }}\" id=\"input-short-description{{ language.language_id }}\" class=\"form-control\">{{ category_description[language.language_id] ? category_description[language.language_id].short_description }}</textarea>\n                    </div>\n                  </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <li><a href=\"#tab-seo\" data-toggle=\"tab\">{{ tab_seo }}</a></li>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <li><a href=\"#tab-image\" data-toggle=\"tab\">{{ tab_image }}</a></li>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-seo\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-image\">\n              <div class=\"table-responsive\">\n                <table id=\"images\" class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_additional_image }}</td>\n                      <td class=\"text-right\">{{ entry_sort_order }}</td>\n                      <td></td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                  {% set image_row = 0 %}\n                  {% for category_image in category_images %}\n                  <tr id=\"image-row{{ image_row }}\">\n                    <td class=\"text-left\"><a href=\"\" id=\"thumb-image{{ image_row }}\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ category_image.thumb }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\n                      <input type=\"hidden\" name=\"category_image[{{ image_row }}][image]\" value=\"{{ category_image.image }}\" id=\"input-image{{ image_row }}\" /></td>\n                    <td class=\"text-right\"><input type=\"text\" name=\"category_image[{{ image_row }}][sort_order]\" value=\"{{ category_image.sort_order }}\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\n                    <td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\n                  </tr>\n                  {% set image_row = image_row + 1 %}\n                  {% endfor %}\n                  </tbody>\n                  <tfoot>\n                    <tr>\n                      <td colspan=\"2\"></td>\n                      <td class=\"text-left\"><button type=\"button\" onclick=\"addImage();\" data-toggle=\"tooltip\" title=\"{{ button_image_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>\n                    </tr>\n                  </tfoot>\n                </table>\n              </div>\n            </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                <label class=\"col-sm-2 control-label\" for=\"input-status\">{{ entry_status }}</label>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                <label class=\"col-sm-2 control-label\" for=\"input-information\"><span data-toggle=\"tooltip\" title=\"{{ help_information }}\">{{ entry_information }}</span></label>\n                <div class=\"col-sm-10\">\n                  <div class=\"checkbox\">\n                    <label>\n                      {% if information %}\n                      <input type=\"checkbox\" name=\"information\" value=\"1\" checked=\"checked\" id=\"input-information\" />\n                      {% else %}\n                      <input type=\"checkbox\" name=\"information\" value=\"1\" id=\"input-information\" />\n                      {% endif %}\n                      &nbsp; </label>\n                  </div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}]]></search>\n        <add position=\"replace\"><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}{% if information != \'\' %}&filter_information={{ information }}{% endif %}]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"2\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <script type=\"text/javascript\"><!--\nvar image_row = {{ image_row }};\n\nfunction addImage() {\n	html  = \'<tr id=\"image-row\' + image_row + \'\">\';\n	html += \'  <td class=\"text-left\"><a href=\"\" id=\"thumb-image\' + image_row + \'\"data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ placeholder }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a><input type=\"hidden\" name=\"category_image[\' + image_row + \'][image]\" value=\"\" id=\"input-image\' + image_row + \'\" /></td>\';\n	html += \'  <td class=\"text-right\"><input type=\"text\" name=\"category_image[\' + image_row + \'][sort_order]\" value=\"\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\';\n	html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';\n	html += \'</tr>\';\n\n	$(\'#images tbody\').append(html);\n\n	image_row++;\n}\n//--></script> \n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n$(\'.summernote\').on(\'click\', function () {\n	if ($(this).hasClass(\'active\')) {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote(\'destroy\');\n	} else {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote({\n			focus: true,\n			lang: \'{{ summernote }}\'\n		});\n	}\n})\n\n$(document).ready(function() {\n	$(\'[name*=\\\'[short_description]\\\']\').each(function() {\n		if ($(this).val()) {\n            $(this).parent().prev().children(\'.summernote\').trigger(\'click\');\n		}\n	});\n});\n//--></script>\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/category_list.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n      <div class=\"pull-right\"><a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a> <a href=\"{{ repair }}\" data-toggle=\"tooltip\" title=\"{{ button_rebuild }}\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n      <div class=\"pull-right\">\n        <div class=\"btn-group\">\n          {% if filter_information is not null %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ filter_information ? text_type_information : text_type_product }}\">\n          {{ filter_information ? \'<i class=\"fa fa-file-text-o fa-fw\"></i>\' : \'<i class=\"fa fa-shopping-cart fa-fw\"></i>\' }} \n          {% else %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ text_type_all }}\">\n            <i class=\"fa fa-list fa-fw\"></i>\n          {% endif %}\n          </span>\n          <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">{{ button_type_category }} <span class=\"caret\"></span></button>\n          <ul class=\"dropdown-menu dropdown-menu-right\">\n            <li><a href=\"{{ type_all }}\"><i class=\"fa fa-list fa-fw\"></i> {{ text_type_all }}</a></li>\n            <li class=\"divider\"></li>\n            <li><a href=\"{{ type_product }}\"><i class=\"fa fa-shopping-cart fa-fw\"></i> {{ text_type_product }}</a></li>\n            <li><a href=\"{{ type_information }}\"><i class=\"fa fa-file-text-o fa-fw\"></i> {{ text_type_information }}</a></li>\n          </ul>\n        </div>\n        <a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n        <a href=\"{{ repair }}\" data-toggle=\"tooltip\" title=\"{{ button_rebuild }}\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-left\">{% if sort %}\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                  <td class=\"text-left\">{% if sort == \'name\' %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'sort_order\' %}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'information\' %}\n                    <a href=\"{{ sort_information }}\" class=\"{{ order|lower }}\">{{ column_type }}</a>\n                    {% else %}\n                    <a href=\"{{ sort_information }}\">{{ column_type }}</a>\n                    {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{{ category.sort_order }}</td>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-right\">{{ category.information ? text_type_information : text_type_product }}</td>\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Information -->\n  <file path=\"admin/controller/catalog/information.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'bottom\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->get[\'information_id\'])) {\n			$data[\'information_id\'] = $this->request->get[\'information_id\'];\n		}\n\n		if (isset($this->request->post[\'date_available\'])) {\n			$data[\'date_available\'] = $this->request->post[\'date_available\'];\n		} elseif (!empty($information_info)) {\n			$data[\'date_available\'] = $information_info[\'date_available\'];\n		} else {\n			$data[\'date_available\'] = date(\'Y-m-d H:i:s\');\n		}\n\n		if (isset($this->request->post[\'date_end\'])) {\n			$data[\'date_end\'] = $this->request->post[\'date_end\'];\n		} elseif (!empty($information_info)) {\n			$data[\'date_end\'] = $information_info[\'date_end\'];\n		} else {\n			$data[\'date_end\'] = \'2100-01-01 00:00:00\';\n		}\n\n		if (isset($this->request->post[\'date_added\'])) {\n			$data[\'date_added\'] = $this->request->post[\'date_added\'];\n		} elseif (!empty($information_info)) {\n			$data[\'date_added\'] = $information_info[\'date_added\'];\n		} else {\n			$data[\'date_added\'] = date(\'Y-m-d H:i:s\');\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'information_seo_url\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		// User\n		$this->load->model(\'user/user\');\n		$this->load->model(\'user/user_group\');\n\n		$user_groups = $this->model_user_user_group->getUserGroups();\n\n		foreach ($user_groups as $group) {\n			$users = array();\n\n			$users = $this->model_user_user->getUsersByGroup($group[\'user_group_id\']);\n\n			if ($users) {\n				$data[\'user_groups\'][] = array(\n					\'name\'  => $group[\'name\'],\n					\'users\' => $users\n				);\n			}\n		}\n\n		if (isset($this->request->post[\'user_id\'])) {\n			$data[\'user_id\'] = $this->request->post[\'user_id\'];\n		} elseif (!empty($information_info)) {\n			$data[\'user_id\'] = $this->model_catalog_information->getInformationUser($this->request->get[\'information_id\']);\n		} else {\n			$data[\'user_id\'] = $this->user->getId();\n		}\n\n		// Manufacturer\n		$this->load->model(\'catalog/manufacturer\');\n\n		if (isset($this->request->post[\'manufacturer_id\'])) {\n			$data[\'manufacturer_id\'] = $this->request->post[\'manufacturer_id\'];\n		} elseif (!empty($information_info)) {\n			$data[\'manufacturer_id\'] = $information_info[\'manufacturer_id\'];\n		} else {\n			$data[\'manufacturer_id\'] = 0;\n		}\n\n		if (isset($this->request->post[\'manufacturer\'])) {\n			$data[\'manufacturer\'] = $this->request->post[\'manufacturer\'];\n		} elseif (!empty($information_info)) {\n			$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($information_info[\'manufacturer_id\']);\n\n			if ($manufacturer_info) {\n				$data[\'manufacturer\'] = $manufacturer_info[\'name\'];\n			} else {\n				$data[\'manufacturer\'] = \'\';\n			}\n		} else {\n			$data[\'manufacturer\'] = \'\';\n		}\n\n		// Categories\n		$this->load->model(\'catalog/category\');\n\n		if (isset($this->request->post[\'information_category\'])) {\n			$categories = $this->request->post[\'information_category\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$categories = $this->model_catalog_information->getInformationCategories($this->request->get[\'information_id\']);\n		} else {\n			$categories = array();\n		}\n\n		$data[\'information_categories\'] = array();\n\n		foreach ($categories as $category_id) {\n			$category_info = $this->model_catalog_category->getCategory($category_id);\n\n			if ($category_info) {\n				$data[\'information_categories\'][] = array(\n					\'category_id\' => $category_info[\'category_id\'],\n					\'name\'        => ($category_info[\'path\']) ? $category_info[\'path\'] . \' &gt; \' . $category_info[\'name\'] : $category_info[\'name\']\n				);\n			}\n		}\n\n		if (isset($this->request->post[\'main_category\'])) {\n			$data[\'main_category\'] = $this->request->post[\'main_category\'];\n		} elseif (isset($this->request->get[\'information_id\']) && $categories) {\n			$data[\'main_category\'] = $this->model_catalog_information->getMainCategory($this->request->get[\'information_id\']);\n		} else {\n			$data[\'main_category\'] = \'\';\n		}\n\n		// Filters\n		$this->load->model(\'catalog/filter\');\n\n		if (isset($this->request->post[\'information_filter\'])) {\n			$filters = $this->request->post[\'information_filter\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$filters = $this->model_catalog_information->getInformationFilters($this->request->get[\'information_id\']);\n		} else {\n			$filters = array();\n		}\n\n		$data[\'information_filters\'] = array();\n\n		foreach ($filters as $filter_id) {\n			$filter_info = $this->model_catalog_filter->getFilter($filter_id);\n\n			if ($filter_info) {\n				$data[\'information_filters\'][] = array(\n					\'filter_id\' => $filter_info[\'filter_id\'],\n					\'name\'      => $filter_info[\'group\'] . \' &gt; \' . $filter_info[\'name\']\n				);\n			}\n		}\n\n		// Attributes\n		$this->load->model(\'catalog/attribute\');\n\n		if (isset($this->request->post[\'information_attribute\'])) {\n			$information_attributes = $this->request->post[\'information_attribute\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$information_attributes = $this->model_catalog_information->getInformationAttributes($this->request->get[\'information_id\']);\n		} else {\n			$information_attributes = array();\n		}\n\n		$data[\'information_attributes\'] = array();\n\n		foreach ($information_attributes as $information_attribute) {\n			$attribute_info = $this->model_catalog_attribute->getAttribute($information_attribute[\'attribute_id\']);\n\n			if ($attribute_info) {\n				$data[\'information_attributes\'][] = array(\n					\'attribute_id\'                  => $information_attribute[\'attribute_id\'],\n					\'name\'                          => $attribute_info[\'name\'],\n					\'information_attribute_description\' => $information_attribute[\'information_attribute_description\']\n				);\n			}\n		}\n\n		// Image\n		if (isset($this->request->post[\'image\'])) {\n			$data[\'image\'] = $this->request->post[\'image\'];\n		} elseif (!empty($information_info)) {\n			$data[\'image\'] = $information_info[\'image\'];\n		} else {\n			$data[\'image\'] = \'\';\n		}\n\n		$this->load->model(\'tool/image\');\n\n		if (isset($this->request->post[\'image\']) && is_file(DIR_IMAGE . $this->request->post[\'image\'])) {\n			$data[\'thumb\'] = $this->model_tool_image->resize($this->request->post[\'image\'], 100, 100);\n		} elseif (!empty($information_info) && is_file(DIR_IMAGE . $information_info[\'image\'])) {\n			$data[\'thumb\'] = $this->model_tool_image->resize($information_info[\'image\'], 100, 100);\n		} else {\n			$data[\'thumb\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\n		}\n\n		$data[\'placeholder\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\n\n		// Images\n		if (isset($this->request->post[\'information_image\'])) {\n			$information_images = $this->request->post[\'information_image\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$information_images = $this->model_catalog_information->getInformationImages($this->request->get[\'information_id\']);\n		} else {\n			$information_images = array();\n		}\n\n		$data[\'information_images\'] = array();\n\n		foreach ($information_images as $information_image) {\n			if (is_file(DIR_IMAGE . $information_image[\'image\'])) {\n				$image = $information_image[\'image\'];\n				$thumb = $information_image[\'image\'];\n			} else {\n				$image = \'\';\n				$thumb = \'no_image.png\';\n			}\n\n			$data[\'information_images\'][] = array(\n				\'image\'      => $image,\n				\'thumb\'      => $this->model_tool_image->resize($thumb, 100, 100),\n				\'sort_order\' => $information_image[\'sort_order\']\n			);\n		}\n\n		// Information Related\n		if (isset($this->request->post[\'information_related\'])) {\n			$informations = $this->request->post[\'information_related\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$informations = $this->model_catalog_information->getInformationRelated($this->request->get[\'information_id\']);\n		} else {\n			$informations = array();\n		}\n\n		$data[\'information_relateds\'] = array();\n\n		foreach ($informations as $information_related) {\n			$related_info = $this->model_catalog_information->getInformation($information_related[\'information_id\']);\n\n			if ($related_info) {\n				$data[\'information_relateds\'][] = array(\n					\'information_id\' => $related_info[\'information_id\'],\n					\'title\'          => $related_info[\'title\'],\n                    \'route\'          => $information_related[\'route\']\n				);\n			}\n		}\n        \n		// Product Related\n		if (isset($this->request->post[\'product_related\'])) {\n			$products = $this->request->post[\'product_related\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$products = $this->model_catalog_information->getProductRelated($this->request->get[\'information_id\']);\n		} else {\n			$products = array();\n		}\n\n		$data[\'product_relateds\'] = array();\n\n        $this->load->model(\'catalog/product\');\n\n		foreach ($products as $product_related) {\n			$related_info = $this->model_catalog_product->getProduct($product_related[\'product_id\']);\n\n			if ($related_info) {\n				$data[\'product_relateds\'][] = array(\n					\'product_id\' => $related_info[\'product_id\'],\n					\'name\'       => $related_info[\'name\'],\n                    \'route\'      => $product_related[\'route\']\n				);\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function validateForm() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	protected function validateCopy() {\n		if (!$this->user->hasPermission(\'modify\', \'catalog/information\')) {\n			$this->error[\'warning\'] = $this->language->get(\'error_permission\');\n		}\n\n		return !$this->error;\n	}\n\n	public function autocomplete() {\n		$json = array();\n\n		if (isset($this->request->get[\'filter_name\'])) {\n			$this->load->model(\'catalog/information\');\n\n			if (isset($this->request->get[\'filter_name\'])) {\n				$filter_name = $this->request->get[\'filter_name\'];\n			} else {\n				$filter_name = \'\';\n			}\n\n			if (isset($this->request->get[\'limit\'])) {\n				$limit = $this->request->get[\'limit\'];\n			} else {\n				$limit = 5;\n			}\n\n			$filter_data = array(\n				\'filter_name\'  => $filter_name,\n				\'start\'        => 0,\n				\'limit\'        => $limit\n			);\n\n			$results = $this->model_catalog_information->getInformations($filter_data);\n\n			foreach ($results as $result) {\n				if (isset($this->request->get[\'information_id\']) && $this->request->get[\'information_id\'] == $result[\'information_id\']) {\n					continue;\n				}\n        \n				$json[] = array(\n					\'information_id\' => $result[\'information_id\'],\n					\'title\'          => strip_tags(html_entity_decode($result[\'title\'], ENT_QUOTES, \'UTF-8\'))\n				);	\n			}\n		}\n\n		$this->response->addHeader(\'Content-Type: application/json\');\n		$this->response->setOutput(json_encode($json));\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function copy() {\n		$this->load->language(\'catalog/information\');\n\n		$this->document->setTitle($this->language->get(\'heading_title\'));\n\n		$this->load->model(\'catalog/information\');\n\n		if (isset($this->request->post[\'selected\']) && $this->validateCopy()) {\n			foreach ($this->request->post[\'selected\'] as $information_id) {\n				$this->model_catalog_information->copyInformation($information_id);\n			}\n\n			$this->session->data[\'success\'] = $this->language->get(\'text_success\');\n\n			$url = \'\';\n\n			if (isset($this->request->get[\'sort\'])) {\n				$url .= \'&sort=\' . $this->request->get[\'sort\'];\n			}\n\n			if (isset($this->request->get[\'order\'])) {\n				$url .= \'&order=\' . $this->request->get[\'order\'];\n			}\n\n			if (isset($this->request->get[\'page\'])) {\n				$url .= \'&page=\' . $this->request->get[\'page\'];\n			}\n\n			$this->response->redirect($this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n		}\n\n		$this->getList();\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_name\'])) {\n			$filter_name = $this->request->get[\'filter_name\'];\n		} else {\n			$filter_name = \'\';\n		}\n\n		if (isset($this->request->get[\'filter_viewed\'])) {\n			$filter_viewed = $this->request->get[\'filter_viewed\'];\n		} else {\n			$filter_viewed = \'\';\n		}\n\n		if (isset($this->request->get[\'filter_status\'])) {\n			$filter_status = $this->request->get[\'filter_status\'];\n		} else {\n			$filter_status = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$url = \'\';\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_name\'])) {\n			$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_viewed\'])) {\n			$url .= \'&filter_viewed=\' . urlencode(html_entity_decode($this->request->get[\'filter_viewed\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_status\'])) {\n			$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'delete\'] = $this->url->link(\'catalog/information/delete\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$data[\'copy\'] = $this->url->link(\'catalog/information/copy\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			\'start\' => ($page - 1) * $this->config->get(\'config_limit_admin\'),\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'filter_name\'	  => $filter_name,\n			\'filter_viewed\'	  => $filter_viewed,\n			\'filter_status\'   => $filter_status,\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$information_total = $this->model_catalog_information->getTotalInformations();\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$information_total = $this->model_catalog_information->getTotalInformations($filter_data);\n\n		$this->load->model(\'tool/image\');\n\n		$data[\'user_token\'] = $this->session->data[\'user_token\'];\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$data[\'informations\'][] = array(\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n			if (is_file(DIR_IMAGE . $result[\'image\'])) {\n				$image = $this->model_tool_image->resize($result[\'image\'], 40, 40);\n			} else {\n				$image = $this->model_tool_image->resize(\'no_image.png\', 40, 40);\n			}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$data[\'informations\'][] = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'image\'          => $image,\n                \'status\'         => $result[\'status\'] ? $this->language->get(\'text_enabled\') : $this->language->get(\'text_disabled\'),\n				\'viewed\'         => $result[\'viewed\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort_sort_order\'] = $this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=i.sort_order\' . $url, true);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$data[\'sort_viewed\'] = $this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=i.viewed\' . $url, true);\n		$data[\'sort_status\'] = $this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=i.status\' . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort\'] = $sort;\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$data[\'filter_name\'] = $filter_name;\n		$data[\'filter_viewed\'] = $filter_viewed;\n		$data[\'filter_status\'] = $filter_status;\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/information.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[description = \'\" . $this->db->escape($value[\'description\']) . \"\']]></search>\n        <add position=\"replace\"><![CDATA[header = \'\" . $this->db->escape($value[\'header\']) . \"\', short_description = \'\" . $this->db->escape($value[\'short_description\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\', tag = \'\" . $this->db->escape($value[\'tag\']) . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'id.title\',\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'i.viewed\',\n				\'i.status\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'title\'            => $result[\'title\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'header\'            => $result[\'header\'],\n				\'short_description\' => $result[\'short_description\'],\n				\'tag\'               => $result[\'tag\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[status = \'\" . (int)$data[\'status\'] . \"\']]></search>\n        <add position=\"replace\"><![CDATA[manufacturer_id = \'\" . (int)$data[\'manufacturer_id\'] . \"\', date_available = \'\" . $this->db->escape($data[\'date_available\']) . \"\', date_end = \'\" . $this->db->escape($data[\'date_end\']) . \"\', date_added = NOW(), date_modified = NOW(), status = \'\" . (int)$data[\'status\'] . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[status = \'\" . (int)$data[\'status\'] . \"\']]></search>\n        <add position=\"replace\"><![CDATA[manufacturer_id = \'\" . (int)$data[\'manufacturer_id\'] . \"\', date_available = \'\" . $this->db->escape($data[\'date_available\']) . \"\', date_end = \'\" . $this->db->escape($data[\'date_end\']) . \"\', date_added = \'\" . $this->db->escape($data[\'date_added\']) . \"\',  date_modified = NOW(), status = \'\" . (int)$data[\'status\'] . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		// SEO URL\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'user_id\'])) {\n			$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_user SET information_id = \'\" . (int)$information_id . \"\', user_id = \'\" . (int)$data[\'user_id\'] . \"\'\");\n		}\n\n		if (isset($data[\'information_attribute\'])) {\n			foreach ($data[\'information_attribute\'] as $information_attribute) {\n				if ($information_attribute[\'attribute_id\']) {\n					// Removes duplicates\n					$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\'\");\n\n					foreach ($information_attribute[\'information_attribute_description\'] as $language_id => $information_attribute_description) {\n						$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\' AND language_id = \'\" . (int)$language_id . \"\'\");\n\n						$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_attribute SET information_id = \'\" . (int)$information_id . \"\', attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\', language_id = \'\" . (int)$language_id . \"\', text = \'\" .  $this->db->escape($information_attribute_description[\'text\']) . \"\'\");\n					}\n				}\n			}\n		}\n\n		if (isset($data[\'image\'])) {\n			$this->db->query(\"UPDATE \" . DB_PREFIX . \"information SET image = \'\" . $this->db->escape($data[\'image\']) . \"\' WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		}\n\n		if (isset($data[\'information_image\'])) {\n			foreach ($data[\'information_image\'] as $information_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_image SET information_id = \'\" . (int)$information_id . \"\', image = \'\" . $this->db->escape($information_image[\'image\']) . \"\', sort_order = \'\" . (int)$information_image[\'sort_order\'] . \"\'\");\n			}\n		}\n\n		if (isset($data[\'information_category\'])) {\n			foreach ($data[\'information_category\'] as $category_id) {\n				if (!empty($data[\'main_category\']) && $data[\'main_category\'] == (int)$category_id) {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\', main_category = \'1\'\");\n				} else {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n				}\n			}\n		}\n\n		if (isset($data[\'information_filter\'])) {\n			foreach ($data[\'information_filter\'] as $filter_id) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_filter SET information_id = \'\" . (int)$information_id . \"\', filter_id = \'\" . (int)$filter_id . \"\'\");\n			}\n		}\n\n		if (isset($data[\'information_related\'])) {\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\' AND related_id = \'\" . (int)$information_related[\'information_id\'] . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_id . \"\', related_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_related[\'information_id\'] . \"\' AND related_id = \'\" . (int)$information_id . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', related_id = \'\" . (int)$information_id . \"\', route = \'\" . (int)$information_related[\'route\'] * -1 . \"\'\");\n			}\n		}\n\n		if (isset($data[\'product_related\'])) {\n			$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n			foreach ($data[\'product_related\'] as $product_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET information_id = \'\" . (int)$information_id . \"\', product_id = \'\" . (int)$product_related[\'product_id\'] . \"\', route = \'\" . (int)$product_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"seo_url WHERE query = \'information_id=\" . (int)$information_id . \"\'\");\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_to_user WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (!empty($data[\'user_id\'])) {\n			$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_user SET information_id = \'\" . (int)$information_id . \"\', user_id = \'\" . (int)$data[\'user_id\'] . \"\'\");\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (!empty($data[\'information_attribute\'])) {\n			foreach ($data[\'information_attribute\'] as $information_attribute) {\n				if ($information_attribute[\'attribute_id\']) {\n					// Removes duplicates\n					$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\'\");\n\n					foreach ($information_attribute[\'information_attribute_description\'] as $language_id => $information_attribute_description) {\n						$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_attribute SET information_id = \'\" . (int)$information_id . \"\', attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\', language_id = \'\" . (int)$language_id . \"\', text = \'\" .  $this->db->escape($information_attribute_description[\'text\']) . \"\'\");\n					}\n				}\n			}\n		}\n\n		if (isset($data[\'image\'])) {\n			$this->db->query(\"UPDATE \" . DB_PREFIX . \"information SET image = \'\" . $this->db->escape($data[\'image\']) . \"\' WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_image WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_image\'])) {\n			foreach ($data[\'information_image\'] as $information_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_image SET information_id = \'\" . (int)$information_id . \"\', image = \'\" . $this->db->escape($information_image[\'image\']) . \"\', sort_order = \'\" . (int)$information_image[\'sort_order\'] . \"\'\");\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_to_category WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_category\'])) {\n			foreach ($data[\'information_category\'] as $category_id) {\n				if (!empty($data[\'main_category\']) && $data[\'main_category\'] == (int)$category_id) {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\', main_category = \'1\'\");\n				} else {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n				}\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_filter WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_filter\'])) {\n			foreach ($data[\'information_filter\'] as $filter_id) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_filter SET information_id = \'\" . (int)$information_id . \"\', filter_id = \'\" . (int)$filter_id . \"\'\");\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE related_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_related\'])) {\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\' AND related_id = \'\" . (int)$information_related[\'information_id\'] . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_id . \"\', related_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_related[\'information_id\'] . \"\' AND related_id = \'\" . (int)$information_id . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', related_id = \'\" . (int)$information_id . \"\', route = \'\" . (int)$information_related[\'route\'] * -1 . \"\'\");\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'product_related\'])) {\n			foreach ($data[\'product_related\'] as $product_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET information_id = \'\" . (int)$information_id . \"\', product_id = \'\" . (int)$product_related[\'product_id\'] . \"\', route = \'\" . (int)$product_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\" . DB_PREFIX . \"information WHERE information_id = \'\" . (int)$information_id . \"\']]></search>\n        <add position=\"replace\"><![CDATA[\" . DB_PREFIX . \"information i LEFT JOIN \" . DB_PREFIX . \"information_description id ON (i.information_id = id.information_id) WHERE i.information_id = \'\" . (int)$information_id . \"\' AND id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function deleteInformation($information_id) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function copyInformation($information_id) {\n		$query = $this->db->query(\"SELECT DISTINCT * FROM \" . DB_PREFIX . \"information WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if ($query->num_rows) {\n			$data = $query->row;\n\n			$data[\'viewed\'] = \'0\';\n			$data[\'keyword\'] = \'\';\n			$data[\'status\'] = \'0\';\n\n			$data[\'information_attribute\'] = $this->getInformationAttributes($information_id);\n			$data[\'information_description\'] = $this->getInformationDescriptions($information_id);\n			$data[\'information_filter\'] = $this->getInformationFilters($information_id);\n			$data[\'information_image\'] = $this->getInformationImages($information_id);\n			$data[\'information_related\'] = $this->getInformationRelated($information_id);\n			$data[\'product_related\'] = $this->getProductRelated($information_id);\n			$data[\'information_category\'] = $this->getInformationCategories($information_id);\n			$data[\'main_category\'] = $this->getMainCategory($information_id);\n			$data[\'information_layout\'] = $this->getInformationLayouts($information_id);\n			$data[\'information_store\'] = $this->getInformationStores($information_id);\n			$data[\'user_id\'] = $this->getInformationUser($information_id);\n\n			$this->addInformation($data);\n		}\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"seo_url` WHERE query = \'information_id=\" . (int)$information_id . \"\'\");\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_attribute` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_filter` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_image` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_related` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_related` WHERE related_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_product_related` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_to_category` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_to_user` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"review` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getTotalInformations() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getInformationUser($information_id) {\n		$query = $this->db->query(\"SELECT user_id FROM \" . DB_PREFIX . \"information_to_user WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		return $query->row[\'user_id\'];\n	}\n\n	public function getInformationsByCategoryId($category_id) {\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information i LEFT JOIN \" . DB_PREFIX . \"information_description id ON (i.information_id = id.information_id) LEFT JOIN \" . DB_PREFIX . \"information_to_category i2c ON (i.information_id = i2c.information_id) WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND i2c.category_id = \'\" . (int)$category_id . \"\' ORDER BY id.title ASC\");\n\n		return $query->rows;\n	}\n\n	public function getInformationCategories($information_id) {\n		$information_category_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_to_category WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_category_data[] = $result[\'category_id\'];\n		}\n\n		return $information_category_data;\n	}\n\n	public function getMainCategory($information_id) {\n		$query = $this->db->query(\"SELECT category_id FROM \" . DB_PREFIX . \"information_to_category WHERE information_id = \'\" . (int)$information_id . \"\' AND main_category = \'1\'\");\n\n		if ($query->row) {\n			return $query->row[\'category_id\'];\n		} else {\n			return \'\';\n		}\n	}\n\n	public function getInformationFilters($information_id) {\n		$information_filter_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_filter WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_filter_data[] = $result[\'filter_id\'];\n		}\n\n		return $information_filter_data;\n	}\n\n	public function getInformationAttributes($information_id) {\n		$information_attribute_data = array();\n\n		$information_attribute_query = $this->db->query(\"SELECT attribute_id FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' GROUP BY attribute_id\");\n\n		foreach ($information_attribute_query->rows as $information_attribute) {\n			$information_attribute_description_data = array();\n\n			$information_attribute_description_query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\'\");\n\n			foreach ($information_attribute_description_query->rows as $information_attribute_description) {\n				$information_attribute_description_data[$information_attribute_description[\'language_id\']] = array(\'text\' => $information_attribute_description[\'text\']);\n			}\n\n			$information_attribute_data[] = array(\n				\'attribute_id\'                  => $information_attribute[\'attribute_id\'],\n				\'information_attribute_description\' => $information_attribute_description_data\n			);\n		}\n\n		return $information_attribute_data;\n	}\n\n	public function getInformationImages($information_id) {\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_image WHERE information_id = \'\" . (int)$information_id . \"\' ORDER BY sort_order ASC\");\n\n		return $query->rows;\n	}\n	\n	public function getInformationRelated($information_id) {\n		$information_related_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_related_data[] = array(\n				\'information_id\' => $result[\'related_id\'],\n				\'route\'          => $result[\'route\']\n            );\n		}\n\n		return $information_related_data;\n	}\n\n	public function getProductRelated($information_id) {\n		$product_related_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_product_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$product_related_data[] = array(\n				\'product_id\' => $result[\'product_id\'],\n				\'route\'      => $result[\'route\']\n            );\n		}\n\n		return $product_related_data;\n	}\n\n	public function getTotalInformationsByManufacturerId($manufacturer_id) {\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"information WHERE manufacturer_id = \'\" . (int)$manufacturer_id . \"\'\");\n\n		return $query->row[\'total\'];\n	}\n\n	public function getTotalInformationsByAttributeId($attribute_id) {\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"information_attribute WHERE attribute_id = \'\" . (int)$attribute_id . \"\'\");\n\n		return $query->row[\'total\'];\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$sort_data = array(\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'filter_name\'])) {\n			$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n		}\n\n		if (!empty($data[\'filter_viewed\'])) {\n			$sql .= \" AND i.viewed LIKE \'\" . $this->db->escape($data[\'filter_viewed\']) . \"%\'\";\n		}\n\n		if (isset($data[\'filter_status\']) && $data[\'filter_status\'] !== \'\') {\n			$sql .= \" AND i.status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\n		}\n\n		$sql .= \" GROUP BY i.information_id\";\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getTotalInformations() {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n	public function getTotalInformations($data = array()) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"information\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$sql = \"SELECT COUNT(DISTINCT i.information_id) AS total FROM \" . DB_PREFIX . \"information i LEFT JOIN \" . DB_PREFIX . \"information_description id ON (i.information_id = id.information_id)\";\n\n		$sql .= \" WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n\n		if (!empty($data[\'filter_name\'])) {\n			$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n		}\n\n		if (isset($data[\'filter_viewed\']) && $data[\'filter_viewed\'] !== \'\') {\n			$sql .= \" AND i.viewed = \'\" . (int)$data[\'filter_viewed\'] . \"\'\";\n		}\n\n		if (isset($data[\'filter_status\']) && $data[\'filter_status\'] !== \'\') {\n			$sql .= \" AND i.status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\n		}\n\n		$query = $this->db->query($sql);\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/information_form.twig\">\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n                  <div class=\"form-group required\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-header{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_header }}\">{{ entry_header }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"information_description[{{ language.language_id }}][header]\" value=\"{{ information_description[language.language_id] ? information_description[language.language_id].header }}\" placeholder=\"{{ entry_header }}\" id=\"input-header{{ language.language_id }}\" class=\"form-control\" />\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-short-description{{ language.language_id }}\">{{ entry_short_description }}<br /><button type=\"button\" class=\"btn btn-primary btn-xs summernote\" data-toggle=\"button\" aria-pressed=\"false\" autocomplete=\"off\" data-language=\"{{ language.language_id }}\">Summernote</button></label>\n                    <div class=\"col-sm-10\">\n                      <textarea name=\"information_description[{{ language.language_id }}][short_description]\" placeholder=\"{{ entry_short_description }}\" id=\"input-short-description{{ language.language_id }}\" class=\"form-control\">{{ information_description[language.language_id] ? information_description[language.language_id].short_description }}</textarea>\n                     </div>\n                  </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <textarea name=\"information_description[{{ language.language_id }}][meta_keyword]\" rows=\"5\" placeholder=\"{{ entry_meta_keyword }}\" id=\"input-meta-keyword{{ language.language_id }}\" class=\"form-control\">{{ information_description[language.language_id] ? information_description[language.language_id].meta_keyword }}</textarea>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-tag{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_tag }}\">{{ entry_tag }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"information_description[{{ language.language_id }}][tag]\" value=\"{{ information_description[language.language_id] ? information_description[language.language_id].tag }}\" placeholder=\"{{ entry_tag }}\" id=\"input-tag{{ language.language_id }}\" class=\"form-control\" />\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-data\">\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-date-added\">{{ entry_date_added }}</label>\n                <div class=\"col-sm-3\">\n                  <div class=\"input-group datetime\">\n                    <input type=\"text\" name=\"date_added\" value=\"{{ date_added }}\" placeholder=\"{{ entry_date_added }}\" data-date-format=\"YYYY-MM-DD HH:mm:ss\" id=\"input-date-added\" class=\"form-control\" />\n                    <span class=\"input-group-btn\">\n                    <button class=\"btn btn-default\" type=\"button\"><i class=\"fa fa-calendar\"></i></button>\n                    </span></div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-date-available\">{{ entry_date_available }}</label>\n                <div class=\"col-sm-3\">\n                  <div class=\"input-group datetime\">\n                    <input type=\"text\" name=\"date_available\" value=\"{{ date_available }}\" placeholder=\"{{ entry_date_available }}\" data-date-format=\"YYYY-MM-DD HH:mm:ss\" id=\"input-date-available\" class=\"form-control\" />\n                    <span class=\"input-group-btn\">\n                    <button class=\"btn btn-default\" type=\"button\"><i class=\"fa fa-calendar\"></i></button>\n                    </span></div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-date-end\">{{ entry_date_end }}</label>\n                <div class=\"col-sm-3\">\n                  <div class=\"input-group datetime\">\n                    <input type=\"text\" name=\"date_end\" value=\"{{ date_end }}\" placeholder=\"{{ entry_date_end }}\" data-date-format=\"YYYY-MM-DD HH:mm:ss\" id=\"input-date-end\" class=\"form-control\" />\n                    <span class=\"input-group-btn\">\n                    <button class=\"btn btn-default\" type=\"button\"><i class=\"fa fa-calendar\"></i></button>\n                    </span></div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-user\">{{ entry_user }}</label>\n                <div class=\"col-sm-10\">\n                  <select name=\"user_id\" id=\"input-user\" class=\"form-control\">\n                    {% for user_group in user_groups %}\n                    <optgroup label=\"{{ user_group.name }}\">\n                    {% for user in user_group.users %}\n                    {% if user.user_id == user_id %}\n                    <option value=\"{{ user.user_id }}\" selected=\"selected\">{{ user.username }}</option>\n                    {% else %}\n                    <option value=\"{{ user.user_id }}\">{{ user.username }}</option>\n                    {% endif %}\n                    {% endfor %}\n                    </optgroup>\n                    {% endfor %}\n                  </select>\n                </div>\n              </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n  <script type=\"text/javascript\" src=\"view/javascript/summernote/opencart.js\"></script> \n        ]]></search>\n        <add position=\"after\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n// Manufacturer\n$(\'input[name=\\\'manufacturer\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/manufacturer/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				json.unshift({\n					manufacturer_id: 0,\n					name: \'{{ text_none }}\'\n				});\n\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'manufacturer_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'manufacturer\\\']\').val(item[\'label\']);\n		$(\'input[name=\\\'manufacturer_id\\\']\').val(item[\'value\']);\n	}\n});\n\n// Category\n$(\'input[name=\\\'category\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/category/autocomplete&user_token={{ user_token }}&filter_information=1&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'category_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'category\\\']\').val(\'\');\n\n		$(\'#information-category\' + item[\'value\']).remove();\n\n		$(\'#information-category\').append(\'<div id=\"information-category\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_category[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n	}\n});\n\n$(\'#information-category\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#information-category\').delegate(\'.fa-circle-o\', \'click\', function() {\n	$(\'#information-category div\').children(\'.fa-dot-circle-o\').toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'#information-category div\').removeClass(\'text-success\');\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(this).parent().addClass(\'text-success\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().append(\'<input type=\"hidden\" name=\"main_category\" value=\"\' + $(this).parent().find(\'input[name=\\\'information_category[]\\\']\').val() + \'\" />\');\n	$(\'#information-category div\').children(\'.fa-circle-o\').attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n    $(this).attr({\'title\':\'{{ help_main_category }}\', \'data-original-title\':\'{{ help_main_category }}\'});\n});\n$(\'#information-category\').delegate(\'.fa-dot-circle-o\', \'click\', function() {\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().removeClass(\'text-success\');\n    $(this).attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n});\n\n// Filter\n$(\'input[name=\\\'filter\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/filter/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'filter_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'filter\\\']\').val(\'\');\n\n		$(\'#information-filter\' + item[\'value\']).remove();\n\n		$(\'#information-filter\').append(\'<div id=\"information-filter\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_filter[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n	}\n});\n\n$(\'#information-filter\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n// Related Information\n$(\'input[name=\\\'related_information\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}{% if information_id %}&information_id={{ information_id }}{% endif %}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'related_information\\\']\').val(\'\');\n\n		$(\'#information-related\' + item[\'value\']).remove();\n\n		$(\'#information-related\').append(\'<div id=\"information-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][information_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n	}\n});\n\n$(\'#information-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#information-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n\n// Related Product\n$(\'input[name=\\\'related_product\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/product/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'product_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'related_product\\\']\').val(\'\');\n\n		$(\'#product-related\' + item[\'value\']).remove();\n\n		$(\'#product-related\').append(\'<div id=\"product-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][product_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n	}\n});\n\n$(\'#product-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#product-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n//--></script> \n  <script type=\"text/javascript\"><!--\nvar attribute_row = {{ attribute_row }};\n\nfunction addAttribute() {\n    html  = \'<tr id=\"attribute-row\' + attribute_row + \'\">\';\n	html += \'  <td class=\"text-left\" style=\"width: 20%;\"><input type=\"text\" name=\"information_attribute[\' + attribute_row + \'][name]\" value=\"\" placeholder=\"{{ entry_attribute }}\" class=\"form-control\" /><input type=\"hidden\" name=\"information_attribute[\' + attribute_row + \'][attribute_id]\" value=\"\" /></td>\';\n	html += \'  <td class=\"text-left\">\';\n	{% for language in languages %}\n	html += \'<div class=\"input-group\"><span class=\"input-group-addon\"><img src=\"language/{{ language.code }}/{{ language.code }}.png\" title=\"{{ language.name }}\" /></span><textarea name=\"information_attribute[\' + attribute_row + \'][information_attribute_description][{{ language.language_id }}][text]\" rows=\"5\" placeholder=\"{{ entry_text }}\" class=\"form-control\"></textarea></div>\';\n    {% endfor %}\n	html += \'  </td>\';\n	html += \'  <td class=\"text-right\"><button type=\"button\" onclick=\"$(\\\'#attribute-row\' + attribute_row + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';\n    html += \'</tr>\';\n\n	$(\'#attribute tbody\').append(html);\n\n	attributeautocomplete(attribute_row);\n\n	attribute_row++;\n}\n\nfunction attributeautocomplete(attribute_row) {\n	$(\'input[name=\\\'information_attribute[\' + attribute_row + \'][name]\\\']\').autocomplete({\n		\'source\': function(request, response) {\n			$.ajax({\n				url: \'index.php?route=catalog/attribute/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n				dataType: \'json\',\n				success: function(json) {\n					response($.map(json, function(item) {\n						return {\n							category: item.attribute_group,\n							label: item.name,\n							value: item.attribute_id\n						}\n					}));\n				}\n			});\n		},\n		\'select\': function(item) {\n			$(\'input[name=\\\'information_attribute[\' + attribute_row + \'][name]\\\']\').val(item[\'label\']);\n			$(\'input[name=\\\'information_attribute[\' + attribute_row + \'][attribute_id]\\\']\').val(item[\'value\']);\n		}\n	});\n}\n\n$(\'#attribute tbody tr\').each(function(index, element) {\n	attributeautocomplete(index);\n});\n//--></script> \n  <script type=\"text/javascript\"><!--\nvar image_row = {{ image_row }};\n\nfunction addImage() {\n	html  = \'<tr id=\"image-row\' + image_row + \'\">\';\n	html += \'  <td class=\"text-left\"><a href=\"\" id=\"thumb-image\' + image_row + \'\"data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ placeholder }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a><input type=\"hidden\" name=\"information_image[\' + image_row + \'][image]\" value=\"\" id=\"input-image\' + image_row + \'\" /></td>\';\n	html += \'  <td class=\"text-right\"><input type=\"text\" name=\"information_image[\' + image_row + \'][sort_order]\" value=\"\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\';\n	html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';\n	html += \'</tr>\';\n\n	$(\'#images tbody\').append(html);\n\n	image_row++;\n}\n//--></script> \n  <script type=\"text/javascript\"><!--\n$(\'.date\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickTime: false\n});\n\n$(\'.time\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: false\n});\n\n$(\'.datetime\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: true,\n	pickTime: true\n});\n//--></script> \n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <li><a href=\"#tab-seo\" data-toggle=\"tab\">{{ tab_seo }}</a></li>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <li><a href=\"#tab-links\" data-toggle=\"tab\">{{ tab_links }}</a></li>\n            <li><a href=\"#tab-attribute\" data-toggle=\"tab\">{{ tab_attribute }}</a></li>\n            <li><a href=\"#tab-image\" data-toggle=\"tab\">{{ tab_image }}</a></li>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <style type=\"text/css\"><!--\n#information-category .fa-circle-o {\n    display: none;\n}\n#information-category div:hover .fa-circle-o {\n    display: inline;\n}\n--></style>\n  <script type=\"text/javascript\"><!--\n$(\'.summernote\').on(\'click\', function () {\n	if ($(this).hasClass(\'active\')) {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote(\'destroy\');\n	} else {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote({\n			focus: true,\n			lang: \'{{ summernote }}\'\n		});\n	}\n})\n\n$(document).ready(function() {\n	$(\'[name*=\\\'[short_description]\\\']\').each(function() {\n		if ($(this).val()) {\n            $(this).parent().prev().children(\'.summernote\').trigger(\'click\');\n		}\n	});\n});\n//--></script>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-seo\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-links\">\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-manufacturer\"><span data-toggle=\"tooltip\" title=\"{{ help_manufacturer }}\">{{ entry_manufacturer }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"manufacturer\" value=\"{{ manufacturer }}\" placeholder=\"{{ entry_manufacturer }}\" id=\"input-manufacturer\" class=\"form-control\" />\n                  <input type=\"hidden\" name=\"manufacturer_id\" value=\"{{ manufacturer_id }}\" />\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-category\"><span data-toggle=\"tooltip\" title=\"{{ help_category }}\">{{ entry_category }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"category\" value=\"\" placeholder=\"{{ entry_category }}\" id=\"input-category\" class=\"form-control\" />\n                  <div id=\"information-category\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_category in information_categories %}\n                    {% if main_category and main_category == information_category.category_id %}\n                    <div id=\"information-category{{ information_category.category_id }}\" class=\"text-success\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-dot-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category }}\"></i> {{ information_category.name }}\n                      <input type=\"hidden\" name=\"information_category[]\" value=\"{{ information_category.category_id }}\" />\n                      <input type=\"hidden\" name=\"main_category\" value=\"{{ information_category.category_id }}\" />\n                    </div>\n                    {% else %}\n                    <div id=\"information-category{{ information_category.category_id }}\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> {{ information_category.name }}\n                      <input type=\"hidden\" name=\"information_category[]\" value=\"{{ information_category.category_id }}\" />\n                    </div>\n                    {% endif %}\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-filter\"><span data-toggle=\"tooltip\" title=\"{{ help_filter }}\">{{ entry_filter }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"filter\" value=\"\" placeholder=\"{{ entry_filter }}\" id=\"input-filter\" class=\"form-control\" />\n                  <div id=\"information-filter\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_filter in information_filters %}\n                    <div id=\"information-filter{{ information_filter.filter_id }}\"><i class=\"fa fa-minus-circle\"></i> {{ information_filter.name }}\n                      <input type=\"hidden\" name=\"information_filter[]\" value=\"{{ information_filter.filter_id }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-related-product\"><span data-toggle=\"tooltip\" title=\"{{ help_related }}\">{{ entry_related_product }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"related_product\" value=\"\" placeholder=\"{{ entry_related_product }}\" id=\"input-related-product\" class=\"form-control\" />\n                  <div id=\"product-related\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for product_related in product_relateds %}\n                    <div id=\"product-related{{ product_related.product_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if product_related.route and product_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif product_related.route and product_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ product_related.name }}\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][product_id]\" value=\"{{ product_related.product_id }}\" />\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][route]\" value=\"{{ product_related.route }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-related-information\"><span data-toggle=\"tooltip\" title=\"{{ help_related }}\">{{ entry_related_information }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"related_information\" value=\"\" placeholder=\"{{ entry_related_information }}\" id=\"input-related-information\" class=\"form-control\" />\n                  <div id=\"information-related\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_related in information_relateds %}\n                    <div id=\"information-related{{ information_related.information_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if information_related.route and information_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif information_related.route and information_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ information_related.title }}\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][information_id]\" value=\"{{ information_related.information_id }}\" />\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][route]\" value=\"{{ information_related.route }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n            </div>\n            <div class=\"tab-pane\" id=\"tab-attribute\">\n              <div class=\"table-responsive\">\n                <table id=\"attribute\" class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_attribute }}</td>\n                      <td class=\"text-left\">{{ entry_text }}</td>\n                      <td></td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                    {% set attribute_row = 0 %}\n                    {% for information_attribute in information_attributes %}\n                    <tr id=\"attribute-row{{ attribute_row }}\">\n                      <td class=\"text-left\" style=\"width: 40%;\"><input type=\"text\" name=\"information_attribute[{{ attribute_row }}][name]\" value=\"{{ information_attribute.name }}\" placeholder=\"{{ entry_attribute }}\" class=\"form-control\" />\n                      <input type=\"hidden\" name=\"information_attribute[{{ attribute_row }}][attribute_id]\" value=\"{{ information_attribute.attribute_id }}\" /></td>\n                      <td class=\"text-left\">{% for language in languages %}\n                        <div class=\"input-group\"><span class=\"input-group-addon\"><img src=\"language/{{ language.code }}/{{ language.code }}.png\" title=\"{{ language.name }}\" /></span>\n                          <textarea name=\"information_attribute[{{ attribute_row }}][information_attribute_description][{{ language.language_id }}][text]\" rows=\"5\" placeholder=\"{{ entry_text }}\" class=\"form-control\">{{ information_attribute.information_attribute_description[language.language_id] ? information_attribute.information_attribute_description[language.language_id].text }}</textarea>\n                        </div>\n                        {% endfor %}</td>\n                      <td class=\"text-right\"><button type=\"button\" onclick=\"$(\'#attribute-row{{ attribute_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\n                    </tr>\n                    {% set attribute_row = attribute_row + 1 %}\n                    {% endfor %}\n                  </tbody>\n                  <tfoot>\n                    <tr>\n                      <td colspan=\"2\"></td>\n                      <td class=\"text-right\"><button type=\"button\" onclick=\"addAttribute();\" data-toggle=\"tooltip\" title=\"{{ button_attribute_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>\n                    </tr>\n                  </tfoot>\n                </table>\n              </div>\n            </div>\n            <div class=\"tab-pane\" id=\"tab-image\">\n              <div class=\"table-responsive\">\n                <table class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_image }}</td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                    <tr>\n                      <td class=\"text-left\"><a href=\"\" id=\"thumb-image\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ thumb }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\n                        <input type=\"hidden\" name=\"image\" value=\"{{ image }}\" id=\"input-image\" /></td>\n                    </tr>\n                  </tbody>\n                </table>\n              </div>\n              <div class=\"table-responsive\">\n                <table id=\"images\" class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_additional_image }}</td>\n                      <td class=\"text-right\">{{ entry_sort_order }}</td>\n                      <td></td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                    {% set image_row = 0 %}\n                    {% for information_image in information_images %}\n                    <tr id=\"image-row{{ image_row }}\">\n                      <td class=\"text-left\"><a href=\"\" id=\"thumb-image{{ image_row }}\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ information_image.thumb }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\n                        <input type=\"hidden\" name=\"information_image[{{ image_row }}][image]\" value=\"{{ information_image.image }}\" id=\"input-image{{ image_row }}\" /></td>\n                      <td class=\"text-right\"><input type=\"text\" name=\"information_image[{{ image_row }}][sort_order]\" value=\"{{ information_image.sort_order }}\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\n                      <td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\n                    </tr>\n                    {% set image_row = image_row + 1 %}\n                    {% endfor %}\n                  </tbody>\n                  <tfoot>\n                    <tr>\n                      <td colspan=\"2\"></td>\n                      <td class=\"text-left\"><button type=\"button\" onclick=\"addImage();\" data-toggle=\"tooltip\" title=\"{{ button_image_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>\n                    </tr>\n                  </tfoot>\n                </table>\n              </div>\n            </div>\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/information_list.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n      <div class=\"pull-right\"><a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n      <div class=\"pull-right\">\n        <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_filter }}\" onclick=\"$(\'#filter-information\').toggleClass(\'hidden-sm hidden-xs\');\" class=\"btn btn-default hidden-md hidden-lg\"><i class=\"fa fa-filter\"></i></button>\n        <a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n        <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-information\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n        <button type=\"submit\" form=\"form-information\" formaction=\"{{ copy }}\" data-toggle=\"tooltip\" title=\"{{ button_copy }}\" class=\"btn btn-default\"><i class=\"fa fa-copy\"></i></button>\n        <button type=\"button\" form=\"form-information\" formaction=\"{{ delete }}\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-information\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n    <div class=\"panel panel-default\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n    <div class=\"row\">\n      <div id=\"filter-information\" class=\"col-md-3 col-md-push-9 col-sm-12 hidden-sm hidden-xs\">\n        <div class=\"panel panel-default\">\n          <div class=\"panel-heading\">\n            <h3 class=\"panel-title\"><i class=\"fa fa-filter\"></i> {{ text_filter }}</h3>\n          </div>\n          <div class=\"panel-body\">\n            <div class=\"form-group\">\n              <label class=\"control-label\" for=\"input-title\">{{ entry_title }}</label>\n              <input type=\"text\" name=\"filter_name\" value=\"{{ filter_name }}\" placeholder=\"{{ entry_title }}\" id=\"input-title\" class=\"form-control\" />\n            </div>\n            <div class=\"form-group\">\n              <label class=\"control-label\" for=\"input-viewed\">{{ entry_viewed }}</label>\n              <input type=\"text\" name=\"filter_viewed\" value=\"{{ filter_viewed }}\" placeholder=\"{{ entry_viewed }}\" id=\"input-viewed\" class=\"form-control\" />\n            </div>\n            <div class=\"form-group\">\n              <label class=\"control-label\" for=\"input-status\">{{ entry_status }}</label>\n              <select name=\"filter_status\" id=\"input-status\" class=\"form-control\">\n                <option value=\"\"></option>\n                  {% if filter_status == \'1\' %}\n                <option value=\"1\" selected=\"selected\">{{ text_enabled }}</option>\n                  {% else %}\n                <option value=\"1\">{{ text_enabled }}</option>\n                  {% endif %}\n                  {% if filter_status == \'0\' %}\n                <option value=\"0\" selected=\"selected\">{{ text_disabled }}</option>\n                  {% else %}\n                <option value=\"0\">{{ text_disabled }}</option>\n                  {% endif %}\n              </select>\n            </div>\n            <div class=\"form-group text-right\">\n              <button type=\"button\" id=\"button-filter\" class=\"btn btn-default\"><i class=\"fa fa-filter\"></i> {{ button_filter }}</button>\n            </div>\n          </div>\n        </div>\n      </div>\n      <div class=\"col-md-9 col-md-pull-3 col-sm-12\">\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  </div>\n  <script type=\"text/javascript\"><!--\n$(\'#button-filter\').on(\'click\', function() {\n	var url = \'\';\n\n	var filter_name = $(\'input[name=\\\'filter_name\\\']\').val();\n\n	if (filter_name) {\n		url += \'&filter_name=\' + encodeURIComponent(filter_name);\n	}\n\n	var filter_viewed = $(\'input[name=\\\'filter_viewed\\\']\').val();\n\n	if (filter_viewed) {\n		url += \'&filter_viewed=\' + encodeURIComponent(filter_viewed);\n	}\n\n	var filter_status = $(\'select[name=\\\'filter_status\\\']\').val();\n\n	if (filter_status != \'\') {\n		url += \'&filter_status=\' + encodeURIComponent(filter_status);\n	}\n\n	location = \'index.php?route=catalog/information&user_token={{ user_token }}\' + url;\n});\n//--></script> \n  <script type=\"text/javascript\"><!--\n// IE and Edge fix!\n$(\'button[form=\\\'form-information\\\']\').on(\'click\', function(e) {\n	$(\'#form-information\').attr(\'action\', $(this).attr(\'formaction\'));\n});\n  \n$(\'input[name=\\\'filter_name\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'filter_name\\\']\').val(item[\'label\']);\n	}\n});\n//--></script></div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td style=\"width: 1px;\" class=\"text-center\"><input type=\"checkbox\" onclick=\"$(\'input[name*=\\\'selected\\\']\').prop(\'checked\', this.checked);\" /></td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                  <td class=\"text-center\">{{ column_image }}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-left\">{{ information.title }}</td>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                    <td class=\"text-center\">{% if information.image %} <img src=\"{{ information.image }}\" alt=\"{{ information.title }}\" class=\"img-thumbnail\" /> {% else %} <span class=\"img-thumbnail list\"><i class=\"fa fa-camera fa-2x\"></i></span> {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'i.sort_order\' %}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'i.viewed\' %}\n                    <a href=\"{{ sort_viewed }}\" class=\"{{ order|lower }}\">{{ column_viewed }}</a>\n                    {% else %}\n                    <a href=\"{{ sort_viewed }}\">{{ column_viewed }}</a>\n                    {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{{ column_action }}</td>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-left\">{% if sort == \'i.status\' %}\n                    <a href=\"{{ sort_status }}\" class=\"{{ order|lower }}\">{{ column_status }}</a>\n                    {% else %}\n                    <a href=\"{{ sort_status }}\">{{ column_status }}</a>\n                    {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{{ information.sort_order }}</td>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                  <td class=\"text-right\">{{ information.viewed }}</td>\n                  <td class=\"text-right\">{{ information.sort_order }}</td>\n                  <td class=\"text-left\">{{ information.status }}</td>\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Product -->\n  <file path=\"admin/controller/catalog/product.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'points\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		// Information Related\n		if (isset($this->request->post[\'information_related\'])) {\n			$informations = $this->request->post[\'information_related\'];\n		} elseif (isset($this->request->get[\'product_id\'])) {\n			$informations = $this->model_catalog_product->getInformationRelated($this->request->get[\'product_id\']);\n		} else {\n			$informations = array();\n		}\n\n		$data[\'information_relateds\'] = array();\n\n        $this->load->model(\'catalog/information\');\n\n		foreach ($informations as $information_related) {\n			$related_info = $this->model_catalog_information->getInformation($information_related[\'information_id\']);\n\n			if ($related_info) {\n				$data[\'information_relateds\'][] = array(\n					\'information_id\' => $related_info[\'information_id\'],\n					\'title\'          => $related_info[\'title\'],\n                    \'route\'          => $information_related[\'route\']\n				);\n			}\n		}\n\n		if (isset($this->request->post[\'main_category\'])) {\n			$data[\'main_category\'] = $this->request->post[\'main_category\'];\n		} elseif (isset($this->request->get[\'product_id\']) && $categories) {\n			$data[\'main_category\'] = $this->model_catalog_product->getMainCategory($this->request->get[\'product_id\']);\n		} else {\n			$data[\'main_category\'] = \'\';\n		}\n\n		if (isset($this->request->get[\'product_id\'])) {\n			$data[\'product_id\'] = $this->request->get[\'product_id\'];\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($products as $product_id) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		foreach ($products as $product) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$related_info = $this->model_catalog_product->getProduct($product_id);\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n			$related_info = $this->model_catalog_product->getProduct($product[\'product_id\']);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n					\'product_id\' => $related_info[\'product_id\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                    \'route\'      => $product[\'route\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$option_data = array();\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n				if (isset($this->request->get[\'product_id\']) && $this->request->get[\'product_id\'] == $result[\'product_id\']) {\n					continue;\n				}\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/product.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[description = \'\" . $this->db->escape($value[\'description\']) . \"\']]></search>\n        <add position=\"replace\"><![CDATA[header = \'\" . $this->db->escape($value[\'header\']) . \"\', short_description = \'\" . $this->db->escape($value[\'short_description\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'description\'      => $result[\'description\'],\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n				\'header\'            => $result[\'header\'],\n				\'short_description\' => $result[\'short_description\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getProductRelated($product_id) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getMainCategory($product_id) {\n		$query = $this->db->query(\"SELECT category_id FROM \" . DB_PREFIX . \"product_to_category WHERE product_id = \'\" . (int)$product_id . \"\' AND main_category = \'1\'\");\n\n		if ($query->row) {\n			return $query->row[\'category_id\'];\n		} else {\n			return \'\';\n		}\n	}\n\n	public function getInformationRelated($product_id) {\n		$information_related_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_related_data[] = array(\n				\'information_id\' => $result[\'information_id\'],\n				\'route\'          => $result[\'route\']\n            );\n		}\n\n		return $information_related_data;\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_to_category SET product_id = \'\" . (int)$product_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				if (!empty($data[\'main_category\']) && $data[\'main_category\'] == (int)$category_id) {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_to_category SET product_id = \'\" . (int)$product_id . \"\', category_id = \'\" . (int)$category_id . \"\', main_category = \'1\'\");\n				} else {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_to_category SET product_id = \'\" . (int)$product_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n				}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$product_related_data[] = $result[\'related_id\'];\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n			$product_related_data[] = array(\n				\'product_id\' => $result[\'related_id\'],\n				\'route\'      => $result[\'route\']\n            );\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			foreach ($data[\'product_related\'] as $related_id) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n			foreach ($data[\'product_related\'] as $product_related) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$product_id . \"\' AND related_id = \'\" . (int)$related_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$product_id . \"\' AND related_id = \'\" . (int)$product_related[\'product_id\'] . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$product_id . \"\', related_id = \'\" . (int)$related_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$product_id . \"\', related_id = \'\" . (int)$product_related[\'product_id\'] . \"\', route = \'\" . (int)$product_related[\'route\'] . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$related_id . \"\' AND related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$product_related[\'product_id\'] . \"\' AND related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$related_id . \"\', related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$product_related[\'product_id\'] . \"\', related_id = \'\" . (int)$product_id . \"\', route = \'\" . (int)$product_related[\'route\'] * -1 . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		if (isset($data[\'product_reward\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($data[\'information_related\'])) {\n			$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET product_id = \'\" . (int)$product_id . \"\', information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		if (isset($data[\'product_reward\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n\n		if (isset($data[\'information_related\'])) {\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET product_id = \'\" . (int)$product_id . \"\', information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$data[\'product_related\'] = $this->getProductRelated($product_id);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			$data[\'information_related\'] = $this->getInformationRelated($product_id);\n			$data[\'main_category\'] = $this->getMainCategory($product_id);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/product_form.twig\">\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n                  <div class=\"form-group\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-header{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_header }}\">{{ entry_header }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"product_description[{{ language.language_id }}][header]\" value=\"{{ product_description[language.language_id] ? product_description[language.language_id].header }}\" placeholder=\"{{ entry_header }}\" id=\"input-header{{ language.language_id }}\" class=\"form-control\" />\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-short-description{{ language.language_id }}\">{{ entry_short_description }}<br /><button type=\"button\" class=\"btn btn-primary btn-xs summernote\" data-toggle=\"button\" aria-pressed=\"false\" autocomplete=\"off\" data-language=\"{{ language.language_id }}\">Summernote</button></label>\n                    <div class=\"col-sm-10\">\n                      <textarea name=\"product_description[{{ language.language_id }}][short_description]\" placeholder=\"{{ entry_short_description }}\" id=\"input-short-description{{ language.language_id }}\" class=\"form-control\">{{ product_description[language.language_id] ? product_description[language.language_id].short_description }}</textarea>\n                     </div>\n                  </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                    <div id=\"product-category{{ product_category.category_id }}\"><i class=\"fa fa-minus-circle\"></i> {{ product_category.name }}\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                    {% if main_category and main_category == product_category.category_id %}\n                    <div id=\"product-category{{ product_category.category_id }}\" class=\"text-success\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-dot-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category }}\"></i> {{ product_category.name }}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <input type=\"hidden\" name=\"product_category[]\" value=\"{{ product_category.category_id }}\"\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                      <input type=\"hidden\" name=\"main_category\" value=\"{{ product_category.category_id }}\" />\n                    </div>\n                    {% else %}\n                    <div id=\"product-category{{ product_category.category_id }}\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> {{ product_category.name }}\n                      <input type=\"hidden\" name=\"product_category[]\" value=\"{{ product_category.category_id }}\" />\n                    </div>\n                    {% endif %}\n                    <div class=\"hidden\">\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}]]></search>\n        <add position=\"replace\"><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}&filter_information=0]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$(\'#product-category\').append(\'<div id=\"product-category\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_category[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n        $(\'#product-category\').append(\'<div id=\"product-category\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_category[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n// Filter\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n$(\'#product-category\').delegate(\'.fa-circle-o\', \'click\', function() {\n	$(\'#product-category div\').children(\'.fa-dot-circle-o\').toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'#product-category div\').removeClass(\'text-success\');\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(this).parent().addClass(\'text-success\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().append(\'<input type=\"hidden\" name=\"main_category\" value=\"\' + $(this).parent().find(\'input[name=\\\'product_category[]\\\']\').val() + \'\" />\');\n	$(\'#product-category div\').children(\'.fa-circle-o\').attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n    $(this).attr({\'title\':\'{{ help_main_category }}\', \'data-original-title\':\'{{ help_main_category }}\'});\n});\n$(\'#product-category\').delegate(\'.fa-dot-circle-o\', \'click\', function() {\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().removeClass(\'text-success\');\n    $(this).attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n});\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                    <div id=\"product-related{{ product_related.product_id }}\"><i class=\"fa fa-minus-circle\"></i> {{ product_related.name }}\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                    <div id=\"product-related{{ product_related.product_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if product_related.route and product_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif product_related.route and product_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ product_related.name }}\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][product_id]\" value=\"{{ product_related.product_id }}\" />\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][route]\" value=\"{{ product_related.route }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-related-information\"><span data-toggle=\"tooltip\" title=\"{{ help_related }}\">{{ entry_related_information }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"related_information\" value=\"\" placeholder=\"{{ entry_related_information }}\" id=\"input-related-information\" class=\"form-control\" />\n                  <div id=\"information-related\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_related in information_relateds %}\n                    <div id=\"information-related{{ information_related.information_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if information_related.route and information_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif information_related.route and information_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ information_related.title }}\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][information_id]\" value=\"{{ information_related.information_id }}\" />\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][route]\" value=\"{{ information_related.route }}\" />\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		  <input type=\"hidden\" name=\"product_related[]\" value=\"{{ product_related.product_id }}\" />\n        ]]></search>\n        <add position=\"replace\"><![CDATA[]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		  <input type=\"hidden\" name=\"product_related[]\" value=\"{{ product_related.product_id }}\"/>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[index.php?route=catalog/product/autocomplete&user_token={{ user_token }}]]></search>\n        <add position=\"replace\"><![CDATA[index.php?route=catalog/product/autocomplete&user_token={{ user_token }}{% if product_id %}&product_id={{ product_id }}{% endif %}]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$(\'#product-related\').append(\'<div id=\"product-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_related[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$(\'#product-related\').append(\'<div id=\"product-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][product_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n$(\'#product-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n$(\'#product-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n$(\'#product-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n	$(this).parent().remove();\n});\n\n// Related Information\n$(\'input[name=\\\'related_information\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'related_information\\\']\').val(\'\');\n\n		$(\'#information-related\' + item[\'value\']).remove();\n\n		$(\'#information-related\').append(\'<div id=\"information-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][information_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n	}\n});\n\n$(\'#information-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#information-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n\n$(\'#information-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <style type=\"text/css\"><!--\n#product-category .fa-circle-o {\n    display: none;\n}\n#product-category div:hover .fa-circle-o {\n    display: inline;\n}\n--></style>\n  <script type=\"text/javascript\"><!--\n$(\'.summernote\').on(\'click\', function () {\n	if ($(this).hasClass(\'active\')) {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote(\'destroy\');\n	} else {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote({\n			focus: true,\n			lang: \'{{ summernote }}\'\n		});\n	}\n})\n\n$(document).ready(function() {\n	$(\'[name*=\\\'[short_description]\\\']\').each(function() {\n		if ($(this).val()) {\n            $(this).parent().prev().children(\'.summernote\').trigger(\'click\');\n		}\n	});\n});\n//--></script>\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- User -->\n  <file path=\"admin/model/user/user.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getTotalUsers() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getUsersByGroup($user_group_id) {\n		$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"user` WHERE user_group_id = \'\" . (int)$user_group_id . \"\' ORDER BY username\");\n\n		return $query->rows;\n	}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Review -->\n  <file path=\"admin/controller/catalog/review.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'rating\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'reply\'])) {\n			$data[\'reply\'] = $this->request->post[\'reply\'];\n		} elseif (!empty($review_info)) {\n			$data[\'reply\'] = $review_info[\'reply\'];\n		} else {\n			$data[\'reply\'] = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$url = \'\';\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'information\'])) {\n			$url .= \'&information=\' . $this->request->get[\'information\'];\n		}\n        \n		if (isset($this->request->get[\'filter_information\'])) {\n			$url .= \'&filter_information=\' . urlencode(html_entity_decode($this->request->get[\'filter_information\'], ENT_QUOTES, \'UTF-8\'));\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_information\'])) {\n			$filter_information = $this->request->get[\'filter_information\'];\n		} else {\n			$filter_information = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$filter_data = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'information\'        => isset($this->request->get[\'information\']) ? $this->request->get[\'information\'] : \'\',\n			\'filter_information\' => $filter_information,\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'name\'       => $result[\'name\'],\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				\'name\'       => isset($result[\'name\']) ? $result[\'name\'] : \'\',\n				\'title\'      => isset($result[\'title\']) ? $result[\'title\'] : \'\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort_product\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=pd.name\' . $url, true);\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$data[\'sort_information\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=id.title\' . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'filter_product\'] = $filter_product;\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$url = \'\';\n\n		if (isset($this->request->get[\'sort\'])) {\n			$url .= \'&sort=\' . $this->request->get[\'sort\'];\n		}\n\n		if (isset($this->request->get[\'order\'])) {\n			$url .= \'&order=\' . $this->request->get[\'order\'];\n		}\n\n		if (isset($this->request->get[\'information\'])) {\n			$data[\'information\'] = true;\n			$data[\'type_url\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n		} else {\n			$data[\'information\'] = false;\n			$data[\'type_url\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&information=1\' . $url, true);\n		}\n		\n		$data[\'filter_information\'] = $filter_information;\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->error[\'author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->error[\'information\'])) {\n			$data[\'error_information\'] = $this->error[\'information\'];\n		} else {\n			$data[\'error_information\'] = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'information_id\'])) {\n			$data[\'information_id\'] = $this->request->post[\'information_id\'];\n		} elseif (!empty($review_info)) {\n			$data[\'information_id\'] = $review_info[\'information_id\'];\n		} else {\n			$data[\'information_id\'] = \'\';\n		}\n\n		if (isset($this->request->post[\'information\'])) {\n			$data[\'information\'] = $this->request->post[\'information\'];\n		} elseif (!empty($review_info)) {\n			$data[\'information\'] = $review_info[\'information\'];\n		} else {\n			$data[\'information\'] = \'\';\n		}\n\n		if (isset($this->request->get[\'information\'])) {\n			$data[\'information_type\'] = 1;\n		} else {\n			$data[\'information_type\'] = 0;\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (!$this->request->post[\'product_id\']) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		if (isset($this->request->post[\'product_id\']) && empty($this->request->post[\'product_id\'])) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$this->error[\'product\'] = $this->language->get(\'error_product\');\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		} elseif (isset($this->request->post[\'information_id\']) && empty($this->request->post[\'information_id\'])) {\n			$this->error[\'information\'] = $this->language->get(\'error_information\');\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/review.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[product_id = \'\" . (int)$data[\'product_id\'] . \"\']]></search>\n        <add position=\"replace\"><![CDATA[product_id = \'\" . (isset($data[\'product_id\']) ? (int)$data[\'product_id\'] : \'\') . \"\', information_id = \'\" . (isset($data[\'information_id\']) ? (int)$data[\'information_id\'] : \'\') . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[text = \'\" . $this->db->escape(strip_tags($data[\'text\'])) . \"\']]></search>\n        <add position=\"replace\"><![CDATA[text = \'\" . $this->db->escape(strip_tags($data[\'text\'])) . \"\', reply = \'\" . $this->db->escape(strip_tags($data[\'reply\'])) . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[AS product]]></search>\n        <add position=\"replace\"><![CDATA[AS product, (SELECT id.title FROM \" . DB_PREFIX . \"information_description id WHERE id.information_id = r.information_id AND id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\') AS information]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		if (!empty($data[\'filter_author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'information\'])) {\n			$sql = \"SELECT r.review_id, id.title, r.author, r.rating, r.status, r.date_added FROM \" . DB_PREFIX . \"review r LEFT JOIN \" . DB_PREFIX . \"information_description id ON (r.information_id = id.information_id) WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n\n			if (!empty($data[\'filter_information\'])) {\n				$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_information\']) . \"%\'\";\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		if (!empty($data[\'filter_author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'information\'])) {\n			$sql = \"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"review r LEFT JOIN \" . DB_PREFIX . \"information_description id ON (r.information_id = id.information_id) WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n\n			if (!empty($data[\'filter_information\'])) {\n				$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_information\']) . \"%\'\";\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$sort_data = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[			\'id.title\',]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		$this->cache->delete(\'product\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		if (isset($data[\'product_id\'])) {\n			$this->cache->delete(\'product\');\n		}\n\n		if (isset($data[\'information_id\'])) {\n			$this->cache->delete(\'information\');\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		$this->cache->delete(\'product\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		if (isset($data[\'product_id\'])) {\n			$this->cache->delete(\'product\');\n		}\n\n		if (isset($data[\'information_id\'])) {\n			$this->cache->delete(\'information\');\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"2\"><![CDATA[\n		$this->cache->delete(\'product\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$this->cache->delete(\'product\');\n		$this->cache->delete(\'information\');\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/review_form.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <label class=\"col-sm-2 control-label\" for=\"input-product\"><span data-toggle=\"tooltip\" title=\"{{ help_product }}\">{{ entry_product }}</span></label>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            {% if information_type %}\n            <label class=\"col-sm-2 control-label\" for=\"input-information\"><span data-toggle=\"tooltip\" title=\"{{ help_information }}\">{{ entry_information }}</span></label>\n            <div class=\"col-sm-10\">\n              <input type=\"text\" name=\"information\" value=\"{{ information }}\" placeholder=\"{{ entry_information }}\" id=\"input-information\" class=\"form-control\" />\n              <input type=\"hidden\" name=\"information_id\" value=\"{{ information_id }}\" />\n              {% if error_information %}\n              <div class=\"text-danger\">{{ error_information }}</div>\n              {% endif %} </div>\n            {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <div class=\"text-danger\">{{ error_product }}</div>\n        ]]></search>\n        <add position=\"after\" offset=\"1\"><![CDATA[\n            {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"3\"><![CDATA[\n          <div class=\"form-group required\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n          <div class=\"form-group\">\n            <label class=\"col-sm-2 control-label\" for=\"input-reply\">{{ entry_reply }}</label>\n            <div class=\"col-sm-10\">\n              <textarea name=\"reply\" cols=\"60\" rows=\"8\" placeholder=\"{{ entry_reply }}\" id=\"input-reply\" data-toggle=\"summernote\" data-lang=\"{{ summernote }}\" class=\"form-control\">{{ reply }}</textarea>\n            </div>\n          </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n$(\'input[name=\\\'product\\\']\').autocomplete({\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n$(\'input[name=\\\'information\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',			\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'information\\\']\').val(item[\'label\']);\n		$(\'input[name=\\\'information_id\\\']\').val(item[\'value\']);		\n	}	\n});\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <link href=\"view/javascript/codemirror/lib/codemirror.css\" rel=\"stylesheet\" />\n  <link href=\"view/javascript/codemirror/theme/monokai.css\" rel=\"stylesheet\" />\n  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/codemirror.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/xml.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/formatting.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote.js\"></script>\n  <link href=\"view/javascript/summernote/summernote.css\" rel=\"stylesheet\" />\n  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote-image-attributes.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/summernote/opencart.js\"></script> \n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/review_list.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n      <div class=\"pull-right\">\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n        <div class=\"btn-group\">\n          {% if information %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ entry_review_information }}\"><i class=\"fa fa-file-text-o fa-fw\"></i></span>\n          <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">{{ entry_review_information }} <span class=\"caret\"></span></button>\n          <ul class=\"dropdown-menu dropdown-menu-right\"><li><a href=\"{{ type_url }}\"><i class=\"fa fa-shopping-cart fa-fw\"></i> {{ entry_review_product }}</a></li></ul>\n          {% else %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ entry_review_product }}\"><i class=\"fa fa-shopping-cart fa-fw\"></i></span>\n          <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">{{ entry_review_product }} <span class=\"caret\"></span></button>\n          <ul class=\"dropdown-menu dropdown-menu-right\"><li><a href=\"{{ type_url }}\"><i class=\"fa fa-file-text-o fa-fw\"></i> {{ entry_review_information }}</a></li></ul>\n          {% endif %}\n        </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <label class=\"control-label\" for=\"input-product\">{{ entry_product }}</label>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n              {% if information %}\n              <label class=\"control-label\" for=\"input-information\">{{ entry_information }}</label>\n              <input type=\"text\" name=\"filter_information\" value=\"{{ filter_information }}\" placeholder=\"{{ entry_information }}\" id=\"input-product\" class=\"form-control\" />\n              {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <input type=\"text\" name=\"filter_product\" value=\"{{ filter_product }}\" placeholder=\"{{ entry_product }}\" id=\"input-product\" class=\"form-control\" />\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n              {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <td style=\"width: 1px;\" class=\"text-center\"><input type=\"checkbox\" onclick=\"$(\'input[name*=\\\'selected\\\']\').prop(\'checked\', this.checked);\" /></td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                      {% if information %}\n                      <td class=\"text-left\">{% if sort == \'id.title\' %} <a href=\"{{ sort_information }}\" class=\"{{ order|lower }}\">{{ column_information }}</a> {% else %} <a href=\"{{ sort_information }}\">{{ column_information }}</a> {% endif %}</td>\n                      {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <td class=\"text-left\">{% if sort == \'pd.name\' %} <a href=\"{{ sort_product }}\" class=\"{{ order|lower }}\">{{ column_product }}</a> {% else %} <a href=\"{{ sort_product }}\">{{ column_product }}</a> {% endif %}</td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                      {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                    <td class=\"text-left\">{{ review.name }}</td>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                    {% if information %}\n                    <td class=\"text-left\">{{ review.title }}</td>\n                    {% else %}\n                    <td class=\"text-left\">{{ review.name }}</td>\n                    {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	var filter_product = $(\'input[name=\\\'filter_product\\\']\').val();\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n    {% if information %}\n	url += \'&information=1\';\n\n	var filter_information = $(\'input[name=\\\'filter_information\\\']\').val();\n	\n	if (filter_information) {\n		url += \'&filter_information=\' + encodeURIComponent(filter_information);\n	}\n    {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	var filter_author = $(\'input[name=\\\'filter_author\\\']\').val();\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n    {% endif %}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Report -->\n  <file path=\"admin/controller/extension/report/customer_search.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'products\'    => $result[\'products\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'informations\' => $result[\'informations\'],\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/extension/report/customer.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[cs.products,]]></search>\n        <add position=\"replace\"><![CDATA[cs.products, cs.informations,]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/extension/report/customer_search_info.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n                <td class=\"text-left\">{{ column_products }}</td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                <td class=\"text-left\">{{ column_informations }}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <td class=\"text-left\">{{ search.products }}</td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n              <td class=\"text-left\">{{ search.informations }}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[colspan=\"6\"]]></search>\n        <add position=\"replace\"><![CDATA[colspan=\"7\"]]></add>\n      </operation>\n  </file>\n\n<!-- optimblog-category.ocmod -->\n\n  <!-- Category -->\n  <file path=\"catalog/controller/product/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[utf8_substr(trim(strip_tags(html_entity_decode($result[\'description\']]]></search>\n        <add position=\"replace\"><![CDATA[!empty($result[\'short_description\']) ? trim(html_entity_decode($result[\'short_description\'], ENT_QUOTES, \'UTF-8\')) : utf8_substr(trim(strip_tags(html_entity_decode($result[\'description\']]]></add>\n      </operation>\n  </file>\n\n  <!-- Product -->\n  <file path=\"catalog/controller/product/product.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'text\'       => nl2br($result[\'text\']),\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'reply\'      => html_entity_decode($result[\'reply\'], ENT_QUOTES, \'UTF-8\'),\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Common Menu -->\n  <file path=\"catalog/controller/common/menu.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->load->model(\'catalog/product\');\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->load->model(\'extension/information/optimblog_information\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\')]]></search>\n        <add position=\"replace\"><![CDATA[($category[\'information\'] ? ($category[\'information\'] && $this->config->get(\'information_optimblog_information_count\') ? \' (\' . $this->model_extension_information_optimblog_information->getTotalInformations($filter_data) . \')\' : \'\') : ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'))]]></add>\n      </operation>\n  </file>\n\n  <!-- Information Sitemap -->\n  <file path=\"catalog/controller/information/sitemap.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($categories_1 as $category_1) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($category_1[\'information\']) {\n				$level_2_data = array();\n\n				$categories_2 = $this->model_catalog_category->getCategories($category_1[\'category_id\']);\n\n				foreach ($categories_2 as $category_2) {\n					$level_3_data = array();\n\n					$categories_3 = $this->model_catalog_category->getCategories($category_2[\'category_id\']);\n\n					foreach ($categories_3 as $category_3) {\n					$level_3_data[] = array(\n							\'name\' => $category_3[\'name\'],\n							\'href\' => $this->url->link(\'product/category\', \'path=\' . $category_1[\'category_id\'] . \'_\' . $category_2[\'category_id\'] . \'_\' . $category_3[\'category_id\'])\n						);\n					}\n\n					$level_2_data[] = array(\n						\'name\'     => $category_2[\'name\'],\n						\'children\' => $level_3_data,\n						\'href\'     => $this->url->link(\'product/category\', \'path=\' . $category_1[\'category_id\'] . \'_\' . $category_2[\'category_id\'])\n					);\n				}\n\n				$data[\'information_categories\'][] = array(\n					\'name\'     => $category_1[\'name\'],\n					\'children\' => $level_2_data,\n					\'href\'     => $this->url->link(\'product/category\', \'path=\' . $category_1[\'category_id\'])\n				);\n\n				continue;\n			}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->load->model(\'catalog/information\');\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->load->model(\'extension/information/optimblog_information\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($this->model_catalog_information->getInformations() as $result) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($this->model_extension_information_optimblog_information->getMainCategory($result[\'information_id\'])) {\n				continue;\n			}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Product Search -->\n  <file path=\"catalog/controller/product/search.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($categories_1 as $category_1) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($category_1[\'information\']) {\n				continue;\n			}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n					\'products\'      => $product_total,\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n					\'informations\'  => 0,\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Account Search -->\n  <file path=\"catalog/model/account/search.php\">\n  	  <operation error=\"skip\">\n        <search><![CDATA[`products` = \'\" . (int)$data[\'products\'] . \"\',]]></search>\n        <add position=\"replace\"><![CDATA[`products` = \'\" . (int)$data[\'products\'] . \"\', `informations` = \'\" . (int)$data[\'informations\'] . \"\',]]></add>\n      </operation>\n  </file>\n\n  <!-- Module Category -->\n  <file path=\"catalog/controller/extension/module/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($categories as $category) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($category[\'information\']) {\n				continue;\n			}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Seo Url -->\n  <file path=\"catalog/controller/startup/seo_url.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n				} elseif (isset($this->request->get[\'path\'])) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				} elseif (isset($this->request->get[\'path\']) && !isset($this->request->get[\'information_id\'])) {\n        ]]></add>\n      </operation>\n  </file>\n\n\n<!-- optimblog-category-theme-default.ocmod -->\n\n  <!-- Category -->\n  <file path=\"catalog/view/theme/default/template/product/category.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[h2]]></search>\n        <add position=\"replace\"><![CDATA[h1]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n      {% if not categories and not products %}\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n      {% if informations %}\n      {% if view_show or sort_show or limit_show %}\n      <div class=\"row\">\n        {% if view_show %}\n        <div class=\"col-sm-5 hidden-xs\">\n          <div class=\"btn-group btn-group-sm\">\n            <button type=\"button\" id=\"information-block-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_block }}\"><i class=\"fa fa-align-justify\"></i></button>\n            <button type=\"button\" id=\"information-list-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_list }}\"><i class=\"fa fa-th-list\"></i></button>\n            <button type=\"button\" id=\"information-grid-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_grid }}\"><i class=\"fa fa-th\"></i></button>\n          </div>\n        </div>\n        {% endif %}\n        {% if sort_show %}\n        <div class=\"col-sm-4 col-xs-6 {{ not limit_show or not view_show ? \'col-sm-offset-5 col-xs-offset-6\' }}\">\n          <div class=\"form-group input-group input-group-sm\">\n            <label class=\"input-group-addon\" for=\"input-sort\">{{ text_sort }}</label>\n            <select id=\"input-sort\" class=\"form-control\" onchange=\"location = this.value;\">\n              {% for sorts in sorts %}\n              {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n              <option value=\"{{ sorts.href }}\" selected=\"selected\">{{ sorts.text }}</option>\n              {% else %}\n              <option value=\"{{ sorts.href }}\">{{ sorts.text }}</option>\n              {% endif %}\n              {% endfor %}\n            </select>\n          </div>\n        </div>\n        {% endif %}\n        {% if limit_show %}\n        <div class=\"col-sm-3 col-xs-6 {{ not sort_show ? \'col-sm-offset-4 col-xs-offset-6\' }} {{ not view_show ? \'pull-right\' }}\">\n          <div class=\"form-group input-group input-group-sm\">\n            <label class=\"input-group-addon\" for=\"input-limit\">{{ text_limit }}</label>\n            <select id=\"input-limit\" class=\"form-control\" onchange=\"location = this.value;\">\n              {% for limits in limits %}\n              {% if limits.value == limit %}\n              <option value=\"{{ limits.href }}\" selected=\"selected\">{{ limits.text }}</option>\n              {% else %}\n              <option value=\"{{ limits.href }}\">{{ limits.text }}</option>\n              {% endif %}\n              {% endfor %}\n            </select>\n          </div>\n        </div>\n        {% endif %}\n      </div>\n      {% endif %}\n      <div class=\"row\">\n        {% for information in informations %}\n        <div class=\"information-layout {{ view }} col-xs-12\">\n          <div class=\"thumbnail media\">\n            {% if information.thumb %}\n            <div class=\"image pull-left\"><a href=\"{{ information.href }}\"><img src=\"{{ information.thumb }}\" alt=\"{{ information.title }}\" title=\"{{ information.title }}\" class=\"img-responsive\" /></a></div>\n            {% endif %}\n            <div class=\"caption media-body\">\n              <h4><a href=\"{{ information.href }}\">{{ information.title }}</a></h4>\n              {% if show_author or show_date or show_review %}\n              <ul class=\"list-inline text-muted small\">\n                {% if show_date %}\n                <li><i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i> {{ information.date_added }}</li>\n                {% endif %}\n                {% if show_author %}\n                <li><i class=\"fa fa-user-o\" aria-hidden=\"true\"></i> {{ information.author }}</li>\n                {% endif %}\n                {% if show_review %}\n                <li><i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i> {{ information.reviews }}</li>\n                {% endif %}\n                {% if information.rating %}\n                <li class=\"rating\"> {% for i in 1..5 %}\n                  {% if information.rating < i %} <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-2x\"></i></span> {% else %} <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-2x\"></i><i class=\"fa fa-star-o fa-stack-2x\"></i></span>{% endif %}\n                  {% endfor %} </li>\n                {% endif %}\n              </ul>\n              {% endif %}\n              <p>{{ information.description }}</p>\n              <a href=\"{{ information.href }}\" type=\"button\" class=\"btn btn-primary\" title=\"{{ text_read }}\">{{ text_read }}</a>\n            </div>\n          </div>\n        </div>\n        {% endfor %}\n      </div>\n      <div class=\"row\">\n        <div class=\"col-sm-6 text-left\">{{ pagination }}</div>\n        <div class=\"col-sm-6 text-right\">{{ results }}</div>\n      </div>\n      {% endif %}\n      \n      {% if not categories and not products and not informations and not category_information %}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Information -->\n  <file path=\"catalog/view/theme/default/template/information/information.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[{{ description }}]]></search>\n        <add position=\"replace\"><![CDATA[\n      {% if not information_exclusion %}\n      <ul class=\"list-inline text-muted\">\n        {% if show_date %}\n        <li><i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i> {{ date_added }}</li>\n        {% endif %}\n        {% if show_author %}\n        <li><i class=\"fa fa-user-o\" aria-hidden=\"true\"></i> {{ author }}</li>\n        {% endif %}\n        {% if manufacturer and show_manufacturer %}\n        <li>{{ text_manufacturer }} <a href=\"{{ manufacturers }}\">{{ manufacturer }}</a></li>\n        {% endif %}\n        {% if show_review %}\n        <li><a href=\"\" onclick=\"$(\'html, body\').animate({ scrollTop: $(\'#review\').offset().top }, \'slow\'); return false;\"><i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i> {{ reviews }}</a></li>\n        <li class=\"rating\">{% for i in 1..5 %}\n          {% if rating < i %}<span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span>{% else %}<span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span>{% endif %}\n          {% endfor %}</li>\n        {% endif %}\n      </ul>\n      {% endif %}\n      {% if thumb and not images %}\n      <div class=\"images\">\n        <a class=\"thumbnail\" href=\"{{ popup }}\" title=\"{{ heading_title }}\"><img src=\"{{ thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-responsive\" /></a>\n      </div>\n      {% elseif not thumb and images|length == 1 %}\n      <div class=\"images\">\n      {% for image in images %}\n        <a class=\"thumbnail\" href=\"{{ image.popup }}\" title=\"{{ heading_title }}\"> <img src=\"{{ image.thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" /></a>\n      {% endfor %}\n      </div>\n      {% elseif images|length > 1 %}\n      <div class=\"swiper-viewport\">\n        <div id=\"slideshow-information\" class=\"swiper-container\">\n          <div class=\"swiper-wrapper images\">\n            {% if thumb %}\n            <div class=\"swiper-slide text-center\">\n              <a href=\"{{ popup }}\" title=\"{{ heading_title }}\"><img src=\"{{ thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-responsive\" /></a>\n            </div>\n            {% endif %}\n            {% for image in images %}\n            <div class=\"swiper-slide text-center\">\n              <a href=\"{{ image.popup }}\" title=\"{{ heading_title }}\"><img src=\"{{ image.thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-responsive\" /></a>\n            </div>\n            {% endfor %}\n          </div>\n        </div>\n        <div class=\"swiper-pagination slideshow-information\"></div>\n        <div class=\"swiper-pager\">\n          <div class=\"swiper-button-next\"></div>\n          <div class=\"swiper-button-prev\"></div>\n        </div>\n      </div>\n      <script type=\"text/javascript\"><!--\n      $(\'#slideshow-information\').swiper({\n      	mode: \'horizontal\',\n      	slidesPerView: 1,\n      	pagination: \'.slideshow-information\',\n      	paginationClickable: true,\n      	nextButton: \'.swiper-button-next\',\n      	prevButton: \'.swiper-button-prev\',\n      	spaceBetween: 30,\n      	autoplay: 5000,\n      	autoplayDisableOnInteraction: true\n      });\n      --></script>\n      {% endif %}\n	  {{ description }}\n      {% if attribute_groups %}\n      <div id=\"specification\">\n        <h3>{{ text_attribute }}</h3>\n        <table class=\"table table-bordered\">\n          {% for attribute_group in attribute_groups %}\n          <thead>\n            <tr>\n              <td colspan=\"2\"><strong>{{ attribute_group.name }}</strong></td>\n            </tr>\n          </thead>\n          <tbody>\n            {% for attribute in attribute_group.attribute %}\n            <tr>\n              <td>{{ attribute.name }}</td>\n              <td>{{ attribute.text }}</td>\n            </tr>\n            {% endfor %}\n          </tbody>\n          {% endfor %}\n        </table>\n      </div>\n      {% endif %}\n      {% if show_review and not information_exclusion %}\n      <h3>{{ text_review }}</h3>\n      <div id=\"review\"></div>\n      {% endif %}\n      {% if review_status and not information_exclusion %}\n      <form class=\"form-horizontal\" id=\"form-review\">\n        <h4>{{ text_write }}</h4>\n        {% if review_guest %}\n        <div class=\"form-group required\">\n          <div class=\"col-sm-12\">\n            <label class=\"control-label\" for=\"input-name\">{{ entry_name }}</label>\n            <input type=\"text\" name=\"name\" value=\"{{ customer_name }}\" id=\"input-name\" class=\"form-control\" />\n          </div>\n        </div>\n        <div class=\"form-group required\">\n          <div class=\"col-sm-12\">\n            <label class=\"control-label\" for=\"input-review\">{{ entry_review }}</label>\n            <textarea name=\"text\" rows=\"5\" id=\"input-review\" class=\"form-control\"></textarea>\n            <div class=\"help-block\">{{ text_note }}</div>\n          </div>\n        </div>\n        <div class=\"form-group required\">\n          <div class=\"col-sm-12\">\n            <label class=\"control-label\">{{ entry_rating }}</label>\n            &nbsp;&nbsp;&nbsp; {{ entry_bad }}&nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"1\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"2\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"3\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"4\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"5\" />\n            &nbsp;{{ entry_good }}</div>\n        </div>\n        {{ captcha }}\n        <div class=\"buttons clearfix\">\n          <div class=\"pull-right\">\n            <button type=\"button\" id=\"button-review\" data-loading-text=\"{{ text_loading }}\" class=\"btn btn-primary\">{{ button_continue }}</button>\n          </div>\n        </div>\n        {% else %}\n        {{ text_login }}\n        {% endif %}\n      </form>\n      {% endif %}\n      {% if tags %}\n      <p>{{ text_tags }}\n      {% for i in 0..tags|length %}\n      {% if i < (tags|length - 1) %} <a href=\"{{ tags[i].href }}\">{{ tags[i].tag }}</a>,\n      {% else %} <a href=\"{{ tags[i].href }}\">{{ tags[i].tag }}</a> {% endif %}\n      {% endfor %} </p>\n      {% endif %}\n      <hr>\n      {{ share }}\n\n      {% if informations %}\n      <h3>{{ text_related }}</h3>\n      <div class=\"row\"> {% set i = 0 %}\n        {% for information in informations %}\n        {% if column_left and column_right %}\n        {% set class = \'col-xs-8 col-sm-6\' %}\n        {% elseif column_left or column_right %}\n        {% set class = \'col-xs-6 col-md-4\' %}\n        {% else %}\n        {% set class = \'col-xs-6 col-sm-3\' %}\n        {% endif %}\n        <div class=\"{{ class }}\">\n          <div class=\"thumbnail\">\n            <div class=\"image\"><a href=\"{{ information.href }}\"><img src=\"{{ information.thumb }}\" alt=\"{{ information.name }}\" title=\"{{ information.name }}\" class=\"img-responsive\" /></a></div>\n            <div class=\"caption\">\n              <h4><a href=\"{{ information.href }}\">{{ information.title }}</a></h4>\n              {% if show_related_author or show_related_date or show_related_review %}\n              <ul class=\"list-inline text-muted small\">\n                {% if show_related_date %}\n                <li><i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i> {{ information.date_added }}</li>\n                {% endif %}\n                {% if show_related_author %}\n                <li><i class=\"fa fa-user-o\" aria-hidden=\"true\"></i> {{ information.author }}</li>\n                {% endif %}\n                {% if show_related_review %}\n                <li><i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i> {{ information.reviews }}</li>\n                {% endif %}\n                {% if information.rating %}\n                <li class=\"rating\"> {% for j in 1..5 %}\n                  {% if information.rating < j %} <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% else %} <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% endif %}\n                  {% endfor %}</li>\n                {% endif %}\n              </ul>\n              {% endif %}\n              <p>{{ information.description }}</p>\n              <a href=\"{{ information.href }}\" class=\"btn btn-primary btn-xs\" role=\"button\">{{ text_read }}</a>\n            </div>\n          </div>\n        </div>\n        {% if column_left and column_right and (i + 1) % 2 == 0 %}\n        <div class=\"clearfix visible-md visible-sm\"></div>\n        {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% elseif (i + 1) % 4 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% endif %}\n        {% set i = i + 1 %}\n        {% endfor %} </div>\n        {% endif %}\n      {% if products %}\n      <h3>{{ text_related_product }}</h3>\n      <div class=\"row\"> {% set i = 0 %}\n        {% for product in products %}\n        {% if column_left and column_right %}\n        {% set class = \'col-xs-8 col-sm-6\' %}\n        {% elseif column_left or column_right %}\n        {% set class = \'col-xs-6 col-md-4\' %}\n        {% else %}\n        {% set class = \'col-xs-6 col-sm-3\' %}\n        {% endif %}\n        <div class=\"{{ class }}\">\n          <div class=\"product-thumb transition\">\n            <div class=\"image\"><a href=\"{{ product.href }}\"><img src=\"{{ product.thumb }}\" alt=\"{{ product.name }}\" title=\"{{ product.name }}\" class=\"img-responsive\" /></a></div>\n            <div class=\"caption\">\n              <h4><a href=\"{{ product.href }}\">{{ product.name }}</a></h4>\n              <p>{{ product.description }}</p>\n              {% if product.rating %}\n              <div class=\"rating\"> {% for j in 1..5 %}\n                {% if product.rating < j %} <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% else %} <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% endif %}\n                {% endfor %} </div>\n              {% endif %}\n              {% if product.price %}\n              <p class=\"price\"> {% if not product.special %}\n                {{ product.price }}\n                {% else %} <span class=\"price-new\">{{ product.special }}</span> <span class=\"price-old\">{{ product.price }}</span> {% endif %}\n                {% if product.tax %} <span class=\"price-tax\">{{ text_tax }} {{ product.tax }}</span> {% endif %} </p>\n              {% endif %} </div>\n            <div class=\"button-group\">\n              <button type=\"button\" onclick=\"cart.add(\'{{ product.product_id }}\', \'{{ product.minimum }}\');\"><span class=\"hidden-xs hidden-sm hidden-md\">{{ button_cart }}</span> <i class=\"fa fa-shopping-cart\"></i></button>\n              <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_wishlist }}\" onclick=\"wishlist.add(\'{{ product.product_id }}\');\"><i class=\"fa fa-heart\"></i></button>\n              <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_compare }}\" onclick=\"compare.add(\'{{ product.product_id }}\');\"><i class=\"fa fa-exchange\"></i></button>\n            </div>\n          </div>\n        </div>\n        {% if column_left and column_right and (i + 1) % 2 == 0 %}\n        <div class=\"clearfix visible-md visible-sm\"></div>\n        {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% elseif (i + 1) % 4 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% endif %}\n        {% set i = i + 1 %}\n        {% endfor %} </div>\n        {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\"><!--\n$(\'#review\').delegate(\'.pagination a\', \'click\', function(e) {\n    e.preventDefault();\n\n    $(\'#review\').fadeOut(\'slow\');\n\n    $(\'#review\').load(this.href);\n\n    $(\'#review\').fadeIn(\'slow\');\n});\n\n$(\'#review\').load(\'index.php?route=information/information/review&information_id={{ information_id }}\');\n\n$(\'#button-review\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=information/information/write&information_id={{ information_id }}\',\n		type: \'post\',\n		dataType: \'json\',\n		data: $(\"#form-review\").serialize(),\n		beforeSend: function() {\n			$(\'#button-review\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-review\').button(\'reset\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible\').remove();\n\n			if (json[\'error\']) {\n				$(\'#review\').after(\'<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> \' + json[\'error\'] + \'</div>\');\n			}\n\n			if (json[\'success\']) {\n				$(\'#review\').after(\'<div class=\"alert alert-success alert-dismissible\"><i class=\"fa fa-check-circle\"></i> \' + json[\'success\'] + \'</div>\');\n\n				$(\'input[name=\\\'name\\\']\').val(\'\');\n				$(\'textarea[name=\\\'text\\\']\').val(\'\');\n				$(\'input[name=\\\'rating\\\']:checked\').prop(\'checked\', false);\n			}\n		}\n	});\n});\n\n$(document).ready(function() {\n	$(\'.images\').magnificPopup({\n		type:\'image\',\n		delegate: \'a\',\n		gallery: {\n			enabled: true\n		}\n	});\n});\n//--></script> \n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Product -->\n  <file path=\"catalog/view/theme/default/template/product/product.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n        {% if tags %}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n      {% if informations %}\n      <h3>{{ text_related_information }}</h3>\n      <div class=\"row\"> {% set i = 0 %}\n        {% for information in informations %}\n        {% if column_left and column_right %}\n        {% set class = \'col-xs-8 col-sm-6\' %}\n        {% elseif column_left or column_right %}\n        {% set class = \'col-xs-6 col-md-4\' %}\n        {% else %}\n        {% set class = \'col-xs-6 col-sm-3\' %}\n        {% endif %}\n        <div class=\"{{ class }}\">\n          <div class=\"thumbnail\">\n            <div class=\"image\"><a href=\"{{ information.href }}\"><img src=\"{{ information.thumb }}\" alt=\"{{ information.name }}\" title=\"{{ information.name }}\" class=\"img-responsive\" /></a></div>\n            <div class=\"caption\">\n              <h4><a href=\"{{ information.href }}\">{{ information.title }}</a></h4>\n              {% if show_related_author or show_related_date or show_related_review %}\n              <ul class=\"list-inline text-muted small\">\n                {% if show_related_date %}\n                <li><i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i> {{ information.date_added }}</li>\n                {% endif %}\n                {% if show_related_author %}\n                <li><i class=\"fa fa-user-o\" aria-hidden=\"true\"></i> {{ information.author }}</li>\n                {% endif %}\n                {% if show_related_review %}\n                <li><i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i> {{ information.reviews }}</li>\n                {% endif %}\n                {% if information.rating %}\n                <li class=\"rating\"> {% for j in 1..5 %}\n                  {% if information.rating < j %} <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% else %} <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% endif %}\n                  {% endfor %}</li>\n                {% endif %}\n              </ul>\n              {% endif %}\n              <p>{{ information.description }}</p>\n              <a href=\"{{ information.href }}\" class=\"btn btn-primary btn-xs\" role=\"button\">{{ text_read }}</a>\n            </div>\n          </div>\n        </div>\n        {% if column_left and column_right and (i + 1) % 2 == 0 %}\n        <div class=\"clearfix visible-md visible-sm\"></div>\n        {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% elseif (i + 1) % 4 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% endif %}\n        {% set i = i + 1 %}\n        {% endfor %} </div>\n        {% endif %}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Review -->\n  <file path=\"catalog/view/theme/default/template/product/review.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[{% endfor %}</td>]]></search>\n        <add position=\"replace\"><![CDATA[{% endfor %}\n      {% if review.reply %}\n      <div class=\"well well-sm\">{{ review.reply }}</div>\n      {% endif %}\n    </td>]]></add>\n      </operation>\n  </file>\n\n  <!-- Information Sitemap -->\n  <file path=\"catalog/view/theme/default/template/information/sitemap.twig\">\n      <operation error=\"skip\">\n        <search index=\"6\"><![CDATA[</ul>]]></search>\n        <add position=\"before\"><![CDATA[\n            {% for category_1 in information_categories %}\n            <li><a href=\"{{ category_1.href }}\">{{ category_1.name }}</a>\n              {% if category_1.children %}\n              <ul>\n                {% for category_2 in category_1.children %}\n                <li><a href=\"{{ category_2.href }}\">{{ category_2.name }}</a>\n                  {% if category_2.children %}\n                  <ul>\n                    {% for category_3 in category_2.children %}\n                    <li><a href=\"{{ category_3.href }}\">{{ category_3.name }}</a></li>\n                    {% endfor %}\n                  </ul>\n                  {% endif %}\n                </li>\n                {% endfor %}\n              </ul>\n              {% endif %}\n            </li>\n            {% endfor %}\n        ]]></add>\n      </operation>\n  </file>\n</modification>', 1, '2021-04-20 20:21:22');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(4, 7, 'Brainy Filter', 'brainyfilter', 'https://ocmod.net', 'Pro 5.1.3 OC3', 'https://ocmod.net', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>  \n   <id>Brainy Filter</id>\n   <name>Brainy Filter</name>\n   <code>brainyfilter</code>\n   <version>Pro 5.1.3 OC3</version>\n   <author>https://ocmod.net</author>\n   <link>https://ocmod.net</link>\n   \n   <file path=\"catalog/controller/product/*.php\">\n       <operation>\n           <search><![CDATA[$this->model_catalog_product->getProducts($filter_data)]]></search>\n           <add position=\"before\"><![CDATA[            $filter_data[\'filter_bfilter\'] = true;]]></add>\n       </operation>\n       <operation>\n           <search><![CDATA[= $this->model_catalog_product->getTotalProducts($filter_data)]]></search>\n           <add position=\"before\"><![CDATA[            $filter_data[\'filter_bfilter\'] = true;]]></add>\n       </operation>\n   </file>\n   \n   <file path=\"catalog/controller/product/category.php\">\n	  <operation>\n			<search><![CDATA[$category_info = $this->model_catalog_category->getCategory($category_id);]]></search>\n            <add position=\"after\"><![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                if (!$category_info) {\n                    $this->load->language(\'extension/module/brainyfilter\');\n                    $category_info = array(\n                        \'name\' => $this->language->get(\'text_bf_page_title\'),\n                        \'description\' => \'\',\n                        \'meta_description\' => \'\',\n                        \'meta_keyword\' => \'\',\n                        \'meta_title\' => $this->language->get(\'text_bf_page_title\'),\n                        \'image\' => \'\',\n                    );\n                    $this->request->get[\'path\'] = 0;\n                    $showCategories = false;\n                    $route = \'extension/module/brainyfilter/filter\';\n                    $path  = \'\';\n                } else {\n                    $route = \'product/category\';\n                    $path  = \'path=\' . $this->request->get[\'path\'];\n                    $showCategories = true;\n                }\n                /* Brainy Filter (brainyfilter.xml) - End ->*/\n                ]]>\n			</add>\n	  </operation>\n	  <operation>\n			<search><![CDATA[$results = $this->model_catalog_category->getCategories($category_id);]]></search>\n            <add position=\"replace\"><![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                if ($showCategories) {\n                $results = $this->model_catalog_category->getCategories($category_id);\n                } else {\n                    $results = array();\n                }\n                /* Brainy Filter (brainyfilter.xml) - End ->*/\n            ]]>\n			</add>\n	  </operation>\n	  <operation>\n			<search regex=\"true\"><![CDATA[/\\\'product\\/category\\\', \\\'path\\=\\\' \\. \\$this\\-\\>request\\-\\>get\\[\\\'path\\\'\\]/]]></search>\n            <add position=\"replace\"><![CDATA[$route, $path]]>\n			</add>\n	  </operation>\n        <operation>\n            <search><![CDATA[if ($page == 1) {]]></search>\n            <add position=\"before\">\n                <![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                if (isset($category_info[\'category_id\'])) {\n                /* Brainy Filter (brainyfilter.xml) - End ->*/]]>\n            </add>\n        </operation>\n        <operation>\n            <search><![CDATA[if ($limit && ceil($product_total / $limit) > $page) {]]></search>\n            <add position=\"after\" offset=\"2\">\n                <![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                }\n                /* Brainy Filter (brainyfilter.xml) - End ->*/]]>\n            </add>\n        </operation>\n   </file>\n   \n   <file path=\"catalog/controller/product/special.php\">\n        <operation>\n            <search><![CDATA[$product_total = $this->model_catalog_product->getTotalProductSpecials();]]></search>\n            <add position=\"replace\"><![CDATA[\n                $filter_data[\'filter_bfilter\'] = true;\n                $filter_data[\'filter_specials_only\'] = true;\n                $product_total = $this->model_catalog_product->getTotalProducts($filter_data);\n            ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$results = $this->model_catalog_product->getProductSpecials($filter_data);]]></search>\n            <add position=\"replace\"><![CDATA[\n                $results = $this->model_catalog_product->getProducts($filter_data);\n            ]]></add>\n        </operation>\n   </file>\n   \n   <file path=\"catalog/controller/product/search.php\">\n       <operation>\n           <search><![CDATA[if (isset($this->request->get[\'search\']) || isset($this->request->get[\'tag\'])) {]]></search>\n           <add position=\"replace\"><![CDATA[\n                    /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                    /* Show product list in any case */\n					if (true) {\n                    /* Brainy Filter (brainyfilter.xml) - End ->*/\n                ]]>\n           </add>\n       </operation>\n   </file>\n   \n    <file path=\"catalog/model/catalog/product.php\">\n        <operation>\n            <search><![CDATA[public function getProducts($data = array()) {]]></search>\n            <add>\n                <![CDATA[\n    /**\n     * Custom getProducts() method added by Brainy Filter extension\n     */\n    public function getProducts($data = array()) \n    {\n        if (!isset($data[\'filter_bfilter\'])) {\n            return $this->getProductsOriginal($data);\n        }\n        $settings = $this->config->get(\'brainyfilter_layout_basic\');\n        if (isset($settings[\'global\'][\'subcategories_fix\']) && $settings[\'global\'][\'subcategories_fix\']) {\n            $data[\'filter_sub_category\'] = true;\n        }\n        $this->load->model(\'extension/module/brainyfilter\');\n        $model = new ModelExtensionModuleBrainyFilter($this->registry);\n        $model->setData($data);\n        $sql = $model->prepareQueryForCategory();\n        $query = $this->db->query($sql);\n\n        $product_data = array();\n		foreach ($query->rows as $result) {\n			$product_data[$result[\'product_id\']] = $this->getProduct($result[\'product_id\']);\n		}\n\n		return $product_data;\n    }\n    \n    /** \n     * It is the original getProducts() method, which was renamed by Brainy Filter modification.\n     * A custom getProduct() method was added instead. \n     * Disable the Brainy Filter OCMOD modification in order to reset the method.\n     * Note: disabling of Brainy Filter modification will break the work of Brainy Filter extension.\n     */\n     public function getProductsOriginal($data = array()) { ]]>\n            </add>\n        </operation>\n        \n        <operation>\n            <search><![CDATA[public function getTotalProducts($data = array()) {]]></search>\n            <add>\n                <![CDATA[\n    /**\n     * Custom getTotalProducts() method added by Brainy Filter extension\n     */\n    public function getTotalProducts($data = array())\n    {\n        if (!isset($data[\'filter_bfilter\'])) {\n            return $this->getTotalProductsOriginal($data);\n        }\n        $settings = $this->config->get(\'brainyfilter_layout_basic\');\n        if (isset($settings[\'global\'][\'subcategories_fix\']) && $settings[\'global\'][\'subcategories_fix\']) {\n            $data[\'filter_sub_category\'] = true;\n        }\n        $this->load->model(\'extension/module/brainyfilter\');\n        $model = new ModelExtensionModuleBrainyFilter($this->registry);\n        $model->setData($data);\n        $sql = $model->prepareQueryForTotal();\n		$query = $this->db->query($sql);\n\n		return $query->row[\'total\'];\n    }\n    \n    /** \n     * It is the original getTotalProducts() method, which was renamed by Brainy Filter modification.\n     * A custom getTotalProducts() method was added instead. \n     * Disable the Brainy Filter OCMOD modification in order to reset the method.\n     * Note: disabling of Brainy Filter modification will break the work of Brainy Filter extension.\n     */\n     public function getTotalProductsOriginal($data = array()) { ]]>\n            </add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/checkout/order.php\">\n        <operation>\n            <search><![CDATA[$this->cache->delete(\'product\');]]></search>\n            <add position=\"before\"><![CDATA[\n                require_once \'admin/model/extension/module/brainyfilter.php\';\n                $bfModel = new ModelExtensionModuleBrainyFilter($this->registry);\n                $prodIds = array();\n                $res = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"order_product WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                foreach($res->rows as $prod) {\n                    $prodIds[] = $prod[\'product_id\'];\n                }\n                $bfModel->updateStockCache($prodIds);\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2021-04-20 20:24:12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Manufacturers - Home Page', 'carousel', '{\"name\":\"Manufacturers - Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"87\",\"status\":\"1\"}'),
(27, 'Mainbanner Slideshow - Home Page', 'slideshow', '{\"name\":\"Mainbanner Slideshow - Home Page\",\"banner_id\":\"7\",\"width\":\"1903\",\"height\":\"600\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Left Banner - Sidebar', 'banner', '{\"name\":\"Left Banner - Sidebar\",\"banner_id\":\"9\",\"width\":\"257\",\"height\":\"320\",\"status\":\"1\"}'),
(52, 'Store Information Block - Footer Left', 'html', '{\"name\":\"Store Information Block - Footer Left\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;contact-block&quot;&gt;\\r\\n&lt;h5&gt;Contact Us&lt;\\/h5&gt;\\r\\n&lt;ul&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-map-marker&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;Stanley - Tools Store&lt;br&gt; United States&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-phone&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;000-000-0000&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-fax&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;123456&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-envelope-o&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;sales@yourcompany.com&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;contact-block&quot;&gt;\\r\\n&lt;h5&gt;\\u041d\\u0430\\u0448\\u0438 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b&lt;\\/h5&gt;\\r\\n&lt;ul&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-map-marker&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;Stanley - \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432&lt;br&gt; \\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-phone&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;768-655-5534&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-fax&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;\\u041c\\u044b \\u0440\\u0430\\u0434\\u044b \\u0432\\u0430\\u043c!&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-envelope-o&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;sal43es@yourcompany.com&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;contact-block&quot;&gt;\\r\\n&lt;h5&gt;Contact Us&lt;\\/h5&gt;\\r\\n&lt;ul&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-map-marker&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;Stanley - Tools Store&lt;br&gt; United States&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-phone&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;000-000-0000&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-fax&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;123456&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li&gt;\\r\\n&lt;i class=&quot;fa fa-envelope-o&quot;&gt;&lt;\\/i&gt;\\r\\n&lt;span&gt;sales@yourcompany.com&lt;\\/span&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(35, 'Payment Logo Block - Footer Bottom', 'html', '{\"name\":\"Payment Logo Block - Footer Bottom\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;paiement_logo_block footer-block&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/visa.png&quot; alt=&quot;visa&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/discover.png&quot; alt=&quot;discover&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/american_express.png&quot; alt=&quot;american_express&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/google_wallet.png&quot; alt=&quot;google_wallet&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/paypal.png&quot; alt=&quot;paypal&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;paiement_logo_block footer-block&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/visa.png&quot; alt=&quot;visa&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/discover.png&quot; alt=&quot;discover&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/american_express.png&quot; alt=&quot;american_express&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/google_wallet.png&quot; alt=&quot;google_wallet&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/paypal.png&quot; alt=&quot;paypal&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;paiement_logo_block footer-block&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/visa.png&quot; alt=&quot;visa&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/discover.png&quot; alt=&quot;discover&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/american_express.png&quot; alt=&quot;american_express&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/google_wallet.png&quot; alt=&quot;google_wallet&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/paypal.png&quot; alt=&quot;paypal&quot; width=&quot;32&quot; height=&quot;20&quot;&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(37, 'CMS Banner Block - Home page', 'html', '{\"name\":\"CMS Banner Block - Home page\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czbannercmsblock&quot; class=&quot;block czbanners&quot;&gt; \\r\\n\\t&lt;div class=&quot;czbanner_container container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;cmsbanners&quot;&gt;\\r\\n&lt;div class=&quot;one-half cmsbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-1.jpg&quot; alt=&quot;cms-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Best Hand Tools&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-desc&quot;&gt;Shop Sears\' wide selection of tools for&lt;br&gt;any task Dummy Text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-half cmsbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-2.jpg&quot; alt=&quot;cms-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Tool Accessories&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-desc&quot;&gt;Shop Sears\' wide selection of tools for &lt;br&gt;any task Dummy Text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czbannercmsblock&quot; class=&quot;block czbanners&quot;&gt; \\r\\n\\t&lt;div class=&quot;czbanner_container container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;cmsbanners&quot;&gt;\\r\\n&lt;div class=&quot;one-half cmsbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-1.jpg&quot; alt=&quot;cms-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;\\u041b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-desc&quot;&gt;\\u0434\\u043b\\u044f \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u043c\\u0443\\u0436\\u0447\\u0438\\u043d&lt;br&gt;\\u043f\\u043e \\u043d\\u0438\\u0437\\u043a\\u0438\\u043c \\u0446\\u0435\\u043d\\u0430\\u043c&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-half cmsbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-2.jpg&quot; alt=&quot;cms-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;\\u0411\\u043e\\u043b\\u0433\\u0430\\u0440\\u043a\\u0438 \\u0438\\u0437 \\u0415\\u0432\\u0440\\u043e\\u043f\\u044b&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-desc&quot;&gt;\\u041d\\u0435\\u043c\\u0435\\u0446\\u043a\\u043e\\u0433\\u043e \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430&lt;br&gt;\\u043f\\u043e \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0446\\u0435\\u043d\\u0435&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czbannercmsblock&quot; class=&quot;block czbanners&quot;&gt; \\r\\n\\t&lt;div class=&quot;czbanner_container container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;cmsbanners&quot;&gt;\\r\\n&lt;div class=&quot;one-half cmsbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-1.jpg&quot; alt=&quot;cms-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Best Hand Tools&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-desc&quot;&gt;Shop Sears\' wide selection of tools for&lt;br&gt;any task Dummy Text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-half cmsbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-2.jpg&quot; alt=&quot;cms-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Tool Accessories&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-desc&quot;&gt;Shop Sears\' wide selection of tools for &lt;br&gt;any task Dummy Text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(62, 'Nav CMS Block - Header Top', 'html', '{\"name\":\"Nav CMS Block - Header Top\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;cznavcmsblock&quot; class=&quot;nav-cms-block&quot;&gt;  \\r\\n\\t&lt;div class=&quot;navcms-area&quot;&gt;\\r\\n&lt;div class=&quot;navcms-half navcms1&quot;&gt;\\r\\n&lt;div class=&quot;navcms-content&quot;&gt;\\r\\n&lt;div class=&quot;navcms-heading&quot;&gt;Free Shipping Worldwide&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;navcms-half navcms2&quot;&gt;\\r\\n&lt;div class=&quot;navcms-content&quot;&gt;\\r\\n&lt;div class=&quot;navcms-heading&quot;&gt;Online 24\\/7 Supports&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;cznavcmsblock&quot; class=&quot;nav-cms-block&quot;&gt;  \\r\\n\\t&lt;div class=&quot;navcms-area&quot;&gt;\\r\\n&lt;div class=&quot;navcms-half navcms1&quot;&gt;\\r\\n&lt;div class=&quot;navcms-content&quot;&gt;\\r\\n&lt;div class=&quot;navcms-heading&quot;&gt;\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0430\\u0445 \\u041c\\u041a\\u0410\\u0414&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;navcms-half navcms2&quot;&gt;\\r\\n&lt;div class=&quot;navcms-content&quot;&gt;\\r\\n&lt;div class=&quot;navcms-heading&quot;&gt;\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c \\u043a\\u0440\\u0443\\u0433\\u043b\\u043e\\u0441\\u0443\\u0442\\u043e\\u0447\\u043d\\u043e&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;cznavcmsblock&quot; class=&quot;nav-cms-block&quot;&gt;  \\r\\n\\t&lt;div class=&quot;navcms-area&quot;&gt;\\r\\n&lt;div class=&quot;navcms-half navcms1&quot;&gt;\\r\\n&lt;div class=&quot;navcms-content&quot;&gt;\\r\\n&lt;div class=&quot;navcms-heading&quot;&gt;Free Shipping Worldwide&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;navcms-half navcms2&quot;&gt;\\r\\n&lt;div class=&quot;navcms-content&quot;&gt;\\r\\n&lt;div class=&quot;navcms-heading&quot;&gt;Online 24\\/7 Supports&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(59, 'Category Product Tab - Home Page', 'category_tab', '{\"name\":\"Category Product Tab - Home Page\",\"heading\":\"\",\"category\":\"\",\"product_category\":[\"20\",\"17\",\"58\"],\"category_limit\":\"5\",\"product_limit\":\"8\",\"width\":\"224\",\"height\":\"318\",\"status\":\"1\"}'),
(40, 'Special Products - Home Page', 'special', '{\"name\":\"Special Products - Home Page\",\"limit\":\"10\",\"width\":\"224\",\"height\":\"318\",\"status\":\"1\"}'),
(43, 'Latest News - Home page', 'blogger', '{\"module_id\":\"43\",\"name\":\"Latest News - Home page\",\"status\":\"1\",\"width\":\"921\",\"height\":\"630\",\"limit\":\"6\",\"char_limit\":\"70\",\"comments\":\"1\",\"login\":\"1\",\"auto_approve\":\"0\"}'),
(55, 'Social CMS Block -  Footer Before', 'html', '{\"name\":\"Social CMS Block -  Footer Before\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;social-block&quot;&gt;\\r\\n    &lt;ul&gt;\\r\\n              &lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Facebook&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Twitter&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;YouTube&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Google +&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Instagram&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n          &lt;\\/ul&gt;\\r\\n  &lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;social-block&quot;&gt;\\r\\n    &lt;ul&gt;\\r\\n              &lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Facebook&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Twitter&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;YouTube&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Google +&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Instagram&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n          &lt;\\/ul&gt;\\r\\n  &lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;social-block&quot;&gt;\\r\\n    &lt;ul&gt;\\r\\n              &lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Facebook&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Twitter&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;YouTube&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Google +&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Instagram&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n          &lt;\\/ul&gt;\\r\\n  &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(50, 'Featured Product - Home Page', 'featured', '{\"name\":\"Featured Product - Home Page\",\"product_name\":\"\",\"product\":[\"35\",\"42\",\"43\",\"47\",\"30\",\"31\",\"29\",\"41\",\"45\",\"36\",\"32\",\"48\"],\"limit\":\"8\",\"width\":\"224\",\"height\":\"318\",\"status\":\"1\"}'),
(57, 'Sub Banner CMS Block - Home Page', 'html', '{\"name\":\"Sub Banner CMS Block - Home Page\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czsubbannercmsblock&quot; class=&quot;block czsubbanners&quot;&gt; \\r\\n\\t&lt;div class=&quot;czsubbanner_container container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;subbanners&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner-block&quot;&gt;\\r\\n&lt;div class=&quot;one-half subbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;subbanner subbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/sub-banner-1.jpg&quot; alt=&quot;sub-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;subbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Tools for Sale&lt;\\/div&gt;\\r\\n&lt;div class=&quot;sub-title&quot;&gt;Shop Sears\' wide selection of tools ..&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View more&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-half subbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;subbanner subbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/sub-banner-2.jpg&quot; alt=&quot;sub-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;subbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Measuring Tools&lt;\\/div&gt;\\r\\n&lt;div class=&quot;sub-title&quot;&gt;Shop Sears\' wide selection of tools...&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View more&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czsubbannercmsblock&quot; class=&quot;block czsubbanners&quot;&gt; \\r\\n\\t&lt;div class=&quot;czsubbanner_container container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;subbanners&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner-block&quot;&gt;\\r\\n&lt;div class=&quot;one-half subbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;subbanner subbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/sub-banner-1.jpg&quot; alt=&quot;sub-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;subbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;\\u0418\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u044b \\u0434\\u043b\\u044f \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432&lt;\\/div&gt;\\r\\n&lt;div class=&quot;sub-title&quot;&gt;\\u041a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-half subbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;subbanner subbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/sub-banner-2.jpg&quot; alt=&quot;sub-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;subbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;\\u0418\\u0437\\u043c\\u0435\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442&lt;\\/div&gt;\\r\\n&lt;div class=&quot;sub-title&quot;&gt;\\u041f\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u043d\\u0438\\u0437\\u043a\\u043e\\u0439 \\u0446\\u0435\\u043d\\u0435&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;\\u041f\\u043e\\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czsubbannercmsblock&quot; class=&quot;block czsubbanners&quot;&gt; \\r\\n\\t&lt;div class=&quot;czsubbanner_container container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;subbanners&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner-block&quot;&gt;\\r\\n&lt;div class=&quot;one-half subbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;subbanner subbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/sub-banner-1.jpg&quot; alt=&quot;sub-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;subbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Tools for Sale&lt;\\/div&gt;\\r\\n&lt;div class=&quot;sub-title&quot;&gt;Shop Sears\' wide selection of tools ..&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View more&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-half subbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;subbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;subbanner subbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/sub-banner-2.jpg&quot; alt=&quot;sub-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;subbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;main-title&quot;&gt;Measuring Tools&lt;\\/div&gt;\\r\\n&lt;div class=&quot;sub-title&quot;&gt;Shop Sears\' wide selection of tools...&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View more&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(60, 'Gift Special Banner - Home page', 'html', '{\"name\":\"Gift Special Banner - Home page\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;custom-text&quot;&gt;\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n&lt;div class=&quot;custom-details&quot;&gt;\\r\\n&lt;div class=&quot;cms-left&quot;&gt;\\r\\n&lt;div class=&quot;custom custom-title&quot;&gt;Gift Special :&lt;\\/div&gt;\\r\\n&lt;div class=&quot;custom custom-desc&quot;&gt;Gift Every Single Day On Weekend-New coupen Code&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-right&quot;&gt;\\r\\n&lt;div class=&quot;custom sub-title&quot;&gt;Trade Assurance&lt;\\/div&gt;\\r\\n&lt;div class=&quot;custom shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View more&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;custom-text&quot;&gt;\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n&lt;div class=&quot;custom-details&quot;&gt;\\r\\n&lt;div class=&quot;cms-left&quot;&gt;\\r\\n&lt;div class=&quot;custom custom-title&quot;&gt;\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0430\\u0440\\u043e\\u043a :&lt;\\/div&gt;\\r\\n&lt;div class=&quot;custom custom-desc&quot;&gt;\\u041c\\u044b \\u0434\\u0430\\u0440\\u0438\\u043c \\u043a\\u0430\\u0436\\u0434\\u043e\\u043c\\u0443 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044e 20% \\u0441\\u043a\\u0438\\u0434\\u043a\\u0443&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-right&quot;&gt;\\r\\n&lt;div class=&quot;custom sub-title&quot;&gt;\\u041d\\u0430\\u0448\\u0430 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f&lt;\\/div&gt;\\r\\n&lt;div class=&quot;custom shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;custom-text&quot;&gt;\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n&lt;div class=&quot;custom-details&quot;&gt;\\r\\n&lt;div class=&quot;cms-left&quot;&gt;\\r\\n&lt;div class=&quot;custom custom-title&quot;&gt;Gift Special :&lt;\\/div&gt;\\r\\n&lt;div class=&quot;custom custom-desc&quot;&gt;Gift Every Single Day On Weekend-New coupen Code&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-right&quot;&gt;\\r\\n&lt;div class=&quot;custom sub-title&quot;&gt;Trade Assurance&lt;\\/div&gt;\\r\\n&lt;div class=&quot;custom shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View more&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(61, 'Offer CMS Block - Home Page', 'html', '{\"name\":\"Offer CMS Block - Home Page\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czoffercmsblock&quot; class=&quot;block czoffer-cms&quot;&gt; \\r\\n\\t&lt;div class=&quot;czoffercmsblock&quot;&gt;\\r\\n&lt;div class=&quot;offercms-inner&quot;&gt;\\r\\n&lt;div class=&quot;offercms1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/offer-banner.jpg&quot; alt=&quot;offer-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;offercms-detail container&quot;&gt;\\r\\n&lt;div class=&quot;offercms-text&quot;&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;Max Savings Only Monday&lt;\\/div&gt;\\r\\n&lt;div class=&quot;offer-title&quot;&gt;Up To 60% Flat&lt;\\/div&gt;\\r\\n&lt;div class=&quot;offer-desc&quot;&gt;Lorem Ipsum is simply dummy text of the printing....&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View More&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;&lt;br&gt;\\r\\n&lt;\\/div&gt;\"},\"3\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czoffercmsblock&quot; class=&quot;block czoffer-cms&quot;&gt; \\r\\n\\t&lt;div class=&quot;czoffercmsblock&quot;&gt;\\r\\n&lt;div class=&quot;offercms-inner&quot;&gt;\\r\\n&lt;div class=&quot;offercms1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/offer-banner.jpg&quot; alt=&quot;offer-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;offercms-detail container&quot;&gt;\\r\\n&lt;div class=&quot;offercms-text&quot;&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u044d\\u043a\\u043e\\u043d\\u043e\\u043c\\u0438\\u044f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432 \\u043f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a&lt;\\/div&gt;\\r\\n&lt;div class=&quot;offer-title&quot;&gt;\\u0414\\u043e 60% \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430&lt;\\/div&gt;\\r\\n&lt;div class=&quot;offer-desc&quot;&gt;\\u0417\\u0430\\u043a\\u0430\\u0436\\u0438 \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441, \\u043a\\u043e\\u043b-\\u0432\\u043e \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u043e&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;\\u041f\\u0435\\u0440\\u0435\\u0439\\u0442\\u0438&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;&lt;br&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czoffercmsblock&quot; class=&quot;block czoffer-cms&quot;&gt; \\r\\n\\t&lt;div class=&quot;czoffercmsblock&quot;&gt;\\r\\n&lt;div class=&quot;offercms-inner&quot;&gt;\\r\\n&lt;div class=&quot;offercms1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/offer-banner.jpg&quot; alt=&quot;offer-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;offercms-detail container&quot;&gt;\\r\\n&lt;div class=&quot;offercms-text&quot;&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;Max Savings Only Monday&lt;\\/div&gt;\\r\\n&lt;div class=&quot;offer-title&quot;&gt;Up To 60% Flat&lt;\\/div&gt;\\r\\n&lt;div class=&quot;offer-desc&quot;&gt;Lorem Ipsum is simply dummy text of the printing....&lt;\\/div&gt;\\r\\n&lt;div class=&quot;shop-button&quot;&gt;&lt;a href=&quot;#&quot;&gt;View More&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;&lt;br&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(63, 'Footer CMS  Block - Footer Right', 'html', '{\"name\":\"Footer CMS  Block - Footer Right\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czfootercmsblock&quot; class=&quot;footer-cms-block&quot;&gt;  \\r\\n&lt;div class=&quot;footerdiv&quot;&gt;\\r\\n&lt;h5 class=&quot;title&quot;&gt;Download App&lt;\\/h5&gt;\\r\\n&lt;div class=&quot;footercms-inner&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;footercms&quot;&gt; &lt;img src=&quot;image\\/catalog\\/cms-footer-1.jpg&quot; alt=&quot;cms-footer1&quot; class=&quot;footercms-image1&quot;&gt;&lt;\\/a&gt; &lt;a href=&quot;#&quot; class=&quot;footercms&quot;&gt; &lt;img src=&quot;image\\/catalog\\/cms-footer-2.jpg&quot; alt=&quot;cms-footer2&quot; class=&quot;footercms-image2&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czfootercmsblock&quot; class=&quot;footer-cms-block&quot;&gt;  \\r\\n&lt;div class=&quot;footerdiv&quot;&gt;\\r\\n&lt;h5 class=&quot;title&quot;&gt;Download App&lt;\\/h5&gt;\\r\\n&lt;div class=&quot;footercms-inner&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;footercms&quot;&gt; &lt;img src=&quot;image\\/catalog\\/cms-footer-1.jpg&quot; alt=&quot;cms-footer1&quot; class=&quot;footercms-image1&quot;&gt;&lt;\\/a&gt; &lt;a href=&quot;#&quot; class=&quot;footercms&quot;&gt; &lt;img src=&quot;image\\/catalog\\/cms-footer-2.jpg&quot; alt=&quot;cms-footer2&quot; class=&quot;footercms-image2&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt; \\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(64, 'Bestsellers - Sidebar', 'bestseller', '{\"name\":\"Bestsellers - Sidebar\",\"limit\":\"3\",\"width\":\"85\",\"height\":\"121\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_newsletter`
--

CREATE TABLE `oc_newsletter` (
  `news_id` int(11) NOT NULL,
  `news_email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(1, 3, 'Radio'),
(2, 3, 'Checkbox'),
(4, 3, 'Text'),
(6, 3, 'Textarea'),
(8, 3, 'Date'),
(7, 3, 'File'),
(5, 3, 'Select'),
(9, 3, 'Time'),
(10, 3, 'Date &amp; Time'),
(12, 3, 'Delivery Date'),
(11, 3, 'Size');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(43, 3, 1, 'Large'),
(32, 3, 1, 'Small'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(31, 3, 1, 'Medium'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(48, 3, 11, 'Large'),
(47, 3, 11, 'Medium'),
(46, 3, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2018-00', 0, 'Your Store', 'https://localhost.com/opencart/OPC01/OPC010007/', 1, 1, 'admin', 'admin', 'admin@localhost.com', '1234567891', '', '', 'admin', 'admin', '', 'mumbai', '', 'mumbai', '123456', 'United Kingdom', 222, 'Angus', 3516, '', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', '', 'mumbai', '', 'mumbai', '123456', 'United Kingdom', 222, 'Angus', 3516, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1089.5880', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '219.91.237.34', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36', 'en-US,en;q=0.9', '2018-03-01 05:37:17', '2018-03-01 05:37:20'),
(2, 0, 'INV-2018-00', 0, 'Your Store', 'https://localhost.com/opencart/OPC01/OPC010008/', 2, 1, 'admin', 'admin', 'admin@gmail.com', '1234567891', '', '', 'admin', 'admin', '', 'mumbai', '', 'mumbai', '123456', 'United Kingdom', 222, 'Angus', 3516, '', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', '', 'mumbai', '', 'mumbai', '12345', 'Turkmenistan', 216, 'Balkan Welayaty', 3397, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '90.0000', 1, 0, '0.0000', 0, '', 1, 3, 'EUR', '0.78460002', '123.201.227.244', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'en-US,en;q=0.9', '2018-03-15 09:40:01', '2018-03-15 09:40:03'),
(3, 0, 'INV-2018-00', 0, 'Your Store', 'http://192.168.0.150/user2/opencart/OPC010016/', 3, 1, 'admin', 'admin', 'admin1@localhost.com', '01234567890', '', '', 'admin', 'admin', 'GHI', 'B-12 udhna', '', 'surat', '12345', 'United Kingdom', 222, 'Bristol', 3522, '', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', 'GHI', 'B-12 udhna', '', 'surat', '12345', 'United Kingdom', 222, 'Bristol', 3522, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '112.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.0.152', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.56 Safari/537.36', 'en-US,en;q=0.9', '2018-05-29 16:28:17', '2018-05-29 16:28:27'),
(4, 0, 'INV-2019-00', 0, 'Lawsuit - Suit Store', 'https://demo.codezeel.com/opencart/OPC04/OPC040098/', 0, 1, 'admin', 'admin', 'demo@codezeel.com', '09874563210', '', '[]', 'admin', 'admin', 'abc', 'surat', 'mubai', 'surat', '12345', 'United States', 223, 'California', 3624, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', 'abc', 'surat', 'mubai', 'surat', '12345', 'United States', 223, 'California', 3624, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '84.9900', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '116.73.194.54', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'en-US,en;q=0.9', '2019-03-15 11:10:01', '2019-03-15 11:10:22');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2018-03-01 05:37:20'),
(2, 2, 1, 0, '', '2018-03-15 09:40:03'),
(3, 3, 1, 0, '', '2018-05-29 16:28:21'),
(4, 3, 1, 0, '', '2018-05-29 16:28:26'),
(5, 3, 1, 0, '', '2018-05-29 16:28:27'),
(6, 4, 1, 0, '', '2019-03-15 11:10:22');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 10, 226, 15, 'Select', 'Red', 'select'),
(2, 2, 11, 225, 0, 'Delivery Date', '2011-04-22', 'date'),
(3, 3, 12, 225, 0, 'Delivery Date', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 45, 'Neque Porro Quisquam', 'Product 18', 1, '118.0000', '118.0000', '0.0000', 800),
(2, 1, 43, 'Aliquam Quaerat', 'Product 16', 1, '89.0000', '89.0000', '19.8000', 600),
(3, 1, 48, 'Voluptates Repudiandae', 'product 20', 1, '100.0000', '100.0000', '22.0000', 0),
(4, 1, 41, 'Nostrud Exercitation', 'Product 14', 1, '64.0000', '64.0000', '14.8000', 0),
(5, 1, 40, 'Praesentium Voluptatum', 'product 11', 1, '105.0000', '105.0000', '23.0000', 0),
(6, 1, 32, 'Reprehenderit Aliquam', 'Product 5', 1, '90.0000', '90.0000', '20.0000', 0),
(7, 1, 29, 'Laborum Eveniet', 'Product 2', 1, '79.9900', '79.9900', '17.9980', 0),
(8, 1, 28, 'Voluptas Assumenda', 'Product 1', 1, '100.0000', '100.0000', '22.0000', 400),
(9, 1, 31, 'Laudant Doloremque', 'Product 4', 1, '75.0000', '75.0000', '17.0000', 0),
(10, 1, 30, 'Exercitat Virginia', 'Product 3', 1, '85.0000', '85.0000', '19.0000', 200),
(11, 2, 47, 'Accusantium Doloremque', 'Product 21', 1, '85.0000', '85.0000', '0.0000', 300),
(12, 3, 47, 'Accusantium Doloremque', 'Product 21', 1, '85.0000', '85.0000', '19.0000', 300),
(13, 4, 29, 'Laborum Eveniet', 'Product 2', 1, '79.9900', '79.9900', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired'),
(2, 3, 'Processing'),
(3, 3, 'Shipped'),
(7, 3, 'Canceled'),
(5, 3, 'Complete'),
(8, 3, 'Denied'),
(9, 3, 'Canceled Reversal'),
(10, 3, 'Failed'),
(11, 3, 'Refunded'),
(12, 3, 'Reversed'),
(13, 3, 'Chargeback'),
(1, 3, 'Pending'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 3, 'Expired');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '905.9900', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '20.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '158.5980', 5),
(5, 1, 'total', 'Total', '1089.5880', 9),
(6, 2, 'sub_total', 'Sub-Total', '85.0000', 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(8, 2, 'total', 'Total', '90.0000', 9),
(9, 3, 'sub_total', 'Sub-Total', '85.0000', 1),
(10, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(11, 3, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(12, 3, 'tax', 'VAT (20%)', '18.0000', 5),
(13, 3, 'total', 'Total', '112.0000', 9),
(14, 4, 'sub_total', 'Sub-Total', '79.9900', 1),
(15, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(16, 4, 'total', 'Total', '84.9900', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 9999, 7, 'catalog/14.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2020-02-01 14:07:38'),
(29, 'Product 2', '', '', '', '', '', '', '', 9998, 6, 'catalog/06.jpg', 6, 1, '79.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2020-02-01 14:05:50'),
(30, 'Product 3', '', '', '', '', '', '', '', 9999, 6, 'catalog/05.jpg', 9, 1, '95.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:59:00', '2020-02-01 14:05:15'),
(31, 'Product 4', '', '', '', '', '', '', '', 9999, 6, 'catalog/08.jpg', 9, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2020-02-01 14:06:07'),
(32, 'Product 5', '', '', '', '', '', '', '', 9999, 6, 'catalog/14.jpg', 5, 1, '97.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2020-02-01 14:07:24'),
(34, 'Product 7', '', '', '', '', '', '', '', 0, 6, 'catalog/12.jpg', 7, 1, '86.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2020-02-01 14:06:57'),
(35, 'Product 8', '', '', '', '', '', '', '', 10000, 5, 'catalog/03.jpg', 6, 0, '112.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2020-02-01 14:04:29'),
(36, 'Product 9', '', '', '', '', '', '', '', 10000, 6, 'catalog/09.jpg', 8, 0, '98.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2020-02-01 14:06:20'),
(40, 'product 11', '', '', '', '', '', '', '', 9999, 5, 'catalog/13.jpg', 8, 1, '105.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2020-02-01 14:07:12'),
(41, 'Product 14', '', '', '', '', '', '', '', 9999, 5, 'catalog/11.jpg', 8, 1, '68.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2020-02-01 14:06:45'),
(42, 'Product 15', '', '', '', '', '', '', '', 1000, 5, 'catalog/04.jpg', 8, 1, '98.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 0, '2009-02-03 21:07:37', '2020-02-01 14:04:59'),
(43, 'Product 16', '', '', '', '', '', '', '', 9999, 5, 'catalog/02.jpg', 9, 0, '89.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2020-02-01 14:04:16'),
(45, 'Product 18', '', '', '', '', '', '', '', 9999, 5, 'catalog/10.jpg', 5, 1, '118.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2020-02-01 14:06:33'),
(47, 'Product 21', '', '', '', '', '', '', '', 10000, 5, 'catalog/01.jpg', 7, 1, '85.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2020-02-01 14:04:02'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 9999, 5, 'catalog/15.jpg', 8, 1, '115.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2020-02-01 14:07:54');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(42, 3, 3, '100mhz'),
(47, 4, 3, '16GB'),
(43, 4, 3, '8gb'),
(42, 3, 2, '100mhz'),
(43, 2, 2, '1'),
(47, 4, 1, '16GB'),
(47, 2, 2, '4'),
(43, 2, 3, '1'),
(47, 2, 3, '4'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(43, 2, 1, '1'),
(47, 2, 1, '4'),
(47, 4, 2, '16GB'),
(43, 4, 2, '8gb');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(40, 3, 'Обратный молоток', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'megastore, furniture, clothes, accessories', 'Praesentium Voluptatum', '', ''),
(28, 3, 'Мини шуроповерт', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Voluptas Assumenda', '', ''),
(29, 2, 'Laborum Eveniet', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GP&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'megastore, furniture, clothes, accessories', 'Laborum Eveniet', '', ''),
(47, 2, 'Accusantium Doloremque', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture', 'Accusantium Doloremque', '', ''),
(32, 3, 'Шуроповерт', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Reprehenderit Aliquam', '', ''),
(41, 3, 'Кувалда', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes', 'Nostrud Exercitation', '', ''),
(35, 2, 'Commodi Consequatur', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Commodi Consequatur', '', ''),
(48, 3, 'Набор ключей', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Voluptates Repudiandae', '', ''),
(36, 3, 'Пасатижы', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Necessitatibus', '', ''),
(34, 2, 'Occasion Praesentium', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Occasion Praesentium', '', ''),
(31, 2, 'Laudant Doloremque', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Laudant Doloremque', '', ''),
(45, 2, 'Neque Porro Quisquam', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Neque Porro Quisquam', '', ''),
(43, 3, 'Дрель', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'fashion, electronics, megastore', 'Aliquam Quaerat', '', ''),
(42, 3, 'Компрессор', '&lt;p&gt;&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Consectetur Hampden', '', ''),
(30, 3, 'Винтовой компрессор', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Exercitat Virginia', '', ''),
(40, 2, 'Praesentium Voluptatum', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'megastore, furniture, clothes, accessories', 'Praesentium Voluptatum', '', ''),
(28, 2, 'Voluptas Assumenda', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Voluptas Assumenda', '', ''),
(29, 3, 'Ударный молоток', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GP&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'megastore, furniture, clothes, accessories', 'Laborum Eveniet', '', ''),
(47, 3, 'Перчатки', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture', 'Accusantium Doloremque', '', ''),
(32, 2, 'Reprehenderit Aliquam', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Reprehenderit Aliquam', '', ''),
(41, 2, 'Nostrud Exercitation', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes', 'Nostrud Exercitation', '', ''),
(35, 3, 'Кувалда', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Commodi Consequatur', '', ''),
(48, 2, 'Voluptates Repudiandae', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Voluptates Repudiandae', '', ''),
(36, 2, 'Necessitatibus', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Necessitatibus', '', ''),
(34, 3, 'Пылесос', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Occasion Praesentium', '', ''),
(31, 3, 'Ударный молоток ', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Laudant Doloremque', '', ''),
(45, 3, 'Компрессор', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Neque Porro Quisquam', '', ''),
(43, 2, 'Aliquam Quaerat', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'fashion, electronics, megastore', 'Aliquam Quaerat', '', ''),
(42, 2, 'Consectetur Hampden', '&lt;p&gt;&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Consectetur Hampden', '', ''),
(30, 2, 'Exercitat Virginia', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Exercitat Virginia', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(29, 1, 'Laborum Eveniet', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GP&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'megastore, furniture, clothes, accessories', 'Laborum Eveniet', '', ''),
(47, 1, 'Accusantium Doloremque', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture', 'Accusantium Doloremque', '', ''),
(35, 1, 'Commodi Consequatur', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Commodi Consequatur', '', ''),
(34, 1, 'Occasion Praesentium', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Occasion Praesentium', '', ''),
(31, 1, 'Laudant Doloremque', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Laudant Doloremque', '', ''),
(45, 1, 'Neque Porro Quisquam', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Neque Porro Quisquam', '', ''),
(40, 1, 'Praesentium Voluptatum', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'megastore, furniture, clothes, accessories', 'Praesentium Voluptatum', '', ''),
(28, 1, 'Voluptas Assumenda', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Voluptas Assumenda', '', ''),
(32, 1, 'Reprehenderit Aliquam', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Reprehenderit Aliquam', '', ''),
(41, 1, 'Nostrud Exercitation', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes', 'Nostrud Exercitation', '', ''),
(48, 1, 'Voluptates Repudiandae', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Voluptates Repudiandae', '', ''),
(36, 1, 'Necessitatibus', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Necessitatibus', '', ''),
(43, 1, 'Aliquam Quaerat', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'fashion, electronics, megastore', 'Aliquam Quaerat', '', ''),
(42, 1, 'Consectetur Hampden', '&lt;p&gt;&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Consectetur Hampden', '', ''),
(30, 1, 'Exercitat Virginia', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Exercitat Virginia', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(455, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(454, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(453, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 3),
(28, 4),
(28, 5),
(28, 9),
(28, 10),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 7),
(29, 9),
(29, 10),
(29, 11),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 9),
(30, 10),
(30, 11),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 7),
(31, 9),
(31, 10),
(32, 1),
(32, 2),
(32, 3),
(32, 6),
(32, 7),
(32, 9),
(34, 1),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 9),
(34, 10),
(34, 11),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 9),
(35, 10),
(35, 11),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(36, 6),
(36, 7),
(36, 9),
(36, 10),
(40, 1),
(40, 2),
(40, 5),
(40, 9),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(41, 7),
(42, 1),
(42, 2),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(42, 9),
(42, 10),
(42, 11),
(43, 1),
(43, 5),
(43, 9),
(45, 1),
(45, 2),
(45, 3),
(45, 5),
(45, 6),
(45, 7),
(45, 9),
(45, 10),
(47, 1),
(47, 2),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(47, 9),
(47, 10),
(47, 11),
(48, 1),
(48, 2),
(48, 3),
(48, 5),
(48, 9),
(48, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2709, 30, 'catalog/11.jpg', 0),
(2686, 47, 'catalog/02.jpg', 0),
(2760, 28, 'catalog/05.jpg', 0),
(2737, 41, 'catalog/02.jpg', 0),
(2748, 40, 'catalog/04.jpg', 0),
(2725, 36, 'catalog/15.jpg', 0),
(2724, 36, 'catalog/14.jpg', 0),
(2742, 34, 'catalog/13.jpg', 0),
(2741, 34, 'catalog/14.jpg', 0),
(2754, 32, 'catalog/05.jpg', 0),
(2753, 32, 'catalog/03.jpg', 0),
(2752, 32, 'catalog/04.jpg', 0),
(2692, 43, 'catalog/07.jpg', 0),
(2691, 43, 'catalog/08.jpg', 0),
(2685, 47, 'catalog/03.jpg', 0),
(2731, 45, 'catalog/11.jpg', 0),
(2730, 45, 'catalog/12.jpg', 0),
(2719, 31, 'catalog/09.jpg', 0),
(2718, 31, 'catalog/10.jpg', 0),
(2714, 29, 'catalog/07.jpg', 0),
(2736, 41, 'catalog/01.jpg', 0),
(2735, 41, 'catalog/15.jpg', 0),
(2766, 48, 'catalog/06.jpg', 0),
(2765, 48, 'catalog/05.jpg', 0),
(2747, 40, 'catalog/03.jpg', 0),
(2746, 40, 'catalog/02.jpg', 0),
(2708, 30, 'catalog/10.jpg', 0),
(2684, 47, 'catalog/06.jpg', 0),
(2759, 28, 'catalog/04.jpg', 0),
(2734, 41, 'catalog/14.jpg', 0),
(2745, 40, 'catalog/01.jpg', 0),
(2744, 40, 'catalog/15.jpg', 0),
(2764, 48, 'catalog/04.jpg', 0),
(2723, 36, 'catalog/13.jpg', 0),
(2722, 36, 'catalog/12.jpg', 0),
(2740, 34, 'catalog/15.jpg', 0),
(2739, 34, 'catalog/01.jpg', 0),
(2751, 32, 'catalog/02.jpg', 0),
(2750, 32, 'catalog/01.jpg', 0),
(2749, 32, 'catalog/15.jpg', 0),
(2690, 43, 'catalog/06.jpg', 0),
(2689, 43, 'catalog/05.jpg', 0),
(2683, 47, 'catalog/04.jpg', 0),
(2729, 45, 'catalog/13.jpg', 0),
(2717, 31, 'catalog/11.jpg', 0),
(2716, 31, 'catalog/12.jpg', 0),
(2713, 29, 'catalog/08.jpg', 0),
(2758, 28, 'catalog/03.jpg', 0),
(2682, 47, 'catalog/07.jpg', 0),
(2681, 47, 'catalog/05.jpg', 0),
(2757, 28, 'catalog/02.jpg', 0),
(2756, 28, 'catalog/15.jpg', 0),
(2755, 28, 'catalog/01.jpg', 0),
(2733, 41, 'catalog/13.jpg', 0),
(2732, 41, 'catalog/12.jpg', 0),
(2703, 42, 'catalog/10.jpg', 0),
(2702, 42, 'catalog/09.jpg', 0),
(2701, 42, 'catalog/08.jpg', 0),
(2700, 42, 'catalog/07.jpg', 0),
(2699, 42, 'catalog/06.jpg', 0),
(2698, 42, 'catalog/05.jpg', 0),
(2707, 30, 'catalog/09.jpg', 0),
(2706, 30, 'catalog/08.jpg', 0),
(2705, 30, 'catalog/07.jpg', 0),
(2704, 30, 'catalog/06.jpg', 0),
(2697, 35, 'catalog/04.jpg', 0),
(2696, 35, 'catalog/05.jpg', 0),
(2695, 35, 'catalog/06.jpg', 0),
(2694, 35, 'catalog/07.jpg', 0),
(2693, 35, 'catalog/08.jpg', 0),
(2743, 40, 'catalog/14.jpg', 0),
(2763, 48, 'catalog/03.jpg', 0),
(2762, 48, 'catalog/02.jpg', 0),
(2761, 48, 'catalog/01.jpg', 0),
(2712, 29, 'catalog/09.jpg', 0),
(2711, 29, 'catalog/10.jpg', 0),
(2710, 29, 'catalog/11.jpg', 0),
(2721, 36, 'catalog/11.jpg', 0),
(2720, 36, 'catalog/10.jpg', 0),
(2715, 31, 'catalog/13.jpg', 0),
(2728, 45, 'catalog/14.jpg', 0),
(2727, 45, 'catalog/15.jpg', 0),
(2726, 45, 'catalog/01.jpg', 0),
(2738, 34, 'catalog/02.jpg', 0),
(2688, 43, 'catalog/04.jpg', 0),
(2687, 43, 'catalog/03.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(222, 42, 7, '', 1),
(219, 42, 8, '2011-02-20', 1),
(226, 30, 5, '', 1),
(208, 42, 4, 'test', 1),
(218, 42, 1, '', 1),
(217, 42, 5, '', 1),
(209, 42, 6, '', 1),
(223, 42, 2, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 30),
(28, 42),
(28, 43),
(28, 45),
(28, 47),
(29, 32),
(29, 34),
(29, 36),
(29, 42),
(29, 43),
(29, 45),
(29, 47),
(30, 28),
(30, 30),
(30, 31),
(30, 35),
(30, 40),
(30, 41),
(30, 42),
(30, 43),
(30, 45),
(30, 47),
(31, 30),
(31, 34),
(31, 35),
(31, 42),
(31, 45),
(31, 47),
(32, 29),
(32, 34),
(32, 35),
(32, 36),
(32, 42),
(32, 47),
(32, 48),
(34, 29),
(34, 31),
(34, 32),
(34, 34),
(34, 35),
(34, 36),
(34, 48),
(35, 30),
(35, 31),
(35, 32),
(35, 34),
(35, 40),
(35, 42),
(35, 45),
(35, 47),
(35, 48),
(36, 29),
(36, 32),
(36, 34),
(36, 36),
(36, 47),
(36, 48),
(40, 30),
(40, 35),
(40, 40),
(40, 41),
(40, 42),
(40, 45),
(40, 47),
(41, 30),
(41, 40),
(41, 42),
(41, 43),
(41, 47),
(42, 28),
(42, 29),
(42, 30),
(42, 31),
(42, 32),
(42, 35),
(42, 40),
(42, 41),
(42, 43),
(42, 47),
(42, 48),
(43, 28),
(43, 29),
(43, 30),
(43, 41),
(43, 42),
(43, 47),
(43, 48),
(45, 28),
(45, 29),
(45, 30),
(45, 31),
(45, 35),
(45, 40),
(45, 47),
(45, 48),
(47, 28),
(47, 29),
(47, 30),
(47, 31),
(47, 32),
(47, 35),
(47, 36),
(47, 40),
(47, 41),
(47, 42),
(47, 43),
(47, 45),
(47, 47),
(48, 32),
(48, 34),
(48, 35),
(48, 36),
(48, 42),
(48, 43),
(48, 45);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(573, 42, 1, 100),
(571, 47, 1, 300),
(576, 28, 1, 400),
(572, 43, 1, 600),
(574, 30, 1, 200),
(575, 45, 1, 800);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(467, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(471, 41, 1, 0, '64.0000', '2017-03-09', '2025-03-09'),
(468, 30, 1, 1, '85.0000', '2017-03-09', '3017-03-10'),
(473, 48, 1, 0, '100.0000', '2017-03-09', '2020-03-16'),
(469, 31, 1, 0, '75.0000', '2017-03-09', '2027-03-10'),
(472, 32, 1, 0, '90.0000', '2017-03-09', '2026-03-09'),
(466, 35, 1, 0, '110.0000', '0000-00-00', '0000-00-00'),
(470, 45, 1, 0, '115.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 17),
(28, 18),
(28, 20),
(28, 24),
(28, 25),
(28, 26),
(28, 27),
(28, 28),
(28, 30),
(28, 31),
(28, 32),
(28, 33),
(28, 35),
(28, 37),
(28, 38),
(28, 39),
(28, 40),
(28, 43),
(28, 49),
(28, 50),
(28, 51),
(28, 53),
(28, 56),
(28, 57),
(28, 58),
(29, 17),
(29, 18),
(29, 20),
(29, 24),
(29, 25),
(29, 28),
(29, 30),
(29, 31),
(29, 33),
(29, 35),
(29, 37),
(29, 38),
(29, 40),
(29, 43),
(29, 49),
(29, 50),
(29, 51),
(29, 52),
(29, 53),
(29, 54),
(29, 55),
(29, 57),
(29, 58),
(29, 59),
(30, 17),
(30, 18),
(30, 20),
(30, 24),
(30, 25),
(30, 26),
(30, 27),
(30, 28),
(30, 30),
(30, 31),
(30, 33),
(30, 35),
(30, 37),
(30, 38),
(30, 39),
(30, 40),
(30, 43),
(30, 49),
(30, 50),
(30, 51),
(30, 52),
(30, 57),
(30, 59),
(31, 17),
(31, 18),
(31, 20),
(31, 25),
(31, 26),
(31, 28),
(31, 30),
(31, 31),
(31, 32),
(31, 33),
(31, 35),
(31, 39),
(31, 43),
(31, 49),
(31, 50),
(31, 51),
(31, 53),
(31, 54),
(31, 56),
(31, 57),
(31, 58),
(31, 59),
(32, 17),
(32, 18),
(32, 20),
(32, 24),
(32, 25),
(32, 26),
(32, 27),
(32, 28),
(32, 30),
(32, 31),
(32, 32),
(32, 33),
(32, 35),
(32, 37),
(32, 38),
(32, 39),
(32, 40),
(32, 43),
(32, 49),
(32, 50),
(32, 51),
(32, 52),
(32, 53),
(32, 54),
(32, 55),
(32, 57),
(32, 58),
(34, 17),
(34, 18),
(34, 20),
(34, 26),
(34, 27),
(34, 30),
(34, 31),
(34, 33),
(34, 37),
(34, 38),
(34, 39),
(34, 43),
(34, 49),
(34, 50),
(34, 51),
(34, 52),
(34, 53),
(34, 54),
(34, 56),
(34, 57),
(35, 17),
(35, 20),
(35, 25),
(35, 26),
(35, 27),
(35, 28),
(35, 30),
(35, 31),
(35, 32),
(35, 33),
(35, 35),
(35, 37),
(35, 38),
(35, 43),
(35, 49),
(35, 50),
(35, 51),
(35, 53),
(35, 54),
(35, 57),
(35, 59),
(36, 18),
(36, 20),
(36, 24),
(36, 25),
(36, 26),
(36, 27),
(36, 28),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(36, 35),
(36, 37),
(36, 38),
(36, 39),
(36, 40),
(36, 43),
(36, 49),
(36, 50),
(36, 51),
(36, 52),
(36, 53),
(36, 54),
(36, 55),
(36, 57),
(36, 59),
(40, 17),
(40, 18),
(40, 20),
(40, 24),
(40, 25),
(40, 26),
(40, 27),
(40, 28),
(40, 30),
(40, 31),
(40, 32),
(40, 33),
(40, 35),
(40, 37),
(40, 38),
(40, 39),
(40, 43),
(40, 49),
(40, 50),
(40, 51),
(40, 53),
(40, 54),
(40, 55),
(40, 56),
(40, 57),
(40, 58),
(41, 17),
(41, 18),
(41, 20),
(41, 24),
(41, 25),
(41, 26),
(41, 27),
(41, 28),
(41, 30),
(41, 31),
(41, 32),
(41, 33),
(41, 35),
(41, 37),
(41, 38),
(41, 40),
(41, 43),
(41, 49),
(41, 50),
(41, 51),
(41, 53),
(41, 54),
(41, 56),
(41, 57),
(41, 58),
(42, 17),
(42, 20),
(42, 24),
(42, 25),
(42, 26),
(42, 27),
(42, 28),
(42, 30),
(42, 31),
(42, 37),
(42, 38),
(42, 39),
(42, 40),
(42, 43),
(42, 50),
(42, 51),
(42, 52),
(42, 53),
(42, 54),
(42, 55),
(42, 56),
(42, 59),
(43, 17),
(43, 18),
(43, 20),
(43, 25),
(43, 26),
(43, 27),
(43, 28),
(43, 30),
(43, 31),
(43, 32),
(43, 33),
(43, 37),
(43, 38),
(43, 43),
(43, 49),
(43, 50),
(43, 51),
(43, 54),
(43, 57),
(43, 59),
(45, 17),
(45, 18),
(45, 24),
(45, 25),
(45, 28),
(45, 30),
(45, 31),
(45, 32),
(45, 33),
(45, 35),
(45, 37),
(45, 38),
(45, 39),
(45, 40),
(45, 43),
(45, 49),
(45, 50),
(45, 51),
(45, 54),
(45, 55),
(45, 56),
(45, 57),
(45, 58),
(47, 17),
(47, 18),
(47, 24),
(47, 25),
(47, 26),
(47, 27),
(47, 28),
(47, 30),
(47, 31),
(47, 32),
(47, 33),
(47, 37),
(47, 38),
(47, 40),
(47, 43),
(47, 49),
(47, 50),
(47, 53),
(47, 54),
(47, 57),
(47, 59),
(48, 17),
(48, 18),
(48, 20),
(48, 24),
(48, 25),
(48, 26),
(48, 27),
(48, 28),
(48, 30),
(48, 31),
(48, 32),
(48, 33),
(48, 35),
(48, 37),
(48, 38),
(48, 39),
(48, 40),
(48, 43),
(48, 49),
(48, 50),
(48, 51),
(48, 52),
(48, 53),
(48, 54),
(48, 56),
(48, 57),
(48, 58);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(30, 0, 0),
(47, 0, 0),
(28, 0, 0),
(41, 0, 0),
(35, 0, 0),
(40, 0, 0),
(48, 0, 0),
(29, 0, 0),
(36, 0, 0),
(32, 0, 0),
(31, 0, 0),
(45, 0, 0),
(34, 0, 0),
(43, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(45, 0),
(47, 0),
(48, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details'),
(1, 3, 'Dead On Arrival'),
(2, 3, 'Received Wrong Item'),
(3, 3, 'Order Error'),
(4, 3, 'Faulty, please supply details'),
(5, 3, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 47, 0, 'Matthew Wade', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 5, 1, '2017-03-09 09:27:55', '2017-03-09 09:31:51'),
(2, 43, 0, 'Aliquam Quaerat', 'The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into\r\n a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe.', 4, 1, '2017-03-09 09:28:15', '2017-03-09 09:33:32'),
(3, 31, 0, 'Laudant Doloremque', 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 5, 1, '2017-03-09 09:28:55', '2017-03-09 09:34:17'),
(4, 29, 0, 'Richard McClintock', 'Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur.', 3, 1, '2017-03-09 09:29:56', '2017-03-09 09:34:04'),
(5, 36, 0, 'Matthew Wade', 'The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into\r\n a full ready-to-wear collection.', 5, 1, '2017-03-09 09:30:18', '2017-03-09 09:33:46'),
(6, 34, 0, 'Aliquam Quaerat', 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 4, 1, '2017-03-09 09:30:32', '2017-03-09 09:33:16'),
(7, 32, 0, 'Matthew Wade', 'The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into\r\n a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe.', 5, 1, '2017-03-09 09:30:49', '2017-03-09 09:33:06'),
(8, 48, 0, 'Richard McClintock', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 5, 1, '2017-03-09 09:31:15', '2017-03-09 09:32:44'),
(9, 34, 0, 'Matthew Wade', 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 3, 1, '2017-03-09 09:31:29', '2017-03-09 09:32:56');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(1033, 0, 1, 'product_id=48', 'ipod-classic'),
(1009, 0, 1, 'category_id=20', 'desktops'),
(946, 0, 1, 'category_id=26', 'pc'),
(989, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(1034, 0, 1, 'information_id=4', 'about_us'),
(1022, 0, 1, 'product_id=42', 'test'),
(789, 0, 1, 'category_id=34', 'mp3-players'),
(781, 0, 1, 'category_id=36', 'test2'),
(1014, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(1018, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(1004, 0, 1, 'category_id=28', 'monitor'),
(1008, 0, 1, 'category_id=35', 'test1'),
(1006, 0, 1, 'category_id=30', 'printer'),
(1007, 0, 1, 'category_id=31', 'scanner'),
(1005, 0, 1, 'category_id=32', 'web-camera'),
(1011, 0, 1, 'category_id=57', 'tablet'),
(1017, 0, 1, 'category_id=17', 'software'),
(1015, 0, 1, 'category_id=24', 'smartphone'),
(1016, 0, 1, 'category_id=33', 'camera'),
(998, 0, 1, 'category_id=43', 'test11'),
(791, 0, 1, 'category_id=44', 'test12'),
(792, 0, 1, 'category_id=47', 'test15'),
(793, 0, 1, 'category_id=48', 'test16'),
(993, 0, 1, 'category_id=49', 'test17'),
(991, 0, 1, 'category_id=50', 'test18'),
(992, 0, 1, 'category_id=51', 'test19'),
(990, 0, 1, 'category_id=52', 'test20'),
(1010, 0, 1, 'category_id=58', 'test25'),
(996, 0, 1, 'category_id=53', 'test21'),
(997, 0, 1, 'category_id=54', 'test22'),
(994, 0, 1, 'category_id=55', 'test23'),
(995, 0, 1, 'category_id=56', 'test24'),
(1002, 0, 1, 'category_id=38', 'test4'),
(999, 0, 1, 'category_id=37', 'test5'),
(1001, 0, 1, 'category_id=39', 'test6'),
(1000, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(1023, 0, 1, 'product_id=30', 'canon-eos-5d'),
(1019, 0, 1, 'product_id=47', 'hp-lp3065'),
(1032, 0, 1, 'product_id=28', 'htc-touch-hd'),
(1020, 0, 1, 'product_id=43', 'macbook'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(1027, 0, 1, 'product_id=45', 'macbook-pro'),
(1025, 0, 1, 'product_id=31', 'nikon-d300'),
(1024, 0, 1, 'product_id=29', 'palm-treo-pro'),
(1021, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(1028, 0, 1, 'product_id=41', 'imac'),
(1030, 0, 1, 'product_id=40', 'iphone'),
(1026, 0, 1, 'product_id=36', 'ipod-nano'),
(1029, 0, 1, 'product_id=34', 'ipod-shuffle'),
(1031, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(1035, 0, 1, 'information_id=6', 'delivery'),
(1036, 0, 1, 'information_id=3', 'privacy'),
(1037, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('015ae28255f21a25bcb4e0fe7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 09:01:27'),
('015bad722ea0c2636a1c435be6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 10:24:32'),
('01f3850459344e9e17bfd3e960', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-08 15:42:50'),
('02217878b5f6db019b527737c2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 16:59:51'),
('04965535de9d70fd3ff7570844', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XZUKDc2rzCIcb3rbFrWI4WxqcX2npj7i\"}', '2018-11-20 13:31:52'),
('0566b60135cb2e2f7f8003dcb9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-06 07:26:50'),
('069b09bbbb235320472f73b0d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PbdtgfYxEuLlDnRy16gBBhe7D7EsEKvu\",\"wishlist\":[\"35 \"],\"compare\":[\"35 \"]}', '2018-12-24 13:32:00'),
('06c5b03919d169033b8d3cfc7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-28 11:46:39'),
('0717d918909fdc44102b99753b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Bi9Cebt691W8kWunnB6v9D87PofhJSlD\"}', '2019-01-09 12:37:06'),
('07f2f9caad7131b2c896a71a11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 06:21:27'),
('086fe0fff912a0af8391bd106c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-01 06:59:33'),
('09714f68934918df4901b0b0a7', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-10-15 08:24:45'),
('0a2d6fe4c517119ebacd64d6a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 04:41:16'),
('0b570b4486ac2a348a6d564cdd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-06 12:36:02'),
('0be17a384a286d6015bebc9336', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 21:12:47'),
('0ca277ef333e4ae08f5be03f9c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 05:29:43'),
('0e029481c50d6f53ef5a1a7fb9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 12:41:24'),
('0e2971c569c3967be9dcdc36a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 09:45:39'),
('1014620263e2def303a8b1c0c1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 20:02:41'),
('11b59d5b2db2c056ba11f2fe08', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[\"42\"]}', '2020-02-06 10:32:00'),
('128d3dddf43701255be4c20126', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 08:29:23'),
('129b0682eb1946c8368a569642', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 09:13:39'),
('12f0483b48a104f8fd1489a959', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 15:32:29'),
('13ff54d00ab61d45b906a2b418', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-09 08:55:52'),
('1460aa0ad5b1dd830ea76b869e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"00jSSKPy814jUNUOzZVPWxbEh6O15O7g\"}', '2018-03-09 11:24:20'),
('146b0313cb945d0330b6453de7', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"4G54osnTW08p83w3LyU5nODUU8gIb9Zs\",\"customer_id\":\"2\",\"payment_address\":{\"address_id\":\"3\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"123456\",\"city\":\"mumbai\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"mumbai\",\"zone_id\":\"3397\",\"zone\":\"Balkan Welayaty\",\"zone_code\":\"B\",\"country_id\":\"216\",\"country\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"custom_field\":null},\"success\":\"Success: You have modified Cash On Delivery payment module!\"}', '2018-03-15 10:08:06'),
('15fd74d5dd87bebe55c6d4d7d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 09:33:55'),
('16d5247971c347bed0705c6087', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-14 07:59:47'),
('16e52a35449ed268874afd52bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-30 10:09:00'),
('17301fbf1d39ab166d5fbd1bf3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"http:\\/\\/live5.cq76489.tmweb.ru\\/index.php?route=account\\/newsletter\"}', '2020-02-10 13:54:44'),
('1803132049a8f5945adac5b3d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-29 08:40:11'),
('186b450b2214b96179749ea6b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 08:22:39'),
('192ccdbf3215c55349aa42466f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 20:10:49'),
('19d91d601111f18f3b83cb68f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-16 08:24:04'),
('1cdf88d5f7614834e614874c51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-03 07:25:03'),
('1d69fc7a16a0a261ff9947aebb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 11:38:43'),
('1e143f0cb01490046411bc4450', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-15 12:19:37'),
('1e43a1724e5395d1fc1329fe64', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 19:19:17'),
('1f0d2e308b72c76beaabeadcfa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 05:45:51'),
('201b340e23f85a1f520e6b6e2a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 09:28:46'),
('205e8ea4c1c7fb401f5066c256', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-07 14:23:09'),
('20a51b85bf4b40a8c89e79b306', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 10:15:00'),
('215c49246f117e3411e1c90f80', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 12:42:46'),
('219dd6405db0572e75f30dac20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-23 08:33:01'),
('21a4afe478ceb56200f26661ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ReoSCp7iIKpUzSz1q0DlNzKYsY94a3Sc\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user5\\/opencart\\/OPC050122\\/index.php?route=information\\/blogger&amp;blogger_id=1\"}', '2019-04-30 05:59:14'),
('21b71a4463ec73d7eb8a48dca5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 11:44:42'),
('233aa31bb6c16ec0ff30e2d0f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-02 07:26:22'),
('23636eb9be0c5915fbff7db9c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4pIt9ax04vfncxIRU5GybwV9UkpGmS3K\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user2\\/opencart\\/OPC010016\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-05-30 06:00:44'),
('247ee3d8ebb839cfc5b4c0fba1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"C4SYVF2R4qVKu8aspXC2JtrgnBL24ZU4\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user5\\/opencart\\/OPC030075\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-02-04 09:51:17'),
('24baa53ffee9961e847a2d149e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-27 08:44:08'),
('25880145846c1ddef89d6ef671', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 15:15:57'),
('25d3185e32a104e98198344ecc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"http:\\/\\/live5.cq76489.tmweb.ru\\/index.php?route=account\\/wishlist\"}', '2020-02-10 11:14:33'),
('273c470c6bf53702242fed1496', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 13:10:57'),
('27f72d5b5a67d37edf57646bd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-29 10:31:29'),
('284aa5719beef5eb74c7007b87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-12 08:54:33'),
('2886dc3524cd7b9e1f7a94f5ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"N9h1spiGMOwtpa1YQaU6aNiw2j5C3VbM\"}', '2018-12-29 06:02:25'),
('28befbcf96771376d1c8ba5e10', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"H1qDVGwyPzlkaG5Dqvq4JzssES0IoHW7\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user2\\/opencart\\/OPC010016\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-05-31 08:29:19'),
('2963c37bc1c154f5fdcd8d4fcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-26 11:42:25'),
('2b12d1b0a7675c4feff29a3094', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-28 08:56:10'),
('2b88b35fe22bebd335b29e4541', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 01:35:07'),
('2bdfac06e237e2ab5fab07fc6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 05:00:34'),
('2bed6e898f838e2d47cc3c614d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-10 04:25:03'),
('2bee14e71d0b34b0288f5a1924', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-06 10:23:49'),
('2c5dc4ba57cdb66d664b20937c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-22 09:32:27'),
('2cb95d4df817fac0e7ca80e971', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 10:54:41'),
('2eae497631b5720ff02cf0397d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 19:32:02'),
('2eca1b2b6f017f8413b6bf9461', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"dalP0lm2Tgt5Q08vQI6jW5LGbDPvSHBd\"}', '2020-02-06 11:38:13'),
('2ed7e0ea323970be781145b282', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"2KtUyALOKhFGQiPMfShJbUGx3GAgvRlQ\"}', '2020-02-06 11:57:51'),
('2efc866d0f7bb70d9beb3da311', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zjCwDyPZBCr5wA6l7A1TAyAqSeflrTIe\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030067\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-11-22 08:03:21'),
('2f64163071955ff2e4baa81929', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-27 12:08:12'),
('2f9c5ae17b472968bab9bec76f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 12:24:00'),
('2fbb39aed888d264459c553c29', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 12:23:53'),
('2fbbc2f8b087913799f7a7513d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-12 07:50:15'),
('307ee48016fd849510cabf4d13', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 10:21:20'),
('30ae23cd3396c47dd432aa9dfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-04 10:45:15'),
('30af313cd4b551ff9866b45e18', '{\"user_id\":\"1\",\"user_token\":\"XnsDxrZh1VvgBYb9SKfxg0MKCgjLCKde\",\"install\":\"LuHXyNAI2t\"}', '2021-04-20 18:24:20'),
('30b590d2c1c0253560ac902fec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nnSF3dDR315iJwfYDwhxctH96zleRb8f\"}', '2019-01-21 10:38:22'),
('30d19b04a4b041a03dd0572770', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-13 14:47:25'),
('31ea8da5709f97047ddbb023fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-02 08:04:16'),
('320bbe4488eff91d304cf6eebb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"pxM9JfbgLG0GNreB1hRjevZx5m8gScPo\"}', '2018-12-22 10:03:04'),
('32c5218702efb1fc8475e2c09e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"35\",\"42 \"],\"compare\":[\"35\",\"42 \"]}', '2019-04-30 05:51:11'),
('331be382dac377892a8286fb3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 10:09:03'),
('331dc3c7e63b2e783ad8f93d95', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"http:\\/\\/live5.cq76489.tmweb.ru\\/index.php?route=account\\/order\"}', '2020-02-10 17:23:49'),
('3361bfa0faa6fc2b9acf5e2e38', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"ODCXPbvcvedETpnifBh6Galrh3ngW4Zd\"}', '2020-02-11 14:06:27'),
('3393a141ae39301bf0820b5996', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Bk50KrlDaWKTWX82SPz3n94jVFnGAp7w\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030070\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-12-27 13:28:37'),
('3482faed3304ec5571f94ebf7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-10 12:18:18'),
('34cd281fb2ed73c9a838dc7f29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zMojXmcOMKF4BbBzYWdw8o49qsJjnogL\"}', '2018-11-27 11:35:51'),
('369a289792fcf6d470d511fcd2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"http:\\/\\/live5.cq76489.tmweb.ru\\/index.php?route=account\\/order\"}', '2020-02-11 11:29:11'),
('3850d248f5605433821b501508', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-11-13 06:18:22'),
('39a9c28490110570850de0fc27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 08:01:03'),
('3aa166ddd7effcb6141a0e98a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 03:52:48'),
('3aae74d7af805039f992bd4135', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CNLVj2vRoip9zISHQ3pGSIeVA8fPWUkP\"}', '2019-02-04 10:26:40'),
('3bb7eb08074a1b5b48a919b171', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 19:44:57'),
('3c15cd29a141fcffe8128c233d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 06:08:21'),
('3d3cd684ee8d6c10e37a228d08', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"5LBqvTbVGgKHVn8oAVpnDenpgq1nX1of\"}', '2018-05-30 11:02:38'),
('3ee8d3b996ce23af80537cdc42', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-03-14 12:48:49'),
('3f5919506fe7822142451a4caa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-26 09:14:28'),
('3fa608820d0662a407c79dcbb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-23 08:34:16'),
('409d92ae2ca1f878361810c86d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 03:26:17'),
('40b0dca7540885b67c3016a4e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ltnLdMHqUKK9iGTlJOroXV3aRAmUnIFb\"}', '2018-12-25 13:17:50'),
('40c9d50b8994bad7b2f9fe50fd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 12:13:22'),
('422381ea1488ca257ac55f33c2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 15:36:06'),
('42b4265ab91b4795f4a31a92d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-25 06:30:04'),
('4326b66fa1bfb72b91e5c649f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wGpKz92XJJ8M71R38ykks6xxfMfHsfD3\"}', '2018-12-04 11:37:06'),
('433a7bcdc53fa2d61d234f8d80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:10:55'),
('440e7cec1bafe2994e06b642fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:07:14'),
('4565b66d9d733330de51dcee01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-19 06:46:41'),
('48dc7a20c8ff5b124c7607b67c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-23 09:53:49'),
('48f24f3d58b872a2a22395a5b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"yH5Ta4rV5AZ07FLQWnLzDAxl0GiOAt8G\",\"redirect\":\"http:\\/\\/192.168.1.150\\/user4\\/opencart\\/OPC040098\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-03-14 13:01:10'),
('4936980da1703ea472d17e039f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 22:31:28'),
('495dd0e36b9b11e7a755a6a4f2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-03 18:53:18'),
('4c20510c00dbf800f4c1d8fd64', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-09-04 05:32:00'),
('4c2c717560e257358d14162da1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 01:54:51'),
('4e333f476fd669aa7b896400db', '{\"language\":\"ru-ru\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hllMwzZI2U8LhACIGuEelpy1CDG7XXMx\",\"install\":\"PNqnbyCF8F\"}', '2020-02-02 11:50:02'),
('4e8fe5fd7e497bcf8d0128ec0a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 16:25:27'),
('4f0c130fec8cfc552efb91867f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-22 08:51:33'),
('4f45b52e80338b7a67c193efcf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZzLJbUT0Kg1n2QZVGivRnVWxvw0BFRIT\"}', '2018-05-31 13:32:18'),
('4f7dc592791130ed89c5964594', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 06:50:56'),
('4ff0226b1a712a25c7b8e32889', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7plKMXiCWh2chOsGorEOrXma8JssJsSn\"}', '2019-01-17 08:58:15'),
('50bb7554925078614daa9e7e67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-30 05:44:41'),
('5170ca07c47805da37b5574815', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-05-30 08:47:53'),
('52a25072634ec469b30ff30ee6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 06:49:38'),
('533bc31f03dfa9210068fc99d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-29 11:36:28'),
('53a2d0b6e5c7a74c2efdde2127', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-06-29 10:39:59'),
('5521dda7587af5d264b42594dc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-04 08:12:48'),
('5544a754d44d9b4e9554e788ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030067\\/index.php?route=information\\/blogger&amp;blogger_id=6\",\"wishlist\":[\"41 \"],\"compare\":[\"41 \"]}', '2018-11-21 10:57:18'),
('559d72ea27c15a2c06132fa90c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-08 10:26:48'),
('55aa6c1b2be1f1613891d31462', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 13:03:07'),
('55e482961b44b769b335a825c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user5\\/opencart\\/OPC030075\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-02-04 10:06:42'),
('560318c6b09f111f60f25bc9f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-22 05:35:18'),
('56af275401c5a14353f4127915', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 22:31:41'),
('58c7b5c068bc1083013140b52d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"vouchers\":[]}', '2020-02-10 17:38:19'),
('5906fa5547385d7ac397932d15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-07 10:05:31'),
('5949ee73d3418904bad394632a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-14 07:58:35'),
('59ccc2157d403295fe77cbecdb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"OnVNnbfIOL10v2lHqHQtRalaLKqnPpUF\"}', '2018-11-16 13:01:18'),
('5a253c87666ec955087db0a26b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FdTvI8N3K09Ns6bK0BZ64PdJRGuWibf5\"}', '2019-01-09 08:38:18'),
('5a6e85a84de3b4fccf64ece8d7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 19:57:23'),
('5bfd75a7e096139e4533b9231b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7XfbmafyHM1xDhYAbyYbI5hu6c73wJW6\"}', '2018-11-26 12:39:55'),
('5d0eb7adde8dcf2e2725752b0f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-08 10:13:07'),
('5d3e888e7a7b4be01d8cad70a9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 19:46:05'),
('5d49dc3b066eef8a04daa26523', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-28 09:59:02'),
('5df9c15909305017192226f3a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 05:45:20'),
('5f2ed25bdf161e8f74cfcbb495', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 23:13:39'),
('60995363cd7039a2c424607abd', '{\"user_id\":\"1\",\"user_token\":\"ONgOjVTHv1YEQVnje52slqNIyLoGrAGb\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-20 08:41:21'),
('609dd7fd12107dfbfbb0b9771b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"w1b8mWeeqVVdSpIq1Bwi1ptKIpGbaYk5\"}', '2019-01-03 12:50:28'),
('628fa4b745decb0c69b9883ede', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 03:15:23'),
('645db8addc51b55611dcfb7a49', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 05:57:31'),
('64992a6a92d52091d8a8e02a78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-27 06:42:19'),
('6620fa720bed8dafa252885404', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-22 12:45:06'),
('66437da48444fa1b4e6dd33abf', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 18:10:46'),
('66be580b176b01dbf7ab6672ef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 13:03:04'),
('66d586e5bef29b7b20b326af1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-14 09:44:13'),
('670473a4cc34bffaa4f9d05868', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"3\",\"user_token\":\"OIOXO6UcxXOvk5TQ5KcYB9LsTr7CUGC9\",\"wishlist\":[\"29 \"],\"account\":\"guest\",\"payment_address\":{\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"abc\",\"address_1\":\"surat\",\"address_2\":\"mubai\",\"postcode\":\"12345\",\"city\":\"surat\",\"country_id\":\"223\",\"zone_id\":\"3624\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"California\",\"zone_code\":\"CA\"},\"shipping_address\":{\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"abc\",\"address_1\":\"surat\",\"address_2\":\"mubai\",\"postcode\":\"12345\",\"city\":\"surat\",\"country_id\":\"223\",\"zone_id\":\"3624\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"zone\":\"California\",\"zone_code\":\"CA\",\"custom_field\":[]},\"customer_id\":\"4\"}', '2019-03-15 11:40:35'),
('672afefbd2ba615fbd8d1ccd2e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 20:21:25'),
('6872b9f726f89c62bd083600ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-16 04:15:05'),
('68a24a2425b490307ee1d8aee1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-02 09:52:03'),
('69c9d3fb9d676f9bb9a1d9e549', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 15:44:00'),
('6a81669422c07d474253ce3eab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-10 10:06:34'),
('6a86b4f8a14a1daaa1dfa4573f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 05:58:54'),
('6acd28caa8dfdfceb2972fd591', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 05:59:08'),
('6b19ea50f30a9969223061d129', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-22 10:47:11'),
('6b9d22fdcc5d4345983799744c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 18:36:58'),
('6bff0a5d02710c840b0f7279af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 10:21:47'),
('6ddfefe9349871c5afd3601927', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 21:56:45'),
('6e3e3d573770440d489e9b36ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-29 07:10:15'),
('6f6f40373fb23eb9c864036183', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-01 09:17:14'),
('6fa21eed39e54e38f8f948e0bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-22 09:57:24'),
('71c5ca771efe5ab4e5afe662f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-16 07:21:19'),
('71eebe5a63e060d804eff2752c', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LIoyfE4y1m9XVXTBObkDsFCumGktBztr\"}', '2018-11-22 13:11:56'),
('7443782e8fee64bd5058dd4713', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"A4mSaAAACqZfPTRyQCENZu2PH9PjZtsh\"}', '2019-01-08 13:30:54'),
('745f9b6f111d0870dfa153f64d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 03:02:31'),
('74839d1706a53862ec2d5595af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user4\\/opencart\\/OPC010008\\/index.php?route=information\\/blogger&amp;blogger_id=5\",\"user_id\":\"1\",\"user_token\":\"mhpO9vBUAE5jtiTQHihjCGNoJZQG5PSY\"}', '2018-03-15 05:54:21'),
('7595c87351fc130dacfeb5362f', '{\"language\":\"ru-ru\",\"currency\":\"USD\"}', '2020-02-02 16:45:31'),
('766827f37144f3f6af81b975de', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 16:17:27'),
('769b731fbeb19d7cc3b4dd7f2a', '{\"user_id\":\"1\",\"user_token\":\"1QjruC4PAzxRLU7XbJ8GVKlzyLdTtw5U\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-02-20 13:39:42'),
('773fa72842fbb7b465d3c395c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 10:22:12'),
('77913d8cd1b61b085889b46937', '{\"language\":\"en-gb\",\"currency\":\"RUB\"}', '2020-02-08 11:47:31'),
('77c3720740a6fd42d81b886c4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 12:19:03'),
('798719aa28f1c48f28436a96d6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 04:47:23'),
('79c5def06e4fc25388e8777272', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-30 07:12:09'),
('7a7e2109de6abd3f2c3b0ee2ab', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 16:20:32'),
('7c21a2c4253ba3ff4785dcbe3e', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-03-16 05:49:47'),
('7d4b279dcdedcecfbbacfd0354', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:29:28'),
('7de9ce7f36cda42f954bd2fdf0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-15 08:56:02'),
('7e996d3bfdc1e8e4fa33349303', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 09:13:42'),
('7fc7bfff7378b91a32be038e05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 05:02:36'),
('803264f98408a652005d2e2894', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-01 04:23:22'),
('80a85338eb185e83384ba5398f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 19:47:55'),
('81360a6e565055b5519ffa5f5c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MgVpzsauYj7ezRcPQ9En0H7k4mKHrhEO\",\"vouchers\":[]}', '2018-12-26 13:32:48'),
('837a219357316b2b75f64dd4f4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 01:28:00'),
('840c8727f8a575484704948fa0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 07:11:53'),
('84a3d3d9e66126b5a7c50ae91f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 06:46:32'),
('84d30d3f02a3d18c2fb1456d06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-01 12:00:22'),
('8569ffa6be8bf8de5a1049bc9a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 22:11:14'),
('87b53efd4511b3a2b6f1f1dbcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-06 07:34:21'),
('88172ee3117f66a708fe866c05', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 17:23:53'),
('8997513803e417490ce2dad0d0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 04:27:57'),
('8bfa836e5aed23bb2c427234af', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 13:32:47'),
('8c29972318167763c11b6be3ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:23:29'),
('8ccae1509c663bca81f826f04d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-08 16:35:55'),
('8d9972996e754b5c3c6fb14a8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-09 08:12:15'),
('9098ec0a922743b422e74df2b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-13 04:09:42'),
('910a3b5e4330b662f07c88d2db', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"C6Rlc5dVtFRHWK0FVBarkrCZIr2Llrqb\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-05-30 13:00:14'),
('929542e34a02241ccf5bd0fb75', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-05 17:52:04'),
('92c1408a5d20ebdc9ec49c3453', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SPZTfkxLWpmJbxwcQAH1DVebvDhxs4On\"}', '2018-11-21 13:29:41'),
('92d4aa14e043b4d2c3f0238182', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 06:05:43'),
('932d4e7c22c8c1bb12736cec40', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 18:48:48'),
('9366ed9ee25f8150f0f783ac3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-09 08:16:42'),
('9432928caeb8784adef4727e7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-16 04:43:22'),
('9438cf8b6a229971be39109f8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-31 10:31:25'),
('95f5f29db5b84ca6db576606e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"h4nfJ1nhPYyxCkWg8wVLGejZkX19A7yn\"}', '2019-01-03 05:38:50'),
('97f0c80f34e2e14cf405caa0a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 06:22:15'),
('9856ac5c6e3cf4f1bc2a2473b4', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-07-31 10:34:02'),
('99575e7476a2530d7df830f8b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-13 05:36:29'),
('99b79a47fc15b4ec47f1aa7293', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 18:54:24'),
('9a85d5103fa9a77bd101d7e61d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 11:47:29'),
('9a92d3b60816e74baaaf42671d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 03:49:41'),
('9ac9c4cc876b0e94485c75675e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 05:10:24'),
('9aed840a2090c6fde084324e35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-12 09:18:26'),
('9b14d633202e353bfab6c71e6e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-03 14:37:45'),
('9c06242e76c9a64bd55a3bce3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0D7WL6xPEC1ejaf4Kg0nZGB3zwd88xNS\"}', '2018-12-20 13:31:33'),
('9ddf2295b526f46b760161155b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 06:07:33'),
('9dfac4654abbb20a8398bff444', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 14:15:03'),
('9fedc5b8751e3e2390470f7de8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-15 12:19:54'),
('9ff9a189d2a428b563971bb1c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 00:15:37'),
('a038264474a14aa12c52e07305', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 12:41:54'),
('a085b68c0aba86066e3b657863', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 08:39:37'),
('a0e2c09a8d362477aa1f8cdec7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-18 11:30:33'),
('a112d106f07467df5dc9babe8e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 21:56:02'),
('a308a92ac67ad460a00e59f757', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 14:44:16'),
('a46661c1b9e634ef0b404cedbd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 16:12:52'),
('a4d8d54a9aa0efd48d42162432', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 20:54:09'),
('a603e093d88c0d75eca0541e90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-23 06:42:34'),
('a629d43a182c34c0450c2fa667', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-08 14:47:55'),
('a6aef425caee212e82be925e8c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 05:00:11'),
('a7811e38efddc597be80d65be3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"h6xgKZXruURBstXSwxQUnxto6T1EzzdM\",\"wishlist\":[\"47\"],\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030067\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-11-19 13:31:41'),
('a7f14b46219b2e0e9ca1acf3c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-25 11:54:05'),
('a880575f706670a9adec18d219', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-11 07:57:57'),
('a8b959fca24e8f49cc7e86c5b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"123456\",\"city\":\"mumbai\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"123456\",\"city\":\"mumbai\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"user_id\":\"1\",\"user_token\":\"Wh3V2BZ9Rw2Bb1KVtXqSxIK4KIJ0iXX9\"}', '2018-03-01 07:10:03'),
('a9e9e765083bb382e78e8b0666', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 05:58:09'),
('aa4237d2d3078001a4eee2b70f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"vouchers\":[]}', '2020-02-11 11:42:24'),
('aa672228025dd822577928fd48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-23 06:23:34'),
('ab5b5655721d9c573b659d191a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 08:54:21'),
('abeda1004f37d990f066899bcf', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-08 22:32:18'),
('ac030d02e4769e6872b5cc4bbe', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 18:18:59'),
('ac23837cf85497ca5616f9c2a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zJGTwfQTieSF7fcEqPdYn2XInOy5rKzy\",\"compare\":[\"30 \"]}', '2019-01-05 08:35:21'),
('ad5909c6fc2850e4deb9ec59fc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 19:12:27'),
('aec21589ebd1a2eca92c32a424', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ykpfFOUH5eQ9cMRLqMqXQVrHqQtOLpSi\",\"wishlist\":[\"35 \"],\"compare\":[\"35 \"]}', '2018-12-28 13:13:57'),
('aef5407e68009b15fd8c47101e', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Q632Wk0kTOY7Yi9DzWq75tX7pULJavA8\"}', '2019-01-07 11:32:58'),
('b03011749ef08e0743b4c52a60', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user2\\/opencart\\/OPC010016\\/index.php?route=account\\/account\"}', '2018-09-05 10:30:24'),
('b073474e950b7fc4a0ce762bbf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-20 12:10:05'),
('b0a22488018e78a1ea3974255a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"http:\\/\\/live5.cq76489.tmweb.ru\\/index.php?route=account\\/newsletter\"}', '2020-02-11 10:21:15'),
('b2741888e0df811a1aaeb55706', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-29 10:59:16'),
('b3e142ad1258943383626ecf52', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 19:46:08'),
('b3f1cd418cc28d5d8059f8ffea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-15 11:27:31'),
('b4bcc709af675b6a40c0a6e5cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-02 08:21:50'),
('b4c392ea9ead193c9b2669866f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-04 15:04:48'),
('b6ba451e21eef3bdda1f29dcde', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 08:22:36'),
('b72eb0c9ccff5718b6160e3dc1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DAsbCgF98RX9okPAEaHWjMVF83ZqpoTa\"}', '2019-03-12 12:59:26'),
('b9066d93e3f5497dbe2fe6ebe2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 16:37:45'),
('baf3f57947b25b55caee1de0ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-20 04:25:35'),
('bbbb4ad1d77a9d8852cb8ebbd6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 10:32:33'),
('bbe443927983d801df48db67f5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AzPJfBsnky1jxpZKbPiiEhDdBAK4mIr7\",\"success\":\"Success: You have modified HTML Content module!\"}', '2018-11-13 13:22:45'),
('bd63816839b9078aed8e106ad9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-14 04:05:37'),
('bf7de48f11baadacd99a49a017', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-07 02:02:59'),
('c16205ada32d54e46606c0dbe7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9p7MaSnXWE3HirR1GoXdRnIPVZ7mcvXY\",\"account\":\"register\",\"customer_id\":\"3\",\"payment_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-05-29 12:57:02'),
('c1d19d2d80577c9af7bdbf9cce', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"bqaiuNwGbmll89bEwtVIoO5Oqpulkp4a\"}', '2019-04-30 10:27:09'),
('c386241e414fb7767c356a16aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-16 06:50:36'),
('c3f4c901de575de166bc796d38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-20 04:26:12'),
('c427e3ea8dc5a94edd841a61c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 14:31:48'),
('c4a416f78111cc77f4576c9de3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:12:16'),
('c4da139abc7ffb9f95a9a32920', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-08 11:27:47'),
('c502175de620886b6bef542333', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-03 15:05:21'),
('c5cf5c93c64e8aeeed40962850', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ekYWAi3rQfmguanD97Wo9JWnFPcMpSc3\"}', '2019-03-15 12:35:28'),
('c6881a91a695a416e455240151', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-02 05:17:27'),
('c690635ef856af2f77dd562465', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hxQtOBovKMLSi4brDy6iGYqoFjzmnwjP\"}', '2018-03-14 13:38:09'),
('c6e73075c06267598e74215dd6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 13:59:27'),
('c7c149d23a25dc64f13ae8ae2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-25 04:21:14'),
('c8f33a07b139d8495119dd3ed3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-24 08:02:03'),
('c9e90c1dde2ccc9d4ef4999598', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 07:29:50'),
('cd37038a2f592caa999cfbbf16', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 09:24:28'),
('cf86ceca8c731c455ece4cb79e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 13:47:05'),
('d05ad413d728d86b4ed9799179', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-28 13:00:43'),
('d097dedc4810bd9c51f2b7edcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-27 08:01:36'),
('d405c4c706293d16604b9bbe30', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B1RvTHuVEcib3jQFH7PURVXx7sHZbpIN\"}', '2018-02-28 13:35:53'),
('d621fff55af6db5cca577c6c92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-26 10:31:20'),
('d64d43f87e41d537f4c679a8f5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 10:07:09'),
('d82468d9e99c473b85059850cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-24 10:37:55'),
('d8515d85790263658f78891db0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 10:22:18'),
('d93845084bc100c389c20de0f1', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-11-20 04:19:10'),
('d9c2ae89a0ec13950e5dabedec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-12 13:22:00'),
('d9cc3c1a8013da2e9b91b9493b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 01:27:24'),
('dac698fdba133b6f630bee0cff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-03 08:13:21'),
('db1ff9d1aaf1cd52b6662ba870', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 09:44:15'),
('db3b33b94ac4e2a25b553d9058', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AE8f88KO6XsKVIk21yJ8Y4y9PvlzB0Fh\"}', '2019-03-12 12:07:41'),
('dc02404186d75d204da6ccb218', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-03 09:42:04'),
('dc027e530484e473362efd75af', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 19:31:13'),
('dc2c37921169d74091fe9fb4f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 06:30:22'),
('dd9a57fbe58e5bba26f19ac507', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-05 04:59:03'),
('ddd105e58dfa3fe1fd47cff2fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"O2XHzDVBGqGhxZoNjvGw1hramJg0q6C7\",\"vouchers\":[],\"wishlist\":[\"43\"]}', '2019-03-15 10:53:03'),
('de99bb50ab788d14563807df8c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 19:12:13'),
('df423b99cd6677ca25ac6fe2ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-25 08:35:35'),
('df5d35f881e1485eea7f64b1dc', '{\"user_id\":\"1\",\"user_token\":\"eaVTLKmx7q2CWQWExE4Z0zbV3HxUo8ew\",\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-04-27 12:58:00'),
('e015246f5b791571de2b76bb94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-12 07:31:38'),
('e04b189760fe9cf5754ecbefed', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 15:13:18'),
('e06a2c088e8e66c21ef39e8adb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 21:09:07'),
('e11a3962630f11b24a9517eb32', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 10:33:47'),
('e15a84e877cafaa2e341be7e65', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-12 01:33:24'),
('e169f52830820c3d4515f09ab2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"TRkHfB0mYNkJZikJPXDwOcrViKKLQck8\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user5\\/opencart\\/OPC030075\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-01-04 13:02:41'),
('e273c368743342882178e47146', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"b286Cq66xLla17Re6Wr9CmBR0oZhoiv0\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"compare\":[\"43\"]}', '2019-04-29 13:00:29'),
('e2e51bd47a2e2393b9b3a48794', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-06 07:34:12'),
('e3041afbcef58a9b6d74d835e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-11 11:47:48'),
('e3eca50c14a53f2a05239e636a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-05 05:43:35'),
('e410d8b432457783db15ea6da7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-03 06:43:50'),
('e4683fd9f1df0bf477dcea9686', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"81MxJ11hnkXvOI3CzBgNMAOXfQDTrg2X\",\"vouchers\":[],\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"compare\":[\"47 \"]}', '2019-01-08 12:40:23'),
('e6ce092d66ffe5bbf55faa3326', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"http:\\/\\/live5.cq76489.tmweb.ru\\/index.php?route=account\\/account\"}', '2020-02-10 05:57:27'),
('e70cada7d4d6588881b41060d8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 11:43:53'),
('e78d8154f9164f2def1016f9e7', '{\"user_id\":\"1\",\"user_token\":\"bCrWXq3cZCZb5AOA7LXHJSGdWdCjDx5v\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-15 13:32:16'),
('eb03311d7632b35327d4ad5559', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 09:23:10'),
('eb639b4cee22bef1b6802efe34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-09 20:25:44'),
('ee61895170c8cd8aaf87864b63', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-10 02:45:39'),
('ee874a733b9b55f73b36c5efe7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 07:19:55'),
('ef93f06b990ca88a7a032e8294', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"gCeyOvH4nLM04YEsFF90izM11WfTxvJI\"}', '2018-03-06 09:31:59'),
('f0185e2f60e40f92743de44676', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"36\"],\"compare\":[\"35 \"],\"vouchers\":[]}', '2019-03-15 10:05:38'),
('f10c57af332064d6660d90ec6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-10 07:07:27'),
('f21785eb1db9defda95c295d6c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 20:22:51'),
('f2cf4389e78388beefefb42a91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-30 10:50:06'),
('f47eb2380d8bd225f3f3c31ea5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"BZk5ImMBhhJXivoCladgbdVdIk5pM68R\"}', '2018-11-14 12:39:02'),
('f6c943b3349f86a2bfdd6595bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"M2Pr2FGL5doIDAjza3l7vVchZXWPEJzD\"}', '2019-01-16 12:21:43'),
('f761a7574f29c064fdac64cff6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 23:14:41'),
('f8c8f17e8f3688a04c078526bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-15 11:45:14'),
('f977c52c2215168d47c75ebe12', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 18:24:47'),
('f98650224b8a3a0df04002fb23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-16 06:29:59'),
('fb6abd525655a10465375e7400', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 09:44:07'),
('fcc7ce091430c3f64510f76181', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-09 23:39:09'),
('fcf371abaa3b902be326858d0d', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2018-05-31 09:31:09'),
('fcf8d5e38cd5fc141088cf3279', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-07 12:56:43'),
('fdffd6e2294028eb461fdac3dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Mjids5GneJZsj2mwUou7i19LBTf6hP5k\"}', '2019-03-13 08:03:53'),
('fed08a6386eea88208c5c9a543', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2020-02-11 11:49:29'),
('fef75253b8c38a90e12ccac91d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-09 05:28:31');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(2670, 0, 'config', 'config_compression', '0', 0),
(2671, 0, 'config', 'config_secure', '0', 0),
(2672, 0, 'config', 'config_password', '1', 0),
(2673, 0, 'config', 'config_shared', '0', 0),
(2682, 0, 'config', 'config_encryption', 'zBGQjQLNTl7PSXMWwIo1l26Ueo5tPEqS8RAT8P5uTCdx0Rw8aXq3MHuj4LLtYTBzw87287rw0jzrswW4QP4awBbxmJilIsmIEKqo8yfD2zJO513RWKPUp1sTIyMCxUh5u5BUIDZcXnxX5rrh6PnUgjw3o0lKKqsmqWHk6Dv8qwHMxNh0VUpRV5K3WNhVxhB7niRx0d9SZNsot9ddqKKvzcEfpQSLTtmZhkMM2bh9JGPzcm2yrBv4Yb0ojEJn0XL9Dv4uHGsEuwhXUZe73P9F0fO1rhu9UU87H4wAIkNDs11w3nG4FcAEidDsvQUcczJ9mpSCvcxZAtFcL2dnuF2LQTGntNjTlXjGM2IGacOMTYKTKVEYsivHVlpikwxdXFC37e1w09SZjno3V7scPMeAQW2xstkLQRk32e45WW0ajWX4YxaBmouOSJvtxqECNYJ5pphM5bSBLLwoou1vbXCcemUeRo7gcRxVCvYis17AtQ7BjArB7Wy76qz406drVsAwIChNbjMpvILmLaJgIF4JH9MZrKe076kdeBnnepOAnKhV4agQHfnsMcW47r379W4ImAIgmrfH5aQp8HYc5YucMyS6FehnfYrFIF2rEKQzICl2qz4kk8817jx5qEG5xFLaNfrG34FCNJFsQs2hYQYOy7JEAFK5oA3Wwrhl32OLUatj4X4UHH3m3MMzyo4AjjnSDQ21Kw57KnELiX4Mcdxwc8eTrU31GFxAmbDL15XVhq2lL35OxiGTnihNRocKkluQgTH6BVlrkT51Ls9FRSQEPlFqLeN22OpG1F5zMknBAUIEw0osr8LAIbseaUAgD7iSM6pv8h5AQ1dZk7OyQy8CWGjs8sQaFWEFVyqF7oQOSff27NOXbjrNDZlcAmMVlrtCDSTqnGsWJC3G8rtYWUWWY3MKJEXf64GRxjeikDgoT3bHEP6cgkU7UfFpLYsWGRpnpJ1gEWOn4pSFm7Su8WANDYfkgmdowRiiCz3LZAMIG6uTQ3QEMNXFns5oO3GIKIn5', 0),
(2650, 0, 'config', 'config_affiliate_commission', '5', 0),
(2651, 0, 'config', 'config_affiliate_id', '4', 0),
(2652, 0, 'config', 'config_return_id', '0', 0),
(2653, 0, 'config', 'config_return_status_id', '2', 0),
(2654, 0, 'config', 'config_captcha', '', 0),
(2655, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(2656, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(2657, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(2658, 0, 'config', 'config_mail_engine', 'mail', 0),
(2659, 0, 'config', 'config_mail_parameter', '', 0),
(2660, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2661, 0, 'config', 'config_mail_smtp_username', '', 0),
(2662, 0, 'config', 'config_mail_smtp_password', '', 0),
(2663, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2664, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2665, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(2666, 0, 'config', 'config_mail_alert_email', '', 0),
(2667, 0, 'config', 'config_maintenance', '0', 0),
(2668, 0, 'config', 'config_seo_url', '0', 0),
(2669, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2649, 0, 'config', 'config_affiliate_auto', '0', 0),
(2648, 0, 'config', 'config_affiliate_approval', '0', 0),
(2647, 0, 'config', 'config_affiliate_group_id', '1', 0),
(2646, 0, 'config', 'config_stock_checkout', '0', 0),
(2645, 0, 'config', 'config_stock_warning', '0', 0),
(587, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(586, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(592, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(591, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(590, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(2589, 0, 'theme_default', 'theme_default_image_cart_height', '121', 0),
(2590, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2591, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(2111, 0, 'developer', 'developer_sass', '0', 0),
(2110, 0, 'developer', 'developer_theme', '0', 0),
(232, 0, 'module_filter', 'module_filter_status', '1', 0),
(233, 0, 'module_information', 'module_information_status', '1', 0),
(234, 0, 'module_newsletters', 'module_newsletters_status', '1', 0),
(2644, 0, 'config', 'config_stock_display', '0', 0),
(2588, 0, 'theme_default', 'theme_default_image_cart_width', '85', 0),
(2587, 0, 'theme_default', 'theme_default_image_wishlist_height', '121', 0),
(2683, 0, 'config', 'config_api_id', '10', 0),
(2642, 0, 'config', 'config_fraud_status_id', '7', 0),
(589, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(588, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(2641, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(2586, 0, 'theme_default', 'theme_default_image_wishlist_width', '85', 0),
(2640, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(2639, 0, 'config', 'config_order_status_id', '1', 0),
(2585, 0, 'theme_default', 'theme_default_image_compare_height', '121', 0),
(2584, 0, 'theme_default', 'theme_default_image_compare_width', '85', 0),
(2583, 0, 'theme_default', 'theme_default_image_related_height', '318', 0),
(893, 0, 'module_divido_calculator', 'module_divido_calculator_status', '0', 0),
(2582, 0, 'theme_default', 'theme_default_image_related_width', '224', 0),
(2581, 0, 'theme_default', 'theme_default_image_additional_height', '690', 0),
(2638, 0, 'config', 'config_checkout_id', '5', 0),
(2637, 0, 'config', 'config_checkout_guest', '1', 0),
(2636, 0, 'config', 'config_cart_weight', '1', 0),
(2580, 0, 'theme_default', 'theme_default_image_additional_width', '486', 0),
(2579, 0, 'theme_default', 'theme_default_image_product_height', '318', 0),
(2578, 0, 'theme_default', 'theme_default_image_product_width', '224', 0),
(2577, 0, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(2576, 0, 'theme_default', 'theme_default_image_popup_width', '564', 0),
(2635, 0, 'config', 'config_invoice_prefix', 'INV-2021-00', 0),
(2634, 0, 'config', 'config_account_id', '3', 0),
(2633, 0, 'config', 'config_login_attempts', '5', 0),
(2632, 0, 'config', 'config_customer_price', '0', 0),
(2631, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(2630, 0, 'config', 'config_customer_group_id', '1', 0),
(2629, 0, 'config', 'config_customer_search', '0', 0),
(2628, 0, 'config', 'config_customer_activity', '0', 0),
(2575, 0, 'theme_default', 'theme_default_image_thumb_height', '690', 0),
(2574, 0, 'theme_default', 'theme_default_image_thumb_width', '486', 0),
(2573, 0, 'theme_default', 'theme_default_image_category_height', '200', 0),
(2627, 0, 'config', 'config_customer_online', '0', 0),
(2626, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2625, 0, 'config', 'config_tax_default', 'shipping', 0),
(2624, 0, 'config', 'config_tax', '1', 0),
(2623, 0, 'config', 'config_voucher_max', '1000', 0),
(2622, 0, 'config', 'config_voucher_min', '1', 0),
(2621, 0, 'config', 'config_review_guest', '1', 0),
(2620, 0, 'config', 'config_review_status', '1', 0),
(2619, 0, 'config', 'config_limit_admin', '20', 0),
(2618, 0, 'config', 'config_product_count', '0', 0),
(2616, 0, 'config', 'config_length_class_id', '1', 0),
(2617, 0, 'config', 'config_weight_class_id', '1', 0),
(2615, 0, 'config', 'config_currency_auto', '1', 0),
(2614, 0, 'config', 'config_currency', 'RUB', 0),
(2613, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(2607, 0, 'config', 'config_image', '', 0),
(2608, 0, 'config', 'config_open', '', 0),
(2609, 0, 'config', 'config_comment', '', 0),
(2610, 0, 'config', 'config_country_id', '222', 0),
(2611, 0, 'config', 'config_zone_id', '3563', 0),
(2612, 0, 'config', 'config_language', 'ru-ru', 0),
(2606, 0, 'config', 'config_fax', '', 0),
(2572, 0, 'theme_default', 'theme_default_image_category_width', '921', 0),
(2571, 0, 'theme_default', 'theme_default_product_description_length', '180', 0),
(2570, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(2569, 0, 'theme_default', 'theme_default_status', '1', 0),
(2568, 0, 'theme_default', 'theme_default_directory', 'Stanley', 0),
(2605, 0, 'config', 'config_telephone', '123456789', 0),
(2602, 0, 'config', 'config_address', 'Address 1', 0),
(2603, 0, 'config', 'config_geocode', '', 0),
(2681, 0, 'config', 'config_email', 'admin@ad.min', 0),
(2597, 0, 'config', 'config_meta_keyword', 'Fashion, Men, Women, Accessories, Shoes, Jewelry, Apparel', 0),
(2598, 0, 'config', 'config_theme', 'default', 0),
(2599, 0, 'config', 'config_layout_id', '4', 0),
(2600, 0, 'config', 'config_name', 'Stanley - Tools Store', 0),
(2601, 0, 'config', 'config_owner', 'Your Name', 0),
(2596, 0, 'config', 'config_meta_description', 'Lawsuit - Suit Store Opencart Responsive Theme is designed for Fashion, Men, Women, Accessories, Shoes, Jewelry, Apparel, Minimal and multi purpose stores. This Theme is looking good with colors combination and professional look.\r\n', 0),
(2595, 0, 'config', 'config_meta_title', 'Stanley - Tools Store', 0),
(2675, 0, 'config', 'config_file_max_size', '300000', 0),
(2676, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2677, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(2678, 0, 'config', 'config_error_display', '1', 0),
(2679, 0, 'config', 'config_error_log', '1', 0),
(2680, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '1600.5780'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days'),
(7, 3, 'In Stock'),
(8, 3, 'Pre-Order'),
(5, 3, 'Out Of Stock'),
(6, 3, '2-3 Days');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'Скидка', '20.0000', 'P', '2011-03-09 21:17:10', '2020-02-05 14:57:43'),
(87, 3, 'Ндс', '2.0000', 'F', '2011-09-21 21:49:23', '2020-02-05 14:57:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '6e27b18da193a50dca985dcfb57e2e4fc0c65d5d', 'H0wMp4Ylx', 'John', 'Doe', 'admin@ad.min', '', '', '127.0.0.1', 1, '2021-04-20 17:16:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/html\",\"extension\\/module\\/filter\",\"extension\\/module\\/special\",\"extension\\/module\\/information\",\"extension\\/module\\/newsletters\",\"extension\\/module\\/codezeeltabs\",\"extension\\/module\\/blogger\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/latest\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/bestseller\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/html\",\"extension\\/module\\/filter\",\"extension\\/module\\/special\",\"extension\\/module\\/information\",\"extension\\/module\\/newsletters\",\"extension\\/module\\/codezeeltabs\",\"extension\\/module\\/blogger\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/latest\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/bestseller\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz'),
(1, 3, 'Kilogram', 'kg'),
(2, 3, 'Gram', 'g'),
(5, 3, 'Pound ', 'lb'),
(6, 3, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_blogger`
--
ALTER TABLE `oc_blogger`
  ADD PRIMARY KEY (`blogger_id`);

--
-- Индексы таблицы `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  ADD PRIMARY KEY (`blogger_comment_id`,`blogger_id`);

--
-- Индексы таблицы `oc_blogger_comment_description`
--
ALTER TABLE `oc_blogger_comment_description`
  ADD PRIMARY KEY (`blogger_comment_id`,`language_id`);

--
-- Индексы таблицы `oc_blogger_description`
--
ALTER TABLE `oc_blogger_description`
  ADD PRIMARY KEY (`blogger_id`,`language_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  ADD PRIMARY KEY (`news_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT для таблицы `oc_blogger`
--
ALTER TABLE `oc_blogger`
  MODIFY `blogger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  MODIFY `blogger_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2055;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2767;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2684;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;