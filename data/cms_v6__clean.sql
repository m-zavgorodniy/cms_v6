-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 12:10 AM
-- Server version: 5.5.8-CoreSeek
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_v6`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `meta_site_lang_id` varchar(40) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `section_id` int(11) NOT NULL,
  `article_type_id` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `body` text,
  `body_en` text,
  `sort_num` int(11) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `meta_site_lang_id`, `meta_site_id`, `section_id`, `article_type_id`, `title`, `title_en`, `body`, `body_en`, `sort_num`, `published`) VALUES
(1, '', '', 5, '', 'О компании', '', '<p>Текст о компании</p>', NULL, 10, 1),
(2, '', '', 6, '', 'Контакты', '', '', NULL, 20, 1),
(3, '', '', 2, '', 'Текст на главной странице', '', '<p>Текст на главной странице</p>', NULL, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_type`
--

CREATE TABLE `article_type` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `sort_num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_type`
--

INSERT INTO `article_type` (`id`, `meta_site_id`, `name`, `sort_num`) VALUES
('', '', 'Основная статья раздела', 10);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_type_id` varchar(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `body` text,
  `body_en` text,
  `img_src` varchar(255) DEFAULT NULL,
  `img_src_en` varchar(255) DEFAULT NULL,
  `flash_src` varchar(255) DEFAULT NULL,
  `flash_src_en` varchar(255) DEFAULT NULL,
  `img_src_big` varchar(255) DEFAULT NULL,
  `img_src_big_en` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_title` varchar(255) DEFAULT NULL,
  `url_title_en` varchar(255) DEFAULT NULL,
  `bg_color` varchar(16) DEFAULT NULL,
  `color_scheme_id` varchar(16) NOT NULL DEFAULT '',
  `sort_num` int(11) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banner2section`
--

CREATE TABLE `banner2section` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `sort_num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banner_type`
--

CREATE TABLE `banner_type` (
  `id` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `w` int(4) NOT NULL,
  `h` int(4) NOT NULL,
  `sort_num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_type`
--

INSERT INTO `banner_type` (`id`, `name`, `w`, `h`, `sort_num`) VALUES
('main', 'Баннеры на главной', 500, 200, 10);

-- --------------------------------------------------------

--
-- Table structure for table `banner_type2section`
--

CREATE TABLE `banner_type2section` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `banner_type_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `color_scheme`
--

