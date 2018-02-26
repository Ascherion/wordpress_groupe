-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 26 Février 2018 à 11:00
-- Version du serveur :  5.7.20-0ubuntu0.17.04.1
-- Version de PHP :  7.0.25-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1519031268');

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-19 09:32:47', '2018-02-19 08:32:47', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'test', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'johan.desplats@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:123:{s:22:\"index.php/portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:52:\"index.php/portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:47:\"index.php/portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:39:\"index.php/portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:67:\"index.php/portfolio-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?portfolio_cat=$matches[1]&feed=$matches[2]\";s:62:\"index.php/portfolio-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?portfolio_cat=$matches[1]&feed=$matches[2]\";s:43:\"index.php/portfolio-category/(.+?)/embed/?$\";s:46:\"index.php?portfolio_cat=$matches[1]&embed=true\";s:55:\"index.php/portfolio-category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?portfolio_cat=$matches[1]&paged=$matches[2]\";s:37:\"index.php/portfolio-category/(.+?)/?$\";s:35:\"index.php?portfolio_cat=$matches[1]\";s:64:\"index.php/portfolio-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?portfolio_tag=$matches[1]&feed=$matches[2]\";s:59:\"index.php/portfolio-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?portfolio_tag=$matches[1]&feed=$matches[2]\";s:40:\"index.php/portfolio-tag/([^/]+)/embed/?$\";s:46:\"index.php?portfolio_tag=$matches[1]&embed=true\";s:52:\"index.php/portfolio-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?portfolio_tag=$matches[1]&paged=$matches[2]\";s:34:\"index.php/portfolio-tag/([^/]+)/?$\";s:35:\"index.php?portfolio_tag=$matches[1]\";s:47:\"index.php/portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"index.php/portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"index.php/portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"index.php/portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"index.php/portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:40:\"index.php/portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:60:\"index.php/portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:55:\"index.php/portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:48:\"index.php/portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:55:\"index.php/portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:36:\"index.php/portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"index.php/portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"index.php/portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=70&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:1;s:42:\"suffice-toolkit-master/suffice-toolkit.php\";i:2;s:60:\"themegrill-demo-importer-master/themegrill-demo-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'template', 'yes'),
(41, 'stylesheet', 'template', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '70', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:79:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:22:\"manage_suffice_toolkit\";b:1;s:14:\"edit_portfolio\";b:1;s:14:\"read_portfolio\";b:1;s:16:\"delete_portfolio\";b:1;s:15:\"edit_portfolios\";b:1;s:22:\"edit_others_portfolios\";b:1;s:18:\"publish_portfolios\";b:1;s:23:\"read_private_portfolios\";b:1;s:17:\"delete_portfolios\";b:1;s:25:\"delete_private_portfolios\";b:1;s:27:\"delete_published_portfolios\";b:1;s:24:\"delete_others_portfolios\";b:1;s:23:\"edit_private_portfolios\";b:1;s:25:\"edit_published_portfolios\";b:1;s:22:\"manage_portfolio_terms\";b:1;s:20:\"edit_portfolio_terms\";b:1;s:22:\"delete_portfolio_terms\";b:1;s:22:\"assign_portfolio_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1519641271;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519677168;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519720399;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519033874;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(127, 'can_compress_scripts', '0', 'no'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'current_theme', '', 'yes'),
(159, 'theme_mods_suffice', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:3;s:6:\"social\";i:2;s:6:\"footer\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519209105;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:12:\"sidebar-left\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"sidebar-right\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"000000\";s:12:\"header_video\";i:0;s:12:\"header_image\";s:21:\"random-uploaded-image\";}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(161, 'category_children', 'a:0:{}', 'yes'),
(162, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:26:\"../themes/suffice/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:7:\"1.2.2.6\";s:4:\"type\";s:5:\"theme\";s:9:\"timestamp\";i:1519208999;s:11:\"plugin_path\";s:7:\"suffice\";}}s:7:\"abspath\";s:19:\"/var/www/wordpress/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:7:\"suffice\";s:8:\"sdk_path\";s:26:\"../themes/suffice/freemius\";s:7:\"version\";s:7:\"1.2.2.6\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1519208999;}}', 'yes'),
(163, 'fs_debug_mode', '', 'yes'),
(164, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:1217;a:3:{s:4:\"slug\";s:7:\"suffice\";s:4:\"type\";s:5:\"theme\";s:4:\"path\";s:58:\"/var/www/wordpress/wp-content/themes/suffice/functions.php\";}}s:10:\"theme_data\";a:1:{s:7:\"suffice\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:58:\"/var/www/wordpress/wp-content/themes/suffice/functions.php\";}s:17:\"install_timestamp\";i:1519033177;s:17:\"was_plugin_loaded\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:7:\"1.2.2.6\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.1.0\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1519033177;s:7:\"version\";s:5:\"1.1.0\";}s:15:\"prev_is_premium\";b:0;s:14:\"previous_theme\";s:8:\"template\";s:21:\"is_plugin_new_install\";b:1;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1519209080;s:7:\"version\";s:5:\"1.1.0\";}}}s:13:\"file_slug_map\";a:1:{s:7:\"suffice\";s:7:\"suffice\";}s:6:\"themes\";a:1:{s:7:\"suffice\";O:9:\"FS_Plugin\":16:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:7:\"Suffice\";s:4:\"slug\";s:7:\"suffice\";s:4:\"type\";s:5:\"theme\";s:4:\"file\";s:7:\"suffice\";s:7:\"version\";s:5:\"1.1.0\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_085bdc87271236b93bd78b164b768\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1217\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"dc0da0e655f9373ca249336b78e138fc\";}', 'yes'),
(165, 'fs_api_cache', 'a:0:{}', 'yes'),
(168, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519033391;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(172, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(173, 'siteorigin_panels_initial_version', '2.6.2', 'no'),
(174, 'siteorigin_panels_active_version', '2.6.2', 'yes'),
(175, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'suffice_toolkit_db_version', '1.0.0', 'yes'),
(183, 'suffice_toolkit_version', '1.0.0', 'yes'),
(184, 'suffice_toolkit_admin_notices', 'a:0:{}', 'yes'),
(185, 'widget_themegrill_suffice_iconbox', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'widget_themegrill_suffice_counter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(187, 'widget_themegrill_suffice_title', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(188, 'widget_themegrill_suffice_cta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'widget_themegrill_suffice_logo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'widget_themegrill_suffice_portfolio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'widget_themegrill_suffice_team', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_themegrill_suffice_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_themegrill_suffice_testimonial', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'widget_themegrill_suffice_blog', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'widget_themegrill_suffice_featured_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'widget_themegrill_suffice_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_themegrill_suffice_button', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'suffice', 'a:19:{s:31:\"suffice_header_transparent_logo\";s:0:\"\";s:24:\"suffice_color_background\";s:7:\"#191919\";s:21:\"suffice_color_heading\";s:7:\"#424143\";s:23:\"suffice_color_paragraph\";s:7:\"#727c77\";s:18:\"suffice_color_meta\";s:7:\"#807f83\";s:18:\"suffice_menu_style\";s:18:\"navigation-default\";s:18:\"suffice_theme_skin\";s:5:\"light\";s:31:\"suffice_predefined_color_scheme\";s:7:\"default\";s:21:\"suffice_color_primary\";s:7:\"#00baf4\";s:22:\"suffice_show_preloader\";b:1;s:23:\"suffice_preloader_style\";s:23:\"preloader-bouncing-dots\";s:26:\"suffice_show_pagetitle_bar\";b:1;s:24:\"suffice_show_breadcrumbs\";b:1;s:26:\"suffice_show_footer_widget\";b:1;s:28:\"suffice_footer_columns_count\";s:24:\"footer-widgets-col--four\";s:22:\"suffice_sticky_sidebar\";b:0;s:33:\"sufficet_show_widget_title_ribbon\";b:1;s:23:\"suffice_blog_post_style\";s:18:\"post-style-classic\";s:21:\"suffice_related_style\";s:24:\"related-post-style-hover\";}', 'yes'),
(220, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(271, 'theme_mods_template', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519209074;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(345, '_site_transient_timeout_theme_roots', '1519635317', 'no'),
(346, '_site_transient_theme_roots', 'a:5:{s:7:\"suffice\";s:7:\"/themes\";s:8:\"template\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(354, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1519635117;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(355, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1519635117;s:7:\"checked\";a:5:{s:7:\"suffice\";s:5:\"1.1.0\";s:8:\"template\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:7:\"suffice\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.0.7\";s:7:\"updated\";s:19:\"2017-07-10 08:42:18\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/suffice/1.0.7/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(356, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1519635118;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:5:\"2.6.2\";s:42:\"suffice-toolkit-master/suffice-toolkit.php\";s:5:\"1.0.0\";s:60:\"themegrill-demo-importer-master/themegrill-demo-importer.php\";s:5:\"1.4.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2017-11-05 21:22:50\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"2.6.2\";s:7:\"updated\";s:19:\"2017-11-04 22:42:32\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/translation/plugin/siteorigin-panels/2.6.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:5:\"2.6.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.6.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:7:\"default\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";s:7:\"default\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"suffice-toolkit-master/suffice-toolkit.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/suffice-toolkit\";s:4:\"slug\";s:15:\"suffice-toolkit\";s:6:\"plugin\";s:42:\"suffice-toolkit-master/suffice-toolkit.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/suffice-toolkit/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/suffice-toolkit.1.0.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:68:\"https://ps.w.org/suffice-toolkit/assets/icon-128x128.png?rev=1681808\";s:2:\"2x\";s:68:\"https://ps.w.org/suffice-toolkit/assets/icon-256x256.png?rev=1681808\";s:3:\"svg\";s:60:\"https://ps.w.org/suffice-toolkit/assets/icon.svg?rev=1681808\";s:7:\"default\";s:60:\"https://ps.w.org/suffice-toolkit/assets/icon.svg?rev=1681808\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/suffice-toolkit/assets/banner-1544x500.jpg?rev=1681808\";s:2:\"1x\";s:70:\"https://ps.w.org/suffice-toolkit/assets/banner-772x250.jpg?rev=1681808\";s:7:\"default\";s:71:\"https://ps.w.org/suffice-toolkit/assets/banner-1544x500.jpg?rev=1681808\";}s:11:\"banners_rtl\";a:0:{}}s:60:\"themegrill-demo-importer-master/themegrill-demo-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/themegrill-demo-importer\";s:4:\"slug\";s:24:\"themegrill-demo-importer\";s:6:\"plugin\";s:60:\"themegrill-demo-importer-master/themegrill-demo-importer.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/themegrill-demo-importer/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/themegrill-demo-importer.1.4.2.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/themegrill-demo-importer/assets/banner-772x250.jpg?rev=1689579\";s:7:\"default\";s:79:\"https://ps.w.org/themegrill-demo-importer/assets/banner-772x250.jpg?rev=1689579\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'templatePerso.php'),
(2, 4, '_customize_draft_post_name', 'accueil'),
(3, 4, '_customize_changeset_uuid', '6e9b7b09-b1fa-4840-95da-407ae1dec5d0'),
(4, 5, '_customize_draft_post_name', 'a-propos-de'),
(5, 5, '_customize_changeset_uuid', '6e9b7b09-b1fa-4840-95da-407ae1dec5d0'),
(6, 6, '_customize_draft_post_name', 'contact'),
(7, 6, '_customize_changeset_uuid', '6e9b7b09-b1fa-4840-95da-407ae1dec5d0'),
(8, 7, '_customize_draft_post_name', 'blog'),
(9, 7, '_customize_changeset_uuid', '6e9b7b09-b1fa-4840-95da-407ae1dec5d0'),
(10, 8, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(11, 8, '_customize_changeset_uuid', '6e9b7b09-b1fa-4840-95da-407ae1dec5d0'),
(12, 1, '_wp_trash_meta_status', 'publish'),
(13, 1, '_wp_trash_meta_time', '1519031276'),
(14, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(15, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:5:\"trash\";}'),
(16, 11, '_customize_draft_post_name', 'accueil'),
(17, 11, '_customize_changeset_uuid', '76dad2f8-2970-4ab4-a50d-1caea05bc646'),
(18, 12, '_customize_draft_post_name', 'a-propos-de'),
(19, 12, '_customize_changeset_uuid', '76dad2f8-2970-4ab4-a50d-1caea05bc646'),
(20, 13, '_customize_draft_post_name', 'contact'),
(21, 13, '_customize_changeset_uuid', '76dad2f8-2970-4ab4-a50d-1caea05bc646'),
(22, 14, '_customize_draft_post_name', 'blog'),
(23, 14, '_customize_changeset_uuid', '76dad2f8-2970-4ab4-a50d-1caea05bc646'),
(24, 15, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(25, 15, '_customize_changeset_uuid', '76dad2f8-2970-4ab4-a50d-1caea05bc646'),
(26, 16, '_customize_restore_dismissed', '1'),
(27, 9, '_customize_restore_dismissed', '1'),
(28, 17, '_edit_lock', '1519034478:1'),
(29, 18, '_wp_attached_file', '2018/02/wall-e10.png'),
(30, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:333;s:4:\"file\";s:20:\"2018/02/wall-e10.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"wall-e10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"wall-e10-300x232.png\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:20:\"wall-e10-295x333.png\";s:5:\"width\";i:295;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 19, '_wp_attached_file', '2018/02/cropped-wall-e10.png'),
(32, 19, '_wp_attachment_context', 'suffice[suffice-header-transparent-logo]'),
(33, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:333;s:6:\"height\";i:333;s:4:\"file\";s:28:\"2018/02/cropped-wall-e10.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-wall-e10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-wall-e10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:28:\"cropped-wall-e10-295x333.png\";s:5:\"width\";i:295;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 17, '_customize_restore_dismissed', '1'),
(35, 20, '_wp_trash_meta_status', 'publish'),
(36, 20, '_wp_trash_meta_time', '1519034609'),
(37, 21, '_edit_lock', '1519034813:1'),
(38, 21, '_wp_trash_meta_status', 'publish'),
(39, 21, '_wp_trash_meta_time', '1519034850'),
(40, 22, '_edit_lock', '1519035048:1'),
(41, 22, '_wp_trash_meta_status', 'publish'),
(42, 22, '_wp_trash_meta_time', '1519035053'),
(43, 23, '_wp_attached_file', '2018/02/wall-e10-1.png'),
(44, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:333;s:4:\"file\";s:22:\"2018/02/wall-e10-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"wall-e10-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"wall-e10-1-300x232.png\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:22:\"wall-e10-1-295x333.png\";s:5:\"width\";i:295;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 24, '_wp_attached_file', '2018/02/cropped-wall-e10-1.png'),
(46, 24, '_wp_attachment_context', 'custom-header'),
(47, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:30:\"2018/02/cropped-wall-e10-1.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-wall-e10-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-wall-e10-1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-wall-e10-1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-wall-e10-1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:22:\"suffice-thumbnail-grid\";a:4:{s:4:\"file\";s:30:\"cropped-wall-e10-1-750x420.png\";s:5:\"width\";i:750;s:6:\"height\";i:420;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:30:\"cropped-wall-e10-1-295x525.png\";s:5:\"width\";i:295;s:6:\"height\";i:525;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"suffice-thumbnail-featured-two\";a:4:{s:4:\"file\";s:31:\"cropped-wall-e10-1-1140x504.png\";s:5:\"width\";i:1140;s:6:\"height\";i:504;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"suffice-thumbnail-portfolio\";a:4:{s:4:\"file\";s:30:\"cropped-wall-e10-1-572x552.png\";s:5:\"width\";i:572;s:6:\"height\";i:552;s:9:\"mime-type\";s:9:\"image/png\";}s:35:\"suffice-thumbnail-portfolio-masonry\";a:4:{s:4:\"file\";s:30:\"cropped-wall-e10-1-572x652.png\";s:5:\"width\";i:572;s:6:\"height\";i:652;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:23;}'),
(50, 25, '_edit_lock', '1519036115:1'),
(58, 28, '_wp_attached_file', '2018/02/V1WoO2k.jpg'),
(59, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1600;s:4:\"file\";s:19:\"2018/02/V1WoO2k.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"V1WoO2k-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"V1WoO2k-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"V1WoO2k-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"V1WoO2k-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"suffice-thumbnail-grid\";a:4:{s:4:\"file\";s:19:\"V1WoO2k-750x420.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:19:\"V1WoO2k-295x525.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-two\";a:4:{s:4:\"file\";s:20:\"V1WoO2k-1140x504.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"suffice-thumbnail-portfolio\";a:4:{s:4:\"file\";s:19:\"V1WoO2k-572x552.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:35:\"suffice-thumbnail-portfolio-masonry\";a:4:{s:4:\"file\";s:19:\"V1WoO2k-572x652.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:652;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 29, '_wp_attached_file', '2018/02/cropped-V1WoO2k.jpg'),
(61, 29, '_wp_attachment_context', 'custom-header'),
(62, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:27:\"2018/02/cropped-V1WoO2k.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-V1WoO2k-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-V1WoO2k-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-V1WoO2k-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cropped-V1WoO2k-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"suffice-thumbnail-grid\";a:4:{s:4:\"file\";s:27:\"cropped-V1WoO2k-750x420.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:27:\"cropped-V1WoO2k-295x525.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-two\";a:4:{s:4:\"file\";s:28:\"cropped-V1WoO2k-1140x504.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"suffice-thumbnail-portfolio\";a:4:{s:4:\"file\";s:27:\"cropped-V1WoO2k-572x552.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:35:\"suffice-thumbnail-portfolio-masonry\";a:4:{s:4:\"file\";s:27:\"cropped-V1WoO2k-572x652.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:652;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:28;}'),
(63, 29, '_wp_attachment_custom_header_last_used_suffice', '1519035358'),
(64, 29, '_wp_attachment_is_custom_header', 'suffice'),
(65, 30, '_wp_attached_file', '2018/02/Awesome-Beautiful-Background-Pictures-.jpg'),
(66, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:50:\"2018/02/Awesome-Beautiful-Background-Pictures-.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Awesome-Beautiful-Background-Pictures--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Awesome-Beautiful-Background-Pictures--300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"Awesome-Beautiful-Background-Pictures--768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"Awesome-Beautiful-Background-Pictures--1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"suffice-thumbnail-grid\";a:4:{s:4:\"file\";s:50:\"Awesome-Beautiful-Background-Pictures--750x420.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:50:\"Awesome-Beautiful-Background-Pictures--295x525.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-two\";a:4:{s:4:\"file\";s:51:\"Awesome-Beautiful-Background-Pictures--1140x504.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"suffice-thumbnail-portfolio\";a:4:{s:4:\"file\";s:50:\"Awesome-Beautiful-Background-Pictures--572x552.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:35:\"suffice-thumbnail-portfolio-masonry\";a:4:{s:4:\"file\";s:50:\"Awesome-Beautiful-Background-Pictures--572x652.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:652;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 31, '_wp_attached_file', '2018/02/cropped-Awesome-Beautiful-Background-Pictures-.jpg'),
(68, 31, '_wp_attachment_context', 'custom-header'),
(69, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:58:\"2018/02/cropped-Awesome-Beautiful-Background-Pictures-.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"cropped-Awesome-Beautiful-Background-Pictures--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"cropped-Awesome-Beautiful-Background-Pictures--300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"cropped-Awesome-Beautiful-Background-Pictures--768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"cropped-Awesome-Beautiful-Background-Pictures--1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"suffice-thumbnail-grid\";a:4:{s:4:\"file\";s:58:\"cropped-Awesome-Beautiful-Background-Pictures--750x420.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:58:\"cropped-Awesome-Beautiful-Background-Pictures--295x525.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-two\";a:4:{s:4:\"file\";s:59:\"cropped-Awesome-Beautiful-Background-Pictures--1140x504.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"suffice-thumbnail-portfolio\";a:4:{s:4:\"file\";s:58:\"cropped-Awesome-Beautiful-Background-Pictures--572x552.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:35:\"suffice-thumbnail-portfolio-masonry\";a:4:{s:4:\"file\";s:58:\"cropped-Awesome-Beautiful-Background-Pictures--572x652.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:652;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:30;}'),
(72, 32, '_wp_attached_file', '2018/02/cropped-Awesome-Beautiful-Background-Pictures-1-1.jpg'),
(73, 32, '_wp_attachment_context', 'custom-header'),
(74, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1040;s:4:\"file\";s:61:\"2018/02/cropped-Awesome-Beautiful-Background-Pictures-1-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-768x416.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:62:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-1024x555.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"suffice-thumbnail-grid\";a:4:{s:4:\"file\";s:61:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-750x420.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-one\";a:4:{s:4:\"file\";s:61:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-295x525.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"suffice-thumbnail-featured-two\";a:4:{s:4:\"file\";s:62:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-1140x504.jpg\";s:5:\"width\";i:1140;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"suffice-thumbnail-portfolio\";a:4:{s:4:\"file\";s:61:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-572x552.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:35:\"suffice-thumbnail-portfolio-masonry\";a:4:{s:4:\"file\";s:61:\"cropped-Awesome-Beautiful-Background-Pictures-1-1-572x652.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:652;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:30;}'),
(75, 32, '_wp_attachment_custom_header_last_used_suffice', '1519035515'),
(76, 32, '_wp_attachment_is_custom_header', 'suffice'),
(78, 33, '_customize_changeset_uuid', 'cbf8f996-b6a7-4af8-9789-4dacec3746a3'),
(79, 35, '_menu_item_type', 'post_type'),
(80, 35, '_menu_item_menu_item_parent', '0'),
(81, 35, '_menu_item_object_id', '2'),
(82, 35, '_menu_item_object', 'page'),
(83, 35, '_menu_item_target', ''),
(84, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 35, '_menu_item_xfn', ''),
(86, 35, '_menu_item_url', ''),
(87, 25, '_wp_trash_meta_status', 'publish'),
(88, 25, '_wp_trash_meta_time', '1519035837'),
(89, 36, '_wp_trash_meta_status', 'publish'),
(90, 36, '_wp_trash_meta_time', '1519036178'),
(91, 37, '_edit_lock', '1519036997:1'),
(92, 38, '_edit_lock', '1519037391:1'),
(93, 39, '_edit_lock', '1519037426:1'),
(94, 40, '_edit_lock', '1519037465:1'),
(95, 41, '_edit_lock', '1519037536:1'),
(96, 42, '_edit_lock', '1519037602:1'),
(97, 43, '_edit_lock', '1519037650:1'),
(98, 44, '_edit_lock', '1519038334:1'),
(99, 45, '_edit_lock', '1519044650:1'),
(100, 45, '_edit_last', '1'),
(101, 45, '_wp_page_template', 'default'),
(102, 49, '_menu_item_type', 'post_type'),
(103, 49, '_menu_item_menu_item_parent', '0'),
(104, 49, '_menu_item_object_id', '45'),
(105, 49, '_menu_item_object', 'page'),
(106, 49, '_menu_item_target', ''),
(107, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 49, '_menu_item_xfn', ''),
(109, 49, '_menu_item_url', ''),
(110, 48, '_wp_trash_meta_status', 'publish'),
(111, 48, '_wp_trash_meta_time', '1519038553'),
(112, 50, '_edit_lock', '1519038912:1'),
(113, 51, '_wp_trash_meta_status', 'publish'),
(114, 51, '_wp_trash_meta_time', '1519039280'),
(115, 52, '_wp_trash_meta_status', 'publish'),
(116, 52, '_wp_trash_meta_time', '1519039290'),
(117, 53, '_wp_trash_meta_status', 'publish'),
(118, 53, '_wp_trash_meta_time', '1519039301'),
(119, 54, '_wp_trash_meta_status', 'publish'),
(120, 54, '_wp_trash_meta_time', '1519039305'),
(121, 55, '_wp_trash_meta_status', 'publish'),
(122, 55, '_wp_trash_meta_time', '1519039507'),
(123, 2, '_edit_lock', '1519287036:1'),
(124, 2, '_edit_last', '1'),
(125, 33, '_wp_trash_meta_status', 'publish'),
(126, 33, '_wp_trash_meta_time', '1519218433'),
(127, 33, '_wp_desired_post_slug', 'https-www-youtube-com-glfrhlfr'),
(128, 45, '_wp_trash_meta_status', 'publish'),
(129, 45, '_wp_trash_meta_time', '1519218433'),
(130, 45, '_wp_desired_post_slug', '45-2'),
(131, 58, '_edit_lock', '1519312964:1'),
(132, 58, '_edit_last', '1'),
(133, 58, '_wp_page_template', 'about.php'),
(134, 58, 'Full Name', 'John Doe'),
(135, 58, 'Adress', 'Somewhere In the Sky'),
(136, 58, 'Zip Code', '666'),
(137, 58, 'Phone', '0123456789'),
(138, 58, 'Email', 'Lucy@hell.lol'),
(139, 58, 'Website', 'someshit.lol'),
(140, 68, '_edit_lock', '1519304357:1'),
(141, 68, '_edit_last', '1'),
(142, 68, '_wp_trash_meta_status', 'draft'),
(143, 68, '_wp_trash_meta_time', '1519304370'),
(144, 68, '_wp_desired_post_slug', ''),
(145, 70, '_edit_lock', '1519385070:1'),
(146, 70, '_edit_last', '1'),
(147, 70, 'sideBar', 'Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys'),
(148, 70, '_wp_page_template', 'default'),
(149, 70, 'sbImage', 'http://localhost/wordpress/wp-content/uploads/2018/02/wall-e10-1.png'),
(150, 58, 'Hire', 'Nawak bunnys and gummys Nawak bunnys and gummys Nawak bunnys and gummys'),
(151, 70, 'crslImage', 'http://localhost/wordpress/wp-content/uploads/2018/02/treeResized.jpg'),
(152, 70, 'crslImage1', 'http://localhost/wordpress/wp-content/uploads/2018/02/cityResized.jpg'),
(153, 70, 'crslImage2', 'http://localhost/wordpress/wp-content/uploads/2018/02/wall-eResized.png');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-19 09:32:47', '2018-02-19 08:32:47', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2018-02-19 10:07:56', '2018-02-19 09:07:56', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 0),
(2, 1, '2018-02-19 09:32:47', '2018-02-19 08:32:47', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-02-19 13:55:09', '2018-02-19 12:55:09', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-02-19 09:33:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-19 09:33:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2018-02-19 10:00:15', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:00:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-02-19 10:00:15', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:00:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-02-19 10:00:15', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:00:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-02-19 10:00:15', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:00:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-02-19 10:00:15', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:00:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-02-19 10:00:15', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93de71a82fa9104a85a9b3b1ef26377b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1abaef3be3bf8559317f940b04df555f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"508856cbd811ff674bacfe50e06a8cec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93de71a82fa9104a85a9b3b1ef26377b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"508856cbd811ff674bacfe50e06a8cec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1abaef3be3bf8559317f940b04df555f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 5,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 4,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:00:15\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6e9b7b09-b1fa-4840-95da-407ae1dec5d0', '', '', '2018-02-19 10:00:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2018-02-19 10:07:56', '2018-02-19 09:07:56', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-19 10:07:56', '2018-02-19 09:07:56', '', 1, 'http://localhost/wordpress/index.php/2018/02/19/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-02-19 10:09:35', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:09:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-02-19 10:09:35', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:09:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-02-19 10:09:35', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:09:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-02-19 10:09:35', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:09:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-02-19 10:09:35', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 10:09:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-02-19 10:09:35', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93de71a82fa9104a85a9b3b1ef26377b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1abaef3be3bf8559317f940b04df555f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"508856cbd811ff674bacfe50e06a8cec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93de71a82fa9104a85a9b3b1ef26377b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"508856cbd811ff674bacfe50e06a8cec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1abaef3be3bf8559317f940b04df555f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            11,\n            12,\n            13,\n            14,\n            15\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 12,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 14,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 13,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 14,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:09:35\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '76dad2f8-2970-4ab4-a50d-1caea05bc646', '', '', '2018-02-19 10:09:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2018-02-19 10:56:48', '0000-00-00 00:00:00', '{\n    \"suffice[suffice_header_style]\": {\n        \"value\": \"logo-left-menu-right\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:56:48\"\n    },\n    \"suffice[suffice_sticky_header]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:56:48\"\n    },\n    \"suffice[suffice_sticky_header_style]\": {\n        \"value\": \"header-sticky-style-full-slide\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:56:48\"\n    },\n    \"suffice[suffice_show_search]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 09:56:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'a8f74983-38bc-4e1c-b7d7-a2c943a62818', '', '', '2018-02-19 10:56:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2018-02-19 11:02:59', '2018-02-19 10:02:59', '', 'wall-e10', '', 'inherit', 'open', 'closed', '', 'wall-e10', '', '', '2018-02-19 11:02:59', '2018-02-19 10:02:59', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/wall-e10.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2018-02-19 11:03:05', '2018-02-19 10:03:05', 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-wall-e10.png', 'cropped-wall-e10.png', '', 'inherit', 'open', 'closed', '', 'cropped-wall-e10-png', '', '', '2018-02-19 11:03:05', '2018-02-19 10:03:05', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-wall-e10.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2018-02-19 11:03:29', '2018-02-19 10:03:29', '{\n    \"suffice[suffice_header_transparent_logo]\": {\n        \"value\": 19,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:03:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '461a1705-2066-47d2-8fbf-b4374f02fd8c', '', '', '2018-02-19 11:03:29', '2018-02-19 10:03:29', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/461a1705-2066-47d2-8fbf-b4374f02fd8c/', 0, 'customize_changeset', '', 0),
(21, 1, '2018-02-19 11:07:30', '2018-02-19 10:07:30', '{\n    \"suffice[suffice_color_background]\": {\n        \"value\": \"#1d2329\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:07:30\"\n    },\n    \"suffice[suffice_color_heading]\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:05:53\"\n    },\n    \"suffice[suffice_color_paragraph]\": {\n        \"value\": \"#e2e7e8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:05:53\"\n    },\n    \"suffice[suffice_color_meta]\": {\n        \"value\": \"#e9e8e8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:05:53\"\n    },\n    \"suffice[suffice_menu_style]\": {\n        \"value\": \"navigation-default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:04:53\"\n    },\n    \"suffice[suffice_theme_skin]\": {\n        \"value\": \"dark\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:05:53\"\n    },\n    \"suffice[suffice_predefined_color_scheme]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:04:53\"\n    },\n    \"suffice[suffice_color_primary]\": {\n        \"value\": \"#00baf4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:06:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b103846f-da88-48dc-a2d2-ec64cc95b93d', '', '', '2018-02-19 11:07:30', '2018-02-19 10:07:30', '', 0, 'http://localhost/wordpress/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2018-02-19 11:10:53', '2018-02-19 10:10:53', '{\n    \"suffice[suffice_show_preloader]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:07:53\"\n    },\n    \"suffice[suffice_preloader_style]\": {\n        \"value\": \"preloader-bouncing-dots\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:08:16\"\n    },\n    \"suffice[suffice_show_pagetitle_bar]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:08:46\"\n    },\n    \"suffice[suffice_show_breadcrumbs]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:09:55\"\n    },\n    \"suffice[suffice_show_footer_widget]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:09:55\"\n    },\n    \"suffice[suffice_footer_columns_count]\": {\n        \"value\": \"footer-widgets-col--four\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:09:55\"\n    },\n    \"suffice[suffice_sticky_sidebar]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:09:55\"\n    },\n    \"suffice[sufficet_show_widget_title_ribbon]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:10:53\"\n    },\n    \"suffice[suffice_blog_post_style]\": {\n        \"value\": \"post-style-classic\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:10:53\"\n    },\n    \"suffice[suffice_related_style]\": {\n        \"value\": \"related-post-style-hover\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:10:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f3688df8-594a-4e3d-b6ba-8e86c7ef8a20', '', '', '2018-02-19 11:10:53', '2018-02-19 10:10:53', '', 0, 'http://localhost/wordpress/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2018-02-19 11:11:39', '2018-02-19 10:11:39', '', 'wall-e10', '', 'inherit', 'open', 'closed', '', 'wall-e10-2', '', '', '2018-02-19 11:11:39', '2018-02-19 10:11:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/wall-e10-1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2018-02-19 11:12:13', '2018-02-19 10:12:13', '', 'cropped-wall-e10-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-wall-e10-1-png', '', '', '2018-02-19 11:12:13', '2018-02-19 10:12:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-wall-e10-1.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-02-19 11:23:57', '2018-02-19 10:23:57', '{\n    \"suffice::header_textcolor\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:12:25\"\n    },\n    \"suffice::header_video\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:12:25\"\n    },\n    \"suffice::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:16:29\"\n    },\n    \"suffice::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:16:29\"\n    },\n    \"suffice::nav_menu_locations[primary]\": {\n        \"value\": -835952786170914800,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:21:03\"\n    },\n    \"nav_menu[-835952786170914800]\": {\n        \"value\": {\n            \"name\": \"TestMenu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:21:03\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            33\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:22:29\"\n    },\n    \"nav_menu_item[-1145744211216286700]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:22:29\"\n    },\n    \"suffice::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:23:29\"\n    },\n    \"suffice::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:23:29\"\n    },\n    \"nav_menu_item[-2458283581773621000]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Page d\\u2019exemple\",\n            \"url\": \"http://localhost/wordpress/index.php/page-d-exemple/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Page d\\u2019exemple\",\n            \"nav_menu_term_id\": -835952786170914800,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:23:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cbf8f996-b6a7-4af8-9789-4dacec3746a3', '', '', '2018-02-19 11:23:57', '2018-02-19 10:23:57', '', 0, 'http://localhost/wordpress/?p=25', 0, 'customize_changeset', '', 0),
(28, 1, '2018-02-19 11:15:53', '2018-02-19 10:15:53', '', 'V1WoO2k', '', 'inherit', 'open', 'closed', '', 'v1woo2k', '', '', '2018-02-19 11:15:53', '2018-02-19 10:15:53', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/V1WoO2k.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-02-19 11:15:58', '2018-02-19 10:15:58', '', 'cropped-V1WoO2k.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-v1woo2k-jpg', '', '', '2018-02-19 11:15:58', '2018-02-19 10:15:58', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-V1WoO2k.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-02-19 11:18:11', '2018-02-19 10:18:11', '', 'Awesome-Beautiful-Background-Pictures-', '', 'inherit', 'open', 'closed', '', 'awesome-beautiful-background-pictures', '', '', '2018-02-19 11:18:11', '2018-02-19 10:18:11', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/Awesome-Beautiful-Background-Pictures-.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-02-19 11:18:15', '2018-02-19 10:18:15', '', 'cropped-Awesome-Beautiful-Background-Pictures-.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-awesome-beautiful-background-pictures-jpg', '', '', '2018-02-19 11:18:15', '2018-02-19 10:18:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-Awesome-Beautiful-Background-Pictures-.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-02-19 11:18:34', '2018-02-19 10:18:34', '', 'cropped-Awesome-Beautiful-Background-Pictures-1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-awesome-beautiful-background-pictures-1-1-jpg', '', '', '2018-02-19 11:18:34', '2018-02-19 10:18:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-Awesome-Beautiful-Background-Pictures-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-02-19 11:23:57', '2018-02-19 10:23:57', '', 'https://www.youtube.com/?gl=FR&hl=fr', '', 'trash', 'closed', 'closed', '', 'https-www-youtube-com-glfrhlfr__trashed', '', '', '2018-02-21 14:07:13', '2018-02-21 13:07:13', '', 0, 'http://localhost/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-02-19 11:23:57', '2018-02-19 10:23:57', '', 'https://www.youtube.com/?gl=FR&hl=fr', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-02-19 11:23:57', '2018-02-19 10:23:57', '', 33, 'http://localhost/wordpress/index.php/2018/02/19/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-02-19 11:23:57', '2018-02-19 10:23:57', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-02-19 11:23:57', '2018-02-19 10:23:57', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/35/', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-02-19 11:29:38', '2018-02-19 10:29:38', '{\n    \"suffice::header_textcolor\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:29:38\"\n    },\n    \"suffice[suffice_color_background]\": {\n        \"value\": \"#191919\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:29:38\"\n    },\n    \"suffice[suffice_color_heading]\": {\n        \"value\": \"#424143\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:29:38\"\n    },\n    \"suffice[suffice_color_paragraph]\": {\n        \"value\": \"#727c77\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:29:38\"\n    },\n    \"suffice[suffice_color_meta]\": {\n        \"value\": \"#807f83\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:29:38\"\n    },\n    \"suffice[suffice_header_transparent_logo]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:29:38\"\n    },\n    \"suffice[suffice_theme_skin]\": {\n        \"value\": \"light\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 10:29:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f61a8b3f-3c11-4143-82b4-00c664d7811e', '', '', '2018-02-19 11:29:38', '2018-02-19 10:29:38', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/f61a8b3f-3c11-4143-82b4-00c664d7811e/', 0, 'customize_changeset', '', 0),
(37, 1, '2018-02-19 11:34:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:34:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-02-19 11:46:22', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:46:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-02-19 11:49:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:49:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-02-19 11:50:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:50:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-02-19 11:51:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:51:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-02-19 11:52:17', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:52:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-02-19 11:53:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:53:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-02-19 11:54:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 11:54:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-02-19 12:07:15', '2018-02-19 11:07:15', '<h1>J\'aime le paté</h1>\r\n&nbsp;\r\n<pre>sldkjhazdlkazjhdlezakfjmlfkqjezfùpEJ MQLEKFNJVWSMFLKV JZEMLFKVJMLRKJVM LKDFJVMLKmefl kjqeùvl kmlkjdmvlkjqvmlkswjvmlk j lkfvmlsdknv smodnc fsmn dfmojnv fdojn sùonùoednv on nvlkxwnc ldsqkjnlkjnd</pre>', 'La rillette c\'est mieux mais...', '', 'trash', 'closed', 'closed', '', '45-2__trashed', '', '', '2018-02-21 14:07:13', '2018-02-21 13:07:13', '', 0, 'http://localhost/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-02-19 12:07:15', '2018-02-19 11:07:15', '<h1>J\'aime le paté</h1>\r\n&nbsp;\r\n<pre>sldkjhazdlkazjhdlezakfjmlfkqjezfùpEJ MQLEKFNJVWSMFLKV JZEMLFKVJMLRKJVM LKDFJVMLKmefl kjqeùvl kmlkjdmvlkjqvmlkswjvmlk j lkfvmlsdknv smodnc fsmn dfmojnv fdojn sùonùoednv on nvlkxwnc ldsqkjnlkjnd</pre>', '', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-02-19 12:07:15', '2018-02-19 11:07:15', '', 45, 'http://localhost/wordpress/index.php/2018/02/19/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-02-19 12:08:09', '2018-02-19 11:08:09', '<h1>J\'aime le paté</h1>\r\n&nbsp;\r\n<pre>sldkjhazdlkazjhdlezakfjmlfkqjezfùpEJ MQLEKFNJVWSMFLKV JZEMLFKVJMLRKJVM LKDFJVMLKmefl kjqeùvl kmlkjdmvlkjqvmlkswjvmlk j lkfvmlsdknv smodnc fsmn dfmojnv fdojn sùonùoednv on nvlkxwnc ldsqkjnlkjnd</pre>', 'La rillette c\'est mieux mais...', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-02-19 12:08:09', '2018-02-19 11:08:09', '', 45, 'http://localhost/wordpress/index.php/2018/02/19/45-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(48, 1, '2018-02-19 12:09:13', '2018-02-19 11:09:13', '{\n    \"suffice::nav_menu_locations[primary]\": {\n        \"value\": -7705853067769744000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:09:13\"\n    },\n    \"nav_menu[-7705853067769744000]\": {\n        \"value\": {\n            \"name\": \"Pat\\u00e9\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:09:13\"\n    },\n    \"nav_menu_item[-8168598730592707000]\": {\n        \"value\": {\n            \"object_id\": 45,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"La rillette c\'est mieux mais...\",\n            \"url\": \"http://localhost/wordpress/index.php/45-2/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"La rillette c\'est mieux mais...\",\n            \"nav_menu_term_id\": -7705853067769744000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:09:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd8a7df7-be12-4dcd-83fe-9f4b3b917b45', '', '', '2018-02-19 12:09:13', '2018-02-19 11:09:13', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/dd8a7df7-be12-4dcd-83fe-9f4b3b917b45/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-02-19 12:09:13', '2018-02-19 11:09:13', '', 'La rillette c\'est mieux mais...', '', 'publish', 'closed', 'closed', '', 'la-rillette-cest-mieux-mais', '', '', '2018-02-19 12:09:13', '2018-02-19 11:09:13', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/la-rillette-cest-mieux-mais/', 1, 'nav_menu_item', '', 0),
(50, 1, '2018-02-19 12:12:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 12:12:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=50', 0, 'page', '', 0),
(51, 1, '2018-02-19 12:21:20', '2018-02-19 11:21:20', '{\n    \"suffice::nav_menu_locations[social]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:21:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c94628b1-2c33-4458-ace5-7b817f02440e', '', '', '2018-02-19 12:21:20', '2018-02-19 11:21:20', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/c94628b1-2c33-4458-ace5-7b817f02440e/', 0, 'customize_changeset', '', 0),
(52, 1, '2018-02-19 12:21:30', '2018-02-19 11:21:30', '{\n    \"suffice::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:21:30\"\n    },\n    \"suffice::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:21:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '067fc608-7f70-437e-b351-13108220df5b', '', '', '2018-02-19 12:21:30', '2018-02-19 11:21:30', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/067fc608-7f70-437e-b351-13108220df5b/', 0, 'customize_changeset', '', 0),
(53, 1, '2018-02-19 12:21:41', '2018-02-19 11:21:41', '{\n    \"suffice::nav_menu_locations[footer]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:21:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '170ffa5e-79b8-41c5-a0a6-36aca3be0ec3', '', '', '2018-02-19 12:21:41', '2018-02-19 11:21:41', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/170ffa5e-79b8-41c5-a0a6-36aca3be0ec3/', 0, 'customize_changeset', '', 0),
(54, 1, '2018-02-19 12:21:45', '2018-02-19 11:21:45', '{\n    \"suffice::nav_menu_locations[social]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:21:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9f53c1df-bbd7-4aca-a9b4-0a70b51a5f33', '', '', '2018-02-19 12:21:45', '2018-02-19 11:21:45', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/9f53c1df-bbd7-4aca-a9b4-0a70b51a5f33/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-02-19 12:25:07', '2018-02-19 11:25:07', '{\n    \"suffice::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-19 11:25:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f98c54c-13e8-4a3d-875f-c65432db6a22', '', '', '2018-02-19 12:25:07', '2018-02-19 11:25:07', '', 0, 'http://localhost/wordpress/index.php/2018/02/19/7f98c54c-13e8-4a3d-875f-c65432db6a22/', 0, 'customize_changeset', '', 0),
(56, 1, '2018-02-19 13:53:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-19 13:53:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-02-19 13:55:09', '2018-02-19 12:55:09', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-19 13:55:09', '2018-02-19 12:55:09', '', 2, 'http://localhost/wordpress/index.php/2018/02/19/2-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-02-21 14:07:52', '2018-02-21 13:07:52', 'Hello, i\'m an Unicorn!!!\r\n\r\nI’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website,\r\nI create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem\r\nIpsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,\r\nnisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate\r\ncursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'About me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2018-02-22 14:39:21', '2018-02-22 13:39:21', '', 0, 'http://localhost/wordpress/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-02-21 14:07:52', '2018-02-21 13:07:52', 'Hello,I’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website, I create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem Ipsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'About Me', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-21 14:07:52', '2018-02-21 13:07:52', '', 58, 'http://localhost/wordpress/index.php/2018/02/21/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-02-21 14:11:20', '2018-02-21 13:11:20', 'blahblah', 'About Me', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-21 14:11:20', '2018-02-21 13:11:20', '', 58, 'http://localhost/wordpress/index.php/2018/02/21/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-02-21 15:29:52', '2018-02-21 14:29:52', 'Hello,\r\n\r\nI’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website,\r\nI create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem\r\nIpsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,\r\nnisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate\r\ncursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'About Me', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-21 15:29:52', '2018-02-21 14:29:52', '', 58, 'http://localhost/wordpress/index.php/2018/02/21/58-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-02-22 09:40:29', '2018-02-22 08:40:29', 'Hello, i\'m an Unicorn!!!\r\n\r\nI’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website,\r\nI create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem\r\nIpsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,\r\nnisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate\r\ncursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'About me', '', 'inherit', 'closed', 'closed', '', '58-autosave-v1', '', '', '2018-02-22 09:40:29', '2018-02-22 08:40:29', '', 58, 'http://localhost/wordpress/index.php/2018/02/21/58-autosave-v1/', 0, 'revision', '', 0),
(63, 1, '2018-02-21 15:33:32', '2018-02-21 14:33:32', 'kjqshdkljhqsdkjhkdjqshdI’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website,\r\nI create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem\r\nIpsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,\r\nnisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate\r\ncursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'About Me', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-21 15:33:32', '2018-02-21 14:33:32', '', 58, 'http://localhost/wordpress/index.php/2018/02/21/58-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-02-21 15:37:11', '2018-02-21 14:37:11', 'Hello, i\'m an Unicorn!!!\r\n\r\nI’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website,\r\nI create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem\r\nIpsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,\r\nnisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate\r\ncursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'About Me', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-21 15:37:11', '2018-02-21 14:37:11', '', 58, 'http://localhost/wordpress/index.php/2018/02/21/58-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-02-22 09:14:40', '2018-02-22 08:14:40', 'Hello, i\'m an Unicorn!!!\r\n\r\nI’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website,\r\nI create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem\r\nIpsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,\r\nnisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate\r\ncursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'lololol', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-22 09:14:40', '2018-02-22 08:14:40', '', 58, 'http://localhost/wordpress/index.php/2018/02/22/58-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-02-22 09:15:02', '2018-02-22 08:15:02', 'Hello, i\'m an Unicorn!!!\r\n\r\nI’m John Doe Creative Graphic Designer &amp; User Experience Desiger based in Website,\r\nI create digital Products a more Beautiful and usable place. This is Photoshop\'s version of Lorem\r\nIpsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,\r\nnisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate\r\ncursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.', 'About me', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-02-22 09:15:02', '2018-02-22 08:15:02', '', 58, 'http://localhost/wordpress/index.php/2018/02/22/58-revision-v1/', 0, 'revision', '', 0),
(67, 2, '2018-02-22 10:55:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-22 10:55:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=67', 0, 'post', '', 0),
(68, 1, '2018-02-22 13:59:30', '2018-02-22 12:59:30', '', 'Index', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-02-22 13:59:30', '2018-02-22 12:59:30', '', 0, 'http://localhost/wordpress/?page_id=68', 0, 'page', '', 0),
(69, 1, '2018-02-22 13:59:30', '2018-02-22 12:59:30', '', 'Index', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-02-22 13:59:30', '2018-02-22 12:59:30', '', 68, 'http://localhost/wordpress/index.php/2018/02/22/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-02-22 14:01:43', '2018-02-22 13:01:43', '', 'Index', '', 'publish', 'closed', 'closed', '', 'index', '', '', '2018-02-23 11:24:23', '2018-02-23 10:24:23', '', 0, 'http://localhost/wordpress/?page_id=70', 0, 'page', '', 0),
(71, 1, '2018-02-22 14:01:43', '2018-02-22 13:01:43', '', 'Index', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-02-22 14:01:43', '2018-02-22 13:01:43', '', 70, 'http://localhost/wordpress/index.php/2018/02/22/70-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'TestMenu', 'testmenu', 0),
(3, 'Paté', 'pate', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(35, 2, 0),
(49, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Ascherion'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:8:{s:64:\"911cfe4c94e19a5a38b95a885a8a4ff0c96c00c2790b200119f1d7c6b16ca4da\";a:4:{s:10:\"expiration\";i:1520238799;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519029199;}s:64:\"d18f27889b02f8e8df164e58c4d1809f1e38c3496187450b4097477063ffcf1b\";a:4:{s:10:\"expiration\";i:1519381828;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519209028;}s:64:\"4f808f5ff032664329fb1fe79c9be0710d53ed39d80d4b42d0883a5dd6667db7\";a:4:{s:10:\"expiration\";i:1519390352;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519217552;}s:64:\"22963170c9da0c3f280e6ec1e82155cb82f31ccc0e3159ab37448bd3a207bfc1\";a:4:{s:10:\"expiration\";i:1519390359;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519217559;}s:64:\"95682af5b0b220534f4b19bd02c56bf6ae0d57a6fe9af7d0c59c1c0347feaaa8\";a:4:{s:10:\"expiration\";i:1519390379;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519217579;}s:64:\"36ff5d634c859203249f69395a81b46c9301379089e8b4f3f90022c77a6a5acf\";a:4:{s:10:\"expiration\";i:1519390651;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519217851;}s:64:\"acf88737ed8d107ea9d036ccb35a68032d734e6812d51b5e499bda856f637171\";a:4:{s:10:\"expiration\";i:1519459935;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519287135;}s:64:\"548bb519d61ee483aa9640a42288c802480c265a3681540d8a66f4261858020f\";a:4:{s:10:\"expiration\";i:1519547231;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519374431;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 2, 'nickname', 'lyra'),
(20, 2, 'first_name', ''),
(21, 2, 'last_name', ''),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(31, 2, 'wp_user_level', '10'),
(32, 2, 'dismissed_wp_pointers', ''),
(34, 1, 'wp_user-settings', 'libraryContent=browse'),
(35, 1, 'wp_user-settings-time', '1519034482'),
(36, 1, 'closedpostboxes_page', 'a:0:{}'),
(37, 1, 'metaboxhidden_page', 'a:1:{i:0;s:16:\"so-panels-panels\";}'),
(38, 2, 'session_tokens', 'a:1:{s:64:\"58b8dd61d91f96320a773a2bf690e8cd3d596eb93da3ca2c8e66857f813782c2\";a:4:{s:10:\"expiration\";i:1519466104;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1519293304;}}'),
(39, 2, 'wp_dashboard_quick_press_last_post_id', '67'),
(40, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(41, 2, 'closedpostboxes_page', 'a:0:{}'),
(42, 2, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Ascherion', '$P$Bf8pE6gPwyRPNn384d9h15deWNWP9..', 'ascherion', 'johan.desplats@gmail.com', '', '2018-02-19 08:32:47', '', 0, 'Ascherion'),
(2, 'lyra', '$P$BmonRuxwcRGO5Hwm0IcIs5no6/5ac10', 'lyra', 'indigo.laetitia@gmail.com', '', '2018-02-19 09:04:25', '1519031065:$P$BLZ6A5doP2K5XVWAht9oJxN635LRTF/', 0, 'lyra');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
