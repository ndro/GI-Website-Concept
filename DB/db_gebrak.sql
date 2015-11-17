-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2015 at 01:10 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_gebrak`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-10-17 12:31:50', '2015-10-17 12:31:50', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=245 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Gebrak-Indonesia', 'yes'),
(2, 'home', 'http://localhost/Gebrak-Indonesia', 'yes'),
(3, 'blogname', 'Gebrak Indonesia', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hendro.tb@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:29:"pirate-forms/pirate-forms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'custom', 'yes'),
(42, 'stylesheet', 'custom', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '10', 'yes'),
(85, 'page_on_front', '44', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1446294714;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1446294749;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1446318960;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1447763513;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(102, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1447762140;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(108, '_transient_random_seed', '08a53ea31e341601db7126e802a8d500', 'yes'),
(110, '_site_transient_timeout_browser_8251dfbdb0e58f8fd5431a914d112e32', '1445689932', 'yes'),
(111, '_site_transient_browser_8251dfbdb0e58f8fd5431a914d112e32', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(112, 'can_compress_scripts', '1', 'yes'),
(134, '_transient_twentyfifteen_categories', '1', 'yes'),
(135, '_site_transient_timeout_wporg_theme_feature_list', '1445096774', 'yes'),
(136, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(137, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(145, 'widget_widget_twentyfourteen_ephemera', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(147, '_transient_twentyfourteen_category_count', '1', 'yes'),
(148, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1445087283;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(149, 'current_theme', '', 'yes'),
(150, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1445241016;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, 'theme_switched_via_customizer', '', 'yes'),
(159, '_site_transient_timeout_browser_e84f96126d2b7e6a88d15f3b973a3779', '1445845681', 'yes'),
(160, '_site_transient_browser_e84f96126d2b7e6a88d15f3b973a3779', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(177, 'theme_mods_pixova-lite', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1445995635;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:12:"blog-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:16:"footer-sidebar-1";a:0:{}s:16:"footer-sidebar-2";N;s:16:"footer-sidebar-3";N;s:16:"footer-sidebar-4";N;}}}', 'yes'),
(178, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.3";}', 'yes'),
(179, 'recently_activated', 'a:0:{}', 'yes'),
(180, 'pirate_forms_settings_array', 'a:33:{s:13:"header_fields";s:0:"";s:25:"pirateformsopt_name_field";s:3:"req";s:26:"pirateformsopt_email_field";s:3:"req";s:28:"pirateformsopt_subject_field";s:3:"req";s:28:"pirateformsopt_message_field";s:3:"req";s:30:"pirateformsopt_recaptcha_field";s:3:"yes";s:32:"pirateformsopt_recaptcha_sitekey";s:0:"";s:34:"pirateformsopt_recaptcha_secretkey";s:0:"";s:13:"header_labels";s:0:"";s:25:"pirateformsopt_label_name";s:9:"Your Name";s:26:"pirateformsopt_label_email";s:10:"Your Email";s:28:"pirateformsopt_label_subject";s:7:"Subject";s:28:"pirateformsopt_label_message";s:12:"Your message";s:31:"pirateformsopt_label_submit_btn";s:12:"Send Message";s:15:"header_messages";s:0:"";s:29:"pirateformsopt_label_err_name";s:15:"Enter your name";s:30:"pirateformsopt_label_err_email";s:19:"Enter a valid email";s:32:"pirateformsopt_label_err_subject";s:22:"Please enter a subject";s:35:"pirateformsopt_label_err_no_content";s:30:"Enter your question or comment";s:27:"pirateformsopt_label_submit";s:41:"Thanks, your email was sent successfully!";s:14:"header_options";s:0:"";s:20:"pirateformsopt_email";s:0:"";s:29:"pirateformsopt_reply_to_admin";s:0:"";s:31:"pirateformsopt_email_recipients";s:0:"";s:20:"pirateformsopt_store";s:0:"";s:24:"pirateformsopt_blacklist";s:3:"yes";s:28:"pirateformsopt_confirm_email";s:0:"";s:23:"pirateformsopt_use_smtp";s:0:"";s:24:"pirateformsopt_smtp_host";s:0:"";s:24:"pirateformsopt_smtp_port";s:0:"";s:38:"pirateformsopt_use_smtp_authentication";s:3:"yes";s:28:"pirateformsopt_smtp_username";s:0:"";s:28:"pirateformsopt_smtp_password";s:0:"";}', 'yes'),
(182, 'widget_pirate_forms_contact_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(183, 'widget_pixova_lite_widget_about', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(184, 'widget_pixova_lite_widget_latest_posts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(185, 'widget_pixova_lite_widget_social_media', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(197, 'theme_mods_custom', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:2;}}', 'yes'),
(207, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(212, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1446273387;}', 'yes'),
(213, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1447762166;}', 'yes'),
(217, '_transient_timeout_plugin_slugs', '1446286238', 'no'),
(218, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";i:3;s:39:"siteorigin-panels/siteorigin-panels.php";i:4;s:29:"pirate-forms/pirate-forms.php";i:5;s:37:"tinymce-advanced/tinymce-advanced.php";i:6;s:23:"bootstrap/bootstrap.php";}', 'no'),
(224, '_site_transient_timeout_theme_roots', '1446275174', 'yes'),
(225, '_site_transient_theme_roots', 'a:6:{s:6:"custom";s:7:"/themes";s:11:"pixova-lite";s:7:"/themes";s:14:"responsiveboat";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:7:"vantage";s:7:"/themes";s:10:"zerif-lite";s:7:"/themes";}', 'yes'),
(226, 'auto_updater.lock', '1446273379', 'no'),
(227, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1446316582', 'no'),
(228, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: A valid URL was not provided.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: A valid URL was not provided.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(238, 'category_children', 'a:0:{}', 'yes'),
(242, 'rewrite_rules', 'a:71:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=44&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(243, '_transient_doing_cron', '1447762139.0583798885345458984375', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=84 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1445085890'),
(7, 3, '_wp_trash_meta_status', 'auto-draft'),
(8, 3, '_wp_trash_meta_time', '1445085891'),
(13, 9, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(14, 9, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:33:"[your-name] <hendro.tb@gmail.com>";s:4:"body";s:187:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Gebrak Indonesia (http://localhost/Gebrak-Indonesia)";s:9:"recipient";s:19:"hendro.tb@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(15, 9, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:38:"Gebrak Indonesia <hendro.tb@gmail.com>";s:4:"body";s:129:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Gebrak Indonesia (http://localhost/Gebrak-Indonesia)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: hendro.tb@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(16, 9, '_messages', 'a:8:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";}'),
(17, 9, '_additional_settings', ''),
(18, 9, '_locale', 'en_US'),
(19, 10, '_edit_last', '2'),
(20, 10, '_edit_lock', '1446204824:2'),
(21, 12, '_edit_last', '2'),
(22, 12, '_edit_lock', '1446201726:2'),
(23, 14, '_edit_last', '2'),
(24, 14, '_edit_lock', '1446025031:2'),
(25, 16, '_edit_last', '2'),
(26, 16, '_edit_lock', '1446025056:2'),
(36, 19, '_menu_item_type', 'post_type'),
(37, 19, '_menu_item_menu_item_parent', '0'),
(38, 19, '_menu_item_object_id', '12'),
(39, 19, '_menu_item_object', 'page'),
(40, 19, '_menu_item_target', ''),
(41, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 19, '_menu_item_xfn', ''),
(43, 19, '_menu_item_url', ''),
(45, 20, '_menu_item_type', 'post_type'),
(46, 20, '_menu_item_menu_item_parent', '0'),
(47, 20, '_menu_item_object_id', '10'),
(48, 20, '_menu_item_object', 'page'),
(49, 20, '_menu_item_target', ''),
(50, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 20, '_menu_item_xfn', ''),
(52, 20, '_menu_item_url', ''),
(54, 21, '_menu_item_type', 'post_type'),
(55, 21, '_menu_item_menu_item_parent', '0'),
(56, 21, '_menu_item_object_id', '16'),
(57, 21, '_menu_item_object', 'page'),
(58, 21, '_menu_item_target', ''),
(59, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 21, '_menu_item_xfn', ''),
(61, 21, '_menu_item_url', ''),
(63, 22, '_menu_item_type', 'post_type'),
(64, 22, '_menu_item_menu_item_parent', '0'),
(65, 22, '_menu_item_object_id', '14'),
(66, 22, '_menu_item_object', 'page'),
(67, 22, '_menu_item_target', ''),
(68, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 22, '_menu_item_xfn', ''),
(70, 22, '_menu_item_url', ''),
(71, 10, '_wp_page_template', 'all-news.php'),
(72, 40, '_edit_last', '2'),
(73, 40, '_wp_page_template', 'default'),
(74, 40, '_edit_lock', '1446276826:2'),
(75, 42, '_edit_last', '2'),
(76, 42, '_edit_lock', '1446274221:2'),
(79, 40, '_wp_trash_meta_status', 'publish'),
(80, 40, '_wp_trash_meta_time', '1446276975'),
(81, 44, '_edit_last', '2'),
(82, 44, '_wp_page_template', 'default'),
(83, 44, '_edit_lock', '1446276854:2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-10-17 12:31:50', '2015-10-17 12:31:50', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-10-17 12:45:16', '2015-10-17 12:45:16', '', 0, 'http://localhost/Gebrak-Indonesia/?p=1', 0, 'post', '', 1),
(2, 1, '2015-10-17 12:31:50', '2015-10-17 12:31:50', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/Gebrak-Indonesia/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page', '', '', '2015-10-17 12:44:50', '2015-10-17 12:44:50', '', 0, 'http://localhost/Gebrak-Indonesia/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-10-17 12:32:14', '2015-10-17 12:32:14', '', 'Auto Draft', '', 'trash', 'open', 'open', '', 'auto-draft', '', '', '2015-10-17 12:44:51', '2015-10-17 12:44:51', '', 0, 'http://localhost/Gebrak-Indonesia/?p=3', 0, 'post', '', 0),
(5, 2, '2015-10-17 12:44:49', '2015-10-17 12:44:49', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-10-17 12:44:49', '2015-10-17 12:44:49', '', 1, 'http://localhost/Gebrak-Indonesia/2015/10/17/1-revision-v1/', 0, 'revision', '', 0),
(6, 2, '2015-10-17 12:44:50', '2015-10-17 12:44:50', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/Gebrak-Indonesia/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-10-17 12:44:50', '2015-10-17 12:44:50', '', 2, 'http://localhost/Gebrak-Indonesia/2015/10/17/2-revision-v1/', 0, 'revision', '', 0),
(7, 2, '2015-10-17 12:44:51', '2015-10-17 12:44:51', '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2015-10-17 12:44:51', '2015-10-17 12:44:51', '', 3, 'http://localhost/Gebrak-Indonesia/2015/10/17/3-revision-v1/', 0, 'revision', '', 0),
(9, 2, '2015-10-19 07:52:09', '2015-10-19 07:52:09', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <hendro.tb@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Gebrak Indonesia (http://localhost/Gebrak-Indonesia)\nhendro.tb@gmail.com\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nGebrak Indonesia <hendro.tb@gmail.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Gebrak Indonesia (http://localhost/Gebrak-Indonesia)\n[your-email]\nReply-To: hendro.tb@gmail.com\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2015-10-19 07:52:09', '2015-10-19 07:52:09', '', 0, 'http://localhost/Gebrak-Indonesia/?post_type=wpcf7_contact_form&p=9', 0, 'wpcf7_contact_form', '', 0),
(10, 2, '2015-10-28 09:38:35', '2015-10-28 09:38:35', '', 'Berita', '', 'publish', 'closed', 'closed', '', 'berita', '', '', '2015-10-30 11:33:43', '2015-10-30 11:33:43', '', 0, 'http://localhost/Gebrak-Indonesia/?page_id=10', 0, 'page', '', 0),
(11, 2, '2015-10-28 09:38:35', '2015-10-28 09:38:35', '', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-28 09:38:35', '2015-10-28 09:38:35', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/28/10-revision-v1/', 0, 'revision', '', 0),
(12, 2, '2015-10-28 09:39:07', '2015-10-28 09:39:07', 'Hello World!', 'Acara', '', 'publish', 'closed', 'closed', '', 'acara', '', '', '2015-10-30 10:35:41', '2015-10-30 10:35:41', '', 0, 'http://localhost/Gebrak-Indonesia/?page_id=12', 0, 'page', '', 0),
(13, 2, '2015-10-28 09:39:07', '2015-10-28 09:39:07', '', 'Acara', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-28 09:39:07', '2015-10-28 09:39:07', '', 12, 'http://localhost/Gebrak-Indonesia/2015/10/28/12-revision-v1/', 0, 'revision', '', 0),
(14, 2, '2015-10-28 09:39:30', '2015-10-28 09:39:30', '', 'Tentang', '', 'publish', 'closed', 'closed', '', 'tentang', '', '', '2015-10-28 09:39:30', '2015-10-28 09:39:30', '', 0, 'http://localhost/Gebrak-Indonesia/?page_id=14', 0, 'page', '', 0),
(15, 2, '2015-10-28 09:39:30', '2015-10-28 09:39:30', '', 'Tentang', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-10-28 09:39:30', '2015-10-28 09:39:30', '', 14, 'http://localhost/Gebrak-Indonesia/2015/10/28/14-revision-v1/', 0, 'revision', '', 0),
(16, 2, '2015-10-28 09:39:48', '2015-10-28 09:39:48', '', 'Donasi', '', 'publish', 'closed', 'closed', '', 'donasi', '', '', '2015-10-28 09:39:48', '2015-10-28 09:39:48', '', 0, 'http://localhost/Gebrak-Indonesia/?page_id=16', 0, 'page', '', 0),
(17, 2, '2015-10-28 09:39:48', '2015-10-28 09:39:48', '', 'Donasi', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2015-10-28 09:39:48', '2015-10-28 09:39:48', '', 16, 'http://localhost/Gebrak-Indonesia/2015/10/28/16-revision-v1/', 0, 'revision', '', 0),
(19, 2, '2015-10-28 09:40:14', '2015-10-28 09:40:14', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2015-10-28 09:41:07', '2015-10-28 09:41:07', '', 0, 'http://localhost/Gebrak-Indonesia/?p=19', 1, 'nav_menu_item', '', 0),
(20, 2, '2015-10-28 09:40:14', '2015-10-28 09:40:14', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2015-10-28 09:41:07', '2015-10-28 09:41:07', '', 0, 'http://localhost/Gebrak-Indonesia/?p=20', 2, 'nav_menu_item', '', 0),
(21, 2, '2015-10-28 09:40:15', '2015-10-28 09:40:15', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2015-10-28 09:41:07', '2015-10-28 09:41:07', '', 0, 'http://localhost/Gebrak-Indonesia/?p=21', 3, 'nav_menu_item', '', 0),
(22, 2, '2015-10-28 09:40:15', '2015-10-28 09:40:15', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2015-10-28 09:41:07', '2015-10-28 09:41:07', '', 0, 'http://localhost/Gebrak-Indonesia/?p=22', 4, 'nav_menu_item', '', 0),
(24, 2, '2015-10-30 10:15:32', '2015-10-30 10:15:32', '<strong>Hello World</strong>', 'Acara', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 10:15:32', '2015-10-30 10:15:32', '', 12, 'http://localhost/Gebrak-Indonesia/2015/10/30/12-revision-v1/', 0, 'revision', '', 0),
(25, 2, '2015-10-30 10:17:17', '2015-10-30 10:17:17', '', 'Acara', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2015-10-30 10:17:17', '2015-10-30 10:17:17', '', 12, 'http://localhost/Gebrak-Indonesia/2015/10/30/12-autosave-v1/', 0, 'revision', '', 0),
(26, 2, '2015-10-30 10:17:28', '2015-10-30 10:17:28', '', 'Acara', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 10:17:28', '2015-10-30 10:17:28', '', 12, 'http://localhost/Gebrak-Indonesia/2015/10/30/12-revision-v1/', 0, 'revision', '', 0),
(27, 2, '2015-10-30 10:35:41', '2015-10-30 10:35:41', 'Hello World!', 'Acara', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-30 10:35:41', '2015-10-30 10:35:41', '', 12, 'http://localhost/Gebrak-Indonesia/2015/10/30/12-revision-v1/', 0, 'revision', '', 0),
(28, 2, '2015-10-30 10:45:09', '2015-10-30 10:45:09', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nGebrak Indonesia\r\n\r\n<!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->\r\n\r\n<!-- Custom CSS -->\r\n\r\n<!-- Custom Fonts -->\r\n<!-- 	<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">\r\n    	<link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css"> -->\r\n\r\n<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n<!-- WARNING: Respond.js doesn''t work if you view the page via file:// -->\r\n<!-- [if lt IE 9]>\r\n<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>\r\n        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>\r\n<![endif]-->\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<!-- Navigation -->\r\n\r\n<nav class="navbar navbar-default navbar-fixed-top">\r\n<div class="container"><!-- Brand and toggle get grouped for better mobile display -->\r\n<div class="navbar-header page-scroll"><button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">\r\n<span class="sr-only">Toggle navigation</span>\r\n\r\n\r\n\r\n</button>\r\n<a class="navbar-brand" href="#page-top">Gebrak Indonesia</a></div>\r\n<!-- Collect the nav links, forms, and other content for toggling -->\r\n<div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">\r\n<ul class="nav navbar-nav navbar-right">\r\n	<li class="hidden"></li>\r\n	<li class="page-scroll"><a href="#portfolio">Berita</a></li>\r\n	<li class="page-scroll"><a href="#event">Acara</a></li>\r\n	<li class="page-scroll"><a href="#about">Tentang</a></li>\r\n	<li class="page-scroll"><a href="#contact">Donasi</a></li>\r\n</ul>\r\n</div>\r\n<!-- /.navbar-collapse -->\r\n\r\n</div>\r\n<!-- /.container-fluid -->\r\n\r\n</nav><!-- Portfolio Grid Section -->\r\n\r\n<section id="portfolio">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-12 text-center">\r\n<h2>Semua Berita</h2>\r\n<!--\r\n\r\n<hr class="star-primary">\r\n\r\n-->\r\n\r\n\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption">\r\n<div class="caption-content"><!-- <i class="fa fa-search-plus fa-3x"></i> -->\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!</div>\r\n</div>\r\n<img class="img-responsive" src="img/portfolio/cabin.png" alt="" />\r\n<div class="item-detail">\r\n<h3>Judul Acara</h3>\r\n<h4>xx-Agustus-2015</h4>\r\n</div>\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/cake.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/circus.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/game.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/safe.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/submarine.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-12 text-center"><a class="btn btn-success btn-lg" href="#">Lihat Lainnya</a></div>\r\n</div>\r\n</div>\r\n</section><!-- Footer -->\r\n\r\n<footer class="text-center">\r\n<div class="footer-below">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-12">Copyright © Your Website 2014</div>\r\n</div>\r\n</div>\r\n</div>\r\n</footer><!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->\r\n<div class="scroll-top page-scroll visible-xs visible-sm"><a class="btn btn-primary" href="#page-top">\r\n<i class="fa fa-chevron-up"></i>\r\n</a></div>\r\n<!-- Portfolio Modals -->\r\n<div id="portfolioModal1" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2 id="title">Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/cabin.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal2" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/cake.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal3" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/circus.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal4" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/game.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal5" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/safe.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal6" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/submarine.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- jQuery -->\r\n<script src="js/jquery.js"></script><!-- Bootstrap Core JavaScript --><script src="js/bootstrap.min.js"></script>\r\n\r\n<!-- Plugin JavaScript -->\r\n<script src="js/jquery.easing.min.js"></script><script src="js/classie.js"></script>\r\n<script src="js/cbpAnimatedHeader.js"></script><!-- Contact Form JavaScript --><script src="js/jqBootstrapValidation.js"></script>\r\n<script src="js/contact_me.js"></script><!-- Custom Theme JavaScript --><script src="js/freelancer.js"></script>\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 10:45:09', '2015-10-30 10:45:09', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(29, 2, '2015-10-30 11:05:35', '2015-10-30 11:05:35', '<!-- Portfolio Grid Section -->\n\n<section id="portfolio">\n<div class="container">\n<div class="row">\n<div class="col-lg-12 text-center">\n<h2>Semua Berita</h2>\n<!--\n\n<hr class="star-primary">\n\n-->\n\n\n\n</div>\n</div>\n<div class="row">\n<div class="col-sm-6 portfolio-item">\n<div class="caption">\n<div class="caption-content"><!-- <i class="fa fa-search-plus fa-3x"></i> -->\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!</div>\n</div>\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/cabin.png" alt="" />\n<div class="item-detail">\n<h3>Judul Acara</h3>\n<h4>xx-Agustus-2015</h4>\n</div>\n</div>\n<div class="col-sm-6 portfolio-item">\n<div class="caption"></div>\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/cake.png" alt="" />\n\n</div>\n<div class="col-sm-6 portfolio-item">\n<div class="caption"></div>\n<img class="img-responsive" src="img/portfolio/circus.png" alt="" />\n\n</div>\n<div class="col-sm-6 portfolio-item">\n<div class="caption"></div>\n<img class="img-responsive" src="img/portfolio/game.png" alt="" />\n\n</div>\n<div class="col-sm-6 portfolio-item">\n<div class="caption"></div>\n<img class="img-responsive" src="img/portfolio/safe.png" alt="" />\n\n</div>\n<div class="col-sm-6 portfolio-item">\n<div class="caption"></div>\n<img class="img-responsive" src="img/portfolio/submarine.png" alt="" />\n\n</div>\n<div class="col-sm-12 text-center"><a class="btn btn-success btn-lg" href="#">Lihat Lainnya</a></div>\n</div>\n</div>\n</section>', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2015-10-30 11:05:35', '2015-10-30 11:05:35', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-autosave-v1/', 0, 'revision', '', 0),
(30, 2, '2015-10-30 10:53:52', '2015-10-30 10:53:52', '<!-- Portfolio Grid Section -->\r\n\r\n<section id="portfolio">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-12 text-center">\r\n<h2>Semua Berita</h2>\r\n<!--\r\n\r\n<hr class="star-primary">\r\n\r\n-->\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption">\r\n<div class="caption-content"><!-- <i class="fa fa-search-plus fa-3x"></i> -->\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!</div>\r\n</div>\r\n<img class="img-responsive" src="img/portfolio/cabin.png" alt="" />\r\n<div class="item-detail">\r\n<h3>Judul Acara</h3>\r\n<h4>xx-Agustus-2015</h4>\r\n</div>\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/cake.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/circus.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/game.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/safe.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/submarine.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-12 text-center"><a class="btn btn-success btn-lg" href="#">Lihat Lainnya</a></div>\r\n</div>\r\n</div>\r\n</section><!-- Footer -->\r\n\r\n<footer class="text-center">\r\n<div class="footer-below">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-12">Copyright © Your Website 2014</div>\r\n</div>\r\n</div>\r\n</div>\r\n</footer><!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->\r\n<div class="scroll-top page-scroll visible-xs visible-sm"><a class="btn btn-primary" href="#page-top">\r\n<i class="fa fa-chevron-up"></i>\r\n</a></div>\r\n<!-- Portfolio Modals -->\r\n<div id="portfolioModal1" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2 id="title">Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/cabin.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal2" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/cake.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal3" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/circus.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal4" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/game.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal5" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/safe.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="portfolioModal6" class="portfolio-modal modal fade" tabindex="-1">\r\n<div class="modal-content">\r\n<div class="close-modal" data-dismiss="modal"></div>\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-8 col-lg-offset-2">\r\n<div class="modal-body">\r\n<h2>Project Title</h2>\r\n\r\n<hr class="star-primary" />\r\n\r\n<img class="img-responsive img-centered" src="img/portfolio/submarine.png" alt="" />\r\n\r\nUse this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!\r\n<ul class="list-inline item-details">\r\n	<li>Client:\r\n<strong><a href="http://startbootstrap.com">Start Bootstrap</a>\r\n</strong></li>\r\n	<li>Date:\r\n<strong><a href="http://startbootstrap.com">April 2014</a>\r\n</strong></li>\r\n	<li>Service:\r\n<strong><a href="http://startbootstrap.com">Web Development</a>\r\n</strong></li>\r\n</ul>\r\n<button class="btn btn-default" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 10:53:52', '2015-10-30 10:53:52', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(31, 2, '2015-10-30 10:55:03', '2015-10-30 10:55:03', 'Hello World', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 10:55:03', '2015-10-30 10:55:03', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(32, 2, '2015-10-30 10:58:29', '2015-10-30 10:58:29', ' <!-- Portfolio Grid Section -->\r\n    <section id="portfolio">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 text-center">\r\n                    <h2>Semua Berita</h2>\r\n                    <!-- <hr class="star-primary"> -->\r\n                    <br><br><br>\r\n                </div>\r\n            </div>\r\n            <div class="row">\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="newspage.html" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <!-- <i class="fa fa-search-plus fa-3x"></i> -->\r\n                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/cabin.png" class="img-responsive" alt="">\r\n                        <div class="item-detail">\r\n                            <h3>Judul Acara</h3>\r\n                            <h4>xx-Agustus-2015</h4>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/cake.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/circus.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/game.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/safe.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/submarine.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-12 text-center" >\r\n                    <a href="#" class="btn btn-success btn-lg">Lihat Lainnya</a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 10:58:29', '2015-10-30 10:58:29', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(33, 2, '2015-10-30 11:00:17', '2015-10-30 11:00:17', ' <!-- Portfolio Grid Section -->\r\n    <section id="portfolio">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-lg-12 text-center">\r\n                    <h2>Semua Berita</h2>\r\n                    <!-- <hr class="star-primary"> -->\r\n                    <br><br><br>\r\n                </div>\r\n            </div>\r\n            <div class="row">\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="newspage.html" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <!-- <i class="fa fa-search-plus fa-3x"></i> -->\r\n                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!\r\n                            </div>\r\n                        </div>\r\n                        <img src="<?php bloginfo(''template_directory''); ?>/img/portfolio/cabin.png" class="img-responsive" alt="">\r\n                        <div class="item-detail">\r\n                            <h3>Judul Acara</h3>\r\n                            <h4>xx-Agustus-2015</h4>\r\n                        </div>\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/cake.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/circus.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/game.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/safe.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-6 portfolio-item">\r\n                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">\r\n                        <div class="caption">\r\n                            <div class="caption-content">\r\n                                <i class="fa fa-search-plus fa-3x"></i>\r\n                            </div>\r\n                        </div>\r\n                        <img src="img/portfolio/submarine.png" class="img-responsive" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-sm-12 text-center" >\r\n                    <a href="#" class="btn btn-success btn-lg">Lihat Lainnya</a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 11:00:17', '2015-10-30 11:00:17', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(34, 2, '2015-10-30 11:04:32', '2015-10-30 11:04:32', '<!-- Portfolio Grid Section -->\r\n\r\n<section id="portfolio">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-12 text-center">\r\n<h2>Semua Berita</h2>\r\n<!--\r\n\r\n<hr class="star-primary">\r\n\r\n-->\r\n\r\n\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption">\r\n<div class="caption-content"><!-- <i class="fa fa-search-plus fa-3x"></i> -->\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!</div>\r\n</div>\r\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/cabin.png" alt="" />\r\n<div class="item-detail">\r\n<h3>Judul Acara</h3>\r\n<h4>xx-Agustus-2015</h4>\r\n</div>\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/cake.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/circus.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/game.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/safe.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="img/portfolio/submarine.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-12 text-center"><a class="btn btn-success btn-lg" href="#">Lihat Lainnya</a></div>\r\n</div>\r\n</div>\r\n</section>', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 11:04:32', '2015-10-30 11:04:32', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(35, 2, '2015-10-30 11:05:53', '2015-10-30 11:05:53', '<!-- Portfolio Grid Section -->\r\n\r\n<section id="portfolio">\r\n<div class="container">\r\n<div class="row">\r\n<div class="col-lg-12 text-center">\r\n<h2>Semua Berita</h2>\r\n<!--\r\n\r\n<hr class="star-primary">\r\n\r\n-->\r\n\r\n\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption">\r\n<div class="caption-content"><!-- <i class="fa fa-search-plus fa-3x"></i> -->\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!</div>\r\n</div>\r\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/cabin.png" alt="" />\r\n<div class="item-detail">\r\n<h3>Judul Acara</h3>\r\n<h4>xx-Agustus-2015</h4>\r\n</div>\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/cake.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/circus.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/game.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/safe.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-6 portfolio-item">\r\n<div class="caption"></div>\r\n<img class="img-responsive" src="<?php bloginfo(''template_directory''); ?>/img/portfolio/submarine.png" alt="" />\r\n\r\n</div>\r\n<div class="col-sm-12 text-center"><a class="btn btn-success btn-lg" href="#">Lihat Lainnya</a></div>\r\n</div>\r\n</div>\r\n</section>', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 11:05:53', '2015-10-30 11:05:53', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(36, 2, '2015-10-30 11:09:19', '2015-10-30 11:09:19', '<img src="C:\\xampp\\htdocs\\Gebrak-Indonesia\\wp-content\\themes\\custom\\img\\portfolio" alt="" />', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 11:09:19', '2015-10-30 11:09:19', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(37, 2, '2015-10-30 11:10:20', '2015-10-30 11:10:20', 'Hello World<img src="C:\\xampp\\htdocs\\Gebrak-Indonesia\\wp-content\\themes\\custom\\img\\portfolio" alt="" />', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 11:10:20', '2015-10-30 11:10:20', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(38, 2, '2015-10-30 11:10:49', '2015-10-30 11:10:49', 'Hello World', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 11:10:49', '2015-10-30 11:10:49', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0),
(39, 2, '2015-10-30 11:33:43', '2015-10-30 11:33:43', '', 'Berita', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-30 11:33:43', '2015-10-30 11:33:43', '', 10, 'http://localhost/Gebrak-Indonesia/2015/10/30/10-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(40, 2, '2015-10-31 06:50:51', '2015-10-31 06:50:51', '', 'Beranda', '', 'trash', 'closed', 'closed', '', 'beranda', '', '', '2015-10-31 07:36:15', '2015-10-31 07:36:15', '', 0, 'http://localhost/Gebrak-Indonesia/?page_id=40', 0, 'page', '', 0),
(41, 2, '2015-10-31 06:50:51', '2015-10-31 06:50:51', '', 'Beranda', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-10-31 06:50:51', '2015-10-31 06:50:51', '', 40, 'http://localhost/Gebrak-Indonesia/2015/10/31/40-revision-v1/', 0, 'revision', '', 0),
(42, 2, '2015-10-31 06:52:37', '2015-10-31 06:52:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!', 'Testing Post', '', 'publish', 'open', 'open', '', 'testing-post', '', '', '2015-10-31 06:52:37', '2015-10-31 06:52:37', '', 0, 'http://localhost/Gebrak-Indonesia/?p=42', 0, 'post', '', 0),
(43, 2, '2015-10-31 06:52:37', '2015-10-31 06:52:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!', 'Testing Post', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2015-10-31 06:52:37', '2015-10-31 06:52:37', '', 42, 'http://localhost/Gebrak-Indonesia/2015/10/31/42-revision-v1/', 0, 'revision', '', 0),
(44, 2, '2015-10-31 07:36:31', '2015-10-31 07:36:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-10-31 07:36:31', '2015-10-31 07:36:31', '', 0, 'http://localhost/Gebrak-Indonesia/?page_id=44', 0, 'page', '', 0),
(45, 2, '2015-10-31 07:36:31', '2015-10-31 07:36:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2015-10-31 07:36:31', '2015-10-31 07:36:31', '', 44, 'http://localhost/Gebrak-Indonesia/2015/10/31/44-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(3, 1, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(42, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(19, 2, 'nickname', 'gebrak'),
(20, 2, 'first_name', 'Gebrak'),
(21, 2, 'last_name', 'Indonesia'),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(29, 2, 'wp_user_level', '10'),
(30, 2, 'dismissed_wp_pointers', ''),
(31, 2, 'session_tokens', 'a:2:{s:64:"66483fcdfc267579a239e9bcee96006e1d5e12290662a7261528f7af910ee78c";a:4:{s:10:"expiration";i:1446450480;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36";s:5:"login";i:1445240880;}s:64:"d6cc3e6f5380e3645daf8855e0fd7034cc7f9f9bca5a1b201a9eedc7135aebfd";a:4:{s:10:"expiration";i:1446372632;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36";s:5:"login";i:1446199832;}}'),
(32, 2, 'wp_dashboard_quick_press_last_post_id', '23'),
(33, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(34, 2, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(35, 2, 'wp_user-settings', 'editor=html&post_dfw=off'),
(36, 2, 'wp_user-settings-time', '1446203445'),
(37, 2, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, 'gebrak', '$P$BcRnSTrM9y7viosgc56XhnMCoMhPVU0', 'gebrak', 'gebrak@gmail.com', 'http://-', '2015-10-17 12:44:13', '1445085855:$P$BexhqdVsaBUNZh6b0n5fMsdORlRjk4.', 0, 'Gebrak Indonesia');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