CREATE TABLE `color_scheme` (
  `id` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color_scheme`
--

INSERT INTO `color_scheme` (`id`, `name`) VALUES
('', 'По умолчанию');

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `container`
--

INSERT INTO `container` (`id`, `meta_site_id`, `name`, `sort_num`) VALUES
('main', '', 'Главное меню', 10);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `title`, `title_en`, `rate`, `sort_num`) VALUES
('', 'руб.', 'rub', 1, 10),
('eur', '€', '€', 60.87, 30),
('usd', '$', '$', 53.37, 20);

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `id` int(11) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `doc_folder_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `annotation` text,
  `annotation_en` text,
  `doc_src` varchar(255) NOT NULL DEFAULT '',
  `img_src` varchar(255) DEFAULT NULL,
  `sort_num` int(5) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_folder`
--

CREATE TABLE `doc_folder` (
  `id` int(11) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `published` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_folder2section`
--

CREATE TABLE `doc_folder2section` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `doc_folder_id` int(11) NOT NULL DEFAULT '0',
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meta_site`
--

CREATE TABLE `meta_site` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `path_files` varchar(255) DEFAULT NULL,
  `own_domain` int(1) NOT NULL DEFAULT '0',
  `domain` varchar(255) DEFAULT NULL,
  `lang_title` varchar(255) NOT NULL DEFAULT '',
  `locale` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_site`
--

INSERT INTO `meta_site` (`id`, `title`, `path`, `path_files`, `own_domain`, `domain`, `lang_title`, `locale`) VALUES
('', 'Мой Сайт', '', NULL, 1, NULL, 'Рус', 'ru_RU');

-- --------------------------------------------------------

--
-- Table structure for table `meta_site_lang`
--

CREATE TABLE `meta_site_lang` (
  `id` varchar(2) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meta_table`
--

CREATE TABLE `meta_table` (
  `id` varchar(40) NOT NULL,
  `table_name` varchar(40) DEFAULT NULL,
  `depends_on_site` int(1) NOT NULL DEFAULT '0',
  `filter_data_by_meta_table` int(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sortable` int(1) NOT NULL DEFAULT '0',
  `editable` int(1) NOT NULL DEFAULT '0',
  `deletable` int(1) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '0',
  `multi_lang` int(1) NOT NULL DEFAULT '0',
  `is_in_site_tree` int(1) NOT NULL DEFAULT '0',
  `is_in_extras` int(1) NOT NULL DEFAULT '0',
  `is_many2many` int(1) NOT NULL DEFAULT '0',
  `sql_filter` varchar(255) DEFAULT NULL,
  `title_list` varchar(255) DEFAULT NULL,
  `title_addnew` varchar(255) DEFAULT NULL,
  `title_in_delete_confirm` varchar(255) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT '0',
  `frontend_passthrough` int(1) NOT NULL DEFAULT '0',
  `frontend_onpage_num` int(3) DEFAULT NULL,
  `frontend_act_param_name` varchar(40) DEFAULT NULL,
  `frontend_id_param_name` varchar(40) DEFAULT NULL,
  `frontend_on_all_pages` int(1) NOT NULL DEFAULT '0',
  `frontend_sql_filter` text,
  `frontend_sql_order` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_table`
--

INSERT INTO `meta_table` (`id`, `table_name`, `depends_on_site`, `filter_data_by_meta_table`, `title`, `sortable`, `editable`, `deletable`, `searchable`, `multi_lang`, `is_in_site_tree`, `is_in_extras`, `is_many2many`, `sql_filter`, `title_list`, `title_addnew`, `title_in_delete_confirm`, `is_system`, `frontend_passthrough`, `frontend_onpage_num`, `frontend_act_param_name`, `frontend_id_param_name`, `frontend_on_all_pages`, `frontend_sql_filter`, `frontend_sql_order`) VALUES
('article', 'article', 1, 0, 'Статья', 1, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, 'статью', 1, 1, NULL, NULL, NULL, 1, 'article.published', NULL),
('article_type', 'article_type', 0, 0, 'Тип статьи', 1, 1, 1, 0, 0, 0, 0, 0, NULL, 'Типы статей', 'Новый тип статьи', NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('banner', 'banner', 0, 0, 'Баннер', 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 'banner.published', NULL),
('banner_type', 'banner_type', 0, 0, 'Тип баннера', 1, 1, 1, 0, 0, 0, 0, 0, NULL, 'Типы баннеров', 'Новый тип баннера', NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('color_scheme', 'color_scheme', 0, 0, 'Цветовая схема', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('container', 'container', 0, 0, 'Меню', 1, 1, 1, 0, 0, 1, 0, 0, NULL, 'Меню', 'Новое меню', NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('currency', 'currency', 0, 0, 'Валюта', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Валюты', 'Новая валюта', 'валюту', 1, 1, NULL, NULL, NULL, 0, NULL, NULL),
('doc', 'doc', 1, 0, 'Документ', 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 0, 'doc.published', NULL),
('doc_folder', 'doc_folder', 1, 0, 'Группа документов', 0, 1, 1, 0, 0, 1, 0, 0, NULL, 'Группы документов', 'Новая группа документов', 'группу документов', 1, 1, NULL, NULL, NULL, 0, 'doc_folder.published', NULL),
('doc_folder2section', 'doc_folder2section', 0, 0, 'Связь группы документов с разделом', 1, 1, 1, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('lang', 'meta_site_lang', 0, 0, 'Язык', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Языки сайта', 'Добавить язык', 'язык сайта', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('menu', 'section2container', 1, 0, 'Пункт меню', 1, 1, 1, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('meta_copy', 'meta_table', 0, 0, 'Копирование мета таблицы', 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('meta_field', 'meta_table_field', 0, 0, 'Поле', 1, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('meta_table', 'meta_table', 0, 0, 'Таблица', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Таблицы', 'Новая таблица', 'таблицу', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('meta_table2section_type', 'meta_table2section_type', 0, 0, 'Связь таблицы с типом раздела', 0, 1, 1, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('meta_table2table', 'meta_table2table', 0, 0, 'Связь между таблицами', 1, 1, 1, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('meta_table_field_group', 'meta_table_field_group', 0, 0, 'Группа полей', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Группы полейединица измерения', 'Новая группа полей', 'группу полей', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('meta_table_field_option', 'meta_table_field_option', 0, 0, 'Опция выбора', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Опции выбора', 'Новая опция', 'опцию', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('news', 'news', 1, 1, 'Новость', 1, 1, 1, 0, 1, 0, 0, 0, NULL, 'Новости', 'Добавить новость', 'новость', 1, 1, 10, NULL, NULL, 0, 'news.published AND [news_tag_id = {news_tag}]', NULL),
('news_folder', 'news_folder', 1, 0, 'Группа новостей', 0, 1, 1, 0, 0, 1, 1, 0, NULL, 'Группы новостей', 'Новая группа новостей', 'группу новостей', 1, 1, 10, NULL, 'news', 0, 'news_folder.published', NULL),
('news_folder2section', 'news_folder2section', 0, 0, 'Связь группы новостей с разделом', 1, 1, 1, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('news_tag', 'news_tag', 0, 0, 'Тег новости', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Теги новостей', 'Новый тег', NULL, 1, 1, NULL, NULL, NULL, 0, NULL, NULL),
('news_tag2news', 'news_tag2news', 0, 0, 'Связь тега с новостью', 0, 1, 1, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('password', 'user', 0, 0, 'Смена пароля', 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('password_generate', 'user', 0, 0, 'Генерация нового пароля', 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('section', 'section', 1, 0, 'Раздел', 1, 1, 1, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('section_type', 'section_type', 0, 0, 'Тип раздела', 0, 1, 1, 0, 0, 0, 0, 0, NULL, NULL, 'Новый тип раздела', NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('seo_parameter', 'seo_parameter', 0, 0, 'Параметр ЧПУ', 1, 1, 1, 0, 0, 0, 0, 0, NULL, 'Параметры ЧПУ', 'Новый параметр', NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('seo_parameter2section_type', 'seo_parameter2section_type', 0, 0, 'Связь параметра ЧПУ с типом раздела', 1, 1, 1, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('seo_parameter_gen', 'seo_parameter', 0, 0, 'Формирование значений параметра ЧПУ', 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('seo_url_data', 'seo_url_data', 0, 0, 'Данные SEO', 0, 1, 1, 0, 0, 1, 1, 0, NULL, 'Данные SEO', 'Новый URL', 'Данные SEO', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('setting', 'setting', 0, 0, 'Настройки', 0, 1, 0, 0, 0, 0, 1, 0, NULL, 'Настройки', NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('setting_admin', 'setting', 0, 0, 'Настройки сайта', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Настройки', 'Новая настройка', 'настройку', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('site', 'meta_site', 0, 0, 'Сайт', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Сайты', 'Добавить сайт', 'сайт', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('top_section', 'section', 1, 0, 'Сайт', 0, 1, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('unit', 'unit', 0, 0, 'Единица измерения', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Единицы измерения', 'Новая единица измерения', 'единицу измерения', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('user', 'user', 0, 0, 'Пользователь', 0, 1, 1, 0, 0, 0, 0, 0, NULL, 'Пользователи', 'Новый пользователь', 'пользователя', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('user2users_group', 'user2users_group', 0, 0, 'Связь пользователя с группой пользователей', 0, 1, 1, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('users_group', 'users_group', 0, 0, 'Группа пользователей', 0, 1, 1, 0, 0, 1, 0, 0, NULL, 'Группы пользователей', 'Новая группа пользователей', 'группу пользователей', 1, 0, NULL, NULL, NULL, 0, NULL, NULL),
('users_group2users', 'user2users_group', 0, 0, 'Связь группы пользователей c пользователем', 0, 1, 1, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_table2section_type`
--

CREATE TABLE `meta_table2section_type` (
  `id` int(11) NOT NULL,
  `meta_table_id` varchar(40) NOT NULL,
  `section_type_id` varchar(16) NOT NULL,
  `is_in_site_tree` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_table2section_type`
--

INSERT INTO `meta_table2section_type` (`id`, `meta_table_id`, `section_type_id`, `is_in_site_tree`) VALUES
(12, 'news_folder', 'index', 0),
(13, 'news_folder', 'news', 1),
(24, 'news', 'news', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meta_table2table`
--

CREATE TABLE `meta_table2table` (
  `id` int(11) NOT NULL,
  `meta_table_id` varchar(40) NOT NULL,
  `detail_meta_table_id` varchar(40) NOT NULL DEFAULT '0',
  `many2many_meta_table_id` varchar(40) DEFAULT NULL,
  `sort_num` int(1) NOT NULL DEFAULT '0',
  `title_subquery` varchar(255) DEFAULT NULL,
  `title_addnew` varchar(255) DEFAULT NULL,
  `is_bookmark` int(1) NOT NULL,
  `locked` int(1) NOT NULL DEFAULT '0',
  `condition_field` varchar(255) DEFAULT NULL,
  `condition_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_table2table`
--

INSERT INTO `meta_table2table` (`id`, `meta_table_id`, `detail_meta_table_id`, `many2many_meta_table_id`, `sort_num`, `title_subquery`, `title_addnew`, `is_bookmark`, `locked`, `condition_field`, `condition_value`) VALUES
(1, 'section', 'section', NULL, 20, 'Подразделы', 'Новый подраздел', 0, 1, NULL, NULL),
(2, 'section', 'article', NULL, 30, 'Статьи', 'Новая статья', 0, 1, NULL, NULL),
(3, 'top_section', 'section', NULL, 1, 'Разделы', 'Новый раздел', 0, 1, NULL, NULL),
(4, 'container', 'menu', 'section', 1, 'Пункты меню', 'Добавить раздел в меню', 0, 1, NULL, NULL),
(5, 'meta_table', 'meta_field', NULL, 1, 'Поля', 'Новое поле', 0, 1, NULL, NULL),
(6, 'meta_table', 'meta_table2table', 'meta_table', 2, 'Связанные таблицы', 'Связанная таблица', 0, 1, NULL, NULL),
(7, 'news_folder', 'news', NULL, 10, 'Новости', 'Добавить новость', 0, 0, NULL, NULL),
(8, 'user', 'user2users_group', 'users_group', 10, 'Принадлежит к группам', 'Включить пользователя в группу', 0, 0, NULL, NULL),
(9, 'users_group', 'users_group2users', 'user', 10, 'Пользователи в группе', 'Включить в группу пользователя', 0, 0, NULL, NULL),
(10, 'section', 'news_folder2section', 'news_folder', 40, 'Группы новостей', 'Группа новостей', 0, 0, NULL, NULL),
(11, 'meta_field', 'meta_table_field_option', NULL, 10, 'Опции выбора', 'Новая опция выбора', 0, 0, 'type_extra', 'lookup_custom,lookup_multi'),
(12, 'doc_folder', 'doc', NULL, 10, 'Документы', 'Новый документ', 0, 0, NULL, NULL),
(13, 'section', 'doc_folder2section', 'doc_folder', 50, 'Группы документов', 'Группа документов', 0, 0, NULL, NULL),
(14, 'site', 'lang', NULL, 10, 'Дополнительные языки', 'Добавить язык', 0, 0, NULL, NULL),
(15, 'section_type', 'meta_table2section_type', 'meta_table', 10, 'Данные', 'Данные', 0, 0, NULL, NULL),
(16, 'section_type', 'seo_parameter2section_type', 'seo_parameter', 20, 'Параметры ЧПУ', 'Параметры ЧПУ', 0, 0, NULL, NULL),
(17, 'banner_type', 'banner', NULL, 10, 'Баннеры', 'Новый баннер', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_table_field`
--

CREATE TABLE `meta_table_field` (
  `id` int(11) NOT NULL,
  `field` varchar(32) NOT NULL DEFAULT '',
  `meta_table_id` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `meta_table_field_group_id` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `type_extra` varchar(16) DEFAULT NULL,
  `nullable` int(1) NOT NULL DEFAULT '0',
  `lookup_external_meta_table_id` varchar(40) DEFAULT NULL,
  `lookup_meta_table_field_id` int(11) DEFAULT NULL,
  `lookup_multi` int(1) NOT NULL DEFAULT '0',
  `lookup_filter` varchar(255) DEFAULT NULL,
  `lookup_quick_add` int(1) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `sort_num` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  `comment_en` text,
  `default_value` varchar(255) DEFAULT NULL,
  `unit_id` varchar(16) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `readonly` int(1) NOT NULL DEFAULT '0',
  `is_title` int(1) NOT NULL DEFAULT '0',
  `is_in_subquery` int(1) NOT NULL DEFAULT '0',
  `in_subquery_wide` int(1) NOT NULL DEFAULT '0',
  `default_order_num` int(2) DEFAULT NULL,
  `in_subquery_colnum` int(2) DEFAULT NULL,
  `in_subquery_title` varchar(255) DEFAULT NULL,
  `locked` int(1) NOT NULL DEFAULT '0',
  `editable` int(1) NOT NULL DEFAULT '0',
  `multi_lang` int(1) NOT NULL DEFAULT '0',
  `sql_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_table_field`
--

INSERT INTO `meta_table_field` (`id`, `field`, `meta_table_id`, `title`, `title_en`, `meta_table_field_group_id`, `type`, `type_extra`, `nullable`, `lookup_external_meta_table_id`, `lookup_meta_table_field_id`, `lookup_multi`, `lookup_filter`, `lookup_quick_add`, `required`, `sort_num`, `comment`, `comment_en`, `default_value`, `unit_id`, `published`, `readonly`, `is_title`, `is_in_subquery`, `in_subquery_wide`, `default_order_num`, `in_subquery_colnum`, `in_subquery_title`, `locked`, `editable`, `multi_lang`, `sql_value`) VALUES
(1, 'article_type_id', 'article', 'Тип', '', '', 'varchar(16)', 'lookup', 0, NULL, 21, 0, NULL, 0, 1, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 4, NULL, 0, 1, 0, NULL),
(2, 'body', 'article', 'Текст', '', '', 'mediumtext', 'html', 0, NULL, NULL, 0, NULL, 0, 0, 50, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL),
(3, 'dir', 'section', 'Директория', '', '', 'varchar(64)', NULL, 1, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 4, NULL, 0, 1, 0, NULL),
(5, 'meta_description', 'section', 'Мета description', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 140, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL),
(6, 'name', 'news_folder', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 1, 2, NULL, 0, 1, 0, NULL),
(7, 'name', 'section_type', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(8, 'path', 'section', 'Путь', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(9, 'published', 'article', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 80, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, 'Публ.', 0, 1, 0, NULL),
(10, 'published', 'news_folder', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 1, 'Публ.', 0, 1, 0, NULL),
(11, 'published', 'section', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 120, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 1, 'Публ.', 0, 1, 0, NULL),
(12, 'section_id', 'article', 'Раздел', '', '', 'int(11)', 'lookup', 0, NULL, 19, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(13, 'section_id', 'section', 'Родительский раздел', '', '', 'int(11)', 'lookup', 1, NULL, 19, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(14, 'section_type_id', 'section', 'Тип', '', '', 'varchar(16)', 'lookup', 0, NULL, 7, 0, 'published<>0', 0, 1, 60, NULL, NULL, 'article', NULL, 1, 0, 0, 1, 0, NULL, 5, NULL, 0, 1, 0, NULL),
(15, 'sort_num', 'article', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 70, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 2, 1, 'Порядок', 0, 1, 0, NULL),
(16, 'sort_num', 'section', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 100, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 1, 0, NULL),
(17, 'target_blank', 'section', 'В новом окне', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 80, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(18, 'title', 'article', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 3, NULL, 0, 1, 1, NULL),
(19, 'title', 'section', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 2, 2, NULL, 0, 1, 1, NULL),
(20, 'url', 'section', 'Ссылка', '', '', 'varchar(255)', 'url', 1, NULL, NULL, 0, NULL, 0, 0, 70, 'Для разделов типа \'Ссылка\'', NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(21, 'name', 'article_type', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 10, NULL, 0, 1, 0, NULL),
(22, 'name', 'container', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, NULL, 0, 1, 0, NULL),
(23, 'title', 'top_section', 'Наименование', '', '', 'varchar(255)', 'calc', 0, NULL, NULL, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, NULL, NULL, 0, 1, 1, 'SELECT title FROM meta_site WHERE id = section.meta_site_id'),
(24, 'news_folder_id', 'news_folder2section', 'Группа публикаций', '', '', 'int(11)', 'lookup', 0, NULL, 6, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 1, 2, 'Наименование', 0, 1, 0, NULL),
(26, 'container_id', 'menu', 'Меню', '', '', 'int(11)', 'lookup', 0, NULL, 22, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(27, 'section_id', 'menu', 'Раздел', '', '', 'int(11)', 'lookup', 0, NULL, 19, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(28, 'sort_num', 'menu', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 1, 0, NULL),
(29, 'title', 'menu', 'Наименование в меню', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, NULL, 0, 1, 1, NULL),
(30, 'name', 'setting', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, NULL, 1, NULL, 0, 1, 0, NULL),
(31, 'value', 'setting', 'Значение', '', '', 'text', 'html', 1, NULL, NULL, 0, NULL, 0, 0, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(32, 'type', 'setting', 'Тип', '', '', 'varchar(8)', 'hidden', 0, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(33, 'id', 'meta_table', 'Мета-таблица', '', '', 'varchar(32)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 3, NULL, 0, 1, 0, NULL),
(34, 'table_name', 'meta_table', 'Таблица в БД', '', '', 'varchar(32)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 4, NULL, 0, 1, 0, NULL),
(35, 'depends_on_site', 'meta_table', 'Свои данные для сайта', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(36, 'title', 'meta_table', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 1, 2, NULL, 0, 1, 0, NULL),
(37, 'sortable', 'meta_table', 'Сортируется', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 80, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(38, 'editable', 'meta_table', 'Редактируется', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 70, NULL, NULL, '1', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(39, 'deletable', 'meta_table', 'Добавляется/Удаляется', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(40, 'is_in_site_tree', 'meta_table', 'В дереве сайта', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 90, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(41, 'is_many2many', 'meta_table', 'Многие ко многим', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(42, 'title_list', 'meta_table', 'Заголовок в списке', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 110, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(43, 'title_addnew', 'meta_table', 'На кнопке добавления', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 120, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(44, 'title_in_delete_confirm', 'meta_table', 'В запросе на удаление', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 130, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(45, 'meta_table_id', 'meta_table2table', 'Мастер таблица', '', '', 'varchar(32)', 'lookup', 0, NULL, 36, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(46, 'detail_meta_table_id', 'meta_table2table', 'Таблица', '', '', 'varchar(32)', 'lookup', 0, NULL, 36, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(47, 'many2many_meta_table_id', 'meta_table2table', 'Таблица многие ко многим', '', '', 'varchar(32)', 'lookup', 1, NULL, 36, 0, NULL, 0, 0, 3, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(48, 'sort_num', 'meta_table2table', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 2, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 1, 0, NULL),
(49, 'field', 'meta_field', 'Имя поля', '', '', 'varchar(32)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(50, 'meta_table_id', 'meta_field', 'Мета таблица', '', '', 'varchar(32)', 'hidden', 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(51, 'title', 'meta_field', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(52, 'sort_num', 'meta_field', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 200, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 2, 1, 'Порядок', 0, 1, 0, NULL),
(53, 'type', 'meta_field', 'Тип поля', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 40, NULL, NULL, 'varchar(255)', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(54, 'type_extra', 'meta_field', 'Тип в системе', '', '', 'varchar(16)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 50, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 4, 'Тип', 0, 1, 0, NULL),
(55, 'nullable', 'meta_field', 'Может быть NULL', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 80, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(56, 'lookup_meta_table_field_id', 'meta_field', 'Поле для lookup', '', '', 'int(11)', 'lookup', 0, NULL, 51, 0, NULL, 0, 0, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(57, 'required', 'meta_field', 'Обязательное поле', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 90, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(58, 'comment', 'meta_field', 'Комментарий к полю', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 130, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(59, 'default_value', 'meta_field', 'Значение по умолчанию', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 120, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(60, 'published', 'meta_field', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 210, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 1, 'Публ.', 0, 1, 0, NULL),
(61, 'readonly', 'meta_field', 'Только для чтения', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 140, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(62, 'is_title', 'meta_field', 'Является заголовком', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 100, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(63, 'is_in_subquery', 'meta_field', 'Показывать в списке', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 150, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(64, 'in_subquery_wide', 'meta_field', 'В списке: широкий', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 160, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(65, 'in_subquery_colnum', 'meta_field', 'В списке: столбец номер', '', '', 'int(2)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 170, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(66, 'in_subquery_title', 'meta_field', 'В списке: наименование', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 180, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(67, 'default_order_num', 'meta_field', 'В списке: упорядочивать', '', '', 'int(2)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 190, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(68, 'news_folder_id', 'news', 'Группа публикаций', '', '', 'int(11)', 'lookup', 0, NULL, 6, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(69, 'title', 'news', 'Заголовок', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 30, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 4, NULL, 0, 1, 1, NULL),
(70, 'produced', 'news', 'Дата', '', '', 'datetime', 'date', 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 1, NULL, 0, 1, 0, NULL),
(71, 'annotation', 'news', 'Краткий текст', '', '', 'varchar(255)', 'textarea', 1, NULL, NULL, 0, NULL, 0, 0, 70, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL),
(72, 'body', 'news', 'Текст', '', '', 'mediumtext', 'html', 1, NULL, NULL, 0, NULL, 0, 0, 80, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL),
(73, 'published', 'news', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 100, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, 'Публ.', 0, 1, 0, NULL),
(74, 'img_src', 'section', 'Картинка с названием', '', '', 'varchar(255)', 'image', 0, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(81, 'title_subquery', 'meta_table2table', 'Заголовок списка', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 1, 4, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(82, 'title_addnew', 'meta_table2table', 'На кнопке добавления', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 1, 5, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(98, 'title', 'users_group', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 1, 2, NULL, 0, 1, 0, NULL),
(99, 'name', 'users_group', 'Системное имя', '', '', 'varchar(32)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(101, 'login', 'user', 'Логин', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(103, 'middlename', 'user', 'Отчество', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(104, 'surname', 'user', 'Фамилия', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, NULL, 3, NULL, 0, 1, 0, NULL),
(105, 'enabled', 'user', 'Разрешен доступ', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 90, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 0, 'Доступ', 0, 1, 0, NULL),
(106, 'email', 'user', 'E-mail', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 5, NULL, 0, 1, 0, NULL),
(107, 'name', 'user', 'Имя', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, NULL, 4, NULL, 0, 1, 0, NULL),
(108, 'user_id', 'user2users_group', 'Пользователь', '', '', 'int(11)', 'lookup', 0, NULL, 101, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(109, 'users_group_id', 'user2users_group', 'Группа пользователей', '', '', 'int(11)', 'lookup', 0, NULL, 98, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(110, 'user_id', 'users_group2users', 'Пользователь', '', '', 'int(11)', 'lookup', 0, NULL, 101, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(111, 'users_group_id', 'users_group2users', 'Группа пользователей', '', '', 'int(11)', 'lookup', 0, NULL, 98, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(112, 'protected', 'section', 'Личный раздел', '', '', 'int(11)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 110, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(124, 'phone', 'user', 'Контактный телефон', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 60, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, NULL, 6, 'Телефон', 0, 1, 0, NULL),
(134, 'login', 'password', 'Логин', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(135, 'surname', 'password', 'Фамилия', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(136, 'name', 'password', 'Имя', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(140, 'email', 'password_generate', 'E-mail', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(141, 'surname', 'password_generate', 'Фамилия', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(142, 'name', 'password_generate', 'Имя', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(150, 'title', 'meta_copy', 'Таблица', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(159, 'img_src', 'menu', 'Иконка', '', '', 'varchar(255)', 'image', 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(223, 'title', 'site', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 1, NULL, 1, NULL, 0, 1, 0, NULL),
(224, 'path', 'site', 'Путь', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, NULL, 2, NULL, 0, 1, 0, NULL),
(226, 'path_files', 'site', 'Путь к файлам сайта', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(227, 'id', 'site', 'Идентификатор', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 3, NULL, 0, 1, 0, NULL),
(262, 'is_bookmark', 'meta_table2table', 'Оформить закладкой', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(275, 'id', 'section_type', 'Идентификатор', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 10, NULL, 0, 1, 0, NULL),
(311, 'img_src', 'news', 'Картинка (218х205)', '', '', 'varchar(255)', 'image_preview', 1, NULL, NULL, 0, NULL, 0, 0, 60, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(313, 'id', 'container', 'Идентификатор', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 3, NULL, 0, 1, 0, NULL),
(356, 'name', 'setting_admin', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, NULL, 1, NULL, 0, 1, 0, NULL),
(358, 'type', 'setting_admin', 'Тип', '', '', 'varchar(8)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(359, 'id', 'setting_admin', 'Иденитификатор', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 3, NULL, 0, 1, 0, NULL),
(435, 'title', 'unit', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 0, NULL),
(436, 'sort_num', 'unit', 'Порядок следования', '', '', 'int(5)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '10', NULL, 0, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 1, 0, NULL),
(440, 'id', 'unit', 'Идентификатор', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 10, NULL, 0, 1, 0, NULL),
(466, 'title', 'meta_table_field_option', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 3, 4, NULL, 0, 1, 1, NULL),
(468, 'sort_num', 'meta_table_field_option', 'Порядок следования', '', '', 'int(5)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 1, 0, NULL),
(470, 'published', 'meta_table_field_option', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 60, NULL, NULL, '1', NULL, 1, 0, 0, 1, 0, NULL, 2, 'Публ.', 0, 1, 0, NULL),
(667, 'sql_filter', 'meta_table', 'Фильтр записей (SQL)', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 140, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(676, 'multi_lang', 'meta_field', 'На разных языках', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 110, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(687, 'img_src', 'meta_table_field_option', 'Иконка', '', '', 'varchar(255)', 'image', 1, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(839, 'domain', 'site', 'Домены', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 50, 'Список доменов через пробел', NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 10, NULL, 0, 0, 0, NULL),
(840, 'locale', 'site', 'Локаль', '', '', 'varchar(8)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 20, NULL, 0, 0, 0, NULL),
(881, 'lookup_multi', 'meta_field', 'Множественный выбор', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 70, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(883, 'is_group_title', 'meta_table_field_option', 'Название группы опций', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 40, NULL, NULL, '0', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(1382, 'lookup_filter', 'meta_field', 'Фильтр записей lookup (SQL)', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 65, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(1532, 'company', 'user', 'Организация', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 70, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, NULL, 7, NULL, 0, 0, 0, NULL),
(1533, 'position', 'user', 'Должность', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 80, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(2385, 'created', 'user', 'Дата регистрации', '', '', 'datetime', 'datetime', 0, NULL, NULL, 0, NULL, 0, 1, 85, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 1, 1, 'Регистрация', 0, 0, 0, NULL),
(2386, 'unit_id', 'meta_field', 'Единица измерения', '', '', 'varchar(16)', 'lookup', 1, NULL, 435, 0, NULL, 0, 0, 135, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(2390, 'title', 'currency', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 1, NULL),
(2391, 'sort_num', 'currency', 'Порядок следования', '', '', 'int(5)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 1, 0, NULL),
(2392, 'id', 'currency', 'Идентификатор', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, '', 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 10, NULL, 0, 1, 0, NULL),
(2393, 'rate', 'currency', 'Курс', '', '', 'float', 'float', 0, NULL, NULL, 0, NULL, 0, 1, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 3, NULL, 0, 0, 0, NULL),
(2421, 'admin_access', 'users_group', 'Доступ только к', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 30, 'Идентификаторы мета-таблиц, через запятую', NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(2468, 'doc_folder_id', 'doc', 'Группа документов', '', '', 'int(11)', 'lookup', 0, NULL, 2475, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(2469, 'title', 'doc', 'Заголовок', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 3, NULL, 0, 0, 1, NULL),
(2473, 'published', 'doc', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, '', 0, 1, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, 'Публ.', 0, 0, 0, NULL),
(2474, 'doc_src', 'doc', 'Файл', '', '', 'varchar(255)', 'doc', 1, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(2475, 'name', 'doc_folder', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, '', 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 1, 2, NULL, 0, 0, 0, NULL),
(2476, 'published', 'doc_folder', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, '', 0, 1, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 1, 'Публ.', 0, 0, 0, NULL),
(2477, 'doc_folder_id', 'doc_folder2section', 'Группа документов', '', '', 'int(11)', 'lookup', 0, NULL, 2475, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 2, 2, 'Наименование', 0, 0, 0, NULL),
(2480, 'sort_num', 'doc', 'Порядок следования', '', '', 'int(5)', 'sort', 0, NULL, NULL, 0, NULL, 0, 0, 50, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 0, 0, NULL),
(2819, 'id', 'seo_parameter', 'Имя параметра в ЧПУ', '', '', 'varchar(40)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, NULL, 10, NULL, 0, 0, 0, NULL),
(2820, 'sort_num', 'seo_parameter', 'Порядок следования', '', '', 'int(5)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 0, 0, NULL),
(2821, 'real_name', 'seo_parameter', 'Имя GET-параметра', '', '', 'varchar(40)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, NULL, 20, NULL, 0, 0, 0, NULL),
(2822, 'meta_table_field_id', 'seo_parameter', 'Текстовое значение взять в поле', '', '', 'int(11)', 'lookup', 1, NULL, 51, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(2823, 'is_multi_value', 'seo_parameter', 'Может иметь несколько значений', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, 5, 'Множ.', 0, 0, 0, NULL),
(2824, 'id', 'seo_parameter_gen', 'Имя параметра в ЧПУ', '', '', 'varchar(40)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 10, NULL, 0, 0, 0, NULL),
(2826, 'real_name', 'seo_parameter_gen', 'Имя GET-параметра', '', '', 'varchar(40)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, NULL, 20, NULL, 0, 0, 0, NULL),
(2827, 'meta_table_field_id', 'seo_parameter_gen', 'Где искать ID для передачи в GET', '', '', 'int(11)', 'lookup', 0, NULL, 51, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(2829, 'published', 'seo_parameter', 'Включить', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 60, NULL, NULL, '1', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(2918, 'lookup_external_meta_table_id', 'meta_field', 'Таблица связи для lookup', '', '', 'varchar(40)', 'lookup', 0, NULL, 36, 0, 'is_many2many<>0', 0, 0, 61, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(2921, 'img_src_big', 'news', 'Картинка', '', '', 'varchar(255)', 'image_big', 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3085, 'sql_value', 'meta_field', 'Вычисляемое значение (SQL)', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 67, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3086, 'activated__real', 'seo_parameter', 'Активен', '', '', 'varchar(255)', 'calc_boolean', 0, NULL, NULL, 0, NULL, 0, 0, 70, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, 'Актив.', 0, 0, 0, 'seo_parameter.published AND (seo_parameter.activated OR seo_parameter.type_id <> \'\' OR meta_table_field_id IS NULL)'),
(3094, 'type_id', 'seo_parameter', 'Тип', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 30, NULL, 0, 0, 0, NULL),
(3095, 'activated', 'seo_parameter', 'Текстовые значения сформированы', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 0, 65, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3097, 'title', 'seo_parameter', 'Текст в заголовке окна (title)', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 35, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, NULL),
(3135, 'url', 'seo_url_data', 'URL', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, NULL, 2, NULL, 0, 0, 0, NULL),
(3136, 'title', 'seo_url_data', 'TITLE', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, NULL, 30, NULL, 0, 0, 0, NULL),
(3137, 'meta_keywords', 'seo_url_data', 'META Keywords', '', '', 'varchar(255)', 'textarea', 1, NULL, NULL, 0, NULL, 0, 0, 50, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3138, 'meta_description', 'seo_url_data', 'META Description', '', '', 'varchar(255)', 'textarea', 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3139, 'body', 'seo_url_data', 'SEO-текст', '', '', 'text', 'html', 1, NULL, NULL, 0, NULL, 0, 0, 60, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3140, 'published', 'seo_url_data', 'Публиковать', '', '', 'varchar(255)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 70, NULL, NULL, '1', NULL, 1, 0, 0, 1, 0, NULL, 1, 'Публ.', 0, 0, 0, NULL),
(3154, 'own_domain', 'site', 'Свой домен', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 0, 45, NULL, NULL, '0', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3167, 'title', 'lang', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, '', 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 1, NULL, 1, NULL, 0, 1, 0, NULL),
(3170, 'id', 'lang', 'Идентификатор', '', '', 'varchar(2)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 3, NULL, 0, 1, 0, NULL),
(3172, 'locale', 'lang', 'Локаль', '', '', 'varchar(8)', NULL, 1, NULL, NULL, 0, '', 0, 0, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 20, NULL, 0, 0, 0, NULL),
(3174, 'domain', 'lang', 'Домен', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 50, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3175, 'meta_title', 'section', 'Meta title', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 130, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, NULL),
(3176, 'hidden', 'section', 'Не показывать в меню', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 115, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3177, 'meta_table_id', 'section_type', 'Данные из таблиц', '', '', 'varchar(40)', 'lookup_external', 1, 'meta_table2section_type', 36, 1, 'frontend_passthrough', 0, 0, 40, 'Передать в шаблон данные из указанных таблиц в массиве $_DATA', NULL, NULL, NULL, 0, 0, 0, 1, 0, NULL, 10, NULL, 0, 0, 0, NULL),
(3179, 'id', 'article_type', 'Идентификатор', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 20, NULL, 0, 0, 0, NULL),
(3180, 'published', 'section_type', 'Активен', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '1', NULL, 1, 0, 0, 1, 0, NULL, 1, 'Акт.', 0, 0, 0, NULL),
(3185, 'published', 'news_folder2section', 'Публиковать', '', '', 'int(1)', 'calc_boolean', 0, NULL, NULL, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 1, 'Публ.', 0, 0, 0, 'SELECT published FROM news_folder WHERE news_folder.id=news_folder_id'),
(3186, 'published', 'doc_folder2section', 'Публиковать', '', '', 'int(1)', 'calc_boolean', 0, NULL, NULL, 0, NULL, 0, 0, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 1, 'Публ.', 0, 0, 0, 'SELECT published FROM doc_folder WHERE doc_folder.id=doc_folder_id'),
(3187, 'frontend_passthrough', 'meta_table', 'Сайт: передавать данные', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 150, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 1, 'Сайт', 0, 0, 0, NULL),
(3188, 'frontend_onpage_num', 'meta_table', 'Сайт: записей на странице', '', '', 'int(3)', 'number', 1, NULL, NULL, 0, NULL, 0, 0, 180, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3189, 'frontend_sql_filter', 'meta_table', 'Сайт: SQL фильтр', '', '', 'varchar(255)', 'textarea', 1, NULL, NULL, 0, NULL, 0, 0, 210, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3229, 'name', 'banner_type', 'Название', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 2, NULL, 0, 0, 0, NULL),
(3230, 'sort_num', 'banner_type', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '10', NULL, 0, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 0, 0, NULL),
(3233, 'banner_type_id', 'banner', 'Тип баннера', '', '', 'varchar(40)', 'hidden', 0, NULL, 3229, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3234, 'title', 'banner', 'Заголовок', '', '', 'varchar(30)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 50, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, 3, NULL, 0, 0, 0, NULL),
(3235, 'published', 'banner', 'Публиковать', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, '', 0, 1, 120, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 2, 'Публ.', 0, 0, 0, ''),
(3236, 'img_src', 'banner', 'Картинка', '', '', 'varchar(255)', 'image_preview', 1, NULL, NULL, 0, NULL, 0, 0, 30, NULL, NULL, 'banners', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3237, 'sort_num', 'banner', 'Порядок следования', '', '', 'int(5)', 'sort', 0, NULL, NULL, 0, NULL, 0, 0, 110, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 0, 0, NULL),
(3238, 'body', 'banner', 'Текст', '', '', 'text', 'textarea', 1, NULL, NULL, 0, NULL, 0, 0, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3239, 'url', 'banner', 'Cсылка', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 70, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 10, NULL, 0, 0, 0, NULL),
(3240, 'url_title', 'banner', 'Надпись на ссылке', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 1, 80, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3241, 'id', 'banner_type', 'Идентификатор', '', '', 'varchar(40)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 10, NULL, 0, 0, 0, NULL),
(3243, 'frontend_id_param_name', 'meta_table', 'Сайт: имя параметра с id', '', '', 'varchar(40)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 200, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3244, 'frontend_on_all_pages', 'meta_table', 'Сайт: на все страницы', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 160, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3245, 'meta_table_id', 'meta_table2section_type', 'Таблица', '', '', 'varchar(40)', 'lookup', 0, 'meta_table2section_type', 36, 0, 'meta_table.frontend_passthrough <> 0', 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 2, 2, 'Название', 0, 0, 0, NULL),
(3246, 'section_type_id', 'meta_table', 'Сайт: на страницы типов', '', '', 'varchar(16)', 'lookup_external', 1, 'meta_table2section_type', 7, 1, 'section_type.is_system = 0', 0, 0, 170, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3247, 'is_system', 'section_type', 'Системный', '', '', 'int(1)', 'hidden', 0, NULL, NULL, 0, NULL, 0, 0, 60, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3260, 'is_in_extras', 'meta_table', 'В настройках', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 100, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3272, 'sort_num', 'doc_folder2section', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 5, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 0, 0, NULL),
(3273, 'sort_num', 'news_folder2section', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 5, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 0, 0, NULL),
(3275, 'annotation', 'doc', 'Описание', '', '', 'text', 'html', 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, NULL),
(3276, 'img_src', 'doc', 'Иконка', '', '', 'varchar(255)', 'image', 1, NULL, NULL, 0, NULL, 0, 0, 35, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3278, 'lang_title', 'site', 'Язык', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 55, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 19, 'Язык', 0, 0, 0, NULL),
(3282, 'is_in_site_tree', 'meta_table2section_type', 'В дереве сайта', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, '1', NULL, 1, 0, 0, 1, 0, NULL, 1, 'В дереве', 0, 0, 0, NULL),
(3288, 'sort_num', 'seo_parameter2section_type', 'Порядок следования', '', '', 'int(11)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 0, 0, NULL),
(3362, 'name', 'color_scheme', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, '', 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 10, NULL, 0, 1, 0, ''),
(3363, 'id', 'color_scheme', 'Идентификатор CSS', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 20, NULL, 0, 0, 0, NULL),
(3364, 'color_scheme_id', 'banner', 'Цветовое оформление', '', '', 'varchar(16)', 'lookup', 0, NULL, 3362, 0, NULL, 0, 1, 90, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3365, 'img_src_big', 'banner', 'Картинка исходная', '', '', 'varchar(255)', 'image_big', 1, NULL, NULL, 0, NULL, 0, 0, 20, NULL, NULL, 'banners', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3372, 'w', 'banner_type', 'Ширина', '', '', 'int(4)', 'number', 0, NULL, NULL, 0, NULL, 0, 1, 30, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3373, 'h', 'banner_type', 'Высота', '', '', 'int(4)', 'number', 0, NULL, NULL, 0, NULL, 0, 1, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3374, 'title', 'banner_type', 'Заголовок', '', '', 'varchar(255)', 'calc', 0, NULL, NULL, 0, NULL, 0, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 1, NULL, 0, 0, 0, 'CONCAT(banner_type.name,\' (\',banner_type.w,\'x\',banner_type.h,\')\')'),
(3375, 'bg_color', 'banner', 'Цвет фона', '', '', 'varchar(16)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 100, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3378, 'video_url', 'banner', 'Ссылка на видео (YouTube)', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 40, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3429, 'redirect_url', 'seo_url_data', 'Redirect 301', '', '', 'varchar(255)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 20, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 20, NULL, 0, 0, 0, NULL),
(3430, 'title', 'news_tag', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 10, 2, NULL, 0, 1, 1, NULL),
(3431, 'news_tag_id', 'news_tag2news', 'Тег', '', '', 'int(11)', 'lookup', 0, NULL, 3430, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 10, 1, NULL, 0, 1, 0, NULL),
(3432, 'news_id', 'news_tag2news', 'Публикация', '', '', 'int(11)', 'lookup', 0, NULL, 69, 0, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, 0, NULL),
(3433, 'news_tag_id', 'news', 'Тег', '', '', 'varchar(255)', 'lookup_external', 0, 'news_tag2news', 3430, 1, NULL, 0, 0, 90, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, NULL, 4, NULL, 0, 0, 0, NULL),
(3461, 'seo_parameter_id', 'seo_parameter2section_type', 'Параметр ЧПУ', '', '', 'varchar(40)', 'lookup', 0, NULL, 2819, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 2, 2, 'Имя параметра', 0, 0, 0, NULL),
(3474, 'frontend_act_param_name', 'meta_table', 'Сайт: имя параметра активации', '', '', 'varchar(40)', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 190, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3506, 'img_src_detail', 'news', 'Картинка (545х375)', '', '', 'varchar(255)', 'image_preview', 1, NULL, NULL, 0, NULL, 0, 0, 50, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3535, 'title', 'meta_table_field_group', 'Наименование', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, '', 0, 1, 20, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 2, NULL, 0, 1, 0, ''),
(3536, 'sort_num', 'meta_table_field_group', 'Порядок следования', '', '', 'int(5)', 'sort', 0, NULL, NULL, 0, NULL, 0, 1, 50, NULL, NULL, '10', NULL, 1, 0, 0, 1, 0, 1, 1, 'Порядок', 0, 1, 0, NULL),
(3537, 'id', 'meta_table_field_group', 'Идентификатор', '', '', 'varchar(16)', NULL, 0, NULL, NULL, 0, '', 0, 1, 10, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, NULL, 10, NULL, 0, 1, 0, ''),
(3539, 'meta_table_field_group_id', 'meta_field', 'Группа', '', '', 'varchar(20)', 'lookup', 0, NULL, 3535, 0, NULL, 0, 0, 69, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 1, 10, NULL, 0, 0, 0, NULL),
(3566, 'searchable', 'meta_table', 'С поиском', '', '', 'varchar(255)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 0, 85, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3581, 'multi_lang', 'meta_table', 'На разных языках', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 75, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3583, 'meta_site_lang_id', 'news', 'Язык', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 0, 2, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, NULL, 4, NULL, 0, 0, 0, NULL),
(3585, 'multi_lang', 'setting_admin', 'На разных языках', '', '', 'int(0)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3586, 'multi_lang', 'setting', 'На разных языках', '', '', 'int(1)', 'hidden', 0, NULL, NULL, 0, NULL, 0, 1, 40, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3786, 'filter_data_by_meta_table', 'meta_table', 'Свои данные для мета-таблицы', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 1, 45, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3862, 'lookup_quick_add', 'meta_field', 'Быстрое добавление', '', '', 'int(1)', 'boolean', 0, NULL, NULL, 0, NULL, 0, 0, 68, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL),
(3888, 'name', 'banner', 'Название', '', '', 'varchar(255)', NULL, 0, NULL, NULL, 0, NULL, 0, 1, 15, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, NULL, 3, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_table_field_group`
--

CREATE TABLE `meta_table_field_group` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_table_field_group`
--

INSERT INTO `meta_table_field_group` (`id`, `title`, `sort_num`) VALUES
('', 'Основное', 10),
('seo', 'SEO', 100);

-- --------------------------------------------------------

--
-- Table structure for table `meta_table_field_option`
--

CREATE TABLE `meta_table_field_option` (
  `id` int(5) NOT NULL,
  `meta_table_field_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `img_src` varchar(255) DEFAULT NULL,
  `is_group_title` int(1) DEFAULT '0',
  `sort_num` int(5) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0',
  `title_seo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_table_field_option`
--

INSERT INTO `meta_table_field_option` (`id`, `meta_table_field_id`, `title`, `title_en`, `img_src`, `is_group_title`, `sort_num`, `published`, `title_seo`) VALUES
(1, 3675, 'На улицу', '', NULL, 0, 10, 1, NULL),
(2, 3675, 'Во двор', '', NULL, 0, 20, 1, NULL),
(3, 3715, 'Улица', '', NULL, 0, 10, 1, NULL),
(4, 3715, 'Двор', '', NULL, 0, 20, 1, NULL),
(5, 3834, 'На улицу', '', NULL, 0, 10, 1, NULL),
(6, 3834, 'Во двор', '', NULL, 0, 20, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `meta_site_lang_id` varchar(40) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `meta_table_id` varchar(40) NOT NULL,
  `news_folder_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `produced` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `annotation` text,
  `annotation_en` text,
  `body` text,
  `body_en` text,
  `sort_num` smallint(5) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `img_src` varchar(255) DEFAULT NULL,
  `img_src_detail` varchar(255) DEFAULT NULL,
  `img_src_big` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title_seo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `meta_site_lang_id`, `meta_site_id`, `meta_table_id`, `news_folder_id`, `title`, `title_en`, `produced`, `annotation`, `annotation_en`, `body`, `body_en`, `sort_num`, `published`, `img_src`, `img_src_detail`, `img_src_big`, `updated`, `title_seo`) VALUES
(1, '', '', 'news', 1, 'Первая новость', '', '2018-05-06 00:00:00', 'Анонс первой новости', NULL, '<p>Текст первой новости</p>', NULL, 0, 1, NULL, NULL, NULL, '2018-05-07 19:35:18', 'pervaya-novost'),
(2, '', '', 'news', 1, 'Вторая новость', '', '2018-05-09 00:00:00', 'Анонс второй новости', NULL, 'Текст второй новости', NULL, 0, 1, NULL, NULL, NULL, '2018-05-09 00:02:09', 'vtoraya-novost');

-- --------------------------------------------------------

--
-- Table structure for table `news_folder`
--

CREATE TABLE `news_folder` (
  `id` int(11) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `published` int(1) NOT NULL DEFAULT '0',
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_folder`
--

INSERT INTO `news_folder` (`id`, `meta_site_id`, `name`, `published`, `sort_num`) VALUES
(1, '', 'Новости', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_folder2section`
--

CREATE TABLE `news_folder2section` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `news_folder_id` int(11) NOT NULL DEFAULT '0',
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_folder2section`
--

INSERT INTO `news_folder2section` (`id`, `section_id`, `news_folder_id`, `sort_num`) VALUES
(1, 2, 1, 10),
(2, 4, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `news_tag`
--

CREATE TABLE `news_tag` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `sort_num` int(5) NOT NULL DEFAULT '0',
  `title_sef` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title_seo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news_tag2news`
--

CREATE TABLE `news_tag2news` (
  `news_id` int(11) NOT NULL DEFAULT '0',
  `news_tag_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `meta_site_lang_id` varchar(40) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `section_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `img_src` varchar(255) DEFAULT NULL,
  `dir` varchar(64) DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `section_type_id` varchar(16) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `target_blank` int(1) NOT NULL DEFAULT '0',
  `sort_num` int(11) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0',
  `protected` int(1) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_title_en` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_description_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `meta_site_lang_id`, `meta_site_id`, `section_id`, `title`, `title_en`, `img_src`, `dir`, `path`, `section_type_id`, `url`, `target_blank`, `sort_num`, `published`, `protected`, `hidden`, `meta_title`, `meta_title_en`, `meta_description`, `meta_description_en`) VALUES
(1, '', '', NULL, 'Разделы сайта', '', NULL, '', '', 'link', '/', 0, 0, 0, 0, 0, 'n/a', 'Booclick', NULL, NULL),
(2, ',en', '', 1, 'Главная страница', 'Home', NULL, '', '/', 'index', NULL, 0, 10, 1, 0, 0, NULL, '', NULL, NULL),
(3, '', '', 1, 'О компании', '', NULL, 'company', '/', 'menuitem', NULL, 0, 50, 1, 0, 0, NULL, NULL, NULL, NULL),
(4, '', '', 1, 'Новости', '', NULL, 'news', '/', 'news', NULL, 0, 40, 1, 0, 0, NULL, NULL, NULL, NULL),
(5, '', '', 3, 'О нас', '', NULL, 'about', '/company/', 'article', NULL, 0, 10, 1, 0, 0, NULL, NULL, NULL, NULL),
(6, '', '', 3, 'Контакты', '', NULL, 'contacts', '/company/', 'article', NULL, 0, 20, 1, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section2container`
--

CREATE TABLE `section2container` (
  `id` int(11) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `container_id` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `img_src` varchar(255) DEFAULT NULL,
  `sort_num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section2container`
--

INSERT INTO `section2container` (`id`, `meta_site_id`, `section_id`, `container_id`, `title`, `title_en`, `img_src`, `sort_num`) VALUES
(1, '', 4, 'main', NULL, NULL, NULL, 10),
(2, '', 3, 'main', NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `section_type`
--

CREATE TABLE `section_type` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `is_system` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_type`
--

INSERT INTO `section_type` (`id`, `meta_site_id`, `name`, `published`, `is_system`) VALUES
('article', '', 'Текст', 1, 0),
('index', '', 'Главная страница', 1, 0),
('link', '', 'Ссылка', 1, 1),
('menuitem', '', 'Пункт меню', 1, 1),
('news', '', 'Новости', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seo_parameter`
--

CREATE TABLE `seo_parameter` (
  `id` varchar(40) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `real_name` varchar(40) NOT NULL,
  `type_id` varchar(16) NOT NULL DEFAULT '',
  `meta_table_field_id` int(11) DEFAULT NULL,
  `is_multi_value` int(1) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0',
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_parameter`
--

INSERT INTO `seo_parameter` (`id`, `meta_site_id`, `real_name`, `type_id`, `meta_table_field_id`, `is_multi_value`, `title`, `title_en`, `activated`, `published`, `sort_num`) VALUES
('news', '', 'news', '', 69, 0, NULL, NULL, 1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `seo_parameter2section_type`
--

CREATE TABLE `seo_parameter2section_type` (
  `id` int(11) NOT NULL,
  `seo_parameter_id` varchar(40) NOT NULL,
  `section_type_id` varchar(16) NOT NULL,
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_parameter2section_type`
--

INSERT INTO `seo_parameter2section_type` (`id`, `seo_parameter_id`, `section_type_id`, `sort_num`) VALUES
(1, 'news', 'news', 10);

-- --------------------------------------------------------

--
-- Table structure for table `seo_url_data`
--

CREATE TABLE `seo_url_data` (
  `id` int(11) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `rewrite_url` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `body` text,
  `published` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` text,
  `value_en` text,
  `type` varchar(8) DEFAULT NULL,
  `multi_lang` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `meta_site_id`, `name`, `value`, `value_en`, `type`, `multi_lang`) VALUES
('copyright', '', 'Копирайт', '© 2018', NULL, 'text', 0);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `sort_num` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `title`, `title_en`, `sort_num`) VALUES
('are', 'сот.', 'ares', 20),
('m2', 'м²', 'm²', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `login` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL DEFAULT '*',
  `passkey` varchar(8) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `enabled` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `middlename` varchar(255) DEFAULT NULL,
  `surname` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `confirmation_code` varchar(32) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `meta_site_id`, `login`, `password`, `passkey`, `email`, `enabled`, `name`, `middlename`, `surname`, `phone`, `company`, `position`, `confirmation_code`, `created`) VALUES
(1, '', 'admin', '7b0d879b240a88d40954c40f4d5616cb', '>;Z<Qx*;', 'mx3@mail.ru', 1, 'Administrator', NULL, '.', '3', '1', '2', '2K5Njkm8TZ59msCabnfPcHCyNSIIHN', '2012-08-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user2users_group`
--

CREATE TABLE `user2users_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `users_group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user2users_group`
--

INSERT INTO `user2users_group` (`id`, `user_id`, `users_group_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id` int(11) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `admin_access` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id`, `meta_site_id`, `name`, `title`, `admin_access`) VALUES
(1, '', 'admin', 'Администраторы', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `id` varchar(255) NOT NULL,
  `meta_site_id` varchar(16) NOT NULL DEFAULT '',
  `is_backoffice` int(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_session`
--

INSERT INTO `user_session` (`id`, `meta_site_id`, `is_backoffice`, `user_id`, `ip`, `created`, `updated`) VALUES
('4s15kqm4ti31g0jot94bs1mrc5', '', 1, 1, '127.0.0.1', '2018-05-08 23:20:08', '2018-05-08 23:20:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_section_id_idx` (`section_id`),
  ADD KEY `article_type_id_idx` (`article_type_id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `article_type`
--
ALTER TABLE `article_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_type_id_idx` (`banner_type_id`),
  ADD KEY `color_scheme_id` (`color_scheme_id`),
  ADD KEY `color_scheme_id_2` (`color_scheme_id`);

--
-- Indexes for table `banner2section`
--
ALTER TABLE `banner2section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banner_id` (`banner_id`,`section_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `banner_type`
--
ALTER TABLE `banner_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_type2section`
--
ALTER TABLE `banner_type2section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_id` (`section_id`,`banner_type_id`),
  ADD KEY `banner_type_id` (`banner_type_id`);

--
-- Indexes for table `color_scheme`
--
ALTER TABLE `color_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doc_folder_id` (`doc_folder_id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `doc_folder`
--
ALTER TABLE `doc_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `doc_folder2section`
--
ALTER TABLE `doc_folder2section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_id` (`section_id`,`doc_folder_id`),
  ADD KEY `doc_folder2section_doc_folder_id_idx` (`doc_folder_id`),
  ADD KEY `doc_folder2section_section_id_idx` (`section_id`);

--
-- Indexes for table `meta_site`
--
ALTER TABLE `meta_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`);

--
-- Indexes for table `meta_site_lang`
--
ALTER TABLE `meta_site_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `meta_table`
--
ALTER TABLE `meta_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontend_id_param_name` (`frontend_id_param_name`);

--
-- Indexes for table `meta_table2section_type`
--
ALTER TABLE `meta_table2section_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_table_id` (`meta_table_id`,`section_type_id`),
  ADD KEY `section_type_id` (`section_type_id`);

--
-- Indexes for table `meta_table2table`
--
ALTER TABLE `meta_table2table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_table_id` (`meta_table_id`,`detail_meta_table_id`),
  ADD KEY `meta_table_id_2` (`meta_table_id`),
  ADD KEY `meta_table_id_link` (`detail_meta_table_id`),
  ADD KEY `many2many_meta_table_id` (`many2many_meta_table_id`);

--
-- Indexes for table `meta_table_field`
--
ALTER TABLE `meta_table_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field` (`field`,`meta_table_id`),
  ADD KEY `meta_table_id_idx` (`meta_table_id`),
  ADD KEY `meta_table_field_id_link_idx` (`lookup_meta_table_field_id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `lookup_external_meta_table_id` (`lookup_external_meta_table_id`),
  ADD KEY `meta_table_field_group_id` (`meta_table_field_group_id`);

--
-- Indexes for table `meta_table_field_group`
--
ALTER TABLE `meta_table_field_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `meta_table_field_option`
--
ALTER TABLE `meta_table_field_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_sef` (`title_seo`),
  ADD KEY `meta_table_field_id_idx` (`meta_table_field_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_seo` (`title_seo`),
  ADD KEY `news_folder_id` (`news_folder_id`,`produced`),
  ADD KEY `meta_site_id` (`meta_site_id`),
  ADD KEY `meta_table_id` (`meta_table_id`);

--
-- Indexes for table `news_folder`
--
ALTER TABLE `news_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `news_folder2section`
--
ALTER TABLE `news_folder2section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_id` (`section_id`,`news_folder_id`),
  ADD KEY `news_folder2section_news_folder_id_idx` (`news_folder_id`),
  ADD KEY `news_folder2section_section_id_idx` (`section_id`);

--
-- Indexes for table `news_tag`
--
ALTER TABLE `news_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_sef` (`title_sef`),
  ADD UNIQUE KEY `title_seo` (`title_seo`);

--
-- Indexes for table `news_tag2news`
--
ALTER TABLE `news_tag2news`
  ADD PRIMARY KEY (`news_id`,`news_tag_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `news_tag_id` (`news_tag_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`,`dir`,`meta_site_id`),
  ADD KEY `section_section_id_idx` (`section_id`),
  ADD KEY `section_section_type_id_idx` (`section_type_id`),
  ADD KEY `meta_site_id_idx` (`meta_site_id`);

--
-- Indexes for table `section2container`
--
ALTER TABLE `section2container`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_id` (`section_id`,`container_id`),
  ADD KEY `section2container_section_id_idx` (`section_id`),
  ADD KEY `section2container_container_id_idx` (`container_id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `section_type`
--
ALTER TABLE `section_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `seo_parameter`
--
ALTER TABLE `seo_parameter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `real_name` (`real_name`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `seo_parameter2section_type`
--
ALTER TABLE `seo_parameter2section_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_parameter_id` (`seo_parameter_id`,`section_type_id`),
  ADD KEY `section_type_id` (`section_type_id`);

--
-- Indexes for table `seo_url_data`
--
ALTER TABLE `seo_url_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`name`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `user2users_group`
--
ALTER TABLE `user2users_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`users_group_id`),
  ADD KEY `user2users_group_user_id_idx` (`user_id`),
  ADD KEY `user2users_group_users_group_id_idx` (`users_group_id`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_site_id` (`meta_site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banner2section`
--
ALTER TABLE `banner2section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banner_type2section`
--
ALTER TABLE `banner_type2section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doc_folder`
--
ALTER TABLE `doc_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doc_folder2section`
--
ALTER TABLE `doc_folder2section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meta_table2section_type`
--
ALTER TABLE `meta_table2section_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `meta_table2table`
--
ALTER TABLE `meta_table2table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `meta_table_field`
--
ALTER TABLE `meta_table_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3889;
--
-- AUTO_INCREMENT for table `meta_table_field_option`
--
ALTER TABLE `meta_table_field_option`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news_folder`
--
ALTER TABLE `news_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news_folder2section`
--
ALTER TABLE `news_folder2section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news_tag`
--
ALTER TABLE `news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `section2container`
--
ALTER TABLE `section2container`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `seo_parameter2section_type`
--
ALTER TABLE `seo_parameter2section_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `seo_url_data`
--
ALTER TABLE `seo_url_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user2users_group`
--
ALTER TABLE `user2users_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`article_type_id`) REFERENCES `article_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_3` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `article_type`
--
ALTER TABLE `article_type`
  ADD CONSTRAINT `article_type_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`banner_type_id`) REFERENCES `banner_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `banner_ibfk_2` FOREIGN KEY (`color_scheme_id`) REFERENCES `color_scheme` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `banner2section`
--
ALTER TABLE `banner2section`
  ADD CONSTRAINT `banner2section_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `banner2section_ibfk_2` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banner_type2section`
--
ALTER TABLE `banner_type2section`
  ADD CONSTRAINT `banner_type2section_ibfk_1` FOREIGN KEY (`banner_type_id`) REFERENCES `banner_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banner_type2section_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `container`
--
ALTER TABLE `container`
  ADD CONSTRAINT `container_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `doc`
--
ALTER TABLE `doc`
  ADD CONSTRAINT `doc_ibfk_1` FOREIGN KEY (`doc_folder_id`) REFERENCES `doc_folder` (`id`),
  ADD CONSTRAINT `doc_ibfk_2` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `doc_folder`
--
ALTER TABLE `doc_folder`
  ADD CONSTRAINT `doc_folder_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `doc_folder2section`
--
ALTER TABLE `doc_folder2section`
  ADD CONSTRAINT `doc_folder2section_ibfk_1` FOREIGN KEY (`doc_folder_id`) REFERENCES `doc_folder` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doc_folder2section_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_site_lang`
--
ALTER TABLE `meta_site_lang`
  ADD CONSTRAINT `meta_site_lang_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `meta_table2section_type`
--
ALTER TABLE `meta_table2section_type`
  ADD CONSTRAINT `meta_table2section_type_ibfk_1` FOREIGN KEY (`meta_table_id`) REFERENCES `meta_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meta_table2section_type_ibfk_2` FOREIGN KEY (`section_type_id`) REFERENCES `section_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meta_table2table`
--
ALTER TABLE `meta_table2table`
  ADD CONSTRAINT `meta_table2table_ibfk_4` FOREIGN KEY (`meta_table_id`) REFERENCES `meta_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meta_table2table_ibfk_5` FOREIGN KEY (`detail_meta_table_id`) REFERENCES `meta_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meta_table2table_ibfk_6` FOREIGN KEY (`many2many_meta_table_id`) REFERENCES `meta_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meta_table_field`
--
ALTER TABLE `meta_table_field`
  ADD CONSTRAINT `meta_table_field_ibfk_1` FOREIGN KEY (`meta_table_id`) REFERENCES `meta_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meta_table_field_ibfk_3` FOREIGN KEY (`lookup_meta_table_field_id`) REFERENCES `meta_table_field` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `meta_table_field_ibfk_4` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`),
  ADD CONSTRAINT `meta_table_field_ibfk_5` FOREIGN KEY (`lookup_external_meta_table_id`) REFERENCES `meta_table` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `meta_table_field_ibfk_6` FOREIGN KEY (`meta_table_field_group_id`) REFERENCES `meta_table_field_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`news_folder_id`) REFERENCES `news_folder` (`id`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `news_ibfk_3` FOREIGN KEY (`meta_table_id`) REFERENCES `meta_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_folder`
--
ALTER TABLE `news_folder`
  ADD CONSTRAINT `news_folder_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `news_folder2section`
--
ALTER TABLE `news_folder2section`
  ADD CONSTRAINT `news_folder2section_ibfk_1` FOREIGN KEY (`news_folder_id`) REFERENCES `news_folder` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_folder2section_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_tag2news`
--
ALTER TABLE `news_tag2news`
  ADD CONSTRAINT `news_tag2news_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_tag2news_ibfk_2` FOREIGN KEY (`news_tag_id`) REFERENCES `news_tag` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `section_ibfk_4` FOREIGN KEY (`section_type_id`) REFERENCES `section_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `section_ibfk_5` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `section2container`
--
ALTER TABLE `section2container`
  ADD CONSTRAINT `section2container_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `section2container_ibfk_2` FOREIGN KEY (`container_id`) REFERENCES `container` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section2container_ibfk_3` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `section_type`
--
ALTER TABLE `section_type`
  ADD CONSTRAINT `section_type_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `seo_parameter`
--
ALTER TABLE `seo_parameter`
  ADD CONSTRAINT `seo_parameter_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `seo_parameter2section_type`
--
ALTER TABLE `seo_parameter2section_type`
  ADD CONSTRAINT `seo_parameter2section_type_ibfk_1` FOREIGN KEY (`seo_parameter_id`) REFERENCES `seo_parameter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seo_parameter2section_type_ibfk_2` FOREIGN KEY (`section_type_id`) REFERENCES `section_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seo_url_data`
--
ALTER TABLE `seo_url_data`
  ADD CONSTRAINT `seo_url_data_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `setting_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user2users_group`
--
ALTER TABLE `user2users_group`
  ADD CONSTRAINT `user2users_group_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user2users_group_ibfk_2` FOREIGN KEY (`users_group_id`) REFERENCES `users_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_group`
--
ALTER TABLE `users_group`
  ADD CONSTRAINT `users_group_ibfk_1` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_session`
--
ALTER TABLE `user_session`
  ADD CONSTRAINT `user_session_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_session_ibfk_2` FOREIGN KEY (`meta_site_id`) REFERENCES `meta_site` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
