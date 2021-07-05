-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2021 at 10:17 AM
-- Server version: 5.7.33-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i7802472_wp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-04 19:01:31', '2021-05-04 19:01:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_fbv`
--

CREATE TABLE `wp_fbv` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0',
  `ord` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_fbv_attachment_folder`
--

CREATE TABLE `wp_fbv_attachment_folder` (
  `folder_id` int(11) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://figginscanfixit.com', 'yes'),
(2, 'home', 'https://figginscanfixit.com', 'yes'),
(3, 'blogname', 'Figgins', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@figgins.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:168:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"selling_points/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"selling_points/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"selling_points/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"selling_points/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"selling_points/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"selling_points/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"selling_points/([^/]+)/embed/?$\";s:47:\"index.php?selling_points=$matches[1]&embed=true\";s:35:\"selling_points/([^/]+)/trackback/?$\";s:41:\"index.php?selling_points=$matches[1]&tb=1\";s:43:\"selling_points/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?selling_points=$matches[1]&paged=$matches[2]\";s:50:\"selling_points/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?selling_points=$matches[1]&cpage=$matches[2]\";s:39:\"selling_points/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?selling_points=$matches[1]&page=$matches[2]\";s:31:\"selling_points/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"selling_points/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"selling_points/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"selling_points/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"selling_points/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"selling_points/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"faqs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"faqs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"faqs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"faqs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"faqs/([^/]+)/embed/?$\";s:37:\"index.php?faqs=$matches[1]&embed=true\";s:25:\"faqs/([^/]+)/trackback/?$\";s:31:\"index.php?faqs=$matches[1]&tb=1\";s:33:\"faqs/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&paged=$matches[2]\";s:40:\"faqs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&cpage=$matches[2]\";s:29:\"faqs/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?faqs=$matches[1]&page=$matches[2]\";s:21:\"faqs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"faqs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"faqs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"faqs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"why_figgins/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"why_figgins/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"why_figgins/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"why_figgins/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"why_figgins/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"why_figgins/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"why_figgins/([^/]+)/embed/?$\";s:44:\"index.php?why_figgins=$matches[1]&embed=true\";s:32:\"why_figgins/([^/]+)/trackback/?$\";s:38:\"index.php?why_figgins=$matches[1]&tb=1\";s:40:\"why_figgins/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?why_figgins=$matches[1]&paged=$matches[2]\";s:47:\"why_figgins/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?why_figgins=$matches[1]&cpage=$matches[2]\";s:36:\"why_figgins/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?why_figgins=$matches[1]&page=$matches[2]\";s:28:\"why_figgins/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"why_figgins/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"why_figgins/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"why_figgins/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"why_figgins/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"why_figgins/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:67:\"/home/zen0fxv4uemq/public_html/wp-content/themes/figgins/header.php\";i:1;s:66:\"/home/zen0fxv4uemq/public_html/wp-content/themes/figgins/style.css\";i:3;s:0:\"\";}', 'no'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '/home/zen0fxv4uemq/public_html/wp-content/uploads', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:266:\"<div class=\"co-12 footer-addr-main\">\r\n	\r\n	<div class=\"addr-inner-left\">\r\n		<span class=\"small-addr\">\r\n			Serving Northern Utah Since 1962 </span>\r\n\r\n<span class=\"bold-addr\">\r\n	<a href=\"tel: 801-928-0519\" class=\"pixel-phone\"> 801-928-0519</a>\r\n</span></div>\r\n\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:344:\"<a href=\"https://g.co/kgs/R8TZpZ\" target=\"_blank\"  class=\"figginsanchr\" ><i class=\"fa fa-google \"></i></a>\r\n<a href=\"https://www.facebook.com/Figg…-Air-104769638435685\" target=\"_blank\" class=\"figginsanchr\"  ><i class=\"fa fa-facebook \"></i></a>\r\n<a href=\"tel:+18019280519\" target=\"_blank\"   class=\"pixel-phone\"><i class=\"fa fa-phone \"></i></a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:75:\"  <p>2021 All Rights Reserved. <a href=\"\">Figgins Heating and Air  </a></p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:35:\"monsterinsights_lite_uninstall_hook\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1635706883', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"footer_addr_phn\";a:1:{i:0;s:6:\"text-2\";}s:13:\"footer_social\";a:1:{i:0;s:6:\"text-3\";}s:14:\"copyright_text\";a:1:{i:0;s:6:\"text-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1625335295;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625338893;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625338895;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625338931;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625338936;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625343887;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625684494;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1625751619;a:1:{s:35:\"monsterinsights_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1620155642;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, 'current_theme', 'Figgins Theme', 'yes'),
(149, 'theme_mods_figgins', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"footer-menu\";i:2;s:11:\"header-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(161, 'recently_activated', 'a:2:{s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";i:1621422645;s:35:\"wp-fastest-cache/wpFastestCache.php\";i:1621374758;}', 'yes'),
(167, 'cptui_new_install', 'false', 'yes'),
(168, 'cptui_post_types', 'a:3:{s:8:\"services\";a:30:{s:4:\"name\";s:8:\"services\";s:5:\"label\";s:8:\"Services\";s:14:\"singular_label\";s:7:\"Service\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:9:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";i:4;s:13:\"custom-fields\";i:5;s:9:\"revisions\";i:6;s:6:\"author\";i:7;s:15:\"page-attributes\";i:8;s:12:\"post-formats\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:4:\"faqs\";a:30:{s:4:\"name\";s:4:\"faqs\";s:5:\"label\";s:4:\"FAQS\";s:14:\"singular_label\";s:3:\"FAQ\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:11:\"why_figgins\";a:30:{s:4:\"name\";s:11:\"why_figgins\";s:5:\"label\";s:11:\"Why Figgins\";s:14:\"singular_label\";s:10:\"Why Figgin\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(182, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1620196948;s:7:\"version\";s:5:\"5.4.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(189, 'secret_key', 'b*Ct*`9qF-B]e67j8cZ]9E:Q*2]cVuX&D.rZ4m]{ Q1@#? Gklb9mGy]P)IlF<Mx', 'no'),
(205, 'acf_version', '5.9.5', 'yes'),
(238, 'ai1wmte_plugin_key', '1', 'yes'),
(242, 'swift_performance_plugin_organizer', 'a:0:{}', 'yes'),
(243, 'jetpack_active_modules', 'a:0:{}', 'yes'),
(251, 'ai1wm_updater', 'a:1:{s:38:\"all-in-one-wp-migration-file-extension\";a:13:{s:4:\"name\";s:14:\"File Extension\";s:4:\"slug\";s:14:\"file-extension\";s:8:\"homepage\";s:31:\"https://import.wp-migration.com\";s:13:\"download_link\";s:74:\"https://import.wp-migration.com/all-in-one-wp-migration-file-extension.zip\";s:7:\"version\";s:3:\"1.8\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:60:\"<ul class=\"description\"><li>Import from file</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:71:\"https://import.wp-migration.com/img/products/file-extension-772x250.png\";s:4:\"high\";s:72:\"https://import.wp-migration.com/img/products/file-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-128x128.png\";s:2:\"2x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";s:7:\"default\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}', 'yes'),
(277, 'fm_key', 'qinLd1A3J2rkME07Uch9VK6f4', 'yes'),
(278, 'fbv_is_new_user', '1', 'yes'),
(279, 'fbv_first_time_active', '1', 'yes'),
(280, 'fbv_review', '1620559736', 'yes'),
(281, 'fbv_version', '4.7.2', 'yes'),
(285, 'filemanager_email_verified_1', 'yes', 'yes'),
(309, 'category_children', 'a:1:{i:8;a:2:{i:0;i:3;i:1;i:4;}}', 'yes'),
(341, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:6:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";s:8:\"services\";s:4:\"show\";s:14:\"selling_points\";s:4:\"show\";s:4:\"faqs\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(342, 'CPT_configured', 'TRUE', 'yes'),
(349, 'mk_fm_close_fm_help_c_fm', 'done', 'yes'),
(380, 'active_plugins', 'a:11:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:81:\"all-in-one-wp-migration-file-extension/all-in-one-wp-migration-file-extension.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:7;s:50:\"google-analytics-for-wordpress/googleanalytics.php\";i:8;s:24:\"header-footer/plugin.php\";i:9;s:37:\"post-types-order/post-types-order.php\";i:10;s:33:\"w3-total-cache/w3-total-cache.php\";i:11;s:39:\"wp-file-manager/file_folder_manager.php\";}', 'yes'),
(381, 'ai1wm_secret_key', '8ocEKIUVkI0u', 'yes'),
(382, 'ai1wm_backups_labels', 'a:0:{}', 'yes'),
(383, 'ai1wm_sites_links', 'a:0:{}', 'yes'),
(384, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:333:\"<a href=\"https://figginscanfixit.com/wp-content/ai1wm-backups/figginscanfixit.com-20210512-134632-kgdh4l.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"figginscanfixit.com\" download=\"figginscanfixit.com-20210512-134632-kgdh4l.wpress\"><span>Download figginscanfixit.com</span><em>Size: 122 MB</em></a>\";}', 'yes'),
(385, 'template', 'figgins', 'yes'),
(386, 'stylesheet', 'figgins', 'yes'),
(392, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625296271;s:7:\"checked\";a:5:{s:7:\"figgins\";s:3:\"1.0\";s:2:\"go\";s:5:\"1.4.4\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:2:\"go\";a:6:{s:5:\"theme\";s:2:\"go\";s:11:\"new_version\";s:5:\"1.4.4\";s:3:\"url\";s:32:\"https://wordpress.org/themes/go/\";s:7:\"package\";s:50:\"https://downloads.wordpress.org/theme/go.1.4.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(401, 'rlrsssl_options', 'a:15:{s:12:\"site_has_ssl\";b:1;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:19:\"review_notice_shown\";b:0;s:25:\"ssl_success_message_shown\";b:0;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:6:\"4.0.14\";s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:1;s:19:\"javascript_redirect\";b:0;s:11:\"wp_redirect\";b:1;s:31:\"switch_mixed_content_fixer_hook\";b:0;s:19:\"dismiss_all_notices\";b:0;s:21:\"dismiss_review_notice\";b:0;}', 'yes'),
(402, 'rsssl_remaining_tasks', '1', 'yes'),
(411, 'rsssl_current_version', '4.0.14', 'yes'),
(414, 'rsssl_activation_timestamp', '1620465442', 'yes'),
(471, '_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}', 'yes'),
(472, '_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}', 'yes'),
(629, 'hefo', 'a:17:{s:5:\"after\";s:0:\"\";s:6:\"before\";s:0:\"\";s:4:\"head\";s:0:\"\";s:4:\"body\";s:0:\"\";s:9:\"head_home\";s:0:\"\";s:6:\"footer\";s:0:\"\";s:9:\"snippet_1\";s:0:\"\";s:9:\"generic_1\";s:0:\"\";s:9:\"snippet_2\";s:0:\"\";s:9:\"generic_2\";s:0:\"\";s:9:\"snippet_3\";s:0:\"\";s:9:\"generic_3\";s:0:\"\";s:9:\"snippet_4\";s:0:\"\";s:9:\"generic_4\";s:0:\"\";s:9:\"snippet_5\";s:0:\"\";s:9:\"generic_5\";s:0:\"\";s:7:\"updated\";i:1620812542;}', 'yes'),
(658, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(703, 'WPLANG', 'en', 'yes'),
(709, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:2:\"en\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625296270;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(727, 'widget_monsterinsights-popular-posts-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(728, 'monsterinsights_usage_tracking_config', 'a:6:{s:3:\"day\";i:4;s:4:\"hour\";i:13;s:6:\"minute\";i:40;s:6:\"second\";i:19;s:6:\"offset\";i:394819;s:8:\"initsend\";i:1621518019;}', 'yes'),
(729, 'monsterinsights_over_time', 'a:4:{s:17:\"installed_version\";s:6:\"7.17.0\";s:14:\"installed_date\";i:1620984640;s:13:\"installed_pro\";b:0;s:14:\"connected_date\";i:1620986853;}', 'yes'),
(730, 'monsterinsights_db_version', '7.4.0', 'yes'),
(731, 'monsterinsights_current_version', '7.17.0', 'yes'),
(732, 'monsterinsights_settings', 'a:42:{s:22:\"enable_affiliate_links\";b:1;s:15:\"affiliate_links\";a:2:{i:0;a:2:{s:4:\"path\";s:4:\"/go/\";s:5:\"label\";s:9:\"affiliate\";}i:1;a:2:{s:4:\"path\";s:11:\"/recommend/\";s:5:\"label\";s:9:\"affiliate\";}}s:12:\"demographics\";i:1;s:12:\"ignore_users\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}s:19:\"dashboards_disabled\";i:0;s:13:\"anonymize_ips\";i:0;s:19:\"extensions_of_files\";s:34:\"doc,pdf,ppt,zip,xls,docx,pptx,xlsx\";s:18:\"subdomain_tracking\";s:0:\"\";s:16:\"link_attribution\";b:1;s:16:\"tag_links_in_rss\";b:1;s:12:\"allow_anchor\";i:0;s:16:\"add_allow_linker\";i:0;s:11:\"custom_code\";s:0:\"\";s:13:\"save_settings\";a:1:{i:0;s:13:\"administrator\";}s:12:\"view_reports\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}s:11:\"events_mode\";s:2:\"js\";s:13:\"tracking_mode\";s:4:\"gtag\";s:30:\"gtagtracker_compatibility_mode\";b:1;s:15:\"email_summaries\";s:2:\"on\";s:23:\"summaries_html_template\";s:3:\"yes\";s:25:\"summaries_email_addresses\";a:1:{i:0;a:1:{s:5:\"email\";s:16:\"info@figgins.com\";}}s:17:\"automatic_updates\";s:4:\"none\";s:26:\"popular_posts_inline_theme\";s:5:\"alpha\";s:26:\"popular_posts_widget_theme\";s:5:\"alpha\";s:28:\"popular_posts_products_theme\";s:5:\"alpha\";s:30:\"popular_posts_inline_placement\";s:6:\"manual\";s:34:\"popular_posts_widget_theme_columns\";s:1:\"2\";s:36:\"popular_posts_products_theme_columns\";s:1:\"2\";s:26:\"popular_posts_widget_count\";s:1:\"4\";s:28:\"popular_posts_products_count\";s:1:\"4\";s:38:\"popular_posts_widget_theme_meta_author\";s:2:\"on\";s:36:\"popular_posts_widget_theme_meta_date\";s:2:\"on\";s:40:\"popular_posts_widget_theme_meta_comments\";s:2:\"on\";s:39:\"popular_posts_products_theme_meta_price\";s:2:\"on\";s:40:\"popular_posts_products_theme_meta_rating\";s:2:\"on\";s:39:\"popular_posts_products_theme_meta_image\";s:2:\"on\";s:32:\"popular_posts_inline_after_count\";s:3:\"150\";s:36:\"popular_posts_inline_multiple_number\";s:1:\"3\";s:38:\"popular_posts_inline_multiple_distance\";s:3:\"250\";s:39:\"popular_posts_inline_multiple_min_words\";s:3:\"100\";s:31:\"popular_posts_inline_post_types\";a:1:{i:0;s:4:\"post\";}s:31:\"popular_posts_widget_post_types\";a:1:{i:0;s:4:\"post\";}}', 'yes'),
(734, 'monsterinsights_notifications', 'a:4:{s:6:\"update\";i:1621497112;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(735, 'monsterinsights_review', 'a:2:{s:4:\"time\";i:1620984641;s:9:\"dismissed\";b:0;}', 'yes'),
(736, 'monsterinsights_notifications_run', 'a:14:{s:37:\"monsterinsights_notification_visitors\";i:1620984649;s:37:\"monsterinsights_notification_audience\";i:1620984649;s:42:\"monsterinsights_notification_mobile_device\";i:1620984649;s:43:\"monsterinsights_notification_upgrade_to_pro\";i:1620984649;s:40:\"monsterinsights_notification_bounce_rate\";i:1620984649;s:47:\"monsterinsights_notification_returning_visitors\";i:1620984649;s:45:\"monsterinsights_notification_traffic_dropping\";i:1620984649;s:62:\"monsterinsights_notification_upgrade_for_search_console_report\";i:1620984649;s:56:\"monsterinsights_notification_upgrade_for_form_conversion\";i:1620984649;s:56:\"monsterinsights_notification_upgrade_for_email_summaries\";i:1620984649;s:56:\"monsterinsights_notification_upgrade_for_google_optimize\";i:1620984649;s:56:\"monsterinsights_notification_to_add_more_file_extensions\";i:1620984649;s:53:\"monsterinsights_notification_to_setup_affiliate_links\";i:1620984649;s:46:\"monsterinsights_notification_headline_analyzer\";i:1620984649;}', 'yes'),
(739, 'monsterinsights_site_tt', '214c036864f687905781cb728af98aab11c80186ddc6a61f880e126e37c9569e2673ee7429532af36d0f341bfde6cfcb16d49d4d9f23e22b4af2884357fe9b17', 'yes'),
(743, 'monsterinsights_site_profile', 'a:9:{s:3:\"key\";s:128:\"26c1b492f362ecf0486fc3f5794e150b5041bb4aafef6f350dc73e8476577438fc85566df5379d9137f0868e83891ae10cee4b705a31db3fce67a7563c814765\";s:5:\"token\";s:128:\"f8f60f45175eddffebcd89a11bb6b6564bc99782e740a3fb512a4b1b01aa9f5e27105a72059f4016d2967754ec1f89c06e4999dcfffe4d94337258251df9147e\";s:2:\"ua\";s:14:\"UA-196960950-1\";s:8:\"viewname\";s:14:\"UA-196960950-1\";s:1:\"a\";s:9:\"196960950\";s:1:\"w\";s:9:\"272375732\";s:1:\"p\";s:9:\"242983009\";s:7:\"siteurl\";s:27:\"https://figginscanfixit.com\";s:6:\"neturl\";s:37:\"https://figginscanfixit.com/wp-admin/\";}', 'yes'),
(874, 'w3tc_state', '{\"common.install\":1621375261,\"common.install_version\":\"2.1.2\",\"license.status\":\"no_key\",\"license.next_check\":1624613031,\"license.terms\":\"\"}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(904, 'monsterinsights_report_data_overview', 'a:3:{s:7:\"expires\";i:1621500714;s:1:\"p\";s:9:\"242983009\";s:4:\"data\";a:5:{s:13:\"overviewgraph\";a:7:{s:5:\"count\";i:30;s:5:\"start\";i:1618876800;s:3:\"end\";i:1621382400;s:8:\"sessions\";a:4:{s:3:\"min\";i:0;s:3:\"max\";i:0;s:10:\"datapoints\";a:30:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;}s:11:\"trendpoints\";a:30:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;}}s:9:\"pageviews\";a:4:{s:10:\"datapoints\";a:30:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;}s:3:\"min\";i:0;s:3:\"max\";i:0;s:11:\"trendpoints\";a:30:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;}}s:6:\"labels\";a:30:{i:0;s:6:\"20 Apr\";i:1;s:6:\"21 Apr\";i:2;s:6:\"22 Apr\";i:3;s:6:\"23 Apr\";i:4;s:6:\"24 Apr\";i:5;s:6:\"25 Apr\";i:6;s:6:\"26 Apr\";i:7;s:6:\"27 Apr\";i:8;s:6:\"28 Apr\";i:9;s:6:\"29 Apr\";i:10;s:6:\"30 Apr\";i:11;s:5:\"1 May\";i:12;s:5:\"2 May\";i:13;s:5:\"3 May\";i:14;s:5:\"4 May\";i:15;s:5:\"5 May\";i:16;s:5:\"6 May\";i:17;s:5:\"7 May\";i:18;s:5:\"8 May\";i:19;s:5:\"9 May\";i:20;s:6:\"10 May\";i:21;s:6:\"11 May\";i:22;s:6:\"12 May\";i:23;s:6:\"13 May\";i:24;s:6:\"14 May\";i:25;s:6:\"15 May\";i:26;s:6:\"16 May\";i:27;s:6:\"17 May\";i:28;s:6:\"18 May\";i:29;s:6:\"19 May\";}s:10:\"timestamps\";a:30:{i:0;i:1618876800;i:1;i:1618963200;i:2;i:1619049600;i:3;i:1619136000;i:4;i:1619222400;i:5;i:1619308800;i:6;i:1619395200;i:7;i:1619481600;i:8;i:1619568000;i:9;i:1619654400;i:10;i:1619740800;i:11;i:1619827200;i:12;i:1619913600;i:13;i:1620000000;i:14;i:1620086400;i:15;i:1620172800;i:16;i:1620259200;i:17;i:1620345600;i:18;i:1620432000;i:19;i:1620518400;i:20;i:1620604800;i:21;i:1620691200;i:22;i:1620777600;i:23;i:1620864000;i:24;i:1620950400;i:25;i:1621036800;i:26;i:1621123200;i:27;i:1621209600;i:28;i:1621296000;i:29;i:1621382400;}}s:7:\"infobox\";a:7:{s:5:\"range\";i:30;s:7:\"current\";a:2:{s:7:\"endDate\";s:10:\"2021-05-19\";s:9:\"startDate\";s:10:\"2021-04-20\";}s:8:\"previous\";a:2:{s:7:\"endDate\";s:10:\"2021-04-19\";s:9:\"startDate\";s:10:\"2021-03-21\";}s:8:\"sessions\";a:2:{s:5:\"value\";i:0;s:4:\"prev\";i:0;}s:9:\"pageviews\";a:2:{s:5:\"value\";i:0;s:4:\"prev\";i:0;}s:6:\"bounce\";a:2:{s:5:\"value\";i:0;s:4:\"prev\";i:0;}s:8:\"duration\";a:2:{s:5:\"value\";s:0:\"\";s:4:\"prev\";i:0;}}s:11:\"newvsreturn\";a:2:{s:3:\"new\";i:0;s:9:\"returning\";i:100;}s:18:\"reportcurrentrange\";a:2:{s:7:\"endDate\";s:10:\"2021-05-19\";s:9:\"startDate\";s:10:\"2021-04-20\";}s:15:\"reportprevrange\";a:2:{s:7:\"endDate\";s:10:\"2021-04-19\";s:9:\"startDate\";s:10:\"2021-03-21\";}}}', 'yes'),
(910, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625317046;s:7:\"checked\";a:19:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.42\";s:81:\"all-in-one-wp-migration-file-extension/all-in-one-wp-migration-file-extension.php\";s:3:\"1.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:27:\"coblocks/class-coblocks.php\";s:6:\"2.11.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.1\";s:25:\"duplicator/duplicator.php\";s:5:\"1.4.0\";s:50:\"official-facebook-pixel/facebook-for-wordpress.php\";s:5:\"3.0.5\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:6:\"7.17.0\";s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";s:4:\"1.13\";s:24:\"header-footer/plugin.php\";s:5:\"3.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:6:\"2.21.0\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.5.6\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:6:\"4.0.14\";s:33:\"w3-total-cache/w3-total-cache.php\";s:5:\"2.1.2\";s:39:\"wp-file-manager/file_folder_manager.php\";s:5:\"7.1.1\";}s:8:\"response\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.44\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.44.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.jpg?rev=2538919\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2538919\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"coblocks/class-coblocks.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/coblocks\";s:4:\"slug\";s:8:\"coblocks\";s:6:\"plugin\";s:27:\"coblocks/class-coblocks.php\";s:11:\"new_version\";s:6:\"2.12.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/coblocks/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/coblocks.2.12.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/coblocks/assets/icon-256x256.jpg?rev=2243972\";s:2:\"1x\";s:61:\"https://ps.w.org/coblocks/assets/icon-128x128.jpg?rev=2243972\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/coblocks/assets/banner-1544x500.jpg?rev=2243972\";s:2:\"1x\";s:63:\"https://ps.w.org/coblocks/assets/banner-772x250.jpg?rev=2243972\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/duplicator.1.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:5:\"5.3.8\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:45:\"w.org/plugins/duracelltomi-google-tag-manager\";s:4:\"slug\";s:31:\"duracelltomi-google-tag-manager\";s:6:\"plugin\";s:81:\"duracelltomi-google-tag-manager/duracelltomi-google-tag-manager-for-wordpress.php\";s:11:\"new_version\";s:6:\"1.13.1\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/duracelltomi-google-tag-manager/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/duracelltomi-google-tag-manager.1.13.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/icon-256x256.png?rev=1708451\";s:2:\"1x\";s:84:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/icon-128x128.png?rev=1708451\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/banner-1544x500.png?rev=1708451\";s:2:\"1x\";s:86:\"https://ps.w.org/duracelltomi-google-tag-manager/assets/banner-772x250.png?rev=1708451\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:21:\"<p>Bugfix release</p>\";s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:43:\"w.org/plugins/limit-login-attempts-reloaded\";s:4:\"slug\";s:29:\"limit-login-attempts-reloaded\";s:6:\"plugin\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:11:\"new_version\";s:6:\"2.22.1\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/limit-login-attempts-reloaded/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/limit-login-attempts-reloaded.2.22.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-256x256.png?rev=2456910\";s:2:\"1x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-128x128.png?rev=2456910\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-1544x500.png?rev=2456910\";s:2:\"1x\";s:84:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-772x250.png?rev=2456910\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:6:\"4.0.15\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/really-simple-ssl.4.0.15.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2320223\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.png?rev=2320228\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/w3-total-cache\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:5:\"2.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/w3-total-cache.2.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806\";s:2:\"1x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:50:\"official-facebook-pixel/facebook-for-wordpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/official-facebook-pixel\";s:4:\"slug\";s:23:\"official-facebook-pixel\";s:6:\"plugin\";s:50:\"official-facebook-pixel/facebook-for-wordpress.php\";s:11:\"new_version\";s:5:\"3.0.5\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/official-facebook-pixel/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/official-facebook-pixel.3.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/official-facebook-pixel/assets/icon.svg?rev=2452179\";s:3:\"svg\";s:68:\"https://ps.w.org/official-facebook-pixel/assets/icon.svg?rev=2452179\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:50:\"google-analytics-for-wordpress/googleanalytics.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:44:\"w.org/plugins/google-analytics-for-wordpress\";s:4:\"slug\";s:30:\"google-analytics-for-wordpress\";s:6:\"plugin\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:11:\"new_version\";s:6:\"7.17.0\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/google-analytics-for-wordpress/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/google-analytics-for-wordpress.7.17.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:83:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon-256x256.png?rev=1598927\";s:2:\"1x\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";s:3:\"svg\";s:75:\"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-1544x500.png?rev=2159532\";s:2:\"1x\";s:85:\"https://ps.w.org/google-analytics-for-wordpress/assets/banner-772x250.png?rev=2159532\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"header-footer/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/header-footer\";s:4:\"slug\";s:13:\"header-footer\";s:6:\"plugin\";s:24:\"header-footer/plugin.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/header-footer/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/header-footer.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/header-footer/assets/icon-256x256.png?rev=1064219\";s:2:\"1x\";s:66:\"https://ps.w.org/header-footer/assets/icon-256x256.png?rev=1064219\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/header-footer/assets/banner-772x250.png?rev=1064202\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.5.6\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.5.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"wp-file-manager/file_folder_manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wp-file-manager\";s:4:\"slug\";s:15:\"wp-file-manager\";s:6:\"plugin\";s:39:\"wp-file-manager/file_folder_manager.php\";s:11:\"new_version\";s:5:\"7.1.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-file-manager/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-file-manager.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-file-manager/assets/icon-128x128.png?rev=2491299\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-file-manager/assets/banner-772x250.jpg?rev=2491299\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(915, 'w3tc_extensions_hooks', '{\"actions\":[],\"filters\":[],\"next_check_date\":1624523918}', 'yes'),
(1978, '_site_transient_timeout_php_check_8c0181da100b1c7d1f637c18117d0149', '1625685117', 'no'),
(1979, '_site_transient_php_check_8c0181da100b1c7d1f637c18117d0149', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2049, '_site_transient_timeout_theme_roots', '1625318846', 'no'),
(2050, '_site_transient_theme_roots', 'a:5:{s:7:\"figgins\";s:7:\"/themes\";s:2:\"go\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1620513588:1'),
(4, 7, '_edit_lock', '1620205422:1'),
(5, 8, '_edit_lock', '1620429827:1'),
(6, 9, '_edit_lock', '1620838855:1'),
(8, 14, '_menu_item_type', 'post_type'),
(9, 14, '_menu_item_menu_item_parent', '0'),
(10, 14, '_menu_item_object_id', '5'),
(11, 14, '_menu_item_object', 'page'),
(12, 14, '_menu_item_target', ''),
(13, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 14, '_menu_item_xfn', ''),
(15, 14, '_menu_item_url', ''),
(17, 15, '_menu_item_type', 'post_type'),
(18, 15, '_menu_item_menu_item_parent', '0'),
(19, 15, '_menu_item_object_id', '7'),
(20, 15, '_menu_item_object', 'page'),
(21, 15, '_menu_item_target', ''),
(22, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 15, '_menu_item_xfn', ''),
(24, 15, '_menu_item_url', ''),
(26, 16, '_menu_item_type', 'post_type'),
(27, 16, '_menu_item_menu_item_parent', '0'),
(28, 16, '_menu_item_object_id', '9'),
(29, 16, '_menu_item_object', 'page'),
(30, 16, '_menu_item_target', ''),
(31, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 16, '_menu_item_xfn', ''),
(33, 16, '_menu_item_url', ''),
(35, 17, '_menu_item_type', 'post_type'),
(36, 17, '_menu_item_menu_item_parent', '0'),
(37, 17, '_menu_item_object_id', '8'),
(38, 17, '_menu_item_object', 'page'),
(39, 17, '_menu_item_target', ''),
(40, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 17, '_menu_item_xfn', ''),
(42, 17, '_menu_item_url', ''),
(53, 5, '_edit_last', '1'),
(54, 5, 'home_header_notice', ' <h4>\r\n              We are Committed to Your Comfort and Safety. \r\n\r\n              </h4> \r\n              <p>\r\n                If you have any questions about safety measures, we\'re happy to discuss before your appointment. <br> <a href=\"#\" class=\"donate-btn\">Schedule here.</a>\r\n              </p>  '),
(56, 20, '_edit_last', '1'),
(57, 20, '_edit_lock', '1620431287:1'),
(58, 21, '_wp_attached_file', '2021/05/service-1.jpg'),
(59, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:353;s:4:\"file\";s:21:\"2021/05/service-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"service-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"service-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 20, '_thumbnail_id', '113'),
(61, 22, '_edit_last', '1'),
(62, 22, '_edit_lock', '1620431324:1'),
(63, 22, '_thumbnail_id', '116'),
(64, 23, '_edit_last', '1'),
(65, 23, '_edit_lock', '1620431352:1'),
(66, 23, '_thumbnail_id', '115'),
(67, 24, '_edit_last', '1'),
(68, 24, '_edit_lock', '1620431377:1'),
(69, 24, '_thumbnail_id', '118'),
(70, 25, '_edit_last', '1'),
(71, 25, '_edit_lock', '1620431411:1'),
(72, 25, '_thumbnail_id', '119'),
(73, 26, '_edit_last', '1'),
(74, 26, '_edit_lock', '1620431440:1'),
(75, 26, '_thumbnail_id', '123'),
(76, 27, '_edit_last', '1'),
(77, 27, '_thumbnail_id', '121'),
(78, 27, '_edit_lock', '1620431506:1'),
(79, 28, '_edit_last', '1'),
(80, 28, '_edit_lock', '1620431465:1'),
(81, 28, '_thumbnail_id', '122'),
(84, 30, '_edit_last', '1'),
(85, 30, '_edit_lock', '1620388893:1'),
(86, 31, '_edit_last', '1'),
(87, 31, '_edit_lock', '1620388717:1'),
(89, 30, '_thumbnail_id', '21'),
(90, 31, '_thumbnail_id', '21'),
(91, 32, '_edit_last', '1'),
(92, 32, '_edit_lock', '1620210105:1'),
(93, 32, '_thumbnail_id', '21'),
(94, 33, '_edit_last', '1'),
(95, 33, '_edit_lock', '1620431584:1'),
(96, 33, '_thumbnail_id', '21'),
(97, 34, '_edit_last', '1'),
(98, 34, '_edit_lock', '1620335342:1'),
(99, 35, '_edit_last', '1'),
(100, 35, '_edit_lock', '1620820969:1'),
(101, 36, '_edit_last', '1'),
(102, 36, '_edit_lock', '1620820540:1'),
(103, 37, '_edit_last', '1'),
(104, 37, '_edit_lock', '1620820541:1'),
(105, 38, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(106, 38, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:32:\"[_site_title] <info@figgins.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(107, 38, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:32:\"[_site_title] <info@figgins.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(108, 38, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(109, 38, '_additional_settings', NULL),
(110, 38, '_locale', 'en_US'),
(111, 39, '_form', '<div class=\"form-row\">\n                        <div class=\"form-group col-md-6\">\n                           <label for=\"fname\" class=\"p-0 m-0\"> First Name</label>\n                    [text* fname id:homeFName class:form-control]\n                        </div>\n                        <div class=\"form-group col-md-6\">\n                           <label for=\"lname\" class=\"p-0 m-0\"> Last Name</label>\n              [text lname id:homeLName class:form-control]\n\n                         </div>\n              </div>\n\n\n <div class=\"form-row\">\n                 <div class=\"form-group col-md-6\">\n                    <label for=\"phone\" class=\"p-0 m-0\">Phone</label>\n                 [text phone id:homePhone class:form-control] \n                 </div>\n                 <div class=\"form-group col-md-6\">\n                    <label for=\"email\" class=\"p-0 m-0\">Email</label>\n                 [email* email-865 id:homeEmail class:form-control]\n                 </div>\n              </div>\n\n<div class=\"form-row\">\n                 <div class=\"form-group col-md-4\">\n                    <label for=\"inputService\" class=\"p-0 m-0\">Select Service</label>\n                    [select* menu-services-contact id:inputService class:form-control \"Choose Service\" \"A/C tune up\" \"A/C repair\" \"A/C installation\" \"Furnace tune ups\" \"Furnace repair\" \"Furnace installation\" \"Humidification\" \"Air purifiers\" \"Air cleaners\" \"Thermostats\" \"Filtration\" \"Heat Pumps\" \"Ductless Systems\"]\n                 </div>\n <div class=\"form-group col-md-4\">\n <label for=\"preDate\" class=\"p-0 m-0\">Preferred Day of Service</label>\n[text preDateinput id:prefDate class:form-control]  \n </div>\n<div class=\"form-group col-md-4\">\n                    <label for=\"preTimeinput\" class=\"p-0 m-0\">Preferred Time of Service</label>\n                   [text preTimeinput id:prefTime class:form-control]\n </div>\n\n</div>\n\n\n  <div class=\"form-group\">\n                 <label for=\"help\" class=\"p-0 m-0\">What Can We Help You With?</label>\n   [textarea* textarea-425 id:homeHelp class:form-control rows:5] \n              </div>\n              <button type=\"submit\" class=\"btn form-submit-btn mt-lg-4\">Schedule Free Estimate</button>'),
(112, 39, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"Free Estimates\"\";s:6:\"sender\";s:40:\"[_site_title] <info@figginscanfixit.com>\";s:9:\"recipient\";s:25:\"figginscanfixit@gmail.com\";s:4:\"body\";s:414:\"From: [fname] <[email-865]>\nSubject: \"Free Estimate Email\"\n\nMessage Body:\n<b> Dear Admin </b>,<br>\nYou have received a new message from [email-865].<br>\n[textarea-425]\n\nDetails of Estimate are:<br>\n<b>Name</b>: [fname] [lname] <br>\n<b>Email</b>: [email-865]<br>\n<b>Phone</b>: [phone]<br>\n<b>Service:</b> [menu-services-contact]<br>\n<b>Date:</b> [preDateinput]\n<b>Time:</b> [preTimeinput]\n\n\n-- \nThanks,\nTeam Figgins\";s:18:\"additional_headers\";s:21:\"Reply-To: [email-865]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(113, 39, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:32:\"[_site_title] <info@figgins.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(114, 39, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(115, 39, '_additional_settings', ''),
(116, 39, '_locale', 'en_US'),
(122, 7, 'about_figgin_difference_block_content', '<h2 class=\"section-title\"> The Figgins Difference</h2>\r\n      	      <p>\r\n      	         Todd Figgins, owner of Figgins Heating and Air, has 35 years of personal experience in HVAC service. He takes sincere pride in his craftsmanship and is uniquely talented at maintenance and repair of home comfort systems. We keep prices fair while giving you excellent service. \r\n      	      </p>'),
(123, 7, 'about_figgin_difference_block_content', '<h2 class=\"section-title\"> The Figgins Difference</h2>\r\n      	      <p>\r\n      	         Todd Figgins, owner of Figgins Heating and Air, has 35 years of personal experience in HVAC service. He takes sincere pride in his craftsmanship and is uniquely talented at maintenance and repair of home comfort systems. We keep prices fair while giving you excellent service. \r\n      	      </p>'),
(124, 7, '_edit_last', '1'),
(133, 8, '_edit_last', '1'),
(134, 9, '_edit_last', '1'),
(135, 9, 'contact_page_intro_block_content', ''),
(139, 64, '_edit_last', '1'),
(140, 64, '_edit_lock', '1620216307:1'),
(141, 20, 'table_content', '<div class=\"col-md-6 p-0 left-portion\">\r\n<ul>\r\n 	<li class=\"table-hd table-li\">Indoor Unit</li>\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6 p-0\">\r\n<ul>\r\n 	<li class=\"table-hd table-li\">Outdoor Unit</li>\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>'),
(142, 20, '_table_content', 'field_60927a50aff09'),
(143, 66, 'table_content', '<div class=\"col-md-6 p-0 left-portion\">\r\n<ul>\r\n 	<li class=\"table-hd table-li\">Indoor Unit</li>\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6 p-0\">\r\n<ul>\r\n 	<li class=\"table-hd table-li\">Outdoor Unit</li>\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>'),
(144, 66, '_table_content', 'field_60927a50aff09'),
(145, 24, 'table_content', '&nbsp;\r\n<div class=\"col-md-6 p-0 left-portion\">\r\n<ul class=\"heating-services-ul\"><!--\r\n 	<li class=\"table-hd table-li\">Indoor Unit</li>\r\n-->\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6 p-0\">\r\n<ul class=\"heating-services-ul\"><!--\r\n 	<li class=\"table-hd table-li\">Outdoor Unit</li>\r\n-->\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>'),
(146, 24, '_table_content', 'field_60927a50aff09'),
(147, 67, 'table_content', '   <div class=\"col-md-6 p-0 left-portion\">\r\n                              <ul class=\"heating-services-ul\">\r\n                                 <!-- <li class=\"table-hd table-li\">Indoor Unit</li> -->\r\n                                 <li class=\"table-li\">Check thermostat for proper function</li>\r\n                                 <li class=\"table-li\">Check voltage: primary and secondary</li>\r\n                                 <li class=\"table-li\">Check for condensation damage</li>\r\n                                 <li class=\"table-li\">Check capacitor for factory spec</li>\r\n                                 <li class=\"table-li\">Test amp draw on blower</li>\r\n                                 <li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n                                 <li class=\"table-li\">Check blower wheel and motor</li>\r\n                                 <li class=\"table-li\">Inspect filter system and efficiency</li>\r\n                                 <li class=\"table-li\">Check pressure drop across coil</li>\r\n                              </ul>\r\n                           </div>\r\n                           <div class=\"col-md-6 p-0\">\r\n                              <ul class=\"heating-services-ul\">\r\n                                 <!-- <li class=\"table-hd table-li\">Outdoor Unit</li> -->\r\n                                 <li class=\"table-li\">Check thermostat for proper function</li>\r\n                                 <li class=\"table-li\">Check voltage: primary and secondary</li>\r\n                                 <li class=\"table-li\">Check for condensation damage</li>\r\n                                 <li class=\"table-li\">Check capacitor for factory spec</li>\r\n                                 <li class=\"table-li\">Test amp draw on blower</li>\r\n                                 <li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n                                 <li class=\"table-li\">Check blower wheel and motor</li>\r\n                                 <li class=\"table-li\">Inspect filter system and efficiency</li>\r\n                                 <li class=\"table-li\">Check pressure drop across coil</li>\r\n                              </ul>\r\n                           </div>'),
(148, 67, '_table_content', 'field_60927a50aff09'),
(149, 68, '_menu_item_type', 'post_type_archive'),
(150, 68, '_menu_item_menu_item_parent', '0'),
(151, 68, '_menu_item_object_id', '-25'),
(152, 68, '_menu_item_object', 'services'),
(153, 68, '_menu_item_target', ''),
(154, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 68, '_menu_item_xfn', ''),
(156, 68, '_menu_item_url', ''),
(158, 14, '_wp_old_date', '2021-05-04'),
(159, 15, '_wp_old_date', '2021-05-04'),
(160, 17, '_wp_old_date', '2021-05-04'),
(161, 16, '_wp_old_date', '2021-05-04'),
(162, 69, '_edit_last', '1'),
(163, 69, '_edit_lock', '1620491959:1'),
(164, 69, '_wp_page_template', 'air-quality-services.php'),
(165, 71, '_edit_last', '1'),
(166, 71, '_edit_lock', '1620429346:1'),
(167, 71, '_wp_page_template', 'air-quality-services.php'),
(213, 78, '_menu_item_type', 'taxonomy'),
(214, 78, '_menu_item_menu_item_parent', '0'),
(215, 78, '_menu_item_object_id', '5'),
(216, 78, '_menu_item_object', 'category'),
(217, 78, '_menu_item_target', ''),
(218, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 78, '_menu_item_xfn', ''),
(220, 78, '_menu_item_url', ''),
(221, 78, '_menu_item_orphaned', '1620233331'),
(222, 79, '_menu_item_type', 'taxonomy'),
(223, 79, '_menu_item_menu_item_parent', '0'),
(224, 79, '_menu_item_object_id', '3'),
(225, 79, '_menu_item_object', 'category'),
(226, 79, '_menu_item_target', ''),
(227, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 79, '_menu_item_xfn', ''),
(229, 79, '_menu_item_url', ''),
(230, 79, '_menu_item_orphaned', '1620233332'),
(231, 80, '_menu_item_type', 'taxonomy'),
(232, 80, '_menu_item_menu_item_parent', '0'),
(233, 80, '_menu_item_object_id', '4'),
(234, 80, '_menu_item_object', 'category'),
(235, 80, '_menu_item_target', ''),
(236, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 80, '_menu_item_xfn', ''),
(238, 80, '_menu_item_url', ''),
(239, 80, '_menu_item_orphaned', '1620233333'),
(240, 81, '_menu_item_type', 'taxonomy'),
(241, 81, '_menu_item_menu_item_parent', '0'),
(242, 81, '_menu_item_object_id', '6'),
(243, 81, '_menu_item_object', 'category'),
(244, 81, '_menu_item_target', ''),
(245, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 81, '_menu_item_xfn', ''),
(247, 81, '_menu_item_url', ''),
(248, 81, '_menu_item_orphaned', '1620233333'),
(276, 85, '_menu_item_type', 'post_type'),
(277, 85, '_menu_item_menu_item_parent', '0'),
(278, 85, '_menu_item_object_id', '26'),
(279, 85, '_menu_item_object', 'services'),
(280, 85, '_menu_item_target', ''),
(281, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 85, '_menu_item_xfn', ''),
(283, 85, '_menu_item_url', ''),
(284, 85, '_menu_item_orphaned', '1620233571'),
(285, 86, '_menu_item_type', 'post_type'),
(286, 86, '_menu_item_menu_item_parent', '0'),
(287, 86, '_menu_item_object_id', '25'),
(288, 86, '_menu_item_object', 'services'),
(289, 86, '_menu_item_target', ''),
(290, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 86, '_menu_item_xfn', ''),
(292, 86, '_menu_item_url', ''),
(293, 86, '_menu_item_orphaned', '1620233572'),
(294, 87, '_menu_item_type', 'post_type'),
(295, 87, '_menu_item_menu_item_parent', '0'),
(296, 87, '_menu_item_object_id', '24'),
(297, 87, '_menu_item_object', 'services'),
(298, 87, '_menu_item_target', ''),
(299, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 87, '_menu_item_xfn', ''),
(301, 87, '_menu_item_url', ''),
(302, 87, '_menu_item_orphaned', '1620233573'),
(303, 88, '_menu_item_type', 'post_type'),
(304, 88, '_menu_item_menu_item_parent', '0'),
(305, 88, '_menu_item_object_id', '23'),
(306, 88, '_menu_item_object', 'services'),
(307, 88, '_menu_item_target', ''),
(308, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(309, 88, '_menu_item_xfn', ''),
(310, 88, '_menu_item_url', ''),
(311, 88, '_menu_item_orphaned', '1620233574'),
(330, 5, '_wp_page_template', 'default'),
(332, 14, '_wp_old_date', '2021-05-05'),
(333, 15, '_wp_old_date', '2021-05-05'),
(334, 68, '_wp_old_date', '2021-05-05'),
(335, 17, '_wp_old_date', '2021-05-05'),
(336, 16, '_wp_old_date', '2021-05-05'),
(337, 93, '_edit_last', '1'),
(338, 93, '_edit_lock', '1620386844:1'),
(339, 94, '_edit_last', '1'),
(340, 94, '_edit_lock', '1620434648:1'),
(341, 95, '_edit_last', '1'),
(342, 95, '_edit_lock', '1620386843:1'),
(343, 96, '_edit_last', '1'),
(344, 96, '_edit_lock', '1620386651:1'),
(357, 28, 'table_content', ''),
(358, 28, '_table_content', 'field_60927a50aff09'),
(359, 97, 'table_content', ''),
(360, 97, '_table_content', 'field_60927a50aff09'),
(361, 33, 'table_content', ''),
(362, 33, '_table_content', 'field_60927a50aff09'),
(363, 98, 'table_content', ''),
(364, 98, '_table_content', 'field_60927a50aff09'),
(365, 31, 'table_content', ''),
(366, 31, '_table_content', 'field_60927a50aff09'),
(367, 99, 'table_content', ''),
(368, 99, '_table_content', 'field_60927a50aff09'),
(369, 25, 'table_content', ''),
(370, 25, '_table_content', 'field_60927a50aff09'),
(371, 100, 'table_content', ''),
(372, 100, '_table_content', 'field_60927a50aff09'),
(373, 27, 'table_content', ''),
(374, 27, '_table_content', 'field_60927a50aff09'),
(375, 101, 'table_content', ''),
(376, 101, '_table_content', 'field_60927a50aff09'),
(377, 30, 'table_content', ''),
(378, 30, '_table_content', 'field_60927a50aff09'),
(379, 103, 'table_content', ''),
(380, 103, '_table_content', 'field_60927a50aff09'),
(381, 8, '_wp_page_template', 'default'),
(382, 106, '_wp_attached_file', '2021/05/capital.png'),
(383, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2021/05/capital.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"capital-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"capital-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(384, 107, '_wp_attached_file', '2021/05/contract.png'),
(385, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2021/05/contract.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"contract-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"contract-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 109, '_wp_attached_file', '2021/05/lightbulb.png'),
(387, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:21:\"2021/05/lightbulb.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"lightbulb-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"lightbulb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(388, 37, '_thumbnail_id', '107'),
(389, 35, '_thumbnail_id', '109'),
(390, 36, '_thumbnail_id', '120'),
(391, 110, 'table_content', '&nbsp;\r\n<div class=\"col-md-6 p-0 left-portion\">\r\n<ul class=\"heating-services-ul\"><!--\r\n 	<li class=\"table-hd table-li\">Indoor Unit</li>\r\n-->\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-6 p-0\">\r\n<ul class=\"heating-services-ul\"><!--\r\n 	<li class=\"table-hd table-li\">Outdoor Unit</li>\r\n-->\r\n 	<li class=\"table-li\">Check thermostat for proper function</li>\r\n 	<li class=\"table-li\">Check voltage: primary and secondary</li>\r\n 	<li class=\"table-li\">Check for condensation damage</li>\r\n 	<li class=\"table-li\">Check capacitor for factory spec</li>\r\n 	<li class=\"table-li\">Test amp draw on blower</li>\r\n 	<li class=\"table-li\">Inspect and tighten electrical wiring</li>\r\n 	<li class=\"table-li\">Check blower wheel and motor</li>\r\n 	<li class=\"table-li\">Inspect filter system and efficiency</li>\r\n 	<li class=\"table-li\">Check pressure drop across coil</li>\r\n</ul>\r\n</div>'),
(392, 110, '_table_content', 'field_60927a50aff09'),
(393, 113, '_wp_attached_file', '2021/05/ACTuneUp-scaled.jpeg'),
(394, 113, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2021/05/ACTuneUp-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"ACTuneUp-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"ACTuneUp-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ACTuneUp-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"ACTuneUp-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"ACTuneUp-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"ACTuneUp-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"ACTuneUp.jpeg\";}'),
(397, 115, '_wp_attached_file', '2021/05/ACInstallation-scaled.jpeg'),
(398, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:34:\"2021/05/ACInstallation-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"ACInstallation-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"ACInstallation-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"ACInstallation-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"ACInstallation-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"ACInstallation-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:29:\"ACInstallation-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:19:\"ACInstallation.jpeg\";}'),
(399, 116, '_wp_attached_file', '2021/05/ACRepair-scaled.jpeg'),
(400, 116, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2021/05/ACRepair-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"ACRepair-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"ACRepair-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ACRepair-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"ACRepair-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"ACRepair-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"ACRepair-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"ACRepair.jpeg\";}'),
(401, 117, '_wp_attached_file', '2021/05/ACTuneUp-1-scaled.jpeg'),
(402, 117, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2021/05/ACTuneUp-1-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"ACTuneUp-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"ACTuneUp-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"ACTuneUp-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"ACTuneUp-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"ACTuneUp-1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"ACTuneUp-1-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"ACTuneUp-1.jpeg\";}'),
(403, 118, '_wp_attached_file', '2021/05/FurnaceTuneUP-scaled.jpeg'),
(404, 118, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:33:\"2021/05/FurnaceTuneUP-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"FurnaceTuneUP-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"FurnaceTuneUP-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"FurnaceTuneUP-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"FurnaceTuneUP-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"FurnaceTuneUP-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:28:\"FurnaceTuneUP-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"FurnaceTuneUP.jpeg\";}'),
(405, 119, '_wp_attached_file', '2021/05/Furnance-Repair-scaled.jpeg'),
(406, 119, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:35:\"2021/05/Furnance-Repair-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Furnance-Repair-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Furnance-Repair-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Furnance-Repair-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Furnance-Repair-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"Furnance-Repair-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:30:\"Furnance-Repair-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:20:\"Furnance-Repair.jpeg\";}'),
(407, 120, '_wp_attached_file', '2021/05/Utah.png'),
(408, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2021/05/Utah.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"Utah-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"Utah-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Utah-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"Utah-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 121, '_wp_attached_file', '2021/05/humidifier-scaled.jpg'),
(410, 121, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:29:\"2021/05/humidifier-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"humidifier-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"humidifier-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"humidifier-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"humidifier-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"humidifier-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"humidifier-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"humidifier.jpg\";}'),
(411, 122, '_wp_attached_file', '2021/05/Air-Purifiers-scaled.jpg'),
(412, 122, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:32:\"2021/05/Air-Purifiers-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Air-Purifiers-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Air-Purifiers-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Air-Purifiers-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Air-Purifiers-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"Air-Purifiers-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"Air-Purifiers-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"Air-Purifiers.jpg\";}'),
(413, 123, '_wp_attached_file', '2021/05/Furnace-installation-scaled.jpg'),
(414, 123, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:39:\"2021/05/Furnace-installation-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Furnace-installation-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Furnace-installation-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Furnace-installation-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Furnace-installation-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"Furnace-installation-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"Furnace-installation-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:24:\"Furnace-installation.jpg\";}'),
(415, 22, 'table_content', ''),
(416, 22, '_table_content', 'field_60927a50aff09'),
(417, 52, 'table_content', ''),
(418, 52, '_table_content', 'field_60927a50aff09'),
(419, 23, 'table_content', ''),
(420, 23, '_table_content', 'field_60927a50aff09'),
(421, 53, 'table_content', ''),
(422, 53, '_table_content', 'field_60927a50aff09'),
(423, 26, 'table_content', ''),
(424, 26, '_table_content', 'field_60927a50aff09'),
(425, 56, 'table_content', ''),
(426, 56, '_table_content', 'field_60927a50aff09'),
(427, 125, 'table_content', ''),
(428, 125, '_table_content', 'field_60927a50aff09'),
(429, 126, 'table_content', ''),
(430, 126, '_table_content', 'field_60927a50aff09'),
(431, 9, '_wp_page_template', 'default'),
(432, 129, '_edit_last', '1'),
(433, 129, '_edit_lock', '1620432832:1'),
(434, 130, '_edit_last', '1'),
(435, 130, '_edit_lock', '1620432622:1'),
(436, 131, '_edit_last', '1'),
(437, 131, '_edit_lock', '1620432623:1'),
(438, 132, '_edit_last', '1'),
(439, 132, '_edit_lock', '1620434650:1'),
(440, 133, '_edit_last', '1'),
(441, 133, '_edit_lock', '1620434506:1'),
(442, 134, '_edit_last', '1'),
(443, 134, '_edit_lock', '1620432622:1'),
(444, 135, '_edit_last', '1'),
(445, 135, '_edit_lock', '1620432622:1'),
(449, 35, '_wp_old_slug', 'selling-point-two'),
(450, 37, '_wp_old_slug', 'selling-point-four'),
(452, 9, 'hefo_before', '0'),
(453, 9, 'hefo_after', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-04 19:01:31', '2021-05-04 19:01:31', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-04 19:01:31', '2021-05-04 19:01:31', '', 0, 'https://figginscanfixit.com/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-04 19:01:31', '2021-05-04 19:01:31', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://figginscanfixit.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-04 19:01:31', '2021-05-04 19:01:31', '', 0, 'https://figginscanfixit.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-04 19:01:31', '2021-05-04 19:01:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://figginscanfixit.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-04 19:01:31', '2021-05-04 19:01:31', '', 0, 'https://figginscanfixit.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-05-04 19:14:48', '2021-05-04 19:14:48', 'Figgins can<br>\r\nfix it.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-08 12:43:48', '2021-05-08 12:43:48', '', 0, 'https://figginscanfixit.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-05-04 19:14:48', '2021-05-04 19:14:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-05-04 19:14:48', '2021-05-04 19:14:48', '', 5, 'https://figginscanfixit.com/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-05-04 19:23:34', '2021-05-04 19:23:34', '<h2 class=\"section-title\"> Our Story</h2>\r\n      	      <p>\r\n      	         Figgins Heating & Air was founded in 1962 by Boyd Figgins under the original name Figgins Heating and Cooling. Boyd started this family owned heating and sheet metal shop to provide honest and fair service to his Utah customers. Barry L. Figgins continued in his father’s footsteps and ran the family business under the name of Conditioned Air by Figgins. In the early 1980’s Barry began training his second son, Todd C. Figgins in the HVAC trade. At the age of twelve, Todd was able to run heating ducts independently.\r\n      	      </p>\r\n      	      <p>\r\n      	         Throughout the years Todd has worked with several superb HVAC companies, but has again returned to his roots. Figgins Heating & Air was reborn and still operates on the same foundation of honesty and integrity that has been handed down through the generations.\r\n      	      </p>\r\n', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-05-05 09:03:41', '2021-05-05 09:03:41', '', 0, 'https://figginscanfixit.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-05-04 19:23:47', '2021-05-04 19:23:47', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-05-07 17:17:41', '2021-05-07 17:17:41', '', 0, 'https://figginscanfixit.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-05-04 19:23:57', '2021-05-04 19:23:57', '<div class=\"col-md-4 contact-addr mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-map-marker\"></i> Locations Served </p>\r\nProudly Serving Northern Utah </div>\r\n<div class=\"col-md-4 contact-phone mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-phone\"></i> Phone</p>\r\n<a href=\"tel:801 928 0519\" class=\"pixel-phone\">\r\n801 928 0519 </a>\r\n\r\n</div>\r\n<div class=\"col-md-4 contact-email mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-envelope\"></i> Email</p>\r\n<a href=\"mailto:info@figginscanfixit.com\">info@figginscanfixit.com</a>\r\n\r\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-05-12 16:42:35', '2021-05-12 16:42:35', '', 0, 'https://figginscanfixit.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-05-04 19:23:34', '2021-05-04 19:23:34', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-05-04 19:23:34', '2021-05-04 19:23:34', '', 7, 'https://figginscanfixit.com/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-05-04 19:23:47', '2021-05-04 19:23:47', '', 'Faq', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-04 19:23:47', '2021-05-04 19:23:47', '', 8, 'https://figginscanfixit.com/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-05-04 19:23:57', '2021-05-04 19:23:57', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-04 19:23:57', '2021-05-04 19:23:57', '', 9, 'https://figginscanfixit.com/?p=12', 0, 'revision', '', 0),
(14, 1, '2021-05-06 21:46:27', '2021-05-04 19:25:12', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-05-06 21:46:27', '2021-05-06 21:46:27', '', 0, 'https://figginscanfixit.com/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2021-05-06 21:46:27', '2021-05-04 19:25:12', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2021-05-06 21:46:27', '2021-05-06 21:46:27', '', 0, 'https://figginscanfixit.com/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2021-05-06 21:46:27', '2021-05-04 19:25:13', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-05-06 21:46:27', '2021-05-06 21:46:27', '', 0, 'https://figginscanfixit.com/?p=16', 5, 'nav_menu_item', '', 0),
(17, 1, '2021-05-06 21:46:27', '2021-05-04 19:25:12', '', 'Faq', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-05-06 21:46:27', '2021-05-06 21:46:27', '', 0, 'https://figginscanfixit.com/?p=17', 4, 'nav_menu_item', '', 0),
(19, 1, '2021-05-04 21:06:51', '2021-05-04 21:06:51', ' Figgins can <br> fix it.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-05-04 21:06:51', '2021-05-04 21:06:51', '', 5, 'https://figginscanfixit.com/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-05-04 21:15:23', '2021-05-04 21:15:23', 'Maintaining your air conditioning system can extend its lifespan, keep it running efficiently, and cool your home for years to come.', 'A/C tune up', '', 'publish', 'closed', 'closed', '', 'a-c-tune-up', '', '', '2021-05-07 23:39:49', '2021-05-07 23:39:49', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=20', 0, 'services', '', 0),
(21, 1, '2021-05-04 21:15:09', '2021-05-04 21:15:09', '', 'service-1', '', 'inherit', 'open', 'closed', '', 'service-1', '', '', '2021-05-04 21:15:09', '2021-05-04 21:15:09', '', 0, 'https://figginscanfixit.com/wp-content/uploads/2021/05/service-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2021-05-04 21:16:21', '2021-05-04 21:16:21', 'We specialize in a/c repairs. If it can be fixed, Figgins can fix it! Let’s keep your system running as long as possible. We have access to parts for all makes and models.', 'A/C repair', '', 'publish', 'closed', 'closed', '', 'a-c-repair', '', '', '2021-05-07 23:51:02', '2021-05-07 23:51:02', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=22', 1, 'services', '', 0),
(23, 1, '2021-05-04 21:17:19', '2021-05-04 21:17:19', 'No A/C yet? We can get your home cooled down! Ready to update an older system? We’ve got your back. Newer air conditioning units are more efficient and quieter than ever. This is one home improvement that will increase your home\'s value. A/C installations and replacements are offered at a fair price and in a timely manner. No surprises, you’ll have a job estimate before work is completed.', 'A/C installation', '', 'publish', 'closed', 'closed', '', 'a-c-installation', '', '', '2021-05-07 23:51:33', '2021-05-07 23:51:33', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=23', 2, 'services', '', 0),
(24, 1, '2021-05-04 21:19:24', '2021-05-04 21:19:24', 'Just like your A/C, it is essential to maintain your furnace for safety and efficiency. Yearly tune-ups are recommended. Don’t forget to change your filter in between! We can teach you what you need to know about filters.', 'Furnace tune ups', '', 'publish', 'closed', 'closed', '', 'furnace-tune-ups', '', '', '2021-05-07 23:51:58', '2021-05-07 23:51:58', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=24', 3, 'services', '', 0),
(25, 1, '2021-05-04 21:19:52', '2021-05-04 21:19:52', 'Oh yes, Figgins can fix it! This is our specialty. Troubleshooting issues is like a treasure hunt for Figgins Heating and Air.', 'Furnace repair', '', 'publish', 'closed', 'closed', '', 'furnace-repair', '', '', '2021-05-07 23:52:32', '2021-05-07 23:52:32', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=25', 4, 'services', '', 0),
(26, 1, '2021-05-04 21:24:56', '2021-05-04 21:24:56', 'Feeling left out in the cold? It might be time for an upgrade. Free estimates and fair prices are essential to earning trust from our customers.', 'Furnace installation', '', 'publish', 'closed', 'closed', '', 'furnace-installation', '', '', '2021-05-07 23:53:01', '2021-05-07 23:53:01', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=26', 5, 'services', '', 0),
(27, 1, '2021-05-04 21:31:12', '2021-05-04 21:31:12', 'Dry Utah air getting you down? Figgins can even fix that! Contact us to discover humidification solutions for your home.', 'Humidification', '', 'publish', 'closed', 'closed', '', 'humidification', '', '', '2021-05-07 23:54:07', '2021-05-07 23:54:07', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=27', 7, 'services', '', 0),
(28, 1, '2021-05-04 21:31:33', '2021-05-04 21:31:33', 'Instantly improve your home air quality with a professional solution from Figgins Heating &amp; Air. We would love to advise you on this and see how we can help. Contact us below.', 'Air purifiers', '', 'publish', 'closed', 'closed', '', 'air-purifiers', '', '', '2021-05-07 23:53:25', '2021-05-07 23:53:25', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=28', 6, 'services', '', 0),
(30, 1, '2021-05-04 21:32:09', '2021-05-04 21:32:09', 'Thermostat not functioning properly? Figgins can fix that! We can help you find the perfect solution for your whole house, and possibly even save you a lot on your energy bill. Let us know how we can help.', 'Thermostats', '', 'publish', 'closed', 'closed', '', 'thermostats', '', '', '2021-05-07 12:01:33', '2021-05-07 12:01:33', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=30', 11, 'services', '', 0),
(31, 1, '2021-05-04 21:32:33', '2021-05-04 21:32:33', 'Living in the Wasatch Front, we all know how bad the air quality can get. And like everything HVAC, Figgins can fix it! Contact us now to learn more about how you can filter, purify, and clean the air in your home.', 'Filtration', '', 'publish', 'closed', 'closed', '', 'filtration', '', '', '2021-05-07 11:54:04', '2021-05-07 11:54:04', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=31', 10, 'services', '', 0),
(32, 1, '2021-05-04 21:34:08', '2021-05-04 21:34:08', 'Heat pumps are a notablet option that provide both heating and cooling as an alternative to having a separate furnace and air conditioner. They offer dramatic energy savings and have many improved benefits. Don’t be misguided about heat pumps; they’ve come a long way through the years and are a legitimate option for home temperature control.', 'Heat Pumps', '', 'publish', 'closed', 'closed', '', 'heat-pumps', '', '', '2021-05-05 10:21:44', '2021-05-05 10:21:44', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=32', 9, 'services', '', 0),
(33, 1, '2021-05-04 21:34:41', '2021-05-04 21:34:41', 'These systems may be perfect for garages, attics, sheds, tiny homes, etc. If you have a ductless system, or need one, we would be happy to help! Just contact us using the form below.', 'Ductless Systems', '', 'publish', 'closed', 'closed', '', 'ductless-systems', '', '', '2021-05-07 11:51:04', '2021-05-07 11:51:04', '', 0, 'https://figginscanfixit.com/?post_type=services&#038;p=33', 8, 'services', '', 0),
(34, 1, '2021-05-04 22:00:55', '2021-05-04 22:00:55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat praesentium ullam tempora minima nihil unde.', 'Selling Point One', '', 'draft', 'closed', 'closed', '', 'selling-point-one', '', '', '2021-05-06 21:09:02', '2021-05-06 21:09:02', '', 0, 'https://figginscanfixit.com/?post_type=selling_points&#038;p=34', 0, 'why_figgins', '', 0),
(35, 1, '2021-05-04 22:00:58', '2021-05-04 22:00:58', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat praesentium ullam tempora minima nihil unde.', '35+ yrs of Expertise', '', 'publish', 'closed', 'closed', '', 'yrs-of-exp', '', '', '2021-05-12 11:56:15', '2021-05-12 11:56:15', '', 0, 'https://figginscanfixit.com/?post_type=selling_points&#038;p=35', 0, 'why_figgins', '', 0),
(36, 1, '2021-05-04 22:01:00', '2021-05-04 22:01:00', '', 'Serving Northern Utah', '', 'publish', 'closed', 'closed', '', 'selling-point-three', '', '', '2021-05-08 16:42:16', '2021-05-08 16:42:16', '', 0, 'https://figginscanfixit.com/?post_type=selling_points&#038;p=36', 0, 'why_figgins', '', 0),
(37, 1, '2021-05-04 22:01:04', '2021-05-04 22:01:04', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat praesentium ullam tempora minima nihil unde.', 'Free Estimates', '', 'publish', 'closed', 'closed', '', 'free-estimates', '', '', '2021-05-12 11:57:41', '2021-05-12 11:57:41', '', 0, 'https://figginscanfixit.com/?post_type=selling_points&#038;p=37', 0, 'why_figgins', '', 0),
(38, 1, '2021-05-05 06:42:27', '2021-05-05 06:42:27', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <info@figgins.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <info@figgins.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-05-05 06:42:27', '2021-05-05 06:42:27', '', 0, 'https://figginscanfixit.com/?post_type=wpcf7_contact_form&p=38', 0, 'wpcf7_contact_form', '', 0),
(39, 1, '2021-05-05 06:55:16', '2021-05-05 06:55:16', '<div class=\"form-row\">\r\n                        <div class=\"form-group col-md-6\">\r\n                           <label for=\"fname\" class=\"p-0 m-0\"> First Name</label>\r\n                    [text* fname id:homeFName class:form-control]\r\n                        </div>\r\n                        <div class=\"form-group col-md-6\">\r\n                           <label for=\"lname\" class=\"p-0 m-0\"> Last Name</label>\r\n              [text lname id:homeLName class:form-control]\r\n\r\n                         </div>\r\n              </div>\r\n\r\n\r\n <div class=\"form-row\">\r\n                 <div class=\"form-group col-md-6\">\r\n                    <label for=\"phone\" class=\"p-0 m-0\">Phone</label>\r\n                 [text phone id:homePhone class:form-control] \r\n                 </div>\r\n                 <div class=\"form-group col-md-6\">\r\n                    <label for=\"email\" class=\"p-0 m-0\">Email</label>\r\n                 [email* email-865 id:homeEmail class:form-control]\r\n                 </div>\r\n              </div>\r\n\r\n<div class=\"form-row\">\r\n                 <div class=\"form-group col-md-4\">\r\n                    <label for=\"inputService\" class=\"p-0 m-0\">Select Service</label>\r\n                    [select* menu-services-contact id:inputService class:form-control \"Choose Service\" \"A/C tune up\" \"A/C repair\" \"A/C installation\" \"Furnace tune ups\" \"Furnace repair\" \"Furnace installation\" \"Humidification\" \"Air purifiers\" \"Air cleaners\" \"Thermostats\" \"Filtration\" \"Heat Pumps\" \"Ductless Systems\"]\r\n                 </div>\r\n <div class=\"form-group col-md-4\">\r\n <label for=\"preDate\" class=\"p-0 m-0\">Preferred Day of Service</label>\r\n[text preDateinput id:prefDate class:form-control]  \r\n </div>\r\n<div class=\"form-group col-md-4\">\r\n                    <label for=\"preTimeinput\" class=\"p-0 m-0\">Preferred Time of Service</label>\r\n                   [text preTimeinput id:prefTime class:form-control]\r\n </div>\r\n\r\n</div>\r\n\r\n\r\n  <div class=\"form-group\">\r\n                 <label for=\"help\" class=\"p-0 m-0\">What Can We Help You With?</label>\r\n   [textarea* textarea-425 id:homeHelp class:form-control rows:5] \r\n              </div>\r\n              <button type=\"submit\" class=\"btn form-submit-btn mt-lg-4\">Schedule Free Estimate</button>\n1\n[_site_title] \"Free Estimates\"\n[_site_title] <info@figginscanfixit.com>\nfigginscanfixit@gmail.com\nFrom: [fname] <[email-865]>\r\nSubject: \"Free Estimate Email\"\r\n\r\nMessage Body:\r\n<b> Dear Admin </b>,<br>\r\nYou have received a new message from [email-865].<br>\r\n[textarea-425]\r\n\r\nDetails of Estimate are:<br>\r\n<b>Name</b>: [fname] [lname] <br>\r\n<b>Email</b>: [email-865]<br>\r\n<b>Phone</b>: [phone]<br>\r\n<b>Service:</b> [menu-services-contact]<br>\r\n<b>Date:</b> [preDateinput]\r\n<b>Time:</b> [preTimeinput]\r\n\r\n\r\n-- \r\nThanks,\r\nTeam Figgins\nReply-To: [email-865]\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <info@figgins.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Free Estimate Form', '', 'publish', 'closed', 'closed', '', 'free-estimate-form', '', '', '2021-05-20 07:53:44', '2021-05-20 07:53:44', '', 0, 'https://figginscanfixit.com/?post_type=wpcf7_contact_form&#038;p=39', 0, 'wpcf7_contact_form', '', 0),
(40, 1, '2021-05-05 09:03:41', '2021-05-05 09:03:41', '<h2 class=\"section-title\"> Our Story</h2>\r\n      	      <p>\r\n      	         Figgins Heating & Air was founded in 1962 by Boyd Figgins under the original name Figgins Heating and Cooling. Boyd started this family owned heating and sheet metal shop to provide honest and fair service to his Utah customers. Barry L. Figgins continued in his father’s footsteps and ran the family business under the name of Conditioned Air by Figgins. In the early 1980’s Barry began training his second son, Todd C. Figgins in the HVAC trade. At the age of twelve, Todd was able to run heating ducts independently.\r\n      	      </p>\r\n      	      <p>\r\n      	         Throughout the years Todd has worked with several superb HVAC companies, but has again returned to his roots. Figgins Heating & Air was reborn and still operates on the same foundation of honesty and integrity that has been handed down through the generations.\r\n      	      </p>\r\n', 'About Us', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-05-05 09:03:41', '2021-05-05 09:03:41', '', 7, 'https://figginscanfixit.com/?p=40', 0, 'revision', '', 0),
(45, 1, '2021-05-05 09:32:55', '2021-05-05 09:32:55', '', 'Faqs', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-05 09:32:55', '2021-05-05 09:32:55', '', 8, 'https://figginscanfixit.com/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-05-05 09:38:56', '2021-05-05 09:38:56', 'Lorem, ipsum dolor sit amet consectetur, adipisicing elit. Repellat nam iure quod pariatur id numquam incidunt tempore veniam qui placeat. <br> Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, fuga doloribus odio dolorem natus sint cupiditate dolores quam nostrum facere.', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-05 09:38:56', '2021-05-05 09:38:56', '', 9, 'https://figginscanfixit.com/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-05-07 23:59:45', '2021-05-07 23:59:45', '<div class=\"col-md-4 contact-addr mb-4 mb-md-0\">\n<p class=\"contct-p-head\"><i class=\"fa fa-map-marker\"></i> Locations Served </p>\n212, Prospect Eve, Brooklyn, New Yourk United State\n\n</div>\n<div class=\"col-md-4 contact-phone mb-4 mb-md-0\">\n<p class=\"contct-p-head\"><i class=\"fa fa-phone\"></i> Phone</p>\n<a href=\"tel:801 928 0519\">\n801 928 0519 </a>\n\n</div>\n<div class=\"col-md-4 contact-email mb-4 mb-md-0\">\n<p class=\"contct-p-head\"><i class=\"fa fa-envelope\"></i> Email</p>\n<a href=\"mailto:info@figgins.com\">info@figgins.com</a>\n\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2021-05-07 23:59:45', '2021-05-07 23:59:45', '', 9, 'https://figginscanfixit.com/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-05-05 09:44:56', '2021-05-05 09:44:56', '<div class=\"col-md-4 contact-addr mb-4 mb-md-0\">\r\n                           <p class=\"contct-p-head\"><i class=\"fa fa-map-marker\"></i> Address</p>\r\n                           <p> 212, Prospect Eve, Brooklyn, New Yourk United State </p>\r\n                        </div>\r\n\r\n                        <div class=\"col-md-4 contact-phone mb-4 mb-md-0\">\r\n                           <p class=\"contct-p-head\">\r\n                              <i class=\"fa fa-phone\"></i> Phone\r\n                           </p>\r\n                           <p>\r\n                              <a href=\"tel:+1-8000-8000\">\r\n                                 +1-8000-8000 \r\n                           </p>\r\n                        </div>\r\n\r\n                         <div class=\"col-md-4 contact-email mb-4 mb-md-0\">\r\n                        <p class=\"contct-p-head\"><i class=\"fa fa-envelope\"></i> Email</p>\r\n                        <p>  <a href=\"info@figgins.com\">info@figgins.com</a> </p>\r\n                        </div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-05 09:44:56', '2021-05-05 09:44:56', '', 9, 'https://figginscanfixit.com/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-05-05 09:48:11', '2021-05-05 09:48:11', '<div class=\"col-md-4 contact-addr mb-4 mb-md-0\">\r\n                           <p class=\"contct-p-head\"><i class=\"fa fa-map-marker\"></i> Address</p>\r\n                           <p> 212, Prospect Eve, Brooklyn, New Yourk United State </p>\r\n                        </div>\r\n\r\n                        <div class=\"col-md-4 contact-phone mb-4 mb-md-0\">\r\n                           <p class=\"contct-p-head\">\r\n                              <i class=\"fa fa-phone\"></i> Phone\r\n                           </p>\r\n                           <p>\r\n                              <a href=\"tel:+1-8000-8000\">\r\n                                 +1-8000-8000 \r\n                           </p>\r\n                        </div>\r\n\r\n                         <div class=\"col-md-4 contact-email mb-4 mb-md-0\">\r\n                        <p class=\"contct-p-head\"><i class=\"fa fa-envelope\"></i> Email</p>\r\n                        <p>  <a href=\"mailto:info@figgins.com\">info@figgins.com</a> </p>\r\n                        </div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-05 09:48:11', '2021-05-05 09:48:11', '', 9, 'https://figginscanfixit.com/?p=49', 0, 'revision', '', 0),
(51, 1, '2021-05-05 10:17:19', '2021-05-05 10:17:19', ' Maintaining your air conditioning system can extend its lifespan, keep it running efficiently, and cool your home for years to come.   ', 'A/C tune up', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-05-05 10:17:19', '2021-05-05 10:17:19', '', 20, 'https://figginscanfixit.com/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-05-05 10:17:26', '2021-05-05 10:17:26', 'We specialize in a/c repairs. If it can be fixed, Figgins can fix it! Let’s keep your system running as long as possible. We have access to parts for all makes and models.', 'A/C repair', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-05-05 10:17:26', '2021-05-05 10:17:26', '', 22, 'https://figginscanfixit.com/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-05-05 10:17:34', '2021-05-05 10:17:34', 'No A/C yet? We can get your home cooled down! Ready to update an older system? We’ve got your back. Newer air conditioning units are more efficient and quieter than ever. This is one home improvement that will increase your home\'s value. A/C installations and replacements are offered at a fair price and in a timely manner. No surprises, you’ll have a job estimate before work is completed.', 'A/C installation', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-05-05 10:17:34', '2021-05-05 10:17:34', '', 23, 'https://figginscanfixit.com/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-05-05 10:17:41', '2021-05-05 10:17:41', 'ust like your A/C, it is essential to maintain your furnace for safety and efficiency. Yearly tune-ups are recommended. Don’t forget to change your filter in between! We can teach you what you need to know about filters.', 'Furnace tune ups', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-05-05 10:17:41', '2021-05-05 10:17:41', '', 24, 'https://figginscanfixit.com/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-05-05 10:17:46', '2021-05-05 10:17:46', 'What was that saying? Oh yes, Figgins can fix it! This is our specialty. Troubleshooting issues is like a treasure hunt for Figgins Heating and Air.', 'Furnace repair', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-05-05 10:17:46', '2021-05-05 10:17:46', '', 25, 'https://figginscanfixit.com/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-05-05 10:17:56', '2021-05-05 10:17:56', 'Feeling left out in the cold? It might be time for an upgrade. Free estimates and fair prices are essential to earning trust from our customers.', 'Furnace installation', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-05-05 10:17:56', '2021-05-05 10:17:56', '', 26, 'https://figginscanfixit.com/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-05-05 10:18:12', '2021-05-05 10:18:12', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis, iste, aspernatur. Architecto, suscipit corrupti placeat unde quis reiciendis ducimus magnam numquam dicta nihil voluptatum dolorum nemo cumque tenetur facilis deleniti?', 'Humidification', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-05-05 10:18:12', '2021-05-05 10:18:12', '', 27, 'https://figginscanfixit.com/?p=57', 0, 'revision', '', 0),
(58, 1, '2021-05-05 10:21:27', '2021-05-05 10:21:27', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis, iste, aspernatur. Architecto, suscipit corrupti placeat unde quis reiciendis ducimus magnam numquam dicta nihil voluptatum dolorum nemo cumque tenetur facilis deleniti?', 'Thermostats', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-05-05 10:21:27', '2021-05-05 10:21:27', '', 30, 'https://figginscanfixit.com/?p=58', 0, 'revision', '', 0),
(60, 1, '2021-05-05 10:21:38', '2021-05-05 10:21:38', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis, iste, aspernatur. Architecto, suscipit corrupti placeat unde quis reiciendis ducimus magnam numquam dicta nihil voluptatum dolorum nemo cumque tenetur facilis deleniti?', 'Filtration', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-05-05 10:21:38', '2021-05-05 10:21:38', '', 31, 'https://figginscanfixit.com/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-05-05 10:21:44', '2021-05-05 10:21:44', 'Heat pumps are a notablet option that provide both heating and cooling as an alternative to having a separate furnace and air conditioner. They offer dramatic energy savings and have many improved benefits. Don’t be misguided about heat pumps; they’ve come a long way through the years and are a legitimate option for home temperature control.', 'Heat Pumps', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-05-05 10:21:44', '2021-05-05 10:21:44', '', 32, 'https://figginscanfixit.com/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-05-05 10:21:49', '2021-05-05 10:21:49', 'Some homes and businesses have areas that are not compatible with air duct systems, but still need to be heated and cooled. This system may be perfect for garages, attics, sheds, tiny homes, etc..', 'Ductless Systems', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-05-05 10:21:49', '2021-05-05 10:21:49', '', 33, 'https://figginscanfixit.com/?p=62', 0, 'revision', '', 0),
(64, 1, '2021-05-05 10:59:56', '2021-05-05 10:59:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Table Data', 'table-data', 'publish', 'closed', 'closed', '', 'group_60927a365888b', '', '', '2021-05-05 10:59:57', '2021-05-05 10:59:57', '', 0, 'https://figginscanfixit.com/?post_type=acf-field-group&#038;p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2021-05-05 10:59:56', '2021-05-05 10:59:56', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:41:\"Add table data in the form of code in it.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Table Content', 'table_content', 'publish', 'closed', 'closed', '', 'field_60927a50aff09', '', '', '2021-05-05 10:59:56', '2021-05-05 10:59:56', '', 64, 'https://figginscanfixit.com/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2021-05-05 11:01:49', '2021-05-05 11:01:49', ' Maintaining your air conditioning system can extend its lifespan, keep it running efficiently, and cool your home for years to come.   ', 'A/C tune up', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-05-05 11:01:49', '2021-05-05 11:01:49', '', 20, 'https://figginscanfixit.com/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-05-05 12:09:41', '2021-05-05 12:09:41', 'ust like your A/C, it is essential to maintain your furnace for safety and efficiency. Yearly tune-ups are recommended. Don’t forget to change your filter in between! We can teach you what you need to know about filters.', 'Furnace tune ups', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-05-05 12:09:41', '2021-05-05 12:09:41', '', 24, 'https://figginscanfixit.com/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-05-06 21:46:27', '2021-05-05 12:12:50', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services-2', '', '', '2021-05-06 21:46:27', '2021-05-06 21:46:27', '', 0, 'https://figginscanfixit.com/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2021-05-05 12:18:26', '2021-05-05 12:18:26', '', 'Home Air Quality', '', 'publish', 'closed', 'closed', '', 'home-air-quality', '', '', '2021-05-05 12:42:50', '2021-05-05 12:42:50', '', 0, 'https://figginscanfixit.com/?page_id=69', 0, 'page', '', 0),
(70, 1, '2021-05-05 12:18:26', '2021-05-05 12:18:26', '', 'Home Air Quality', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2021-05-05 12:18:26', '2021-05-05 12:18:26', '', 69, 'https://figginscanfixit.com/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-05-05 12:44:35', '2021-05-05 12:44:35', '', 'Other Services', '', 'publish', 'closed', 'closed', '', 'other-services', '', '', '2021-05-05 12:44:35', '2021-05-05 12:44:35', '', 0, 'https://figginscanfixit.com/?page_id=71', 0, 'page', '', 0),
(72, 1, '2021-05-05 12:44:35', '2021-05-05 12:44:35', '', 'Other Services', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2021-05-05 12:44:35', '2021-05-05 12:44:35', '', 71, 'https://figginscanfixit.com/?p=72', 0, 'revision', '', 0),
(78, 1, '2021-05-05 16:48:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:48:50', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2021-05-05 16:48:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:48:51', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2021-05-05 16:48:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:48:52', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=80', 1, 'nav_menu_item', '', 0),
(81, 1, '2021-05-05 16:48:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:48:53', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=81', 1, 'nav_menu_item', '', 0),
(85, 1, '2021-05-05 16:52:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:52:50', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2021-05-05 16:52:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:52:51', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=86', 1, 'nav_menu_item', '', 0),
(87, 1, '2021-05-05 16:52:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:52:52', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2021-05-05 16:52:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-05 16:52:53', '0000-00-00 00:00:00', '', 0, 'https://figginscanfixit.com/?p=88', 1, 'nav_menu_item', '', 0),
(91, 1, '2021-05-05 19:11:44', '2021-05-05 19:11:44', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis, iste, aspernatur. Architecto, suscipit corrupti placeat unde quis reiciendis ducimus magnam numquam dicta nihil voluptatum dolorum nemo cumque tenetur facilis deleniti?', 'Air purifiers', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-05-05 19:11:44', '2021-05-05 19:11:44', '', 28, 'https://figginscanfixit.com/?p=91', 0, 'revision', '', 0),
(93, 1, '2021-05-07 11:25:04', '2021-05-07 11:25:04', 'Probably! We\'ve fixed so many things, we\'ve probably seen it before. Just message us in the form below and we\'d be happy to help', 'Can you fix ____?', '', 'publish', 'closed', 'closed', '', 'can-you-fix-____', '', '', '2021-05-07 11:25:04', '2021-05-07 11:25:04', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=93', 0, 'faqs', '', 0),
(94, 1, '2021-05-07 11:25:36', '2021-05-07 11:25:36', 'This depends on the project! We will find the most effective and economical solution for you.', 'What are your rates?', '', 'publish', 'closed', 'closed', '', 'what-are-your-rates', '', '', '2021-05-08 00:16:40', '2021-05-08 00:16:40', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=94', 0, 'faqs', '', 0),
(95, 1, '2021-05-07 11:26:09', '2021-05-07 11:26:09', 'You name it, and we\'ve seen it. If you have questions about something in particular, contact us and we\'d be happy to take a look.', 'What HVAC services do you provide?', '', 'publish', 'closed', 'closed', '', 'what-hvac-services-do-you-provide', '', '', '2021-05-07 11:26:09', '2021-05-07 11:26:09', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=95', 0, 'faqs', '', 0),
(96, 1, '2021-05-07 11:26:30', '2021-05-07 11:26:30', 'Figgins Heating and Air serves Northern Utah', 'What areas do you serve?', '', 'publish', 'closed', 'closed', '', 'what-areas-do-you-serve', '', '', '2021-05-07 11:26:30', '2021-05-07 11:26:30', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=96', 0, 'faqs', '', 0),
(97, 1, '2021-05-07 11:36:15', '2021-05-07 11:36:15', 'Instantly improve your home air quality with a professional solution from Figgins Heating & Air. We would love to advise you on this and see how we can help. Contact us below.', 'Air purifiers', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-05-07 11:36:15', '2021-05-07 11:36:15', '', 28, 'https://figginscanfixit.com/?p=97', 0, 'revision', '', 0),
(98, 1, '2021-05-07 11:51:04', '2021-05-07 11:51:04', 'These systems may be perfect for garages, attics, sheds, tiny homes, etc. If you have a ductless system, or need one, we would be happy to help! Just contact us using the form below.', 'Ductless Systems', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-05-07 11:51:04', '2021-05-07 11:51:04', '', 33, 'https://figginscanfixit.com/?p=98', 0, 'revision', '', 0),
(99, 1, '2021-05-07 11:54:04', '2021-05-07 11:54:04', 'Living in the Wasatch Front, we all know how bad the air quality can get. And like everything HVAC, Figgins can fix it! Contact us now to learn more about how you can filter, purify, and clean the air in your home.', 'Filtration', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-05-07 11:54:04', '2021-05-07 11:54:04', '', 31, 'https://figginscanfixit.com/?p=99', 0, 'revision', '', 0),
(100, 1, '2021-05-07 11:56:55', '2021-05-07 11:56:55', 'Oh yes, Figgins can fix it! This is our specialty. Troubleshooting issues is like a treasure hunt for Figgins Heating and Air.', 'Furnace repair', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-05-07 11:56:55', '2021-05-07 11:56:55', '', 25, 'https://figginscanfixit.com/?p=100', 0, 'revision', '', 0),
(101, 1, '2021-05-07 11:58:50', '2021-05-07 11:58:50', 'Dry Utah air getting you down? Figgins can even fix that! Contact us to discover humidification solutions for your home.', 'Humidification', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-05-07 11:58:50', '2021-05-07 11:58:50', '', 27, 'https://figginscanfixit.com/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-05-07 12:01:04', '2021-05-07 12:01:04', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis, iste, aspernatur. Architecto, suscipit corrupti placeat unde quis reiciendis ducimus magnam numquam dicta nihil voluptatum dolorum nemo cumque tenetur facilis deleniti?', 'Thermostats', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2021-05-07 12:01:04', '2021-05-07 12:01:04', '', 30, 'https://figginscanfixit.com/?p=102', 0, 'revision', '', 0),
(103, 1, '2021-05-07 12:01:33', '2021-05-07 12:01:33', 'Thermostat not functioning properly? Figgins can fix that! We can help you find the perfect solution for your whole house, and possibly even save you a lot on your energy bill. Let us know how we can help.', 'Thermostats', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-05-07 12:01:33', '2021-05-07 12:01:33', '', 30, 'https://figginscanfixit.com/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-05-07 12:11:07', '2021-05-07 12:11:07', '', 'Faqs', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2021-05-07 12:11:07', '2021-05-07 12:11:07', '', 8, 'https://figginscanfixit.com/?p=104', 0, 'revision', '', 0),
(105, 1, '2021-05-07 12:11:12', '2021-05-07 12:11:12', '', 'Faq', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-07 12:11:12', '2021-05-07 12:11:12', '', 8, 'https://figginscanfixit.com/?p=105', 0, 'revision', '', 0),
(106, 1, '2021-05-07 12:40:03', '2021-05-07 12:40:03', '', 'capital', '', 'inherit', 'open', 'closed', '', 'capital', '', '', '2021-05-07 12:40:03', '2021-05-07 12:40:03', '', 0, 'https://figginscanfixit.com/wp-content/uploads/2021/05/capital.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2021-05-07 12:40:13', '2021-05-07 12:40:13', '', 'contract', '', 'inherit', 'open', 'closed', '', 'contract', '', '', '2021-05-07 12:40:13', '2021-05-07 12:40:13', '', 0, 'https://figginscanfixit.com/wp-content/uploads/2021/05/contract.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2021-05-07 12:40:16', '2021-05-07 12:40:16', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat praesentium ullam tempora minima nihil unde.', 'Free Estimates', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2021-05-07 12:40:16', '2021-05-07 12:40:16', '', 37, 'https://figginscanfixit.com/?p=108', 0, 'revision', '', 0),
(109, 1, '2021-05-07 12:40:22', '2021-05-07 12:40:22', '', 'lightbulb', '', 'inherit', 'open', 'closed', '', 'lightbulb', '', '', '2021-05-07 12:40:22', '2021-05-07 12:40:22', '', 0, 'https://figginscanfixit.com/wp-content/uploads/2021/05/lightbulb.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2021-05-07 12:53:49', '2021-05-07 12:53:49', 'Just like your A/C, it is essential to maintain your furnace for safety and efficiency. Yearly tune-ups are recommended. Don’t forget to change your filter in between! We can teach you what you need to know about filters.', 'Furnace tune ups', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-05-07 12:53:49', '2021-05-07 12:53:49', '', 24, 'https://figginscanfixit.com/?p=110', 0, 'revision', '', 0),
(112, 1, '2021-05-07 17:17:41', '2021-05-07 17:17:41', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-07 17:17:41', '2021-05-07 17:17:41', '', 8, 'https://figginscanfixit.com/?p=112', 0, 'revision', '', 0),
(113, 1, '2021-05-07 23:38:23', '2021-05-07 23:38:23', '', 'ACTuneUp', '', 'inherit', 'open', 'closed', '', 'actuneup', '', '', '2021-05-07 23:38:23', '2021-05-07 23:38:23', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/ACTuneUp.jpeg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(115, 1, '2021-05-07 23:49:05', '2021-05-07 23:49:05', '', 'ACInstallation', '', 'inherit', 'open', 'closed', '', 'acinstallation', '', '', '2021-05-07 23:49:05', '2021-05-07 23:49:05', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/ACInstallation.jpeg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2021-05-07 23:49:13', '2021-05-07 23:49:13', '', 'ACRepair', '', 'inherit', 'open', 'closed', '', 'acrepair', '', '', '2021-05-07 23:49:13', '2021-05-07 23:49:13', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/ACRepair.jpeg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2021-05-07 23:49:22', '2021-05-07 23:49:22', '', 'ACTuneUp', '', 'inherit', 'open', 'closed', '', 'actuneup-2', '', '', '2021-05-07 23:49:22', '2021-05-07 23:49:22', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/ACTuneUp-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2021-05-07 23:49:30', '2021-05-07 23:49:30', '', 'FurnaceTuneUP', '', 'inherit', 'open', 'closed', '', 'furnacetuneup', '', '', '2021-05-07 23:49:30', '2021-05-07 23:49:30', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/FurnaceTuneUP.jpeg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2021-05-07 23:49:39', '2021-05-07 23:49:39', '', 'Furnance Repair', '', 'inherit', 'open', 'closed', '', 'furnance-repair', '', '', '2021-05-07 23:49:39', '2021-05-07 23:49:39', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/Furnance-Repair.jpeg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2021-05-07 23:49:46', '2021-05-07 23:49:46', '', 'Utah', '', 'inherit', 'open', 'closed', '', 'utah', '', '', '2021-05-07 23:49:46', '2021-05-07 23:49:46', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/Utah.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2021-05-07 23:49:50', '2021-05-07 23:49:50', '', 'humidifier', '', 'inherit', 'open', 'closed', '', 'humidifier', '', '', '2021-05-07 23:49:50', '2021-05-07 23:49:50', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/humidifier.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2021-05-07 23:49:58', '2021-05-07 23:49:58', '', 'Air Purifiers', '', 'inherit', 'open', 'closed', '', 'air-purifiers-2', '', '', '2021-05-07 23:49:58', '2021-05-07 23:49:58', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/Air-Purifiers.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2021-05-07 23:50:06', '2021-05-07 23:50:06', '', 'Furnace installation', '', 'inherit', 'open', 'closed', '', 'furnace-installation-2', '', '', '2021-05-07 23:50:06', '2021-05-07 23:50:06', '', 20, 'https://figginscanfixit.com/wp-content/uploads/2021/05/Furnace-installation.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2021-05-07 23:52:30', '2021-05-07 23:52:30', 'Figgins can\r\nfix it.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-05-07 23:52:30', '2021-05-07 23:52:30', '', 5, 'https://figginscanfixit.com/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-05-07 23:53:25', '2021-05-07 23:53:25', 'Instantly improve your home air quality with a professional solution from Figgins Heating &amp; Air. We would love to advise you on this and see how we can help. Contact us below.', 'Air purifiers', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-05-07 23:53:25', '2021-05-07 23:53:25', '', 28, 'https://figginscanfixit.com/?p=125', 0, 'revision', '', 0),
(126, 1, '2021-05-07 23:54:45', '2021-05-07 23:54:45', 'These systems may be perfect for garages, attics, sheds, tiny homes, etc. If you have a ductless system, or need one, we would be happy to help! Just contact us using the form below.', 'Ductless Systems', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2021-05-07 23:54:45', '2021-05-07 23:54:45', '', 33, 'https://figginscanfixit.com/?p=126', 0, 'revision', '', 0),
(127, 1, '2021-05-07 23:55:15', '2021-05-07 23:55:15', '<div class=\"col-md-4 contact-addr mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-map-marker\"></i> Address</p>\r\n212, Prospect Eve, Brooklyn, New Yourk United State\r\n\r\n</div>\r\n<div class=\"col-md-4 contact-phone mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-phone\"></i> Phone</p>\r\n<a href=\"tel:+1-8000-8000\">\r\n+1-8000-8000 </a>\r\n\r\n</div>\r\n<div class=\"col-md-4 contact-email mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-envelope\"></i> Email</p>\r\n<a href=\"mailto:info@figgins.com\">info@figgins.com</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-07 23:55:15', '2021-05-07 23:55:15', '', 9, 'https://figginscanfixit.com/?p=127', 0, 'revision', '', 0),
(128, 1, '2021-05-08 00:00:30', '2021-05-08 00:00:30', '<div class=\"col-md-4 contact-addr mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-map-marker\"></i> Locations Served </p>\r\nProudly Serving Northern Utah </div>\r\n<div class=\"col-md-4 contact-phone mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-phone\"></i> Phone</p>\r\n<a href=\"tel:801 928 0519\">\r\n801 928 0519 </a>\r\n\r\n</div>\r\n<div class=\"col-md-4 contact-email mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-envelope\"></i> Email</p>\r\n<a href=\"mailto:info@figginscanfixit.com\">info@figginscanfixit.com</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-08 00:00:30', '2021-05-08 00:00:30', '', 9, 'https://figginscanfixit.com/?p=128', 0, 'revision', '', 0),
(129, 1, '2021-05-08 00:10:28', '2021-05-08 00:10:28', 'Usually this is caused by one of two things. Poor air flow usually due to a dirty filter or low refrigerant charge due to leaks in the system. ', 'What causes AC units to freeze up?', '', 'publish', 'closed', 'closed', '', 'what-causes-ac-units-to-freeze-up', '', '', '2021-05-08 00:10:28', '2021-05-08 00:10:28', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=129', 0, 'faqs', '', 0),
(130, 1, '2021-05-08 00:10:45', '2021-05-08 00:10:45', 'It depends on how well your R-22 system is running. We can still service R-22 no matter what other companies are telling you. We will keep it running as long as repairs continue to make sense. ', 'Should I replace my R-22 outdoor unit with an R410A?', '', 'publish', 'closed', 'closed', '', 'should-i-replace-my-r-22-outdoor-unit-with-an-r410a', '', '', '2021-05-08 00:10:45', '2021-05-08 00:10:45', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=130', 0, 'faqs', '', 0),
(131, 1, '2021-05-08 00:11:02', '2021-05-08 00:11:02', 'You should not cover your outdoor AC  unit. This can cause condensation build up that can lead to rust. The units are made to be outside and do not need a covering. ', 'Should I cover my unit in the fall and winter?', '', 'publish', 'closed', 'closed', '', 'should-i-cover-my-unit-in-the-fall-and-winter', '', '', '2021-05-08 00:11:02', '2021-05-08 00:11:02', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=131', 0, 'faqs', '', 0),
(132, 1, '2021-05-08 00:11:32', '2021-05-08 00:11:32', 'The size of your unit will depend on the size of your house, along with many other factors. The best way to find the proper size is to have a professional assess the factors individually. ', 'What size unit do I need?', '', 'publish', 'closed', 'closed', '', 'what-size-unit-do-i-need', '', '', '2021-05-08 00:11:32', '2021-05-08 00:11:32', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=132', 0, 'faqs', '', 0),
(133, 1, '2021-05-08 00:11:51', '2021-05-08 00:11:51', 'In most cases it is best to replace both units at the same time. There are many reasons for this. For one, when you mix and match units it can result in reduced efficiency and performance. Also, if you bought your indoor and outdoor units at the same time then they will probably both be approaching the end of their use at the same time. By not replacing both you will end up paying more in the long run with two separate installs.', 'If I replace my outdoor unit, do I need to also replace my indoor unit?', '', 'publish', 'closed', 'closed', '', 'if-i-replace-my-outdoor-unit-do-i-need-to-also-replace-my-indoor-unit', '', '', '2021-05-08 00:11:51', '2021-05-08 00:11:51', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=133', 0, 'faqs', '', 0),
(134, 1, '2021-05-08 00:12:13', '2021-05-08 00:12:13', 'The best way to keep it running efficiently for many years is to have it serviced once a year by a professional.', 'What’s the best way to extend the life of my unit?', '', 'publish', 'closed', 'closed', '', 'whats-the-best-way-to-extend-the-life-of-my-unit', '', '', '2021-05-08 00:12:13', '2021-05-08 00:12:13', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=134', 0, 'faqs', '', 0),
(135, 1, '2021-05-08 00:12:35', '2021-05-08 00:12:35', 'Your air conditioner and furnace should each be serviced once a year to keep them running efficiently.', 'How often should I have my unit serviced?', '', 'publish', 'closed', 'closed', '', 'how-often-should-i-have-my-unit-serviced', '', '', '2021-05-08 00:12:35', '2021-05-08 00:12:35', '', 0, 'https://figginscanfixit.com/?post_type=faqs&#038;p=135', 0, 'faqs', '', 0),
(136, 1, '2021-05-08 12:43:44', '2021-05-08 12:43:44', 'Figgins can<b\nfix it.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2021-05-08 12:43:44', '2021-05-08 12:43:44', '', 5, 'https://figginscanfixit.com/?p=136', 0, 'revision', '', 0),
(137, 1, '2021-05-08 12:43:48', '2021-05-08 12:43:48', 'Figgins can<br>\r\nfix it.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-05-08 12:43:48', '2021-05-08 12:43:48', '', 5, 'https://figginscanfixit.com/?p=137', 0, 'revision', '', 0),
(138, 1, '2021-05-08 16:41:30', '2021-05-08 16:41:30', '', 'Home Air Quality', '', 'inherit', 'closed', 'closed', '', '69-autosave-v1', '', '', '2021-05-08 16:41:30', '2021-05-08 16:41:30', '', 69, 'https://figginscanfixit.com/?p=138', 0, 'revision', '', 0),
(140, 1, '2021-05-12 16:42:35', '2021-05-12 16:42:35', '<div class=\"col-md-4 contact-addr mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-map-marker\"></i> Locations Served </p>\r\nProudly Serving Northern Utah </div>\r\n<div class=\"col-md-4 contact-phone mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-phone\"></i> Phone</p>\r\n<a href=\"tel:801 928 0519\" class=\"pixel-phone\">\r\n801 928 0519 </a>\r\n\r\n</div>\r\n<div class=\"col-md-4 contact-email mb-4 mb-md-0\">\r\n<p class=\"contct-p-head\"><i class=\"fa fa-envelope\"></i> Email</p>\r\n<a href=\"mailto:info@figginscanfixit.com\">info@figginscanfixit.com</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-12 16:42:35', '2021-05-12 16:42:35', '', 9, 'https://figginscanfixit.com/?p=140', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Footer Menu', 'footer-menu', 0),
(3, 'Cooling Services', 'cooling-service', 0),
(4, 'Heating Services', 'heating-service', 0),
(5, 'Air Quality Services', 'air-quality-service', 0),
(6, 'Other Services', 'other-service', 0),
(8, 'Cooling And Heating', 'cooling-and-heating', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(20, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 5, 0),
(28, 5, 0),
(30, 5, 0),
(31, 5, 0),
(32, 6, 0),
(33, 6, 0),
(68, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 8, 3),
(4, 4, 'category', '', 8, 3),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 2),
(8, 8, 'category', 'Keep it Safe and Efficient! A/C and Furnace installation, repair, and tune-ups.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'figgin@123'),
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
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '141'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'deleted=undefined&editor=html'),
(21, 1, 'wp_user-settings-time', '1620477823'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"72.255.21.0\";}'),
(26, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:70:\"commentstatusdiv,revisionsdiv,commentsdiv,slugdiv,authordiv,postcustom\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_page', '2'),
(28, 1, 'session_tokens', 'a:4:{s:64:\"0bbb47c3d423e136d82b3ee1b75f91bcf9f9fd86c0d224f97e2f5107bb499f1a\";a:4:{s:10:\"expiration\";i:1621545057;s:2:\"ip\";s:13:\"66.248.202.10\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1621372257;}s:64:\"89c2120e8ae59440f301f60f7f5f2a1d7f7093f5b907074b8539e5a004e72261\";a:4:{s:10:\"expiration\";i:1621593546;s:2:\"ip\";s:13:\"66.248.202.10\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1621420746;}s:64:\"473fb45ded52ecf9b936db59170f01409a2848e99f1cec4fc7bd8106f90d2910\";a:4:{s:10:\"expiration\";i:1622667848;s:2:\"ip\";s:13:\"192.88.135.10\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1621458248;}s:64:\"a3cdea4609a9212d838972e89528b5b8cad9cb416bc34b4bdbece9f779c0d3fb\";a:4:{s:10:\"expiration\";i:1621669906;s:2:\"ip\";s:13:\"66.248.202.10\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1621497106;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'figgin@123', '$P$BqL9FCHACfUuxLZGq3feGoZXsfm3Yp.', 'figgin123', 'info@figgins.com', 'https://figginscanfixit.com', '2021-05-04 19:01:30', '', 0, 'figgin@123');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfm_backup`
--

CREATE TABLE `wp_wpfm_backup` (
  `id` int(11) NOT NULL,
  `backup_name` text COLLATE utf8mb4_unicode_520_ci,
  `backup_date` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_fbv`
--
ALTER TABLE `wp_fbv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_fbv_attachment_folder`
--
ALTER TABLE `wp_fbv_attachment_folder`
  ADD UNIQUE KEY `folder_id` (`folder_id`,`attachment_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpfm_backup`
--
ALTER TABLE `wp_wpfm_backup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_fbv`
--
ALTER TABLE `wp_fbv`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2055;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpfm_backup`
--
ALTER TABLE `wp_wpfm_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
