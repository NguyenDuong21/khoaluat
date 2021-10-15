-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 06:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nukeviet`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '6d7def7d140d1351cae04548e8610b94', 1633959079, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, 'ac829c54e33f90a10917acecf6d52f81'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '4937b52d890a8b505533d7ef6ecc94a5'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'b9565b0b1366c677b12bdf37f852be98'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '1ce30091dd98c0541fe2c3e4cc83218c'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, '5f92b75b467ef755febc0f3899d2b43a'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, 'c71bb4a5cceeb22f1bf82be95de6dd04'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '788190fa9293d94670a22f9a76d29fa6'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '9a3b11ab36435d92a86e2e3ba4486c76'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, 'aacb1a4baf44586ed3b34f2d52f25b29'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, 'b01ce67376787b87e10a686136a66e07'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, 'db242ee5cd3716bb486fcec03b891713');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_oauth`
--

CREATE TABLE `nv4_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_click`
--

INSERT INTO `nv4_banners_click` (`id`, `bid`, `click_time`, `click_day`, `click_ip`, `click_country`, `click_browse_key`, `click_browse_name`, `click_os_key`, `click_os_name`, `click_ref`) VALUES
(1, 3, 1632975050, 0, '::1', 'ZZ', '', 'chrome', '', 'Windows 10', 'http://localhost:8080/nukeviet/index.php?language=vi&nv=news');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1, 1, 'images', '', 0),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1, 1, 'images', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1632575222, 1632575222, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 1, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1632575222, 1632575222, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '8388608'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '0'),
('sys', 'global', 'rewrite_optional', '0'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', ''),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1633700022'),
('sys', 'global', 'captcha_type', '0'),
('sys', 'global', 'version', '4.4.02'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '0'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'nukeviet'),
('vi', 'global', 'site_logo', ''),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Chia sẻ thành công, kết nối đam mê'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', '[\"default\"]'),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1633962978'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '1'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', ''),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', ''),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'localhost'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_e7uMb4'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '1'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'AFp8riWkaj6F7ogdfTyz-A,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'themes', 'shop-hoa', 'a:0:{}'),
('sys', 'site', 'sitetimestamp', '1'),
('vi', 'laws', 'captcha', '1'),
('vi', 'laws', 'adminscomm', ''),
('vi', 'laws', 'emailcomm', '0'),
('vi', 'laws', 'setcomm', '4'),
('vi', 'laws', 'activecomm', '0'),
('vi', 'laws', 'auto_postcomm', '0'),
('vi', 'laws', 'captcha_area_comm', '1'),
('vi', 'laws', 'captcha_type_comm', 'captcha'),
('vi', 'laws', 'allowed_comm', '6'),
('vi', 'laws', 'view_comm', '6'),
('vi', 'laws', 'sortcomm', '0'),
('vi', 'laws', 'perpagecomm', '5'),
('vi', 'laws', 'timeoutcomm', '360'),
('vi', 'laws', 'allowattachcomm', '0'),
('vi', 'laws', 'alloweditorcomm', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cookies`
--

INSERT INTO `nv4_cookies` (`name`, `value`, `domain`, `path`, `expires`, `secure`) VALUES
('nv4c_b1Sp_ctr', 'NDJfMTEyXzI1XzQ5LlZO', '.api.nukeviet.vn', '/', 1665496942, 0),
('nv4c_b1Sp_u_lang', 'YpTSHDtzEZZlnKC1-4-mDQ,,', '.api.nukeviet.vn', '/', 1663750291, 0),
('nv4c_b1Sp_statistic_vi', 'rR6cgoL-zy-GMcO_Wu9prA,,', '.api.nukeviet.vn', '/', 1633962742, 0),
('nv4c_b1Sp_nvvithemever', 'y6z0B4S1YKW4aqQyD0bnVQ,,', '.api.nukeviet.vn', '/', 1665064942, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1633960922, 0),
('total', 'hits', 1633960922, 153, 153),
('year', '2021', 1633960922, 153, 153),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('year', '2029', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 1633016069, 66, 66),
('month', 'Oct', 1633960922, 87, 87),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 1633101519, 13, 13),
('day', '02', 1633186324, 15, 15),
('day', '03', 1633276559, 18, 18),
('day', '04', 1633357481, 13, 13),
('day', '05', 1633401296, 3, 3),
('day', '06', 1633533680, 7, 7),
('day', '07', 1633612616, 6, 6),
('day', '08', 1633706019, 5, 5),
('day', '09', 1633771052, 2, 2),
('day', '10', 1633857757, 3, 3),
('day', '11', 1633960922, 2, 2),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 1632575443, 0, 0),
('day', '26', 1632667740, 0, 0),
('day', '27', 1632716169, 0, 0),
('day', '28', 1632840715, 0, 0),
('day', '29', 1632932182, 0, 0),
('day', '30', 1633016069, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1633857757, 31, 31),
('dayofweek', 'Monday', 1633960922, 21, 21),
('dayofweek', 'Tuesday', 1633401296, 19, 19),
('dayofweek', 'Wednesday', 1633533680, 20, 20),
('dayofweek', 'Thursday', 1633612616, 26, 26),
('dayofweek', 'Friday', 1633706019, 18, 18),
('dayofweek', 'Saturday', 1633771052, 18, 18),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 1632963100, 0, 0),
('hour', '08', 1633571477, 0, 0),
('hour', '09', 1633574455, 0, 0),
('hour', '10', 1633577497, 0, 0),
('hour', '11', 1632803562, 0, 0),
('hour', '12', 0, 0, 0),
('hour', '13', 0, 0, 0),
('hour', '14', 1633246668, 0, 0),
('hour', '15', 1633251560, 0, 0),
('hour', '16', 1633857757, 0, 0),
('hour', '17', 1633085065, 0, 0),
('hour', '18', 0, 0, 0),
('hour', '19', 1633351332, 0, 0),
('hour', '20', 1633959052, 1, 1),
('hour', '21', 1633960922, 1, 1),
('hour', '22', 1633706019, 0, 0),
('hour', '23', 1632932182, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1633960922, 146, 146),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 1633857757, 7, 7),
('os', 'unknown', 0, 0, 0),
('os', 'win', 1633857757, 7, 7),
('os', 'win10', 1633960922, 143, 143),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 1633085065, 3, 3),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1633960922, 153, 153),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1632575222, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1633962678, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1632575222, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1633959058, 1, 'Tự động lưu CSDL'),
(3, 1632575222, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1633962678, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1632575222, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1633961238, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1632575222, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1633959058, 1, 'Xóa các file error_log quá hạn'),
(6, 1632575222, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1632575222, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1633962678, 1, 'Xóa các referer quá hạn'),
(8, 1632575222, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1633962678, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1632575222, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1633959058, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_extension_files`
--

INSERT INTO `nv4_extension_files` (`idfile`, `type`, `title`, `path`, `lastmodified`, `duplicate`) VALUES
(1, 'module', 'tkb', 'modules/tkb/action_mysql.php', 1632646403, 0),
(2, 'module', 'tkb', 'modules/tkb/admin.functions.php', 1632646403, 0),
(3, 'module', 'tkb', 'modules/tkb/admin.menu.php', 1632646403, 0),
(4, 'module', 'tkb', 'modules/tkb/admin/config.php', 1632646403, 0),
(5, 'module', 'tkb', 'modules/tkb/admin/import_giaovien.php', 1632646403, 0),
(6, 'module', 'tkb', 'modules/tkb/admin/import_lop.php', 1632646403, 0),
(7, 'module', 'tkb', 'modules/tkb/admin/main.php', 1632646403, 0),
(8, 'module', 'tkb', 'modules/tkb/funcs/giaovien.php', 1632646403, 0),
(9, 'module', 'tkb', 'modules/tkb/funcs/main.php', 1632646403, 0),
(10, 'module', 'tkb', 'modules/tkb/functions.php', 1632646403, 0),
(11, 'module', 'tkb', 'modules/tkb/language/admin_vi.php', 1632646403, 0),
(12, 'module', 'tkb', 'modules/tkb/language/vi.php', 1632646403, 0),
(13, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/.gitattributes', 1632646403, 0),
(14, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/.gitignore', 1632646403, 0),
(15, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/.travis.yml', 1632646403, 0),
(16, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/changelog.txt', 1632646403, 0),
(17, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel.php', 1632646403, 0),
(18, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Autoloader.php', 1632646403, 0),
(19, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorageFactory.php', 1632646403, 0),
(20, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/APC.php', 1632646403, 0),
(21, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/CacheBase.php', 1632646403, 0),
(22, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php', 1632646403, 0),
(23, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/ICache.php', 1632646403, 0),
(24, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/Igbinary.php', 1632646403, 0),
(25, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/Memcache.php', 1632646403, 0),
(26, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/Memory.php', 1632646403, 0),
(27, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php', 1632646403, 0),
(28, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php', 1632646403, 0),
(29, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php', 1632646403, 0),
(30, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/SQLite.php', 1632646403, 0),
(31, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/SQLite3.php', 1632646403, 0),
(32, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CachedObjectStorage/Wincache.php', 1632646403, 0),
(33, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php', 1632646403, 0),
(34, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/CalcEngine/Logger.php', 1632646403, 0),
(35, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation.php', 1632646403, 0),
(36, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Database.php', 1632646403, 0),
(37, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/DateTime.php', 1632646403, 0),
(38, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Engineering.php', 1632646403, 0),
(39, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Exception.php', 1632646403, 0),
(40, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/ExceptionHandler.php', 1632646403, 0),
(41, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Financial.php', 1632646403, 0),
(42, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/FormulaParser.php', 1632646403, 0),
(43, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/FormulaToken.php', 1632646403, 0),
(44, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Function.php', 1632646403, 0),
(45, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/functionlist.txt', 1632646403, 0),
(46, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Functions.php', 1632646403, 0),
(47, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Logical.php', 1632646403, 0),
(48, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/LookupRef.php', 1632646403, 0),
(49, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/MathTrig.php', 1632646403, 0),
(50, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Statistical.php', 1632646403, 0),
(51, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/TextData.php', 1632646403, 0),
(52, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Calculation/Token/Stack.php', 1632646403, 0),
(53, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Cell.php', 1632646403, 0),
(54, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Cell/AdvancedValueBinder.php', 1632646403, 0),
(55, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Cell/DataType.php', 1632646403, 0),
(56, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Cell/DataValidation.php', 1632646403, 0),
(57, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Cell/DefaultValueBinder.php', 1632646403, 0),
(58, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Cell/Hyperlink.php', 1632646403, 0),
(59, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Cell/IValueBinder.php', 1632646403, 0),
(60, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart.php', 1632646403, 0),
(61, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Axis.php', 1632646403, 0),
(62, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/DataSeries.php', 1632646403, 0),
(63, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/DataSeriesValues.php', 1632646403, 0),
(64, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Exception.php', 1632646403, 0),
(65, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/GridLines.php', 1632646403, 0),
(66, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Layout.php', 1632646403, 0),
(67, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Legend.php', 1632646403, 0),
(68, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/PlotArea.php', 1632646403, 0),
(69, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Properties.php', 1632646403, 0),
(70, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Renderer/jpgraph.php', 1632646403, 0),
(71, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt', 1632646403, 0),
(72, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Chart/Title.php', 1632646403, 0),
(73, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Comment.php', 1632646403, 0),
(74, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/DocumentProperties.php', 1632646403, 0),
(75, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/DocumentSecurity.php', 1632646403, 0),
(76, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Exception.php', 1632646403, 0),
(77, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/HashTable.php', 1632646403, 0),
(78, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Helper/HTML.php', 1632646403, 0),
(79, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/IComparable.php', 1632646403, 0),
(80, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/IOFactory.php', 1632646403, 0),
(81, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/bg/config', 1632646403, 0),
(82, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/cs/config', 1632646403, 0),
(83, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/cs/functions', 1632646403, 0),
(84, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/da/config', 1632646403, 0),
(85, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/da/functions', 1632646403, 0),
(86, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/de/config', 1632646403, 0),
(87, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/de/functions', 1632646403, 0),
(88, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/en/uk/config', 1632646403, 0),
(89, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/es/config', 1632646403, 0),
(90, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/es/functions', 1632646403, 0),
(91, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/fi/config', 1632646403, 0),
(92, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/fi/functions', 1632646403, 0),
(93, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/fr/config', 1632646403, 0),
(94, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/fr/functions', 1632646403, 0),
(95, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/hu/config', 1632646403, 0),
(96, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/hu/functions', 1632646403, 0),
(97, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/it/config', 1632646403, 0),
(98, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/it/functions', 1632646403, 0),
(99, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/nl/config', 1632646403, 0),
(100, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/nl/functions', 1632646403, 0),
(101, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/no/config', 1632646403, 0),
(102, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/no/functions', 1632646403, 0),
(103, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/pl/config', 1632646403, 0),
(104, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/pl/functions', 1632646403, 0),
(105, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/pt/br/config', 1632646403, 0),
(106, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/pt/br/functions', 1632646403, 0),
(107, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/pt/config', 1632646403, 0),
(108, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/pt/functions', 1632646403, 0),
(109, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/ru/config', 1632646403, 0),
(110, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/ru/functions', 1632646403, 0),
(111, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/sv/config', 1632646403, 0),
(112, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/sv/functions', 1632646403, 0),
(113, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/tr/config', 1632646403, 0),
(114, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/locale/tr/functions', 1632646403, 0),
(115, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/NamedRange.php', 1632646403, 0),
(116, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Abstract.php', 1632646403, 0),
(117, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/CSV.php', 1632646403, 0),
(118, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/DefaultReadFilter.php', 1632646403, 0),
(119, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel2003XML.php', 1632646403, 0),
(120, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel2007.php', 1632646403, 0),
(121, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel2007/Chart.php', 1632646403, 0),
(122, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel2007/Theme.php', 1632646403, 0),
(123, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5.php', 1632646403, 0),
(124, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/Color.php', 1632646403, 0),
(125, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php', 1632646403, 0),
(126, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php', 1632646403, 0),
(127, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php', 1632646403, 0),
(128, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/ErrorCode.php', 1632646403, 0),
(129, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/Escher.php', 1632646403, 0),
(130, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/MD5.php', 1632646403, 0),
(131, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/RC4.php', 1632646403, 0),
(132, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/Style/Border.php', 1632646403, 0),
(133, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php', 1632646403, 0),
(134, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Exception.php', 1632646403, 0),
(135, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/Gnumeric.php', 1632646403, 0),
(136, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/HTML.php', 1632646403, 0),
(137, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/IReader.php', 1632646403, 0),
(138, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/IReadFilter.php', 1632646403, 0),
(139, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/OOCalc.php', 1632646403, 0),
(140, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Reader/SYLK.php', 1632646403, 0),
(141, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/ReferenceHelper.php', 1632646403, 0),
(142, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/RichText.php', 1632646403, 0),
(143, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/RichText/ITextElement.php', 1632646403, 0),
(144, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/RichText/Run.php', 1632646403, 0),
(145, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/RichText/TextElement.php', 1632646403, 0),
(146, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Settings.php', 1632646403, 0),
(147, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/CodePage.php', 1632646403, 0),
(148, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Date.php', 1632646403, 0),
(149, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Drawing.php', 1632646403, 0),
(150, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher.php', 1632646403, 0),
(151, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher/DgContainer.php', 1632646403, 0),
(152, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php', 1632646403, 0),
(153, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php', 1632646403, 0),
(154, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher/DggContainer.php', 1632646403, 0),
(155, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php', 1632646403, 0),
(156, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php', 1632646403, 0),
(157, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php', 1632646403, 0),
(158, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Excel5.php', 1632646403, 0),
(159, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/File.php', 1632646403, 0),
(160, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/Font.php', 1632646403, 0),
(161, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT', 1632646403, 0),
(162, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php', 1632646403, 0),
(163, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php', 1632646403, 0),
(164, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php', 1632646403, 0),
(165, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/Matrix.php', 1632646403, 0),
(166, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php', 1632646403, 0),
(167, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php', 1632646403, 0),
(168, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/utils/Error.php', 1632646403, 0),
(169, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/JAMA/utils/Maths.php', 1632646403, 0),
(170, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/OLE.php', 1632646403, 0),
(171, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/OLERead.php', 1632646403, 0),
(172, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php', 1632646403, 0),
(173, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/OLE/PPS.php', 1632646403, 0),
(174, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/OLE/PPS/File.php', 1632646403, 0),
(175, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/OLE/PPS/Root.php', 1632646403, 0),
(176, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/PasswordHasher.php', 1632646403, 0),
(177, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt', 1632646403, 0),
(178, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php', 1632646403, 0),
(179, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/PCLZip/readme.txt', 1632646403, 0),
(180, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/String.php', 1632646403, 0),
(181, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/TimeZone.php', 1632646403, 0),
(182, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/trend/bestFitClass.php', 1632646403, 0),
(183, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php', 1632646403, 0),
(184, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/trend/linearBestFitClass.php', 1632646403, 0),
(185, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php', 1632646403, 0),
(186, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php', 1632646403, 0),
(187, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/trend/powerBestFitClass.php', 1632646403, 0),
(188, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/trend/trendClass.php', 1632646403, 0),
(189, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/XMLWriter.php', 1632646403, 0),
(190, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/ZipArchive.php', 1632646403, 0),
(191, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Shared/ZipStreamWrapper.php', 1632646403, 0),
(192, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style.php', 1632646403, 0),
(193, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Alignment.php', 1632646403, 0),
(194, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Border.php', 1632646403, 0),
(195, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Borders.php', 1632646403, 0),
(196, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Color.php', 1632646403, 0),
(197, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Conditional.php', 1632646403, 0),
(198, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Fill.php', 1632646403, 0),
(199, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Font.php', 1632646403, 0),
(200, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/NumberFormat.php', 1632646403, 0),
(201, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Protection.php', 1632646403, 0),
(202, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Style/Supervisor.php', 1632646403, 0),
(203, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet.php', 1632646403, 0),
(204, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/WorksheetIterator.php', 1632646403, 0),
(205, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/AutoFilter.php', 1632646403, 0),
(206, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/AutoFilter/Column.php', 1632646403, 0),
(207, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php', 1632646403, 0),
(208, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/BaseDrawing.php', 1632646403, 0),
(209, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/CellIterator.php', 1632646403, 0),
(210, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/Column.php', 1632646403, 0),
(211, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/ColumnCellIterator.php', 1632646403, 0),
(212, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/ColumnDimension.php', 1632646403, 0),
(213, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/ColumnIterator.php', 1632646403, 0),
(214, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/Dimension.php', 1632646403, 0),
(215, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/Drawing.php', 1632646403, 0),
(216, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/Drawing/Shadow.php', 1632646403, 0),
(217, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/HeaderFooter.php', 1632646403, 0),
(218, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php', 1632646403, 0),
(219, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/MemoryDrawing.php', 1632646403, 0),
(220, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/PageMargins.php', 1632646403, 0),
(221, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/PageSetup.php', 1632646403, 0),
(222, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/Protection.php', 1632646403, 0),
(223, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/Row.php', 1632646403, 0),
(224, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/RowCellIterator.php', 1632646403, 0),
(225, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/RowDimension.php', 1632646403, 0),
(226, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/RowIterator.php', 1632646403, 0),
(227, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Worksheet/SheetView.php', 1632646403, 0),
(228, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Abstract.php', 1632646403, 0),
(229, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/CSV.php', 1632646403, 0),
(230, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007.php', 1632646403, 0),
(231, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Chart.php', 1632646403, 0),
(232, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Comments.php', 1632646403, 0),
(233, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php', 1632646403, 0),
(234, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/DocProps.php', 1632646403, 0),
(235, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Drawing.php', 1632646403, 0),
(236, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Rels.php', 1632646403, 0),
(237, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php', 1632646403, 0),
(238, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php', 1632646403, 0),
(239, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/StringTable.php', 1632646403, 0),
(240, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Style.php', 1632646403, 0),
(241, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Theme.php', 1632646403, 0),
(242, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Workbook.php', 1632646403, 0),
(243, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/Worksheet.php', 1632646403, 0),
(244, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel2007/WriterPart.php', 1632646403, 0),
(245, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5.php', 1632646403, 0),
(246, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php', 1632646403, 0),
(247, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5/Escher.php', 1632646403, 0),
(248, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5/Font.php', 1632646403, 0),
(249, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5/Parser.php', 1632646403, 0),
(250, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5/Workbook.php', 1632646403, 0),
(251, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5/Worksheet.php', 1632646403, 0),
(252, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Excel5/Xf.php', 1632646403, 0),
(253, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/Exception.php', 1632646403, 0),
(254, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/HTML.php', 1632646403, 0),
(255, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/IWriter.php', 1632646403, 0),
(256, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument.php', 1632646403, 0),
(257, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php', 1632646403, 0),
(258, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/Content.php', 1632646403, 0),
(259, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/Meta.php', 1632646403, 0),
(260, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php', 1632646403, 0),
(261, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php', 1632646403, 0),
(262, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/Settings.php', 1632646403, 0),
(263, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/Styles.php', 1632646403, 0),
(264, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php', 1632646403, 0),
(265, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php', 1632646403, 0),
(266, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/PDF.php', 1632646403, 0),
(267, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/PDF/Core.php', 1632646403, 0),
(268, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/PDF/DomPDF.php', 1632646403, 0),
(269, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/PDF/mPDF.php', 1632646403, 0),
(270, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Classes/PHPExcel/Writer/PDF/tcPDF.php', 1632646403, 0),
(271, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/composer.json', 1632646403, 0),
(272, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Architecture.cd', 1632646403, 0),
(273, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Architecture.png', 1632646403, 0),
(274, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/ClassDiagrams.csproj', 1632646403, 0),
(275, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/ClassDiagrams.sln', 1632646403, 0),
(276, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/IReader.cs', 1632646403, 0),
(277, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/IWriter.cs', 1632646403, 0),
(278, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/PHPExcel.cs', 1632646403, 0),
(279, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/PHPExcel_IOFactory.cs', 1632646403, 0),
(280, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/PHPExcel_Reader_Excel2007.cs', 1632646403, 0),
(281, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/PHPExcel_Reader_Excel5.cs', 1632646403, 0),
(282, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/PHPExcel_Reader_Serialized.cs', 1632646403, 0),
(283, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/PHPExcel_Writer_Excel2007.cs', 1632646403, 0),
(284, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/PHPExcel_Writer_Serialized.cs', 1632646403, 0),
(285, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Classes/Worksheet.cs', 1632646403, 0),
(286, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Exports/Architecture.png', 1632646403, 0),
(287, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/Exports/ReaderWriter.png', 1632646403, 0),
(288, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/ReaderWriter.cd', 1632646403, 0),
(289, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/assets/ClassDiagrams/ReaderWriter.png', 1632646403, 0),
(290, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DAVERAGE.php', 1632646403, 0),
(291, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DCOUNT.php', 1632646403, 0),
(292, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DGET.php', 1632646403, 0),
(293, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DMAX.php', 1632646403, 0),
(294, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DMIN.php', 1632646403, 0),
(295, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DPRODUCT.php', 1632646403, 0),
(296, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DSTDEV.php', 1632646403, 0),
(297, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DSTDEVP.php', 1632646403, 0),
(298, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DVAR.php', 1632646403, 0),
(299, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/Database/DVARP.php', 1632646403, 0),
(300, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/DateTime/DATE.php', 1632646403, 0),
(301, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/DateTime/DATEVALUE.php', 1632646403, 0),
(302, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/DateTime/TIME.php', 1632646403, 0),
(303, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/DateTime/TIMEVALUE.php', 1632646403, 0),
(304, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Calculations/index.php', 1632646403, 0),
(305, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/index.php', 1632646403, 0),
(306, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader01.php', 1632646403, 0),
(307, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader02.php', 1632646403, 0),
(308, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader03.php', 1632646403, 0),
(309, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader04.php', 1632646403, 0),
(310, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader05.php', 1632646403, 0),
(311, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader06.php', 1632646403, 0),
(312, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader07.php', 1632646403, 0),
(313, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader08.php', 1632646403, 0),
(314, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader09.php', 1632646403, 0),
(315, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader10.php', 1632646403, 0),
(316, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader11.php', 1632646403, 0),
(317, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader12.php', 1632646403, 0),
(318, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader13.php', 1632646403, 0),
(319, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader14.php', 1632646403, 0),
(320, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader15.php', 1632646403, 0),
(321, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader16.php', 1632646403, 0),
(322, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader17.php', 1632646403, 0),
(323, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader18.php', 1632646403, 0),
(324, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/exampleReader19.php', 1632646403, 0),
(325, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/sampleData/example1.csv', 1632646403, 0),
(326, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/sampleData/example1.tsv', 1632646403, 0),
(327, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/sampleData/example1.xls', 1632646403, 0),
(328, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/sampleData/example2.csv', 1632646403, 0),
(329, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reader/sampleData/example2.xls', 1632646403, 0),
(330, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reading WorkBook Data/exampleWorkBookReader01.php', 1632646403, 0),
(331, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reading WorkBook Data/exampleWorkBookReader02.php', 1632646403, 0),
(332, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reading WorkBook Data/exampleWorkBookReader03.php', 1632646403, 0),
(333, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reading WorkBook Data/exampleWorkBookReader04.php', 1632646403, 0),
(334, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reading WorkBook Data/sampleData/example1.xls', 1632646403, 0),
(335, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reading WorkBook Data/sampleData/example1.xlsx', 1632646403, 0),
(336, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Examples/Reading WorkBook Data/sampleData/example2.xls', 1632646403, 0),
(337, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/Functionality Cross-Reference.xls', 1632646403, 0),
(338, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/FunctionListByCategory.txt', 1632646403, 0),
(339, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/FunctionListByName.txt', 1632646403, 0),
(340, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/CalculationEngine/FunctionReference/01-Introduction.md', 1632646403, 0),
(341, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/CalculationEngine/FunctionReference/02-01-Date-and-Time-Handling.md', 1632646403, 0),
(342, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/CalculationEngine/FunctionReference/02-General-Introduction.md', 1632646403, 0),
(343, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/CalculationEngine/FunctionReference/03-01-Cube-Functions.md', 1632646403, 0),
(344, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/CalculationEngine/FunctionReference/03-02-Database-Functions.md', 1632646403, 0),
(345, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/CalculationEngine/FunctionReference/03-03-Date-and-Time-Functions.md', 1632646403, 0),
(346, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/01-Autofilters.md', 1632646403, 0),
(347, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/02-Setting-an-Autofilter.md', 1632646403, 0),
(348, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/03-Autofilter-Expressions.md', 1632646403, 0),
(349, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/04-01-Autofilter-Expressions-Simple.md', 1632646403, 0),
(350, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/04-02-Autofilter-Expressions-Dategroup.md', 1632646403, 0),
(351, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/04-03-Autofilter-Expressions-Custom.md', 1632646403, 0),
(352, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/04-04-Autofilter-Expressions-Dynamic.md', 1632646403, 0),
(353, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/04-05-Autofilter-Expressions-Topten.md', 1632646403, 0),
(354, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/05-Executing-Autofilters.md', 1632646403, 0),
(355, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/06-Autofilter-Sorting.md', 1632646403, 0),
(356, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/01-01-autofilter.png', 1632646403, 0),
(357, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/01-02-autofilter.png', 1632646403, 0),
(358, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/01-03-filter-icon-1.png', 1632646403, 0),
(359, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/01-03-filter-icon-2.png', 1632646403, 0),
(360, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/01-04-autofilter.png', 1632646403, 0),
(361, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/04-01-simple-autofilter.png', 1632646403, 0),
(362, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/04-02-dategroup-autofilter.png', 1632646403, 0),
(363, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/04-03-custom-autofilter-1.png', 1632646403, 0),
(364, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/04-03-custom-autofilter-2.png', 1632646403, 0),
(365, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/04-04-dynamic-autofilter.png', 1632646403, 0),
(366, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/04-05-topten-autofilter-1.png', 1632646403, 0),
(367, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Features/Autofilters/images/04-05-topten-autofilter-2.png', 1632646403, 0),
(368, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Functions/FunctionListByCategory.md', 1632646403, 0),
(369, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Functions/FunctionListByName.md', 1632646403, 0),
(370, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/01-Getting-Started.md', 1632646403, 0),
(371, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/02-Architecture.md', 1632646403, 0),
(372, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/03-Creating-a-Spreadsheet.md', 1632646403, 0),
(373, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/04-Configuration-Settings.md', 1632646403, 0),
(374, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/05-Deleting-a-Workbook.md', 1632646403, 0),
(375, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/06-Worksheets.md', 1632646403, 0),
(376, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/07-Accessing-Cells.md', 1632646403, 0),
(377, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/08-Recipes.md', 1632646403, 0),
(378, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/09-Calculation-Engine.md', 1632646403, 0),
(379, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/10-Reading-and-Writing.md', 1632646403, 0),
(380, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/11-Appendices.md', 1632646403, 0),
(381, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/01-schematic.png', 1632646403, 0),
(382, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/02-readers-writers.png', 1632646403, 0),
(383, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/07-simple-example-1.png', 1632646403, 0),
(384, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/07-simple-example-2.png', 1632646403, 0),
(385, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/07-simple-example-3.png', 1632646403, 0),
(386, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/07-simple-example-4.png', 1632646403, 0),
(387, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/08-cell-comment.png', 1632646403, 0),
(388, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/08-column-width.png', 1632646403, 0),
(389, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/08-page-setup-margins.png', 1632646403, 0),
(390, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/08-page-setup-scaling-options.png', 1632646403, 0),
(391, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/08-styling-border-options.png', 1632646403, 0),
(392, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/09-command-line-calculation.png', 1632646403, 0),
(393, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/09-formula-in-cell-1.png', 1632646403, 0),
(394, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/Overview/images/09-formula-in-cell-2.png', 1632646403, 0),
(395, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/ReadingSpreadsheetFiles/01-File-Formats.md', 1632646403, 0),
(396, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/ReadingSpreadsheetFiles/02-Security.md', 1632646403, 0),
(397, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/ReadingSpreadsheetFiles/03-Loading-a-Spreadsheet.md', 1632646403, 0),
(398, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/ReadingSpreadsheetFiles/04-Loading-with-a-Reader.md', 1632646403, 0),
(399, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/ReadingSpreadsheetFiles/05-Reader-Options.md', 1632646403, 0),
(400, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/ReadingSpreadsheetFiles/06-Error-Handling.md', 1632646403, 0),
(401, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/markdown/ReadingSpreadsheetFiles/07-Helper-Methods.md', 1632646403, 0),
(402, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/PHPExcel AutoFilter Reference developer documentation.doc', 1632646403, 0),
(403, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/PHPExcel developer documentation.doc', 1632646403, 0),
(404, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/PHPExcel Function Reference developer documentation.doc', 1632646403, 0),
(405, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Documentation/PHPExcel User Documentation - Reading Spreadsheet Files.doc', 1632646403, 0),
(406, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/.gitignore', 1632646403, 0),
(407, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/01pharSimple.php', 1632646403, 0),
(408, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/01simple-download-ods.php', 1632646403, 0),
(409, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/01simple-download-pdf.php', 1632646403, 0),
(410, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/01simple-download-xls.php', 1632646403, 0),
(411, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/01simple-download-xlsx.php', 1632646403, 0),
(412, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/01simple.php', 1632646403, 0),
(413, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/01simplePCLZip.php', 1632646403, 0),
(414, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/02types-xls.php', 1632646403, 0),
(415, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/02types.php', 1632646403, 0),
(416, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/03formulas.php', 1632646403, 0),
(417, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/04printing.php', 1632646403, 0),
(418, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/05featuredemo.inc.php', 1632646403, 0),
(419, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/05featuredemo.php', 1632646403, 0),
(420, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/06largescale-with-cellcaching-sqlite.php', 1632646403, 0),
(421, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/06largescale-with-cellcaching-sqlite3.php', 1632646403, 0),
(422, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/06largescale-with-cellcaching.php', 1632646403, 0),
(423, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/06largescale-xls.php', 1632646403, 0),
(424, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/06largescale.php', 1632646403, 0),
(425, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/07reader.php', 1632646403, 0),
(426, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/07readerPCLZip.php', 1632646403, 0),
(427, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/08conditionalformatting.php', 1632646403, 0),
(428, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/08conditionalformatting2.php', 1632646403, 0),
(429, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/09pagebreaks.php', 1632646403, 0),
(430, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/10autofilter-selection-1.php', 1632646403, 0),
(431, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/10autofilter-selection-2.php', 1632646403, 0),
(432, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/10autofilter-selection-display.php', 1632646403, 0),
(433, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/10autofilter.php', 1632646403, 0),
(434, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/11documentsecurity-xls.php', 1632646403, 0),
(435, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/11documentsecurity.php', 1632646403, 0);
INSERT INTO `nv4_extension_files` (`idfile`, `type`, `title`, `path`, `lastmodified`, `duplicate`) VALUES
(436, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/12cellProtection.php', 1632646403, 0),
(437, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/13calculation.php', 1632646403, 0),
(438, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/13calculationCyclicFormulae.php', 1632646403, 0),
(439, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/14excel5.php', 1632646403, 0),
(440, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/15datavalidation-xls.php', 1632646403, 0),
(441, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/15datavalidation.php', 1632646403, 0),
(442, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/16csv.php', 1632646403, 0),
(443, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/17html.php', 1632646403, 0),
(444, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/18extendedcalculation.php', 1632646403, 0),
(445, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/19namedrange.php', 1632646403, 0),
(446, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/20readexcel5.php', 1632646403, 0),
(447, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/21pdf.php', 1632646403, 0),
(448, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/22heavilyformatted.php', 1632646403, 0),
(449, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/23sharedstyles.php', 1632646403, 0),
(450, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/24readfilter.php', 1632646403, 0),
(451, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/25inmemoryimage.php', 1632646403, 0),
(452, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/26utf8.php', 1632646403, 0),
(453, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/27imagesexcel5.php', 1632646403, 0),
(454, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/28iterator.php', 1632646403, 0),
(455, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/29advancedvaluebinder.php', 1632646403, 0),
(456, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/30template.php', 1632646403, 0),
(457, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/31docproperties_write-xls.php', 1632646403, 0),
(458, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/31docproperties_write.php', 1632646403, 0),
(459, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/32chartreadwrite.php', 1632646403, 0),
(460, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-area.php', 1632646403, 0),
(461, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-bar-stacked.php', 1632646403, 0),
(462, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-bar.php', 1632646403, 0),
(463, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-column-2.php', 1632646403, 0),
(464, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-column.php', 1632646403, 0),
(465, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-composite.php', 1632646403, 0),
(466, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-line.php', 1632646403, 0),
(467, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-multiple-charts.php', 1632646403, 0),
(468, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-pie.php', 1632646403, 0),
(469, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-radar.php', 1632646403, 0),
(470, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-scatter.php', 1632646403, 0),
(471, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/33chartcreate-stock.php', 1632646403, 0),
(472, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/34chartupdate.php', 1632646403, 0),
(473, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/35chartrender.php', 1632646403, 0),
(474, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/36chartreadwriteHTML.php', 1632646403, 0),
(475, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/36chartreadwritePDF.php', 1632646403, 0),
(476, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/37page_layout_view.php', 1632646403, 0),
(477, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/38cloneWorksheet.php', 1632646403, 0),
(478, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/39dropdown.php', 1632646403, 0),
(479, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/40duplicateStyle.php', 1632646403, 0),
(480, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/41password.php', 1632646403, 0),
(481, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/42richText.php', 1632646403, 0),
(482, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/43mergeWorkbooks.php', 1632646403, 0),
(483, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/44worksheetInfo.php', 1632646403, 0),
(484, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/data/continents/Africa.txt', 1632646403, 0),
(485, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/data/continents/Asia.txt', 1632646403, 0),
(486, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/data/continents/Europe.txt', 1632646403, 0),
(487, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/data/continents/North America.txt', 1632646403, 0),
(488, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/data/continents/Oceania.txt', 1632646403, 0),
(489, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/data/continents/South America.txt', 1632646403, 0),
(490, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/Excel2003XMLReader.php', 1632646403, 0),
(491, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/Excel2003XMLTest.xml', 1632646403, 0),
(492, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/GnumericReader.php', 1632646403, 0),
(493, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/GnumericTest.gnumeric', 1632646403, 0),
(494, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/images/paid.png', 1632646403, 0),
(495, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/images/phpexcel_logo.gif', 1632646403, 0),
(496, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/OOCalcReader.php', 1632646403, 0),
(497, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/OOCalcReaderPCLZip.php', 1632646403, 0),
(498, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/OOCalcTest.ods', 1632646403, 0),
(499, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/Quadratic.php', 1632646403, 0),
(500, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/Quadratic2.php', 1632646403, 0),
(501, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/runall.php', 1632646403, 0),
(502, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/SylkReader.php', 1632646403, 0),
(503, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/SylkTest.slk', 1632646403, 0),
(504, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/XMLReader.php', 1632646403, 0),
(505, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/Examples/XMLTest.xml', 1632646403, 0),
(506, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/install.txt', 1632646403, 0),
(507, 'module', 'tkb', 'modules/tkb/plugins/PHPExcel/license.md', 1632646403, 0),
(508, 'module', 'tkb', 'modules/tkb/theme.php', 1632646403, 0),
(509, 'module', 'tkb', 'modules/tkb/version.php', 1632646403, 0),
(510, 'module', 'tkb', 'themes/admin_default/modules/tkb/config.tpl', 1632646403, 0),
(511, 'module', 'tkb', 'themes/admin_default/modules/tkb/import_giaovien.tpl', 1632646403, 0),
(512, 'module', 'tkb', 'themes/admin_default/modules/tkb/import_lop.tpl', 1632646403, 0),
(513, 'module', 'tkb', 'themes/admin_default/modules/tkb/main.tpl', 1632646403, 0),
(514, 'module', 'tkb', 'themes/default/modules/tkb/giaovien.tpl', 1632646403, 0),
(515, 'module', 'tkb', 'themes/default/modules/tkb/index.html', 1632646403, 0),
(516, 'module', 'tkb', 'themes/default/modules/tkb/main.tpl', 1632646403, 0),
(517, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/css/select2.css', 1632646403, 0),
(518, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/css/select2.min.css', 1632646403, 0),
(519, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/ar.js', 1632646403, 0),
(520, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/az.js', 1632646403, 0),
(521, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/bg.js', 1632646403, 0),
(522, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/ca.js', 1632646403, 0),
(523, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/cs.js', 1632646403, 0),
(524, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/da.js', 1632646403, 0),
(525, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/de.js', 1632646403, 0),
(526, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/el.js', 1632646403, 0),
(527, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/en.js', 1632646403, 0),
(528, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/es.js', 1632646403, 0),
(529, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/et.js', 1632646403, 0),
(530, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/eu.js', 1632646403, 0),
(531, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/fa.js', 1632646403, 0),
(532, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/fi.js', 1632646403, 0),
(533, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/fr.js', 1632646403, 0),
(534, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/gl.js', 1632646403, 0),
(535, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/he.js', 1632646403, 0),
(536, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/hi.js', 1632646403, 0),
(537, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/hr.js', 1632646403, 0),
(538, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/hu.js', 1632646403, 0),
(539, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/id.js', 1632646403, 0),
(540, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/is.js', 1632646403, 0),
(541, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/it.js', 1632646403, 0),
(542, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/ja.js', 1632646403, 0),
(543, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/km.js', 1632646403, 0),
(544, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/ko.js', 1632646403, 0),
(545, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/lt.js', 1632646403, 0),
(546, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/lv.js', 1632646403, 0),
(547, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/mk.js', 1632646403, 0),
(548, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/ms.js', 1632646403, 0),
(549, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/nb.js', 1632646403, 0),
(550, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/nl.js', 1632646403, 0),
(551, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/pl.js', 1632646403, 0),
(552, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/pt-BR.js', 1632646403, 0),
(553, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/pt.js', 1632646403, 0),
(554, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/ro.js', 1632646403, 0),
(555, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/ru.js', 1632646403, 0),
(556, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/sk.js', 1632646403, 0),
(557, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/sr-Cyrl.js', 1632646403, 0),
(558, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/sr.js', 1632646403, 0),
(559, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/sv.js', 1632646403, 0),
(560, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/th.js', 1632646403, 0),
(561, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/tr.js', 1632646403, 0),
(562, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/uk.js', 1632646403, 0),
(563, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/vi.js', 1632646403, 0),
(564, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/zh-CN.js', 1632646403, 0),
(565, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/i18n/zh-TW.js', 1632646403, 0),
(566, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/select2.full.js', 1632646403, 0),
(567, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/select2.full.min.js', 1632646403, 0),
(568, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/select2.js', 1632646403, 0),
(569, 'module', 'tkb', 'themes/default/modules/tkb/plugins/select2/js/select2.min.js', 1632646403, 0),
(656, 'module', 'ochu', 'themes/default/images/ochu/yes.png', 1633961884, 0),
(657, 'module', 'ochu', 'themes/default/images/ochu/no.png', 1633961884, 0),
(655, 'module', 'ochu', 'themes/default/images/ochu/Thumbs.db', 1633961884, 0),
(654, 'module', 'ochu', 'themes/default/images/ochu/arrow2.gif', 1633961884, 0),
(653, 'module', 'ochu', 'themes/default/css/ochu.css', 1633961884, 0),
(652, 'module', 'ochu', 'themes/default/modules/ochu/view.tpl', 1633961884, 0),
(650, 'module', 'ochu', 'modules/ochu/theme.php', 1633961884, 0),
(651, 'module', 'ochu', 'themes/default/modules/ochu/main.tpl', 1633961884, 0),
(649, 'module', 'ochu', 'modules/ochu/admin/main.php', 1633961884, 0),
(648, 'module', 'ochu', 'modules/ochu/admin/index.html', 1633961884, 0),
(647, 'module', 'ochu', 'modules/ochu/admin/delall.php', 1633961884, 0),
(646, 'module', 'ochu', 'modules/ochu/admin/del.php', 1633961884, 0),
(644, 'module', 'ochu', 'modules/ochu/admin/.htaccess', 1633961884, 0),
(645, 'module', 'ochu', 'modules/ochu/admin/add.php', 1633961884, 0),
(642, 'module', 'ochu', 'modules/ochu/funcs/main.php', 1633961884, 0),
(643, 'module', 'ochu', 'modules/ochu/funcs/view.php', 1633961884, 0),
(641, 'module', 'ochu', 'modules/ochu/js/user.js', 1633961884, 0),
(640, 'module', 'ochu', 'modules/ochu/js/index.html', 1633961884, 0),
(639, 'module', 'ochu', 'modules/ochu/js/admin.js', 1633961884, 0),
(638, 'module', 'ochu', 'modules/ochu/language/vi.php', 1633961884, 0),
(637, 'module', 'ochu', 'modules/ochu/language/index.html', 1633961884, 0),
(636, 'module', 'ochu', 'modules/ochu/language/admin_vi.php', 1633961884, 0),
(635, 'module', 'ochu', 'modules/ochu/language/.htaccess', 1633961884, 0),
(634, 'module', 'ochu', 'modules/ochu/version.php', 1633961884, 0),
(633, 'module', 'ochu', 'modules/ochu/index.html', 1633961884, 0),
(632, 'module', 'ochu', 'modules/ochu/functions.php', 1633961884, 0),
(631, 'module', 'ochu', 'modules/ochu/admin.functions.php', 1633961884, 0),
(630, 'module', 'ochu', 'modules/ochu/action.php', 1633961884, 0),
(658, 'module', 'ochu', 'themes/default/images/ochu/application.png', 1633961884, 0),
(659, 'module', 'ochu', 'themes/admin_default/modules/ochu/main.tpl', 1633961884, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_ips`
--

CREATE TABLE `nv4_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_ips`
--

INSERT INTO `nv4_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '::1', 0, 1, 1632575429, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632575524),
(2, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1632578778),
(3, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632643796),
(4, 'vi', 'modules', 'Thiết lập module mới tkb', '', '', 1, 1632646470),
(5, 'vi', 'modules', 'Sửa module &ldquo;tkb&rdquo;', '', '', 1, 1632646491),
(6, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1632646966),
(7, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1632647218),
(8, 'vi', 'themes', 'Thêm block', 'Name : global theme switch', '', 1, 1632647832),
(9, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632664956),
(10, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632706049),
(11, 'vi', 'themes', 'Thiết lập giao diện theme: \"themtet2018\"', '', '', 1, 1632706135),
(12, 'vi', 'themes', 'Kích hoạt theme: \"themtet2018\"', '', '', 1, 1632706139),
(13, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1632706164),
(14, 'vi', 'themes', 'Thiết lập giao diện theme: \"shop-hoa\"', '', '', 1, 1632707082),
(15, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1632707086),
(16, 'vi', 'themes', 'Sửa block', 'Name : Thăm dò ý kiến', '', 1, 1632708012),
(17, 'vi', 'themes', 'Sửa block', 'Name : Thăm dò ý kiến', '', 1, 1632708158),
(18, 'vi', 'themes', 'Sửa block', 'Name : Thăm dò ý kiến', '', 1, 1632708194),
(19, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo', '', 1, 1632708310),
(20, 'vi', 'themes', 'Sửa block', 'Name : Tin tức', '', 1, 1632708356),
(21, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632713177),
(22, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632713257),
(23, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632713272),
(24, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632713330),
(25, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632713348),
(26, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632713914),
(27, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632713932),
(28, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632714494),
(29, 'vi', 'themes', 'Thiết lập layout theme: \"shop-hoa\"', '', '', 1, 1632714501),
(30, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632714877),
(31, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632714904),
(32, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632714984),
(33, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1632715045),
(34, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', '', 1, 1632715079),
(35, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632715134),
(36, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632715160),
(37, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632715178),
(38, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632715193),
(39, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1632716412),
(40, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632792743),
(41, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo giữa trang', '', 1, 1632794809),
(42, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632796486),
(43, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632796551),
(44, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1632798351),
(45, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632798777),
(46, 'vi', 'themes', 'Thiết lập giao diện theme: \"theme_bkhdt\"', '', '', 1, 1632798975),
(47, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1632799003),
(48, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1632801160),
(49, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632801475),
(50, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1632803560),
(51, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1632819556),
(52, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632819560),
(53, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1632838863),
(54, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632838869),
(55, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632878230),
(56, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1632880111),
(57, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632881265),
(58, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1632883111),
(59, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632883576),
(60, 'vi', 'modules', 'Thêm module ảo nghe_kinh_thanh', '', '', 1, 1632883637),
(61, 'vi', 'modules', 'Thiết lập module mới music', '', '', 1, 1632883642),
(62, 'vi', 'modules', 'Sửa module &ldquo;music&rdquo;', '', '', 1, 1632883658),
(63, 'vi', 'modules', 'Thứ tự module: music', '17 -> 1', '', 1, 1632883703),
(64, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632887350),
(65, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1632887925),
(66, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1632887994),
(67, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1632888009),
(68, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632888122),
(69, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1632888127),
(70, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1632888232),
(71, 'vi', 'modules', 'Xóa module \"music\"', '', '', 1, 1632888358),
(72, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632902545),
(73, 'vi', 'modules', 'Thiết lập module mới music', '', '', 1, 1632902850),
(74, 'vi', 'modules', 'Sửa module &ldquo;music&rdquo;', '', '', 1, 1632902858),
(75, 'vi', 'modules', 'Thứ tự module: music', '17 -> 1', '', 1, 1632902867),
(76, 'vi', 'modules', 'Xóa module \"music\"', '', '', 1, 1632903712),
(77, 'vi', 'modules', 'Thiết lập module mới music', '', '', 1, 1632904466),
(78, 'vi', 'modules', 'Sửa module &ldquo;music&rdquo;', '', '', 1, 1632904474),
(79, 'vi', 'modules', 'Thứ tự module: music', '17 -> 1', '', 1, 1632904496),
(80, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1632908848),
(81, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632909050),
(82, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1632909061),
(83, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632924065),
(84, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924155),
(85, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924183),
(86, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924196),
(87, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924209),
(88, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632924330),
(89, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924354),
(90, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924365),
(91, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924381),
(92, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924390),
(93, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924559),
(94, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1632924689),
(95, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632924701),
(96, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1632924717),
(97, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1632925425),
(98, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1632925448),
(99, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1632925459),
(100, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1632925469),
(101, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632925543),
(102, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632925563),
(103, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1632927539),
(104, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632963031),
(105, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632963607),
(106, 'vi', 'themes', 'Thêm block', 'Name : global block default', '', 1, 1632963637),
(107, 'vi', 'themes', 'Thêm block', 'Name : global block default', '', 1, 1632965464),
(108, 'vi', 'themes', 'Sửa block', 'Name : Tin tức nổi bật', '', 1, 1632965480),
(109, 'vi', 'themes', 'Sửa block', 'Name : Tin tức nổi bật', '', 1, 1632965531),
(110, 'vi', 'themes', 'Thêm block', 'Name : Tin túc nổi bật', '', 1, 1632968518),
(111, 'vi', 'themes', 'Sửa block', 'Name : Tin túc nổi bật', '', 1, 1632969667),
(112, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632969719),
(113, 'vi', 'themes', 'Sửa block', 'Name : Tin túc nổi bật', '', 1, 1632969732),
(114, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632974681),
(115, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632974808),
(116, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', '', 1, 1632974947),
(117, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột phải', '', 1, 1632975504),
(118, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột phải', '', 1, 1632975521),
(119, 'vi', 'themes', 'Thêm block', 'Name : global department', '', 1, 1632975580),
(120, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1632989274),
(121, 'vi', 'themes', 'Sửa block', 'Name : global department', '', 1, 1632990674),
(122, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632990822),
(123, 'vi', 'themes', 'Thêm block', 'Name : global block newnav', '', 1, 1632991850),
(124, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632991986),
(125, 'vi', 'themes', 'Sửa block', 'Name : global block newnav', '', 1, 1632992110),
(126, 'vi', 'themes', 'Sửa block', 'Name : global block newnav', '', 1, 1632992121),
(127, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632992144),
(128, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632992163),
(129, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632992268),
(130, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632992292),
(131, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632992308),
(132, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632992326),
(133, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632992337),
(134, 'vi', 'themes', 'Sửa block', 'Name : global search box', '', 1, 1632992349),
(135, 'vi', 'themes', 'Thêm block', 'Name : global search box', '', 1, 1632992401),
(136, 'vi', 'themes', 'Thêm block', 'Name : global block default', '', 1, 1632992429),
(137, 'vi', 'themes', 'Sửa block', 'Name : global block default', '', 1, 1632992540),
(138, 'vi', 'themes', 'Thêm block', 'Name : global menu footer', '', 1, 1632992558),
(139, 'vi', 'themes', 'Thêm block', 'Name : global copyright', '', 1, 1632992601),
(140, 'vi', 'themes', 'Sửa block', 'Name : global copyright', '', 1, 1632992615),
(141, 'vi', 'themes', 'Sửa block', 'Name : global copyright', '', 1, 1632992657),
(142, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632992666),
(143, 'vi', 'themes', 'Sửa block', 'Name : global copyright', '', 1, 1632992695),
(144, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632992832),
(145, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1632992949),
(146, 'vi', 'themes', 'Thêm block', 'Name : global block default', '', 1, 1632993098),
(147, 'vi', 'themes', 'Sửa block', 'Name : global block default', '', 1, 1632993773),
(148, 'vi', 'themes', 'Sửa block', 'Name : HOẠT ĐỘNG', '', 1, 1632996173),
(149, 'vi', 'themes', 'Thêm block', 'Name : HỘI THẢO', '', 1, 1632996229),
(150, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1632996244),
(151, 'vi', 'themes', 'Thêm block', 'Name : global block tophits', '', 1, 1632996268),
(152, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1632996305),
(153, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633007580),
(154, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633007619),
(155, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633008009),
(156, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633008482),
(157, 'vi', 'themes', 'Sửa block', 'Name : HOẠT ĐỘNG', '', 1, 1633008531),
(158, 'vi', 'themes', 'Sửa block', 'Name : HOẠT ĐỘNG', '', 1, 1633008547),
(159, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633008565),
(160, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633008565),
(161, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633008581),
(162, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633008598),
(163, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633008616),
(164, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633010493),
(165, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633010569),
(166, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633013302),
(167, 'vi', 'themes', 'Sửa block', 'Name : HOẠT ĐỘNG', '', 1, 1633013589),
(168, 'vi', 'themes', 'Thêm block', 'Name : Học bổng - tuyển dụng', '', 1, 1633014185),
(169, 'vi', 'themes', 'Thêm block', 'Name : global block rightnews', '', 1, 1633014382),
(170, 'vi', 'themes', 'Sửa block', 'Name : Hợp tác - quốc tế', '', 1, 1633014397),
(171, 'vi', 'themes', 'Thêm block', 'Name : Video', '', 1, 1633014465),
(172, 'vi', 'themes', 'Thêm block', 'Name : Tấm gương vượt khó', '', 1, 1633014489),
(173, 'vi', 'themes', 'Thêm block', 'Name : Những cựu sinh viên ưu tú', '', 1, 1633014509),
(174, 'vi', 'themes', 'Thêm block', 'Name : global block tophits', '', 1, 1633015022),
(175, 'vi', 'themes', 'Sửa block', 'Name : global block tophits', '', 1, 1633015035),
(176, 'vi', 'themes', 'Sửa block', 'Name : TIN LIÊN QUAN', '', 1, 1633015072),
(177, 'vi', 'themes', 'Thêm block', 'Name : global block tophits', '', 1, 1633015132),
(178, 'vi', 'themes', 'Sửa block', 'Name : NHÀ GIÁO', '', 1, 1633015167),
(179, 'vi', 'themes', 'Thêm block', 'Name : GÓC ẢNH', '', 1, 1633015484),
(180, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633072419),
(181, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633072422),
(182, 'vi', 'menu', 'delete menu id: 2', 'Post three', '', 1, 1633072840),
(183, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633073012),
(184, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633073070),
(185, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633073092),
(186, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633076722),
(187, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633076935),
(188, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633077592),
(189, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633078146),
(190, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633078515),
(191, 'vi', 'themes', 'Thêm block', 'Name : global block default', '', 1, 1633078810),
(192, 'vi', 'themes', 'Thêm block', 'Name : global about', '', 1, 1633079111),
(193, 'vi', 'themes', 'Thêm block', 'Name : module block newscenter', '', 1, 1633079153),
(194, 'vi', 'themes', 'Thêm block', 'Name : module block news', '', 1, 1633079214),
(195, 'vi', 'themes', 'Sửa block', 'Name : module block news', '', 1, 1633079255),
(196, 'vi', 'themes', 'Sửa block', 'Name : module block news', '', 1, 1633079266),
(197, 'vi', 'themes', 'Sửa block', 'Name : module block news', '', 1, 1633079320),
(198, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1633079378),
(199, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1633079399),
(200, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1633079413),
(201, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1633079448),
(202, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1633079471),
(203, 'vi', 'modules', 'Thiết lập module mới laws', '', '', 1, 1633079806),
(204, 'vi', 'modules', 'Sửa module &ldquo;laws&rdquo;', '', '', 1, 1633079812),
(205, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633079825),
(206, 'vi', 'themes', 'Thêm block', 'Name : global block new law', '', 1, 1633079865),
(207, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633079926),
(208, 'vi', 'themes', 'Thêm block', 'Name : global block subject', '', 1, 1633079959),
(209, 'vi', 'themes', 'Sửa block', 'Name : global block subject', '', 1, 1633079978),
(210, 'vi', 'themes', 'Thêm block', 'Name : global block subject', '', 1, 1633080003),
(211, 'vi', 'themes', 'Sửa block', 'Name : global block subject', '', 1, 1633080016),
(212, 'vi', 'themes', 'Thêm block', 'Name : Tin tức', '', 1, 1633080055),
(213, 'vi', 'themes', 'Sửa block', 'Name : global block subject', '', 1, 1633080200),
(214, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1633080215),
(215, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1633080308),
(216, 'vi', 'themes', 'Thêm block', 'Name : global counter button', '', 1, 1633080370),
(217, 'vi', 'themes', 'Sửa block', 'Name : global counter button', '', 1, 1633080381),
(218, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1633080406),
(219, 'vi', 'themes', 'Thêm block', 'Name : global voting random', '', 1, 1633080426),
(220, 'vi', 'themes', 'Thêm block', 'Name : global block new comment', '', 1, 1633080467),
(221, 'vi', 'themes', 'Thêm block', 'Name : module block content', '', 1, 1633080497),
(222, 'vi', 'themes', 'Sửa block', 'Name : module block content', '', 1, 1633080518),
(223, 'vi', 'themes', 'Thêm block', 'Name : module block top view', '', 1, 1633080561),
(224, 'vi', 'themes', 'Thêm block', 'Name : module block signer', '', 1, 1633080585),
(225, 'vi', 'themes', 'Thêm block', 'Name : global block new law', '', 1, 1633080616),
(226, 'vi', 'upload', 'Upload file', 'uploads/laws/1404752196-316012_544532112251512_1449290608_n_1.jpg', '', 1, 1633080832),
(227, 'vi', 'upload', 'Upload file', 'uploads/laws/0f1cb01e-6d92-11e6-8164-04011537df01.jpg', '', 1, 1633080844),
(228, 'vi', 'upload', 'Upload file', 'uploads/laws/1404752196-316012_544532112251512_1449290608_n_1_1.jpg', '', 1, 1633080844),
(229, 'vi', 'upload', 'Upload file', 'uploads/laws/1404752196-10423436_741587572545964_1785552368_n.jpg', '', 1, 1633080844),
(230, 'vi', 'upload', 'Upload file', 'uploads/laws/anh-1622600165-666-width660height495.jpg', '', 1, 1633080845),
(231, 'vi', 'upload', 'Upload file', 'uploads/laws/dan-trai-xinh-gai-dep-sinh-nam-2000-chia-se-cam-xuc-khi-biet-diem-thidocx-1598539316963.jpeg', '', 1, 1633080845),
(232, 'vi', 'upload', 'Upload file', 'uploads/laws/thac-si-kinh-doanh-mba-venture.png', '', 1, 1633080846),
(233, 'vi', 'upload', 'Upload file', 'uploads/laws/thac-si-viet-xuat-sac-tai-anh-4538-1449576363.jpg', '', 1, 1633080846),
(234, 'vi', 'laws', 'Thêm Văn bản', 'Id: 1', '', 1, 1633080903),
(235, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1633080934),
(236, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1633080947),
(237, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1633080987),
(238, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1633081395),
(239, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633094138),
(240, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633094145),
(241, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633094361),
(242, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633094449),
(243, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633096473),
(244, 'vi', 'themes', 'Thêm block', 'Name : global block slide', '', 1, 1633096492),
(245, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633139296),
(246, 'vi', 'themes', 'Sửa block', 'Name : global block default', '', 1, 1633140774),
(247, 'vi', 'themes', 'Thêm block', 'Name : global block default', '', 1, 1633140846),
(248, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633161501),
(249, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633161507),
(250, 'vi', 'themes', 'Sửa block', 'Name : global block new law', '', 1, 1633165473),
(251, 'vi', 'themes', 'Sửa block', 'Name : module block content', '', 1, 1633165491),
(252, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1633167099),
(253, 'vi', 'themes', 'Sửa block', 'Name : global counter button', '', 1, 1633167108),
(254, 'vi', 'themes', 'Sửa block', 'Name : global counter button', '', 1, 1633167116),
(255, 'vi', 'themes', 'Sửa block', 'Name : global voting random', '', 1, 1633167128),
(256, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633167484),
(257, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633179033),
(258, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633179037),
(259, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633179549),
(260, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633180793),
(261, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633181887),
(262, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1633181945),
(263, 'vi', 'themes', 'Thêm block', 'Name : global login', '', 1, 1633186310),
(264, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633186322),
(265, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633186336),
(266, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633186394),
(267, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633186448),
(268, 'vi', 'themes', 'Kích hoạt theme: \"themtet2018\"', '', '', 1, 1633186455),
(269, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633186482),
(270, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633186711),
(271, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633225699),
(272, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633225716),
(273, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633247554),
(274, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633247661),
(275, 'vi', 'users', '[dokien1997] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633247671),
(276, 'vi', 'users', '[dokien1997] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 2, 1633250656),
(277, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633251567),
(278, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633252184),
(279, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633252265),
(280, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633252317),
(281, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633253828),
(282, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633253860),
(283, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633253930),
(284, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633255337),
(285, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633255687),
(286, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633255693),
(287, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633255718),
(288, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633255728),
(289, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633255824),
(290, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633255832),
(291, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633255890),
(292, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633255899),
(293, 'vi', 'users', '[dokien1997] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633255912),
(294, 'vi', 'users', '[dokien1997] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 2, 1633255920),
(295, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633267710),
(296, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633267801),
(297, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633267821),
(298, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633267843),
(299, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633267928),
(300, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633268023),
(301, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633268074),
(302, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633268083),
(303, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633274429),
(304, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1633275027),
(305, 'vi', 'modules', 'Xóa module \"music\"', '', '', 1, 1633275146),
(306, 'vi', 'modules', 'Kích hoạt module \"music\"', 'Có', '', 1, 1633275168),
(307, 'vi', 'modules', 'Thứ tự module: music', '18 -> 1', '', 1, 1633275171),
(308, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633275205),
(309, 'vi', 'modules', 'Xóa module \"music\"', '', '', 1, 1633275213),
(310, 'vi', 'modules', 'Thiết lập module mới music', '', '', 1, 1633275279),
(311, 'vi', 'modules', 'Thứ tự module: music', '18 -> 1', '', 1, 1633275290),
(312, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633275521),
(313, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633275544),
(314, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633277234),
(315, 'vi', 'users', '[dokien1997] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633277244),
(316, 'vi', 'users', '[dokien1997] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 2, 1633311205),
(317, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633311212),
(318, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633311561),
(319, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1633311723),
(320, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1633311731),
(321, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633311757),
(322, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1633311764),
(323, 'vi', 'modules', 'Cài lại module \"music\"', '', '', 1, 1633311822),
(324, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633316829),
(325, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633317480),
(326, 'vi', 'users', '[dokien1997] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633317496),
(327, 'vi', 'users', '[dokien1997] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 2, 1633318744),
(328, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633318813),
(329, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633319256),
(330, 'vi', 'themes', 'Sửa block', 'Name : module block newscenter', '', 1, 1633319387),
(331, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633353346),
(332, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633353347),
(333, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633353356),
(334, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633353451),
(335, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633353620),
(336, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633353766),
(337, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633354198),
(338, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633354208),
(339, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633354421),
(340, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633354440),
(341, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633354482),
(342, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633355008),
(343, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633355062),
(344, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633355063),
(345, 'vi', 'themes', 'Sửa block', 'Name : Tin xem nhiều', '', 1, 1633355153),
(346, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633355496),
(347, 'vi', 'themes', 'Thêm block', 'Name : global block example', '', 1, 1633356156),
(348, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633356177),
(349, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633356233),
(350, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633356334),
(351, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633356494),
(352, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633356503),
(353, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633356668),
(354, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633357512),
(355, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633357521),
(356, 'vi', 'modules', 'Thêm module ảo nhac_vi_du', '', '', 1, 1633358048),
(357, 'vi', 'modules', 'Thiết lập module mới nhac-vi-du', '', '', 1, 1633358062),
(358, 'vi', 'modules', 'Sửa module &ldquo;nhac-vi-du&rdquo;', '', '', 1, 1633358070),
(359, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1633360669),
(360, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633361104),
(361, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633361108),
(362, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633400246),
(363, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633400253),
(364, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633400293),
(365, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633400305),
(366, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633400360),
(367, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633400388),
(368, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633400443),
(369, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633400453),
(370, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633400465),
(371, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633400522),
(372, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633400555),
(373, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633400664),
(374, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633400673),
(375, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633401303),
(376, 'vi', 'users', '[dokien1997] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633401317),
(377, 'vi', 'users', '[dokien1997] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 2, 1633401358),
(378, 'vi', 'login', '[abc] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633401787),
(379, 'vi', 'login', '[abc] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633401993),
(380, 'vi', 'login', '[abc] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633402013),
(381, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633402122),
(382, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633402145),
(383, 'vi', 'login', '[dokien1997] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633402160),
(384, 'vi', 'login', '[dokien1997] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633402167),
(385, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633402175),
(386, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633527647),
(387, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633527900),
(388, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633527928),
(389, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633527942),
(390, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633527965),
(391, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528007),
(392, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528042),
(393, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528053),
(394, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528108),
(395, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528116),
(396, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528154),
(397, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528166),
(398, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528205),
(399, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528220),
(400, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528256),
(401, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633528265),
(402, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528270),
(403, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528300),
(404, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528333),
(405, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528357),
(406, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528380),
(407, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633528395),
(408, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633528408),
(409, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633529291),
(410, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633529304),
(411, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633529317),
(412, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633529412),
(413, 'vi', 'modules', 'Xóa module \"nhac-vi-du\"', '', '', 1, 1633529436),
(414, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633529616),
(415, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633531040),
(416, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633531285),
(417, 'vi', 'modules', 'Thiết lập module mới ochu', '', '', 1, 1633531295),
(418, 'vi', 'modules', 'Sửa module &ldquo;ochu&rdquo;', '', '', 1, 1633531310),
(419, 'vi', 'modules', 'Thứ tự module: ochu', '19 -> 2', '', 1, 1633531317),
(420, 'vi', 'users', '[admin] Đăng nhập theo kiểu thông thường', ' Client IP:::1', '', 0, 1633533749),
(421, 'vi', 'users', '[admin] Thoát khỏi tài khoản thành viên', ' Client IP:::1', '', 1, 1633533785),
(422, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633574468),
(423, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633612626),
(424, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633699553),
(425, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633699556),
(426, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633699738),
(427, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 1, 1633699759),
(428, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:::1', '', 0, 1633699770),
(429, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633699780),
(430, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633699834),
(431, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-o-chu.zip', '', 1, 1633699953),
(432, 'vi', 'modules', 'Xóa module \"ochu\"', '', '', 1, 1633700013),
(433, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1633700022),
(434, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-o-chu.zip', '', 1, 1633700044),
(435, 'vi', 'modules', 'Thiết lập module mới ochu', '', '', 1, 1633700078),
(436, 'vi', 'modules', 'Sửa module &ldquo;ochu&rdquo;', '', '', 1, 1633700082),
(437, 'vi', 'modules', 'Thứ tự module: ochu', '19 -> 2', '', 1, 1633700090),
(438, 'vi', 'modules', 'Xóa module \"ochu\"', '', '', 1, 1633700111),
(439, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633700516),
(440, 'vi', 'themes', 'Sửa block', 'Name : global block default', '', 1, 1633700578),
(441, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633701032),
(442, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633701191),
(443, 'vi', 'users', 'log_edit_user', 'userid 2', '', 1, 1633701378),
(444, 'vi', 'users', 'Kích hoạt tài khoản', 'userid: 3 - username: dokien1998', '', 1, 1633701422),
(445, 'vi', 'upload', 'Upload file', 'uploads/news/343.jpg', '', 1, 1633701568),
(446, 'vi', 'upload', 'Upload file', 'uploads/news/282.jpg', '', 1, 1633701697),
(447, 'vi', 'upload', 'Upload file', 'uploads/news/293.jpg', '', 1, 1633701698),
(448, 'vi', 'upload', 'Upload file', 'uploads/news/294.jpg', '', 1, 1633701700),
(449, 'vi', 'upload', 'Upload file', 'uploads/news/334.jpg', '', 1, 1633701703),
(450, 'vi', 'upload', 'Upload file', 'uploads/news/335.jpg', '', 1, 1633701704),
(451, 'vi', 'upload', 'Upload file', 'uploads/news/337.jpg', '', 1, 1633701705),
(452, 'vi', 'upload', 'Upload file', 'uploads/news/338.jpg', '', 1, 1633701706),
(453, 'vi', 'upload', 'Upload file', 'uploads/news/348.jpg', '', 1, 1633701708),
(454, 'vi', 'upload', 'Upload file', 'uploads/news/dsc_1032.jfif', '', 1, 1633701709),
(455, 'vi', 'upload', 'Upload file', 'uploads/news/dsc_1261.jfif', '', 1, 1633701712),
(456, 'vi', 'upload', 'Upload file', 'uploads/news/mud1448358025.jpg', '', 1, 1633701716),
(457, 'vi', 'upload', 'Upload file', 'uploads/news/ohb1383466309.jfif', '', 1, 1633701717),
(458, 'vi', 'upload', 'Upload file', 'uploads/news/106.jpg', '', 1, 1633701718),
(459, 'vi', 'upload', 'Upload file', 'uploads/news/277.jpg', '', 1, 1633701721),
(460, 'vi', 'news', 'Thêm bài viết', 'Trường Đại học Mở Hà Nội hỗ trợ tỉnh Bắc Giang chống dịch Covid-19', '', 1, 1633702108),
(461, 'vi', 'themes', 'Sửa block', 'Name : TIN LIÊN QUAN', '', 1, 1633702175),
(462, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633703920),
(463, 'vi', 'themes', 'Sửa block', 'Name : HỘI THẢO', '', 1, 1633704209),
(464, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633856725),
(465, 'vi', 'themes', 'Kích hoạt theme: \"theme_bkhdt\"', '', '', 1, 1633856786),
(466, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1633959079),
(467, 'vi', 'themes', 'Sửa block', 'Name : global block default', '', 1, 1633959200),
(468, 'vi', 'themes', 'Sửa block', 'Name : global block default', '', 1, 1633959643),
(469, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633960314),
(470, 'vi', 'themes', 'Kích hoạt theme: \"themtet2018\"', '', '', 1, 1633960919),
(471, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633961068),
(472, 'vi', 'themes', 'Kích hoạt theme: \"shop-hoa\"', '', '', 1, 1633961628),
(473, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-o-chu.zip', '', 1, 1633961870),
(474, 'vi', 'modules', 'Thiết lập module mới ochu', '', '', 1, 1633961897),
(475, 'vi', 'modules', 'Sửa module &ldquo;ochu&rdquo;', '', '', 1, 1633961924),
(476, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-laws-master.zip', '', 1, 1633961971),
(477, 'vi', 'modules', 'Xóa module \"laws\"', '', '', 1, 1633962063),
(478, 'vi', 'modules', 'Thiết lập module mới laws', '', '', 1, 1633962245),
(479, 'vi', 'modules', 'Sửa module &ldquo;laws&rdquo;', '', '', 1, 1633962250),
(480, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1633962342);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(342, 'module', 'tkb', 0, 1, 'tkb', 'tkb', '1.0.01 1632646403', 1632646403, 'quocdatit (hqdat.py@gmail.com)', 'Module thời khóa biểu Import TKB lớp và giáo viên từ file Excel được tạo từ phần mềm TKB 10 của School@Net'),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.4.02 1592816400', 1632575222, 'VINADES <contact@vinades.vn>', ''),
(0, 'theme', 'shop-hoa', 0, 0, 'shop-hoa', 'shop_hoa', '4.4.02 1632838905', 1632838905, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(0, 'theme', 'theme_bkhdt', 0, 0, 'theme_bkhdt', 'theme_bkhdt', '4.4.02 1632838905', 1632838905, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(0, 'theme', 'themtet2018', 0, 0, 'themtet2018', 'themtet2018', '4.4.02 1632838905', 1632838905, 'VINADES.,JSC', 'Đây là giao diện mặc định của hệ thống. Bạn không được xóa, đổi tên và không nên sửa trực tiếp vào giao diện này. Nếu muốn, hãy copy thành giao diện khác và kích hoạt sử dụng giao diện mới đó để chỉnh sửa và sử dụng.'),
(0, 'module', 'music', 0, 1, 'music', 'music', '4.4.02 1592816400', 1632883599, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'nghe-kinh-thanh', 0, 0, 'music', 'nghe_kinh_thanh', '', 1632883637, '', ''),
(0, 'module', 'laws', 0, 1, 'laws', 'laws', '4.6.00 1629501137', 1633079795, 'VINADES <contact@vinades.vn>', 'Modules văn bản pháp luật'),
(6, 'module', 'ochu', 0, 1, 'ochu', 'ochu', '3.0.01 1633961884', 1633961884, 'hoaquynhtim99 (phantandung92@gmail.com)', 'Module giúp tạo ra các trò chơi ô chữ trực tuyến, thích hợp để tạo các tiện ích kiểm tra kiến thức, các trò chơi trực tuyến');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1632576788, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/banners/files', 0, 0, 0, 0, 0),
(5, 'uploads/comment', 0, 0, 0, 0, 0),
(6, 'uploads/contact', 0, 0, 0, 0, 0),
(7, 'uploads/freecontent', 0, 0, 0, 0, 0),
(8, 'uploads/menu', 0, 0, 0, 0, 0),
(9, 'uploads/news', 1633701527, 0, 0, 0, 0),
(10, 'uploads/news/source', 1633701524, 0, 0, 0, 0),
(11, 'uploads/news/temp_pic', 1633701525, 0, 0, 0, 0),
(12, 'uploads/news/topics', 1633701525, 0, 0, 0, 0),
(13, 'uploads/page', 0, 0, 0, 0, 0),
(14, 'uploads/siteterms', 0, 0, 0, 0, 0),
(15, 'uploads/users', 0, 0, 0, 0, 0),
(16, 'uploads/users/groups', 0, 0, 0, 0, 0),
(17, 'uploads/tkb', 0, 0, 0, 0, 0),
(18, 'uploads/news/2021_09', 1633701522, 0, 0, 0, 0),
(24, 'uploads/music', 0, 0, 0, 0, 0),
(29, 'uploads/laws', 0, 0, 0, 0, 0),
(23, 'uploads/news/2021_10', 1633701519, 0, 0, 0, 0),
(28, 'uploads/ochu', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1592796825, 9, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/news/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1592796825, 9, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'),
('hoptac 6.jpg', 'jpg', 'image', 12871, 'uploads/news/hoptac 6.jpg', 80, 66, '382|314', 1, 1592796825, 9, 'hoptac 6.jpg', 'hoptac 6'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1592796825, 9, 'hoptac.jpg', 'hoptac'),
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1592796825, 9, 'nangly.jpg', 'nangly'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1592796825, 9, 'nukeviet-cms.jpg', 'nukeviet cms'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1592796825, 9, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1592796825, 9, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/news/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1592796825, 9, 'thuc-tap-sinh.jpg', 'thuc tap sinh'),
('tuyen-dung...png', 'png', 'image', 118910, 'assets/news/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1592796825, 9, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'),
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/news/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1592796825, 9, 'tuyendung-kythuat.jpg', 'tuyendung kythuat'),
('343.jpg', 'jpg', 'image', 373020, 'assets/news/343.jpg', 80, 58, '1500|1081', 1, 1633701570, 9, '343.jpg', '343'),
('282.jpg', 'jpg', 'image', 389709, 'assets/news/282.jpg', 80, 60, '1280|960', 1, 1633701698, 9, '282.jpg', '282'),
('293.jpg', 'jpg', 'image', 145442, 'assets/news/293.jpg', 80, 40, '1500|750', 1, 1633701700, 9, '293.jpg', '293'),
('294.jpg', 'jpg', 'image', 152384, 'assets/news/294.jpg', 80, 57, '1500|1052', 1, 1633701702, 9, '294.jpg', '294'),
('334.jpg', 'jpg', 'image', 606211, 'assets/news/334.jpg', 80, 56, '1429|1001', 1, 1633701704, 9, '334.jpg', '334'),
('335.jpg', 'jpg', 'image', 1244828, 'assets/news/335.jpg', 60, 80, '886|1178', 1, 1633701705, 9, '335.jpg', '335'),
('337.jpg', 'jpg', 'image', 324491, 'assets/news/337.jpg', 80, 55, '1440|986', 1, 1633701705, 9, '337.jpg', '337'),
('338.jpg', 'jpg', 'image', 343444, 'assets/news/338.jpg', 53, 80, '988|1500', 1, 1633701707, 9, '338.jpg', '338'),
('348.jpg', 'jpg', 'image', 115097, 'assets/news/348.jpg', 60, 80, '768|1024', 1, 1633701708, 9, '348.jpg', '348'),
('dsc_1032.jfif', 'jfif', 'file', 355025, 'assets/images/file.gif', 32, 32, '|', 1, 1633701711, 9, 'dsc_1032.jfif', 'DSC 1032'),
('dsc_1261.jfif', 'jfif', 'file', 533005, 'assets/images/file.gif', 32, 32, '|', 1, 1633701715, 9, 'dsc_1261.jfif', 'DSC 1261'),
('mud1448358025.jpg', 'jpg', 'image', 268527, 'assets/news/mud1448358025.jpg', 80, 54, '1279|854', 1, 1633701716, 9, 'mud1448358025.jpg', 'mud1448358025'),
('ohb138346...jfif', 'jfif', 'file', 131601, 'assets/images/file.gif', 32, 32, '|', 1, 1633701717, 9, 'ohb1383466309.jfif', 'ohb1383466309'),
('106.jpg', 'jpg', 'image', 303929, 'assets/news/106.jpg', 80, 54, '1500|1000', 1, 1633701720, 9, '106.jpg', '106'),
('277.jpg', 'jpg', 'image', 418060, 'assets/news/277.jpg', 80, 47, '720|422', 1, 1633701722, 9, '277.jpg', '277');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT '-1' COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA512}hd3r5Teqs+rnARyQrAfhgnnLt/mnK+13wnw9hirs6yp62X3iU67MjHwowhsjnfREaEvzTO57BT44iMtVKcyoBmEzZGE=', 'thien123111888@gmail.com', 'admin', '', '', '', 0, '', 1632575427, 'Bạn thích gì', 'con mèo', '', 0, 1, '1', 1, 0, 'EP3MQKHSPOF65QVG', 'ea47e475872bf25021d9033d9948ccba', 1633533749, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', '', 0, 0, 0, '', -3, 'SYSTEM'),
(2, 4, 'dokien1997', '1e1cc0cca8295d2b854e75743c1edb86', '{SSHA512}jB9NZlsfemOqemUimqUaS0nRabTXzLsiSFkUoDqi4ekPvfwm0LpkfC5VctsLC/XAPnlh+5cPVPbsrWoXQqO8tTJhZjY=', 'thien123111000@gmail.com', 'admin', '', 'N', '', -183970800, '', 1632575427, 'Bạn thích gì', 'con mèo', '', 0, 1, '4', 1, 0, 'EP3MQKHSPOF65QVG', 'cbeab612cfb6051bafb5065137383570', 1633401317, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', '', 1633701378, 0, 0, '', 0, 'SYSTEM'),
(3, 4, 'dokien1998', '2c350133e4dbf860c49a93096ccfc7c2', '{SSHA512}RLIjZNsSlLnSvUMMqTRWRKGLHZFxy5qNY2hMpGtVI3d5w6fNQqhYSmDSIXYP99j2CajVT2lZINiWkTLhLSDdCDVlZjQ=', 'thien123111777@gmail.com', 'Alex', 'Xand', 'M', '', 999709200, 'Kiên', 1633247515, 'dokien', 'dokien', '', 0, 0, '', 1, 0, '', '', 0, '', '', '', 0, 0, 0, '', -2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_backupcodes`
--

CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1632575222),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1632575222),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1632575222),
('avatar_width', '80', 1632575222),
('avatar_height', '80', 1632575222),
('active_group_newusers', '0', 1632575222),
('active_editinfo_censor', '0', 1632575222),
('active_user_logs', '1', 1632575222),
('min_old_user', '16', 1632575222),
('register_active_time', '86400', 1632575222),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_edit`
--

CREATE TABLE `nv4_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_field`
--

INSERT INTO `nv4_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 0, 0, 1632575222, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 0, 0, 1632575222, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 0, 0, 1632575222, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 0, 0, 1632575222, 0, 4, 1, 0, 2, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 0, 0, 1632575222, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 0, 0, 1632575222, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 0, 0, 1632575222, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 0, 0, 1, 1632575222, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 0, 0, 1632575222, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 0, 0, 1632575222, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1632575427, 1632575427);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_reg`
--

INSERT INTO `nv4_users_reg` (`userid`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `birthday`, `sig`, `regdate`, `question`, `answer`, `checknum`, `users_info`, `openid_info`, `idsite`) VALUES
(1, 'dokien1997', '1e1cc0cca8295d2b854e75743c1edb86', '{SSHA512}QE/rc/46KWnT/6IpQ3I0FA/expTcphkAh35LAXVC3mxQWpUwwLJREdVDhxvnWtOVsfIZYN658kx8vWICVtIvGjMyOWE=', 'abcxyz@gmail.com', 'Alex', 'Xand', 'M', 1001869200, 'Kiên', 1633247372, 'dokien', 'dokien', '30d203dc5f378249a6ae0f5655692b41', 'YToxOntzOjY6InVzZXJpZCI7aTowO30,', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about`
--

CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about`
--

INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Giới thiệu về NukeViet', 'gioi-thieu-ve-nukeviet', '', '', 0, '', '<h2><span style=\"font-size:20px;\"><strong>Giới thiệu khái quát</strong></span></h2>  <p>NukeViet là một ứng dụng trên nền web có thể sử dụng vào nhiều mục đích khác nhau. Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href=\"/about/Gioi-thieu-ve-NukeViet-CMS.html\"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>  <ul> 	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li> 	<li><a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li> 	<li><a href=\"http://toasoandientu.vn\" target=\"_blank\">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li> </ul> Theo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:  <ul> 	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li> 	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href=\"https://github.com/nukeviet/module-shops\" target=\"_blank\">module Shop</a> lên NukeViet CMS.</li> </ul> &nbsp;  <h2><span style=\"font-size:20px;\"><strong>Video giới thiệu</strong></span></h2> <span style=\"font-size:14px;\">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>  <div style=\"text-align: center;\"> <div style=\"text-align: center;\"> <div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1\" style=\"position: absolute;top: 0;left: 0;width: 100%;height: 100%;\" width=\"640\"></iframe></div> <br  /> <span style=\"font-size:12px;\"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div> </div>  <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Lịch sử phát triển</span></strong></span></h2> NukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br  /> <br  /> Kể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này. <h2><br  /> <span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\"Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn\">Diễn đàn NukeViet.vn</span></strong></span></h2>  <p>Diễn đàn NukeViet hoạt động trên website: <a href=\"http://nukeviet.vn\">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>  <p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng\"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\"Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch\">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>  <ul> 	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li> 	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li> </ul> <span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99\">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>  <ul> 	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li> 	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li> 	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li> </ul>  <h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7\">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>  <h2><br  /> <span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"T.C3.ADnh_n.C4.83ng\"><strong>Tính năng</strong></span></span></h2>  <h3><span style=\"font-size:14px;\"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>  <ul> 	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li> 	<li>Giới thiệu (<i>About</i>),</li> 	<li>Quản lý quảng cáo thương mại (banners),</li> 	<li>Quản lý người dùng (<i>users</i>),</li> 	<li>Liên hệ qua site (<i>Contact</i>),</li> 	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li> 	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li> 	<li>Thư viện file (<i>Download</i>),</li> 	<li>Thư viện Web (<i>Weblinks</i>),</li> 	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li> 	<li>Thống kê truy cập (<i>statistics</i>),</li> 	<li>Tìm kiếm trong site (<i>Search</i>),</li> 	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li> </ul>  <h3><span style=\"font-size:14px;\"><strong>Tính năng hệ thống:</strong></span></h3>  <ul> 	<li>Cài đặt, nâng cấp và đóng gói tự động.</li> 	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li> 	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li> 	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li> 	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li> 	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li> 	<li>Quản lý và sao lưu cơ sở dữ liệu.</li> 	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li> 	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li> 	<li>...</li> </ul>  <h2><span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Ứng dụng</span></strong></span></h2>  <p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br  /> <br  /> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>  <ul> 	<li>Các cổng thông tin điện tử</li> 	<li>Các tập đoàn kinh tế</li> 	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li> 	<li>Báo điện tử, tạp chí điện tử</li> 	<li>Website của các doanh nghiệp vừa và nhỏ</li> 	<li>Website của các cơ quan, tổ chức chính phủ</li> 	<li>Website giáo dục, trường học</li> 	<li>Website của gia đình, cá nhân, nhóm sở thích...</li> </ul>  <p><br  /> Ngoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', '', 0, '4', '', 1, 1, 1632575222, 1632575222, 1, 8, 0),
(2, 'Giới thiệu về NukeViet CMS', 'gioi-thieu-ve-nukeviet-cms', '', '', 0, '', '<p style=\"text-align: justify;\">CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class=\"mw-headline\" id=\"Ch.E1.BB.A9c_n.C4.83ng\"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p style=\"text-align: justify;\"><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p style=\"text-align: justify;\">NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href=\"http://nukeviet.vn\">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p style=\"text-align: justify;\">NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p style=\"text-align: justify;\">Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href=\"http://vinades.vn\" target=\"_blank\">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.', '', 0, '4', '', 2, 1, 1632575222, 1632575222, 1, 0, 0),
(3, 'Logo và tên gọi NukeViet', 'logo-va-ten-goi-nukeviet', '', '', 0, '', '<p style=\"text-align: justify;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 14px;\"><strong>Tên gọi:</strong></span></span><br  /> <strong>NukeViet </strong>phát âm là <strong>&#91;Nu-Ke-Việt</strong>&#93;, đây là cách đọc riêng, không phải là cách phát âm chuẩn của tiếng Anh.<br  /> <br  /> <strong>Ý nghĩa:</strong><br  /> NukeViet là từ ghép từ chữ <strong>Nuke </strong>và <strong>Việt Nam</strong>.<br  /> <br  /> Sở dĩ có tên gọi này là vì phiên bản 1.0 và 2.0 của NukeViet được phát triển từ mã nguồn mở<strong> PHP-Nuke</strong>.</p>  <p style=\"text-align: justify;\">Mặc dù từ phiên bản 3.0, NukeViet được viết mới hoàn toàn và trong quá trình phát triển của mình, nhiều cái tên đã được đưa ra để thay thế nhưng cuối cùng cái tên NukeViet đã được giữ lại để nhớ rằng <strong>NukeViet </strong>được khởi đầu từ <strong>PHP-Nuke</strong> và để cảm ơn <strong>Franscisco Burzi</strong> - Tác giả PHP-Nuke - vì chính ông là nhân tố để có một cộng đồng mã nguồn mở NukeViet với hàng chục ngàn người dùng như hiện nay.</p>  <p style=\"text-align: justify;\"><strong>Nuke</strong> trong tiếng Anh (từ lóng) có nghĩa là &quot;<strong>vũ khí hạt nhân</strong>&quot; (nuclear weapons). Xem: <a href=\"http://vi.wiktionary.org/wiki/nuke\" target=\"_blank\">http://vi.wiktionary.org/wiki/nuke</a></p>  <p style=\"text-align: justify;\">Đội ngũ phát triển cũng hy vọng rằng <strong>NukeViet </strong>sẽ phát triển bùng nổ như đúng tên gọi của nó.</p>  <p style=\"text-align: justify;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 14px;\"><strong>Logo NukeViet 3.0:</strong></span></span><br  /> Sau thời gian dài lựa chọn từ hàng chục mẫu thiết kế của thành viên diễn đàn NukeViet.VN và các nhà thiết kế đồ họa chuyên nghiệp... logo chính thức của NukeViet 3.0 đã được Ban Quản Trị chọn lựa đúng trước ngày Offline phát hành bản NukeViet 3.0 một ngày.<br  /> <br  /> Logo NukeViet 3.0 được lấy hình tượng từ Biển, Đêm, và Ánh Trăng trong khung hình giọt nước:</p>  <p style=\"text-align:center\"><img alt=\"w\" height=\"143\" src=\"/nukeviet/uploads/about/w.png\" style=\"width: 288px; height: 143px; border-width: 0px; border-style: solid;\" width=\"288\" /></p>  <p style=\"text-align: justify;\">Dưới nền trắng, cả logo nhìn như cảnh biển đêm huyền ảo, tĩnh mịch với mặt nước biển, bầu trời, thuyền buồm và ánh trăng. Đây là những hình ảnh biểu tượng cho sự thanh bình mà bất cứ ai cũng mong ước được thấy khi ngắm biển về đêm.<br  /> <br  /> Màu xanh thẫm là màu hòa quyện của của mặt biển, bầu trời về đêm, màu này cũng gần với màu xanh tượng trưng cho hòa bình.<br  /> Hai vệt khuyết chính là ánh trăng sáng màu bạc phản chiếu lên giọt nước.<br  /> <br  /> Giọt nước còn là biểu tượng cho sự sống, cho khát khao bất diệt của vạn vật trên trái đất này.<br  /> <br  /> <strong>Thông số chuẩn của màu logo:</strong><br  /> -&nbsp;&nbsp;&nbsp; Màu xanh: C80, M60, Y0, K0<br  /> <br  /> <strong>Tác giả mẫu thiết kế:</strong> Lê Thanh Xuân, chuyên viên thiết kế đồ họa của VINADES.,JSC</p>  <p style=\"text-align: justify;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 14px;\"><strong>Slogan NukeViet 3.0:</strong></span></span> “Chia sẻ thành công, kết nối đam mê”, Tiếng Anh: “Sharing success, connect passions”</p>  <p style=\"text-align: justify;\">Slogan này của tác giả HoaiNamDr, đây là slogan đã đoạt giải trong cuộc thi sáng tác slogan trên diễn đàn NukeViet.VN</p>  <div style=\"text-align:center\"><img alt=\"nukevietcms 180x84\" height=\"84\" src=\"/nukeviet/uploads/about/nukevietcms-180x84.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS (180x84px)<br  /> Tải về mẫu kích thước lớn <a href=\"/nukeviet/uploads/about/nukevietcms.png\">logo-nukeviet-cms.png</a> (1500x700px)</p>  <div style=\"text-align:center\"><img alt=\"nukevietcms mu noel 180x84\" height=\"84\" src=\"/nukeviet/uploads/about/nukevietcms_mu_noel_180x84.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc mũ ông già Noel (184x84px)<br  /> &nbsp;</p>  <div style=\"text-align:center\"><img alt=\"logo nukeviet3 flag 180x75\" height=\"75\" src=\"/nukeviet/uploads/about/logo-nukeviet3-flag-180x75.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS cắm cờ Việt Nam (180x75px)<br  /> &nbsp;</p>  <div style=\"text-align:center\"><img alt=\"nukevietcms laco 180x57\" height=\"57\" src=\"/nukeviet/uploads/about/nukevietcms_laco_180x57.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc ruy băng cờ Việt Nam (180x57px)</p>  <div style=\"text-align:center\"><img alt=\"nukevietvn 180x84\" height=\"84\" src=\"/nukeviet/uploads/about/nukevietvn_180x84.png\" width=\"180\" /></div>  <p style=\"text-align: center;\">Mẫu phối Logo, slogan và tên NukeViet.VN (180x84px)<br  /> Tải về mẫu kích thước lớn <a href=\"/nukeviet/uploads/about/nukevietvn.png\">logo-nukeviet-big.png</a> (1500x700px)</p>  <p><br  /> <strong>Tải về file đồ họa gốc:</strong><br  /> - <a href=\"http://nukeviet.vn/vi/download/Tai-lieu/NukeViet-logo/\">NukeViet logo</a> - hình ảnh gốc có độ phân giải cao, bao gồm cả font chữ, có thể sử dụng cho in ấn sticker, in logo lên áo hoặc in Backdrop, Standy khổ lớn.</p>', '', 0, '4', '', 3, 1, 1632575222, 1632575222, 1, 1, 0),
(4, 'Giấy phép sử dụng NukeViet', 'giay-phep-su-dung-nukeviet', '', '', 0, 'Giấy phép công cộng GNU (tiếng Anh: GNU General Public License, viết tắt GNU GPL hay chỉ GPL) là giấy phép phần mềm tự do được sử dụng để phân phối mã nguồn mở NukeViet.', '<p><strong>Bản dịch tiếng Việt của Giấy phép Công cộng GNU</strong></p>\r\n\r\n<p>Người dịch&nbsp;<a href=\"mailto:dangtuan@vietkey.net\">Đặng Minh Tuấn &lt;dangtuan@vietkey.net&gt;</a></p>\r\n\r\n<p>Đây là bản dịch tiếng Việt không chính thức của Giấy phép Công cộng GNU. Bản dịch này không phải do Tổ chức Phần mềm Tự do ấn hành, và nó không quy định về mặt pháp lý các điều khoản cho các phần mềm sử dụng giấy phép GNU GPL -- chỉ có bản tiếng Anh gốc của GNU GPL mới có tính pháp lý. Tuy nhiên, chúng tôi hy vọng rằng bản dịch này sẽ giúp cho những người nói tiếng Việt hiểu rõ hơn về GNU GPL.</p>\r\n\r\n<p>This is an unofficial translation of the GNU General Public License into Vietnamese. It was not published by the Free Software Foundation, and does not legally state the distribution terms for software that uses the GNU GPL--only the original English text of the GNU GPL does that. However, we hope that this translation will help Vietnamese speakers understand the GNU GPL better.</p>\r\n\r\n<hr  />\r\n<h3>GIẤY PHÉP CÔNG CỘNG GNU (GPL)</h3>\r\nGiấy phép công cộng GNU<br />\r\nPhiên bản 2, tháng 6/1991<br />\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc. &nbsp;<br />\r\n59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA\r\n<p>Mọi người đều được phép sao chép và lưu hành bản sao nguyên bản nhưng không được phép thay đổi nội dung của giấy phép này.<br />\r\n<br />\r\n<strong>Lời nói đầu</strong><br />\r\n<br />\r\nGiấy phép sử dụng của hầu hết các phần mềm đều được đưa ra nhằm hạn chế bạn tự do chia sẻ và thay đổi nó. Ngược lại, Giấy phép Công cộng của GNU có mục đích đảm bảo cho bạn có thể tự do chia sẻ và thay đổi phần mềm tự do - tức là đảm bảo rằng phần mềm đó là tự do đối với mọi người sử dụng. Giấy phép Công cộng này áp dụng cho hầu hết các phần mềm của Tổ chức Phần mềm Tự do và cho tất cả các chương trình khác mà tác giả cho phép sử dụng. (Đối với một số phần mềm khác của Tổ chức Phần Mềm Tự do, áp dụng Giấy phép Công cộng Hạn chế của GNU thay cho giấy phép công cộng). Bạn cũng có thể áp dụng nó cho các chương trình của mình.<br />\r\n<br />\r\nKhi nói đến phần mềm tự do, chúng ta nói đến sự tự do sử dụng chứ không quan tâm về giá cả. Giấy phép Công cộng của chúng tôi được thiết kế để đảm bảo rằng bạn hoàn toàn tự do cung cấp các bản sao của phần mềm tự do (cũng như kinh doanh dịch vụ này nếu bạn muốn), rằng bạn có thể nhận được mã nguồn nếu bạn có yêu cầu, rằng bạn có thể thay đổi phần mềm hoặc sử dụng các thành phần của phần mềm đó cho những chương trình tự do mới; và rằng bạn biết chắc là bạn có thể làm được những điều này.<br />\r\n<br />\r\nĐể bảo vệ bản quyền của bạn, chúng tôi cần đưa ra những hạn chế để ngăn chặn những ai chối bỏ quyền của bạn, hoặc yêu cầu bạn chối bỏ quyền của mình. Những hạn chế này cũng có nghĩa là những trách nhiệm nhất định của bạn khi cung cấp các bản sao phần mềm hoặc khi chỉnh sửa phần mềm đó.<br />\r\n<br />\r\nVí dụ, nếu bạn cung cấp các bản sao của một chương trình, dù miễn phí hay không, bạn phải cho người nhận tất cả các quyền mà bạn có. Bạn cũng phải đảm bảo rằng họ cũng nhận được hoặc tiếp cận được mã nguồn. Và bạn phải thông báo những điều khoản này cho họ để họ biết rõ về quyền của mình.<br />\r\n<br />\r\nChúng tôi bảo vệ quyền của bạn với hai bước: (1) bảo vệ bản quyền phần mềm, và (2) cung cấp giấy phép này để bạn có thể sao chép, lưu hành và/hoặc chỉnh sửa phần mềm một cách hợp pháp.<br />\r\n<br />\r\nNgoài ra, để bảo vệ các tác giả cũng như để bảo vệ chính mình, chúng tôi muốn chắc chắn rằng tất cả mọi người đều hiểu rõ rằng không hề có bảo hành đối với phần mềm tự do này. Nếu phần mềm được chỉnh sửa thay đổi bởi một người khác và sau đó lưu hành, thì chúng tôi muốn những người sử dụng biết rằng phiên bản họ đang có không phải là bản gốc, do đó tất cả những trục trặc do những người khác gây ra hoàn toàn không ảnh hưởng tới uy tín của tác giả ban đầu.<br />\r\n<br />\r\nCuối cùng, bất kỳ một chương trình tự do nào cũng đều thường xuyên có nguy cơ bị đe doạ về giấy phép bản quyền. Chúng tôi muốn tránh nguy cơ khi những người cung cấp lại một chương trình tự do có thể có được giấy phép bản quyền cho bản thân họ, từ đó trở thành độc quyền đối với chương trình đó. Để ngăn ngừa trường hợp này, chúng tôi đã nêu rõ rằng mỗi giấy phép bản quyền hoặc phải được cấp cho tất cả mọi người sử dụng một cách tự do hoặc hoàn toàn không cấp phép.<br />\r\n<br />\r\nDưới đây là những điều khoản và điều kiện rõ ràng đối với việc sao chép, lưu hành và chỉnh sửa.<br />\r\n<br />\r\n<strong>Những điều khoản và điều kiện đối với việc sao chép, lưu hành và chỉnh sửa</strong><br />\r\n<br />\r\n<strong>0.</strong>&nbsp;Giấy phép này áp dụng cho bất kỳ một chương trình hay sản phẩm nào mà người giữ bản quyền công bố rằng nó có thể được cung cấp trong khuôn khổ những điều khoản của Giấy phép Công cộng này. Từ “Chương trình” dưới đây có nghĩa là tất cả các chương trình hay sản phẩm như vậy, và “sản phẩm dựa trên Chương trình” có nghĩa là Chương trình hoặc bất kỳ một sản phẩm nào bắt nguồn từ chương trình đó tuân theo luật bản quyền, nghĩa là một sản phẩm dựa trên Chương trình hoặc một phần của nó, đúng nguyên bản hoặc có một số chỉnh sửa và/hoặc được dịch ra một ngôn ngữ khác. (Dưới đây, việc dịch cũng được hiểu trong khái niệm “chỉnh sửa”). Mỗi người được cấp phép được gọi là “bạn”.<br />\r\n<br />\r\nTrong Giấy phép này không đề cập tới các hoạt động khác ngoài việc sao chép, lưu hành và chỉnh sửa; chúng nằm ngoài phạm vi của giấy phép này. Hành động chạy chương trình không bị hạn chế, và những kết quả từ việc chạy chương trình chỉ được đề cập tới nếu nội dung của nó tạo thành một sản phẩm dựa trên chương trình (độc lập với việc chạy chương trình). Điều này đúng hay không là phụ thuộc vào Chương trình.<br />\r\n<br />\r\n<strong>1.</strong>&nbsp;Bạn có thể sao chép và lưu hành những phiên bản nguyên bản của mã nguồn Chương trình đúng như khi bạn nhận được, qua bất kỳ phương tiện phân phối nào, với điều kiện trên mỗi bản sao bạn đều kèm theo một ghi chú bản quyền rõ ràng và từ chối bảo hành; giữ nguyên tất cả các ghi chú về Giấy phép và về việc không có bất kỳ một sự bảo hành nào; và cùng với Chương trình bạn cung cấp cho người sử dụng một bản sao của Giấy phép này.<br />\r\n<br />\r\nBạn có thể tính phí cho việc chuyển giao bản sao, và tuỳ theo quyết định của mình bạn có thể cung cấp bảo hành để đổi lại với chi phí mà bạn đã tính.<br />\r\n<br />\r\n<strong>2.</strong>&nbsp;Bạn có thể chỉnh sửa bản sao của bạn hoặc các bản sao của Chương trình hoặc của bất kỳ phần nào của nó, từ đó hình thành một sản phẩm dựa trên Chương trình, và sao chép cũng như lưu hành sản phẩm đó hoặc những chỉnh sửa đó theo điều khoản trong Mục 1 ở trên, với điều kiện bạn đáp ứng được những điều kiện dưới đây:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Bạn phải có ghi chú rõ ràng trong những tập tin đã chỉnh sửa là bạn đã chỉnh sửa nó, và ngày tháng của bất kỳ một thay đổi nào.<br />\r\n•&nbsp;&nbsp; &nbsp;b) Bạn phải cấp phép miễn phí cho tất cả các bên thứ ba đối với các sản phẩm bạn cung cấp hoặc phát hành, bao gồm Chương trình nguyên bản, từng phần của nó hay các sản phẩm dựa trên Chương trình hay dựa trên từng phần của Chương trình, theo những điều khoản của Giấy phép này.<br />\r\n•&nbsp;&nbsp; &nbsp;c) Nếu chương trình đã chỉnh sửa thường đọc lệnh tương tác trong khi chạy, bạn phải thực hiện sao cho khi bắt đầu chạy để sử dụng tương tác theo cách thông thường nhất phải có một thông báo bao gồm bản quyền và thông báo về việc không có bảo hành (hoặc thông báo bạn là người cung cấp bảo hành), và rằng người sử dụng có thể cung cấp lại Chương trình theo những điều kiện này, và thông báo để người sử dụng có thể xem bản sao của Giấy phép này. (Ngoại lệ: nếu bản thân Chương trình là tương tác nhưng không có một thông báo nào như trên, thì sản phẩm của bạn dựa trên Chương trình đó cũng không bắt buộc phải có thông báo như vậy).<br />\r\n<br />\r\nNhững yêu cầu trên áp dụng cho toàn bộ các sản phẩm chỉnh sửa. Nếu có những phần của sản phẩm rõ ràng không bắt nguồn từ Chương trình, và có thể được xem là độc lập và riêng biệt, thì Giấy phép này và các điều khoản của nó sẽ không áp dụng cho những phần đó khi bạn cung cấp chúng như những sản phẩm riêng biệt. Nhưng khi bạn cung cấp những phần đó như những phần nhỏ trong cả một sản phẩm dựa trên Chương trình, thì việc cung cấp này phải tuân theo những điều khoản của Giấy phép này, cho phép những người được cấp phép có quyền đối với toàn bộ sản phẩm, cũng như đối với từng phần trong đó, bất kể ai đã viết nó.<br />\r\n<br />\r\nNhư vậy, điều khoản này không nhằm mục đích xác nhận quyền hoặc tranh giành quyền của bạn đối với những sản phẩm hoàn toàn do bạn viết; mà mục đích của nó là nhằm thi hành quyền kiểm soát đối với việc cung cấp những sản phẩm bắt nguồn hoặc tổng hợp dựa trên Chương trình.<br />\r\n<br />\r\nNgoài ra, việc kết hợp thuần tuý Chương trình (hoặc một sản phẩm dựa trên Chương trình) với một sản phẩm không dựa trên Chương trình với mục đích lưu trữ hoặc quảng bá không đưa sản phẩm đó vào trong phạm vi áp dụng của Giấy phép này.<br />\r\n<br />\r\n<strong>3.</strong>&nbsp;Bạn có thể sao chép và cung cấp Chương trình (hoặc một sản phẩm dựa trên Chương trình, nêu trong Mục 2) dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được trong khuôn khổ các điều khoản nêu trong Mục 1 và 2 ở trên, nếu như bạn:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Kèm theo đó một bản mã nguồn dạng đầy đủ có thể biên dịch được theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc,<br />\r\n•&nbsp;&nbsp; &nbsp;b) Kèm theo đó một đề nghị có hạn trong ít nhất 3 năm, theo đó cung cấp cho bất kỳ một bên thứ ba nào một bản sao đầy đủ của mã nguồn tương ứng, và phải được cung cấp với giá chi phí không cao hơn giá chi phí vật lý của việc cung cấp theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc<br />\r\n•&nbsp;&nbsp; &nbsp;c) Kèm theo đó thông tin bạn đã nhận được để đề nghị cung cấp mã nguồn tương ứng. (Phương án này chỉ được phép đối với việc cung cấp phi thương mại và chỉ với điều kiện nếu bạn nhận được Chương trình dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được cùng với lời đề nghị như vậy, theo phần b trong điều khoản nêu trên).<br />\r\n<br />\r\nMã nguồn của một sản phẩm là một dạng ưu tiên của sản phẩm dành cho việc chỉnh sửa nó. Với một sản phẩm có thể thi hành, mã nguồn hoàn chỉnh có nghĩa là tất cả các mã nguồn cho các môđun trong sản phẩm đó, cộng với tất cả các tệp tin định nghĩa giao diện đi kèm với nó, cộng với các hướng dẫn dùng để kiểm soát việc biên dịch và cài đặt các tệp thi hành. Tuy nhiên, một ngoại lệ đặc biệt là mã nguồn không cần chứa bất kỳ một thứ gì mà bình thường được cung cấp (từ nguồn khác hoặc hình thức nhị phân) cùng với những thành phần chính (chương trình biên dịch, nhân, và những phần tương tự) của hệ điều hành mà các chương trình chạy trong đó, trừ khi bản thân thành phần đó lại đi kèm với một tệp thi hành.<br />\r\n<br />\r\nNếu việc cung cấp lưu hành mã đã biên dịch hoặc tập tin thi hành được thực hiện qua việc cho phép tiếp cận và sao chép từ một địa điểm được chỉ định, thì việc cho phép tiếp cận tương đương tới việc sao chép mã nguồn từ cùng địa điểm cũng được tính như việc cung cấp mã nguồn, mặc dù thậm chí các bên thứ ba không bị buộc phải sao chép mã nguồn cùng với mã đã biên dịch.<br />\r\n<br />\r\n<strong>4.</strong>&nbsp;Bạn không được phép sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình trừ phi phải tuân thủ một cách chính xác các điều khoản trong Giấy phép. Bất kỳ ý định sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình theo cách khác đều làm mất hiệu lực và tự động huỷ bỏ quyền của bạn trong khuôn khổ Giấy phép này. Tuy nhiên, các bên đã nhận được bản sao hoặc quyền từ bạn với Giấy phép này sẽ không bị huỷ bỏ giấy phép nếu các bên đó vẫn tuân thủ đầy đủ các điều khoản của giấy phép.<br />\r\n<br />\r\n<strong>5.</strong>&nbsp;Bạn không bắt buộc phải chấp nhận Giấy phép này khi bạn chưa ký vào đó. Tuy nhiên, không có gì khác đảm bảo cho bạn được phép chỉnh sửa hoặc cung cấp Chương trình hoặc các sản phẩm bắt nguồn từ Chương trình. Những hành động này bị luật pháp nghiêm cấm nếu bạn không chấp nhận Giấy phép này. Do vậy, bằng việc chỉnh sửa hoặc cung cấp Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), bạn đã thể hiện sự chấp thuận đối với Giấy phép này, cùng với tất cả các điều khoản và điều kiện đối với việc sao chép, cung cấp hoặc chỉnh sửa Chương trình hoặc các sản phẩm dựa trên nó.<br />\r\n<br />\r\n<strong>6.</strong> Mỗi khi bạn cung cấp lại Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), người nhận sẽ tự động nhận được giấy phép từ người cấp phép đầu tiên cho phép sao chép, cung cấp và chỉnh sửa Chương trình theo các điều khoản và điều kiện này. Bạn không thể áp đặt bất cứ hạn chế nào khác đối với việc thực hiện quyền của người nhận đã được cấp phép từ thời điểm đó. Bạn cũng không phải chịu trách nhiệm bắt buộc các bên thứ ba tuân thủ theo Giấy phép này.<br />\r\n<br />\r\n<strong>7.</strong>&nbsp;Nếu như, theo quyết định của toà án hoặc với những bằng chứng về việc vi phạm bản quyền hoặc vì bất kỳ lý do nào khác (không giới hạn trong các vấn đề về bản quyền), mà bạn phải tuân theo các điều kiện (nêu ra trong lệnh của toà án, biên bản thoả thuận hoặc ở nơi khác) trái với các điều kiện của Giấy phép này, thì chúng cũng không thể miễn cho bạn khỏi những điều kiện của Giấy phép này. Nếu bạn không thể đồng thời thực hiện các nghĩa vụ của mình trong khuôn khổ Giấy phép này và các nghĩa vụ thích đáng khác, thì hậu quả là bạn hoàn toàn không được cung cấp Chương trình. Ví dụ, nếu trong giấy phép bản quyền không cho phép những người nhận được bản sao trực tiếp hoặc gián tiếp qua bạn có thể cung cấp lại Chương trình thì trong trường hợp này cách duy nhất bạn có thể thoả mãn cả hai điều kiện là hoàn toàn không cung cấp Chương trình.<br />\r\n<br />\r\nNếu bất kỳ một phần nào trong điều khoản này không có hiệu lực hoặc không thể thi hành trong một hoàn cảnh cụ thể, thì sẽ cân đối áp dụng các điều khoản, và toàn bộ điều khoản sẽ được áp dụng trong những hoàn cảnh khác.<br />\r\n<br />\r\nMục đích của điều khoản này không nhằm buộc bạn phải vi phạm bất kỳ một bản quyền nào hoặc các quyền sở hữu khác hoặc tranh luận về giá trị hiệu lực của bất kỳ quyền hạn nào như vậy; mục đích duy nhất của điều khoản này là nhằm bảo vệ sự toàn vẹn của hệ thống cung cấp phần mềm tự do đang được thực hiện với giấy phép công cộng. Nhiều người đã đóng góp rất nhiều vào sự đa dạng của các phần mềm tự do được cung cấp thông qua hệ thống này với sự tin tưởng rằng hệ thống được sử dụng một cách thống nhất; tác giả/người cung cấp có quyền quyết định rằng họ có mong muốn cung cấp phần mềm thông qua hệ thống nào khác hay không, và người được cấp phép không thể có ảnh hưởng tới sự lựa chọn này.<br />\r\n<br />\r\nĐiều khoản này nhằm làm rõ những hệ quả của các phần còn lại của Giấy phép này.<br />\r\n<br />\r\n<strong>8.</strong>&nbsp;Nếu việc cung cấp và/hoặc sử dụng Chương trình bị cấm ở một số nước nhất định bởi quy định về bản quyền, người giữ bản quyền gốc đã đưa Chương trình vào dưới Giấy phép này có thể bổ sung một điều khoản hạn chế việc cung cấp ở những nước đó, nghĩa là việc cung cấp chỉ được phép ở các nước không bị liệt kê trong danh sách hạn chế. Trong trường hợp này, Giấy phép đưa vào những hạn chế được ghi trong nội dung của nó.<br />\r\n<br />\r\n<strong>9.&nbsp;</strong>Tổ chức Phần mềm Tự do có thể theo thời gian công bố những phiên bản chỉnh sửa và/hoặc phiên bản mới của Giấy phép Công cộng. Những phiên bản đó sẽ đồng nhất với tinh thần của phiên bản hiện này, nhưng có thể khác ở một số chi tiết nhằm giải quyết những vấn đề hay những lo ngại mới.<br />\r\n<br />\r\nMỗi phiên bản sẽ có một mã số phiên bản riêng. Nếu Chương trình và &quot;bất kỳ một phiên bản nào sau đó&quot; có áp dụng một phiên bản Giấy phép cụ thể, bạn có quyền lựa chọn tuân theo những điều khoản và điều kiện của phiên bản giấy phép đó hoặc của bất kỳ một phiên bản nào sau đó do Tổ chức Phần mềm Tự do công bố. Nếu Chương trình không nêu cụ thể mã số phiên bản giấy phép, bạn có thể lựa chọn bất kỳ một phiên bản nào đã từng được công bố bởi Tổ chức Phần mềm Tự do.<br />\r\n<br />\r\n<strong>10.</strong>&nbsp;Nếu bạn muốn kết hợp các phần của Chương trình vào các chương trình tự do khác mà điều kiện cung cấp khác với chương trình này, hãy viết cho tác giả để được phép. Đối với các phần mềm được cấp bản quyền bởi Tổ chức Phầm mềm Tự do, hãy đề xuất với tổ chức này; đôi khi chúng tôi cũng có những ngoại lệ. Quyết định của chúng tôi sẽ dựa trên hai mục tiêu là bảo hộ tình trạng tự do của tất cả các sản phẩm bắt nguồn từ phần mềm tự do của chúng tôi, và thúc đẩy việc chia sẻ và tái sử dụng phần mềm nói chung.<br />\r\n<br />\r\n<strong>KHÔNG BẢO HÀNH</strong><br />\r\nDO CHƯƠNG TRÌNH ĐƯỢC CẤP PHÉP MIỄN PHÍ NÊN KHÔNG CÓ MỘT CHẾ ĐỘ BẢO HÀNH NÀO TRONG MỨC ĐỘ CHO PHÉP CỦA LUẬT PHÁP. TRỪ KHI ĐƯỢC CÔNG BỐ KHÁC ĐI BẰNG VĂN BẢN, NHỮNG NGƯỜI GIỮ BẢN QUYỀN VÀ/HOẶC CÁC BÊN CUNG CẤP CHƯƠNG TRÌNH NGUYÊN BẢN SẼ KHÔNG BẢO HÀNH DƯỚI BẤT KỲ HÌNH THỨC NÀO, BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG CÁC HÌNH THỨC BẢO HÀNH ĐỐI VỚI TÍNH THƯƠNG MẠI CŨNG NHƯ TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. BẠN LÀ NGƯỜI CHỊU TOÀN BỘ RỦI RO VỀ CHẤT LƯỢNG CŨNG NHƯ VIỆC VẬN HÀNH CHƯƠNG TRÌNH. TRONG TRƯỜNG HỢP CHƯƠNG TRÌNH CÓ KHIẾM KHUYẾT, BẠN PHẢI CHỊU TOÀN BỘ CHI PHÍ CHO NHỮNG DỊCH VỤ SỬA CHỮA CẦN THIẾT.<br />\r\n<br />\r\nTRONG TẤT CẢ CÁC TRƯỜNG HỢP TRỪ KHI CÓ YÊU CẦU CỦA LUẬT PHÁP HOẶC CÓ THOẢ THUẬN BẰNG VĂN BẢN, NHỮNG NGƯỜI CÓ BẢN QUYỀN HOẶC BẤT KỲ MỘT BÊN NÀO CHỈNH SỬA VÀ/HOẶC CUNG CẤP LẠI CHƯƠNG TRÌNH TRONG CÁC ĐIỀU KIỆN NHƯ ĐÃ NÊU TRÊN ĐỀU KHÔNG CÓ TRÁCH NHIỆM VỚI BẠN VỀ CÁC LỖI HỎNG HÓC, BAO GỒM CÁC LỖI CHUNG HAY ĐẶC BIỆT, NGẪU NHIÊN HAY TẤT YẾU NẢY SINH DO VIỆC SỬ DỤNG HOẶC KHÔNG SỬ DỤNG ĐƯỢC CHƯƠNG TRÌNH (BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG VIỆC MẤT DỮ LIỆU, DỮ LIỆU THIẾU CHÍNH XÁC HOẶC CHƯƠNG TRÌNH KHÔNG VẬN HÀNH ĐƯỢC VỚI CÁC CHƯƠNG TRÌNH KHÁC), THẬM CHÍ CẢ KHI NGƯỜI CÓ BẢN QUYỀN VÀ CÁC BÊN KHÁC ĐÃ ĐƯỢC THÔNG BÁO VỀ KHẢ NĂNG XẢY RA NHỮNG THIỆT HẠI ĐÓ.<br />\r\n<br />\r\n<strong>KẾT THÚC CÁC ĐIỀU KIỆN VÀ ĐIỀU KHOẢN.</strong></p>\r\n\r\n<p><strong>Áp dụng những điều khoản trên như thế nào đối với chương trình của bạn</strong><br />\r\n<br />\r\nNếu bạn xây dựng một chương trình mới, và bạn muốn cung cấp một cách tối đa cho công chúng sử dụng, thì biện pháp tốt nhất để đạt được điều này là phát triển chương trình đó thành phần mềm tự do để ai cũng có thể cung cấp lại và thay đổi theo những điều khoản như trên.<br />\r\n<br />\r\nĐể làm được việc này, hãy đính kèm những thông báo như sau cùng với chương trình của mình. An toàn nhất là đính kèm chúng trong phần đầu của tập tin mã nguồn để thông báo một cách hiệu quả nhất về việc không có bảo hành; và mỗi tệp tin đều phải có ít nhất một dòng về “bản quyền” và trỏ đến toàn bộ thông báo.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>Một dòng đề tên chương trình và nội dung của nó.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Bản quyền (C) năm,&nbsp; tên tác giả.</strong><br />\r\n<br />\r\nChương trình này là phần mềm tự do, bạn có thể cung cấp lại và/hoặc chỉnh sửa nó theo những điều khoản của Giấy phép Công cộng của GNU do Tổ chức Phần mềm Tự do công bố; phiên bản 2 của Giấy phép, hoặc bất kỳ một phiên bản sau đó (tuỳ sự lựa chọn của bạn).<br />\r\n<br />\r\nChương trình này được cung cấp với hy vọng nó sẽ hữu ích, tuy nhiên KHÔNG CÓ BẤT KỲ MỘT BẢO HÀNH NÀO; thậm chí kể cả bảo hành về KHẢ NĂNG THƯƠNG MẠI hoặc TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. Xin xem Giấy phép Công cộng của GNU để biết thêm chi tiết.<br />\r\n<br />\r\nBạn phải nhận được một bản sao của Giấy phép Công cộng của GNU kèm theo chương trình này; nếu bạn chưa nhận được, xin gửi thư về Tổ chức Phần mềm Tự do, 59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA.<br />\r\n<br />\r\nXin hãy bổ sung thông tin về địa chỉ liên lạc của bạn (thư điện tử và bưu điện).</p>\r\n</blockquote>\r\n\r\n<p>Nếu chương trình chạy tương tác, hãy đưa một thông báo ngắn khi bắt đầu chạy chương trình như sau:</p>\r\n\r\n<blockquote>\r\n<p>Gnomovision phiên bản 69, Copyright (C) năm, tên tác giả.<br />\r\n<br />\r\nGnomovision HOÀN TOÀN KHÔNG CÓ BẢO HÀNH; để xem chi tiết hãy gõ `show w&#039;.&nbsp; Đây là một phần mềm miễn phí, bạn có thể cung cấp lại với những điều kiện nhất định, gõ ‘show c’ để xem chi tiết.<br />\r\nGiả thiết lệnh `show w&#039; và `show c&#039; cho xem những phần tương ứng trong Giấy phép Công cộng. Tất nhiên những lệnh mà bạn dùng có thể khác với ‘show w&#039; và `show c&#039;; những lệnh này có thể là nhấn chuột hoặc lệnh trong thanh công cụ - tuỳ theo chương trình của bạn.</p>\r\n</blockquote>\r\n\r\n<p>Bạn cũng cần phải lấy chữ ký của người phụ trách (nếu bạn là người lập trình) hoặc của trường học (nếu có) xác nhận từ chối bản quyền đối với chương trình. Sau đây là ví dụ:</p>\r\n\r\n<blockquote>\r\n<p>Yoyodyne, Inc., tại đây từ chối tất cả các quyền lợi bản quyền đối với chương trình `Gnomovision&#039; viết bởi James Hacker.<br />\r\n<br />\r\nchữ ký của Ty Coon, 1 April 1989<br />\r\nTy Coon, Phó Tổng Giám đốc.</p>\r\n</blockquote>\r\n\r\n<p>Giấy phép Công cộng này không cho phép đưa chương trình của bạn vào trong các chương trình độc quyền. Nếu chương trình của bạn là một thư viện thủ tục phụ, bạn có thể thấy nó hữu ích hơn nếu cho thư viện liên kết với các ứng dụng độc quyền. Nếu đây là việc bạn muốn làm, hãy sử dụng Giấy phép Công cộng Hạn chế của GNU thay cho Giấy phép này.</p>\r\n\r\n<hr  />\r\n<p><strong>Bản gốc của giấy phép bằng tiếng Anh có tại các địa chỉ sau:</strong></p>\r\n\r\n<ol>\r\n	<li>GNU General Public License, version 1, February 1989:&nbsp;<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt\" target=\"_blank\">http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt</a></li>\r\n	<li>GNU General Public License, version 2, June 1991:&nbsp;<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">http://www.gnu.org/licenses/old-licenses/gpl-2.0.html</a></li>\r\n	<li>GNU General Public License, version 3, 29 June 2007:&nbsp;<a href=\"http://www.gnu.org/licenses/gpl-3.0.txt\" target=\"_blank\">http://www.gnu.org/licenses/gpl-3.0.txt</a></li>\r\n</ol>\r\n\r\n<p><strong>Tài liệu tham khảo:</strong></p>\r\n\r\n<ol>\r\n	<li>Bản dịch tiếng Việt của Giấy phép Công cộng GNU tại OpenOffice.org:&nbsp;<br />\r\n	<a href=\"http://vi.openoffice.org/gplv.html\" target=\"_blank\">http://vi.openoffice.org/gplv.html</a></li>\r\n	<li>GPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href=\"http://vi.wikisource.org/wiki/GPL\" target=\"_blank\">http://vi.wikisource.org/wiki/GPL</a></li>\r\n</ol>\r\n\r\n<p><strong>Xem thêm:</strong></p>\r\n\r\n<ol>\r\n	<li>LGPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href=\"http://vi.wikisource.org/wiki/LGPL\" target=\"_blank\">http://vi.wikisource.org/wiki/LGPL</a></li>\r\n	<li>Giấy phép Công cộng GNU - WikiPedia:&nbsp;<br />\r\n	<a href=\"http://vi.wikipedia.org/wiki/Gi%E1%BA%A5y_ph%C3%A9p_C%C3%B4ng_c%E1%BB%99ng_GNU\" target=\"_blank\">http://vi.wikipedia.org/wiki/Giấy_phép_Công_cộng_GNU</a></li>\r\n	<li>Thảo luận giấy phép GNU GPL - HVA:<br />\r\n	&nbsp;<a href=\"http://www.hvaonline.net/hvaonline/posts/list/7120.hva\" target=\"_blank\">http://www.hvaonline.net/hvaonline/posts/list/7120.hva</a></li>\r\n	<li>Thảo luận tại diễn đàn:&nbsp;<a href=\"http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591\" target=\"_blank\">http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591</a></li>\r\n</ol>', 'giấy phép,công cộng,tiếng anh,gnu general,public license,gnu gpl,phần mềm,là tự,sử dụng,mã nguồn,bản dịch,tiếng việt,của gnu,đây là,này không,do tổ,chức tự,hành và,các điều,cho các,có bản,tuy nhiên,chúng tôi,cho những,phiên bản,mọi người,được phép,sao chép,lưu hành,bản sao,nguyên bản,nhưng không,và thay,nội dung,của này,hạn chế,tự do,chia sẻ,nukeviet,portal,mysql,php,cms,mã nguồn mở,thiết kế website', 0, '4', '', 4, 1, 1632575222, 1632575222, 1, 0, 0);
INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(5, 'Những tính năng của NukeViet CMS 4.0', 'nhung-tinh-nang-cua-nukeviet-cms-4-0', '', '', 0, '', '<p style=\"text-align: justify;\"><span style=\"font-size: 150%; line-height: 116%;\"><span style=\"font-weight: bold;\">Giới thiệu chung</span></span><br  /> <span style=\"font-weight: bold;\">Mã nguồn mở NukeViet là sản phẩm của sự làm việc chuyên nghiệp: </span><br  /> Để xây dựng lên NukeViet 4, đội ngũ phát triển đã thành lập công ty VINADES.,JSC. Trong quá trình phát triển NukeViet 4, VINADES.,JSC đã hợp tác với nhiều đơn vị cung cấp hosting trong và ngoài nước để thử nghiệm host, đảm bảo tương thích với đa số các hosting chuyên nghiệp.<br  /> NukeViet 4 cũng được vận hành thử nghiệm, góp ý bởi nhiều webmaster có kinh nghiệm quản trị ở nhiều hệ thống khác nhau nhằm tối ưu các tính năng hệ thống cho người sử dụng.<br  /> NukeViet 4 được lập trình bởi các lập trình viên mà kinh nghiệm và tên tuổi của họ đã được xác lập cùng với tên tuổi của bộ mã nguồn mở tạo web đầu tiên của Việt Nam.<br  /> <br  /> <span style=\"font-weight: bold;\">NukeViet 4 là một hệ thống mạnh:</span><br  /> Rút kinh nghiệm từ chính NukeViet 2, NukeViet 3, NukeViet 4 được viết mới hoàn toàn trên nền tảng kỹ thuật tiên tiến nhất hiện nay cho phép xây dựng các nền tảng ứng dụng trực tuyến lớn như Các cổng thông tin điện tử, các tòa soạn báo điện tử, các mạng xã hội và các hệ thống thương mại trực tuyến.<br  /> NukeViet 4 đã được thử nghiệm vận hành với dữ liệu lớn lên tới hàng triệu bản tin. Trên thực tế, NukeViet 4 cũng đã triển khai thành công cho các hiệp hội, doanh nghiệp có lượng truy cập rất lớn.<br  /> <br  /> <span style=\"font-weight: bold;\">NukeViet 4 thích hợp cho mọi đối tượng:</span><br  /> NukeViet lấy người sử dụng làm trọng tâm, những tính năng của NukeViet tạo nên chuẩn mực trong việc sử dụng và quản trị. Vì thế, NukeViet 4 tốt cho cả người sử dụng lẫn người phát triển.<br  /> Với người sử dụng, NukeViet 4 cho phép tùy biến dễ dàng và sử dụng ngay mà không cần can thiệp vào hệ thống.<br  /> Với người phát triển, sử dụng NukeViet cho phép nhanh chóng xây dựng các nền tảng khác nhau nhờ việc viết thêm các module cho hệ thống thay vì phải tự mình viết cả một hệ thống.</p>  <p style=\"text-align: justify;\"><span style=\"font-size: 150%; line-height: 116%;\"><span style=\"font-weight: bold;\">Các tính năng của NukeViet 4</span></span></p> <span style=\"font-weight: bold;\">Nền tảng công nghệ</span>  <ul> 	<li style=\"text-align: justify;\"><span id=\"cke_bm_178S\" style=\"display: none;\">&nbsp;</span>NukeViet CMS 4 lập trình trên PHP 5.4 và MySQL 5, Sử dụng PDO để kết nối với MySQL (Sẵn sàng kết nối với các CSDL khác) cho phép vận dụng tối đa sức mạnh của công nghệ mới.</li> 	<li style=\"text-align: justify;\">Sử dụng Composer để quản lý các thư viện PHP được cài vào hệ thống.</li> 	<li style=\"text-align: justify;\">Từng bước áp dụng các tiêu chuẩn viết code PHP theo khuyến nghị của http://www.php-fig.org/psr/</li> 	<li style=\"text-align: justify;\">Ứng dụng Xtemplate và jQuery cho phép vận dụng Ajax uyển chuyển từ trong nhân hệ thống.</li> 	<li style=\"text-align: justify;\">Giai diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn, Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</li> 	<li style=\"text-align: justify;\">Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 4 vẫn đảm bảo rằng từng dòng code là được code tay. Điều này có nghĩa là NukeViet 4 hoàn toàn không lệ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 4 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 4 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).<span id=\"cke_bm_178E\" style=\"display: none;\">&nbsp;</span></li> </ul>  <ul id=\"docs-internal-guid-7ec786f5-1ade-f016-4c9b-c9a8e36cc922\"> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Kiến trúc Module</span></p>  <ul> 	<li style=\"text-align: justify;\">NukeViet CMS 4 tái cấu trúc lại module, theo đó, toàn bộ tệp tin của mỗi module được gói gọn trong một thư mục riêng nhằm đơn giản trong việc quản lý và đóng gói ứng dụng. Kiến trúc module này tạo ra khái niệm block của module và theme của module giúp đa dạng hóa việc trình bày module.</li> 	<li style=\"text-align: justify;\">Hệ thống NukeViet 4 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</li> 	<li style=\"text-align: justify;\">NukeViet 4 cũng hỗ trợ việc cài đặt từ động 100% các module kèm theo block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 4 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</li> 	<li style=\"text-align: justify;\">Hệ thống cho phép quản lý module từ trong Admin Control Panel, quản trị cấp cao có thể phân quyền truy cập cũng như tạm ngưng hoạt động hay thậm chí cài lại hoặc xóa module tùy theo nhu cầu sử dụng.</li> </ul>  <p style=\"text-align: justify;\"><br  /> <span style=\"font-weight: bold;\">Đa ngôn ngữ</span></p>  <ul> 	<li>NukeViet 4 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ xử lý dữ liệu (database).</li> 	<li>NukeViet 4 có tính năng cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng...</li> 	<li>NukeViet cũng có trung tâm dịch thuật riêng dành cho việc chung tay góp sức xây dựng những ngôn ngữ mới tại địa chỉ: <a href=\"http://translate.nukeviet.vn\" target=\"_blank\">http://translate.nukeviet.vn</a></li> 	<li>NukeViet 4 tách bạch ngôn ngữ quản trị và ngôn ngữ người dùng, ngôn ngữ giao diện và ngôn ngữ database giúp dễ dàng xây dựng và quản lý các hệ thống đa ngôn ngữ.</li> 	<li>NukeViet 4 còn có khả năng tự động nhận diện và chuyển ngôn ngữ phù hợp cho người sử dụng.</li> 	<li>NukeViet 4 còn có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Phân quyền</span><strong> cấp độ hệ thống</strong><br  /> NukeViet 4 tách biệt 2 khu vực: Khu vực quản trị và Khu vực người dùng. Toàn bộ các tính năng quản lý nằm trong khu vực quản trị nhằm đảm bảo việc phân quyền được thực hiện chính xác và an toàn nhất.<br  /> <br  /> <span style=\"font-weight: bold;\">Phân quyền Quản trị</span><br  /> NukeViet 4 phân quyền theo module và theo ngôn ngữ, do đó dễ dàng xác lập quyền quản trị cho các hệ thống lớn, nhiều người quản trị cùng làm việc.<br  /> <br  /> <span style=\"font-weight: bold;\">Phân quyền thành viên</span><br  /> NukeViet 4 cho phép quản lý và phân nhóm người sử dụng thành các nhóm khác nhau để dễ dàng phân quyền người sử dụng theo từng module cụ thể.<br  /> <br  /> <strong>Phân quyền cấp độ module</strong><br  /> Ở cấp module, tùy chức năng module được thiết kế mà nó có thể được phân quyền theo các cơ chế khác nhau, việc này đặc biệt linh hoạt khi xây dựng các hệ thống lớn. Với module News tích hợp trong hệ thống được trang bị việc phân quyền tới từng chuyên mục.<br  /> <br  /> <span style=\"font-weight: bold;\">Đa giao diện</span></p>  <ul> 	<li style=\"text-align: justify;\">Cài đặt: NukeViet 4 hỗ trợ cài đặt và gỡ bỏ giao diện hoàn toàn tự động. Hơn thế nữa, bạn có thể đóng gói giao diện để chia sẻ cho website khác một cách dễ dàng.</li> 	<li style=\"text-align: justify;\">NukeViet hỗ trợ giao diện theo ngôn ngữ, giao diện theo module, định nghĩa giao diện mobile (NukeViet 4) và giao diện PC tùy theo ý người quản trị.</li> 	<li style=\"text-align: justify;\">NukeViet hỗ trợ hệ thống đa giao diện cực kỳ uyển chuyển cho cả người sử dụng lẫn người lập trình. Với NukeViet 4, người sử dụng có thể tùy biến một cách dễ dàng: gán giao diện theo module, thiết lập bố cục giao diện cho từng tính năng của module.</li> 	<li style=\"text-align: justify;\">Với người thiết kế giao diện: có thể tùy ý thiết kế không giới hạn bố cục giao diện. Giao diện đã được tách bạch phần HTML và CSS khỏi PHP vì vậy người thiết kế tùy trình độ mà có thể can thiệp vào các lớp giao diện để chỉnh sửa hoặc thiết kế giao diện mới một cách dễ dàng.</li> </ul>  <p style=\"text-align: justify;\"><strong>Hỗ trợ truy cập từ điện thoại, máy tính bảng.</strong><br  /> Từ bản NukeViet 4, NukeViet có thể tự động nhận diện thiết bị di động để chuyển giao diện và chế độ tương tác phù hợp. Ngoài ra NukeViet 4 còn có giao diện tùy biến, để có thể hiển thị tốt trên các màn hình khác nhau.<br  /> <br  /> <span style=\"font-weight: bold;\">Tùy biến site bằng Block</span><br  /> NukeViet cho phép đa dạng hóa bố cục và chức năng cho website nhờ các khối (block) khác nhau trên website. Các khối này có thể là các ứng dụng, các khối quảng cáo hoặc dữ liệu bất kỳ nào được người sử dụng định nghĩa. Block của NukeViet 4 cũng phân theo 2 cấp: Block của hệ thống và block cho từng module.<br  /> Người sử dụng có thể tùy ý bố trí vị trí block ở các vị trí khác nhau: toàn bộ website, theo từng module và thậm chí là từng tính năng của module. Block có thể có các giao diện khác nhau theo theme. Có thể hẹn giờ bật/tắt cũng như phân quyền cho từng đối tượng người truy cập.<br  /> Việc bố trí block có thể thực hiện trong Admin Control Panel hoặc kéo thả trực quan ngay tại giao diện người dùng.<br  /> <br  /> <span style=\"font-weight: bold;\">An ninh, bảo mật</span><br  /> NukeViet 4 được thiết kế để nhận biết và chống các truy cập bất hợp pháp vào hệ thống cũng như gửi các dữ liệu có hại lên hệ thống.</p>  <ul> 	<li style=\"text-align: justify;\">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</li> 	<li style=\"text-align: justify;\">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.<br  /> 	Tường lửa Admin bảo vệ khu vực bằng mật khẩu và IP.</li> 	<li style=\"text-align: justify;\">Bộ lọc IP cấm và bộ lọc file cấm giúp ngăn ngừa các nguy cơ biết trước.</li> 	<li style=\"text-align: justify;\">Dữ liệu gửi qua hệ thống được kiểm duyệt bằng bộ lọc an ninh kép nhằm ngăn chặn các dữ liệu có khả năng tấn công vào hệ thống.</li> 	<li style=\"text-align: justify;\">NukeViet có khả năng ngăn chặn, theo dõi và kiểm soát truy cập vào hệ thống của tất cả các máy chủ tìm kiếm như yahoo và google hay bất cứ máy chủ tìm kiếm nào khác.</li> 	<li style=\"text-align: justify;\">Hệ thống có khả năng chống Spam bằng Captcha, chống lụt dữ liệu bằng nhiều hình thức như giới hạn thời gian gửi dữ liệu (sử dụng các công thức kép)...</li> 	<li style=\"text-align: justify;\">Hệ thống cho phép theo dõi, ghi nhận các thông số của máy tính truy cập đến site như: Hệ điều hành, Trình duyệt, quốc gia, các liên kết đến site (referer) để từ đó có thể kịp thời ngăn ngừa các nguy cơ tấn công bằng các hình thức như: kiểm tra và chặn các máy tình dùng proxy, chặn IP truy cập...</li> 	<li style=\"text-align: justify;\">hật ký hệ thống sẽ ghi nhận truy cập và thao tác tới cơ sở dữ liệu &amp; tệp tin, giúp người quản trị cũng như các thành viên dễ dàng phát hiện ra những đăng nhập bất hợp pháp từ lần đăng nhập trước đó.</li> 	<li style=\"text-align: justify;\">Hệ thống có thể phát hiện các bản nâng cấp mới của phần mềm để nhắc nhở người sử dụng nâng cấp và sửa chữa các lỗi (nếu có)</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý CSDL</span></p>  <ul> 	<li style=\"text-align: justify;\">NukeViet 4 cho phép quản lý CSDL, người sử dụng có thể tối ưu, sao lưu trên máy chủ và tải dữ liệu về để phục vụ cho công tác phục hồi nếu xảy ra sự cố.</li> 	<li style=\"text-align: justify;\">Hỗ trợ mô hình CSDL theo mô hình master/slave để phân tải CSDL.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Kiểm soát lỗi tự động và báo lỗi thông minh</span></p>  <ul> 	<li style=\"text-align: justify;\">NukeViet 4 có hệ thống kiểm soát lỗi tự động và báo lỗi cho người dùng.</li> 	<li style=\"text-align: justify;\">Các lỗi (nếu có) sẽ được hệ thống kiểm soát có chủ đích, nó chỉ hiển thị lên màn hình người sử dụng ở lần đầu nó xuất hiện, sau đó hệ thống ghi nhận và báo về cho người quản trị qua email.</li> 	<li style=\"text-align: justify;\">Quản trị có thể cấu hình việc bật tắt việc có ghi nhận lỗi hay không.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Tối ưu hóa cho công cụ tìm kiếm (SEO)</span></p>  <ul> 	<li style=\"text-align: justify;\">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ.</li> 	<li style=\"text-align: justify;\">Cho phép đổi đường dẫn module</li> 	<li style=\"text-align: justify;\">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</li> 	<li style=\"text-align: justify;\">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</li> 	<li style=\"text-align: justify;\">Hỗ trợ Meta OG của facebook</li> 	<li style=\"text-align: justify;\">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags<br  /> 	Hỗ trợ SEO link.</li> 	<li style=\"text-align: justify;\">Quản lý và tùy biến tiêu đề site, description</li> 	<li style=\"text-align: justify;\">Hỗ trợ quản lý các thẻ meta như: keywords, description</li> 	<li style=\"text-align: justify;\">Hỗ trợ sử dụng keywords để phát sinh trang thống kê một cách tự động nhờ công cụ tìm kiếm.</li> 	<li style=\"text-align: justify;\">Hỗ trợ quản lý máy chủ tìm kiếm.</li> 	<li style=\"text-align: justify;\">Hỗ trợ quản lý cấu hình robots.txt</li> 	<li style=\"text-align: justify;\">Hỗ trợ chuẩn đoán site (site Diagnostic).</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Sẵn sàng cho việc tích hợp các ứng dụng của bên thứ 3</span><br  /> NukeViet 3.4 sử dụng Cơ sở dữ liệu thành viên độc lập và xây dựng sẵn các phương thức kết nối với các ứng dụng Forum. Cơ sở dữ liệu thành viên độc lập giúp việc quản lý thành viên được chủ động, khi có nhu cầu kết nối hoặc trao quyền quản lý cho các ứng dụng từ bên thứ 3, NukeViet 3.4 vẫn hoàn toàn chủ động với dữ liệu thành viên của mình. Với NukeViet 3.4, các kết nối trực tiếp dành cho Forum như PHPBB hay VBB đều sẵn sàng.<br  /> <br  /> <span style=\"font-weight: bold;\">Hỗ trợ Đăng nhập phân tán</span><br  /> NukeViet hỗ trợ thư viện OAuth , cho phép người truy cập có thể đăng nhập phân tán từ các hệ thống như FaceBook và Google hay các hệ thống OpenID khác giúp các website mới xây dựng có cơ hội thu hút lượng người sử dụng khổng lồ từ các hệ thống lớn.<br  /> Trong mọi trường hợp, hệ thống cho phép admin kiểm duyệt việc login OAuth. Tùy nhu cầu sử dụng mà có thể thiết đặt mức độ login cao nhất (tự động) tới mức độ vẫn phải đăng ký thành viên (bớt bước kích hoạt qua email). Người sử dụng cũng có thể quản lý nhiều tài khoản OAuth để từ đó có thể đăng nhập bằng tài khoản bất kỳ (nếu hệ thống cho phép).</p>  <p style=\"text-align: justify;\"><strong>Trình soạn thảo tích hợp sẵn:</strong></p>  <p style=\"text-align: justify;\">Tại những vị trí phù hợp, NukeViet tích hợp sẵn trình soạn thảo CKeditor giúp người sử dụng dễ dàng biên tập nội dung trên giao diện trực quan và thân thiện như làm việc với phần mềm Microsoft Word hay OpenOffice. Hiện tại NukeViet 4 cũng đã mở sẵn để tích hợp các trình soạn thảo khác.</p>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Các tiện ích khác</span><br  /> Hệ thống cho phép gửi mail bằng các phương thức: SMTP, Linux Mail, PHPmail.<br  /> Cho phép sử dụng phương thức FTP để ghi file nếu máy chủ không cho phép làm điều đó bằng PHP<br  /> Cho phép xây dựng và quản lý các tác vụ xử lý tự động như tự động sao lưu CSDL, tự động xóa các dữ liệu cũ hoặc gửi báo lỗi tới người quản trị...<br  /> Cung cấp đầy đủ các thông tin về hệ thống giúp nhà phát triển dễ dàng sử dụng các thông tin này phục vụ cho việc lập trình, kiểm tra và báo lỗi hệ thống.<br  /> <br  /> <span style=\"font-size: 150%; line-height: 116%;\"><span style=\"font-weight: bold;\">Các module tích hợp sẵn trong NukeViet CMS 4:</span></span><br  /> <span style=\"font-weight: bold;\">Quản lý Upload</span></p>  <ul> 	<li style=\"text-align: justify;\">Upload file từ máy tính hoặc một địa chỉ bất kỳ trên mạng.</li> 	<li style=\"text-align: justify;\">Quản lý: Di chuyển, đổi tên, sửa, xóa, tạo hình thu nhỏ...</li> 	<li style=\"text-align: justify;\">Hỗ trợ tìm kiểm các file và mô tả các file được upload lên trong khu vực quản trị.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản trị và xuất bản Tin tức:</span> (cho phép tạo module ảo)<br  /> Hệ thống tin tức của NukeViet là hệ thống quản trị tin tức chuyên nghiệp đặc biệt phù hợp với các website tin tức. Nó cho phép xử lý nhiều tác vụ nền thông minh mà không cần người sử dụng can thiệp nhằm tối ưu cho hệ thống tin tức, Ví dụ: tạo hình thu nhỏ, tự động chia thư mục và sắp xếp hình vào các thư mục theo thời gian...</p>  <ul> 	<li style=\"text-align: justify;\">Quản lý chủ đề đa cấp trong đó bản tin có thể nằm ở 1 hoặc nhiều chủ đề không phụ thuộc quan hệ cha con giữa các chủ đề.</li> 	<li style=\"text-align: justify;\">Phân quyền cho người quản lý module, đến từng chủ đề</li> 	<li style=\"text-align: justify;\">Quản lý nhóm tin liên quan (phân luồn tin theo dòng đơn)</li> 	<li style=\"text-align: justify;\">Quản lý block tin (nhóm tin đa luồng)</li> 	<li style=\"text-align: justify;\">Quản lý Tags</li> 	<li style=\"text-align: justify;\">Quản lý nguồn tin</li> 	<li style=\"text-align: justify;\">Tùy chỉnh bố cục trang tin.</li> 	<li style=\"text-align: justify;\">Gửi bài viết, hẹn giờ đăng và nhiều tùy chỉnh khác: cho phép gửi bản tin, in, lưu bản tin.</li> 	<li style=\"text-align: justify;\">Cấp tin RSS</li> 	<li style=\"text-align: justify;\">Công cụ tương tác với mạng xã&nbsp; hội.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Module Page:</span></p>  <ul> 	<li style=\"text-align: justify;\">Module này thích hợp làm các bài viết không cần quản lý chủ đề, như các module ảo: giới thiệu, nội quy site ...</li> 	<li style=\"text-align: justify;\">Hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</li> 	<li style=\"text-align: justify;\">Hỗ trợ RSS</li> 	<li style=\"text-align: justify;\">Cấu hình phương án hiển thị các bài viết trên trang chính.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý thành viên:</span></p>  <ul> 	<li style=\"text-align: justify;\">Quản lý việc đăng nhập, đăng ký.</li> 	<li style=\"text-align: justify;\">Quản lý phương thức đăng nhập: Qua openid hoặc đăng nhập trực tiếp.</li> 	<li style=\"text-align: justify;\">Quản lý câu hỏi bảo mật.</li> 	<li style=\"text-align: justify;\">Quản lý nội quy.</li> 	<li style=\"text-align: justify;\">Quản lý thông tin thành viên.</li> 	<li style=\"text-align: justify;\">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha thông qua CAS.</li> 	<li style=\"text-align: justify;\">Chức năng tùy biến trường dữ liệu thành viên</li> 	<li style=\"text-align: justify;\">Chức năng phân quyền sử dụng module users</li> 	<li style=\"text-align: justify;\">Cấu hình Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</li> 	<li style=\"text-align: justify;\">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý liên hệ gửi đến website</span></p>  <ul> 	<li style=\"text-align: justify;\">Quản lý thông tin liên hệ trên site.</li> 	<li style=\"text-align: justify;\">Quản lý các bộ phận tiếp nhận liên hệ.</li> 	<li style=\"text-align: justify;\">Quản lý và trả lời các thư gửi tới. Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</li> 	<li style=\"text-align: justify;\">Hệ thống nhận thông báo: đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó. Ví dụ: Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý thăm dò ý kiến:</span></p>  <ul> 	<li style=\"text-align: justify;\">Tạo các thăm dò ý kiến</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Quản lý quảng cáo chuyên nghiệp:</span></p>  <ul> 	<li style=\"text-align: justify;\">Quản lý khách hàng.</li> 	<li style=\"text-align: justify;\">Quản lý các khu vực quảng cáo</li> 	<li style=\"text-align: justify;\">Quản lý các nội dung quảng cáo.</li> 	<li style=\"text-align: justify;\">Kết hợp với việc quản lý block. Các quản cáo có thể đặt vào các khu vực khác nhau, dễ dàng thay đổi theo nhu cầu của người dùng.</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Thống kê:</span> Thống kê theo năm, tháng, ngày, tuần, giờ.</p>  <ul> 	<li style=\"text-align: justify;\">Theo liên kết đến site</li> 	<li style=\"text-align: justify;\">Theo quốc gia</li> 	<li style=\"text-align: justify;\">Theo trình duyệt</li> 	<li style=\"text-align: justify;\">Theo hệ điều hành</li> 	<li style=\"text-align: justify;\">Máy chủ tìm kiếm</li> </ul>  <p style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Tìm kiếm</span></p>  <ul> 	<li style=\"text-align: justify;\">Tìm kiếm chung toàn hệ thống</li> 	<li style=\"text-align: justify;\">Tìm kiếm nâng cao từng khu vực</li> </ul>  <div style=\"text-align: justify;\"><strong>Module menu:</strong></div>  <ul> 	<li style=\"text-align: justify;\">Module này cung cấp để quản lý các menu tùy biên, có thể lấy liên kết từ nhiều mục khác nhau.</li> 	<li style=\"text-align: justify;\">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin.</li> 	<li style=\"text-align: justify;\">Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</li> 	<li style=\"text-align: justify;\">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</li> </ul>  <p style=\"text-align: justify;\"><strong>Quản lý Bình luận</strong></p>  <ul> 	<li style=\"text-align: justify;\">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình, phân quyền.</li> 	<li style=\"text-align: justify;\">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li> </ul>  <p style=\"text-align: justify;\"><br  /> Trên đây là các tính năng chính của bộ nhân hệ thống NukeViet 4, để xem đầy đủ hơn các tính năng <strong><a href=\"http://wiki.nukeviet.vn/nukeviet4:feature\">click vào đây</a></strong>. Với NukeViet, việc mở rộng thêm các tính năng là không hạn chế, đơn giản là cài thêm các module tương ứng hoặc xây dựng thêm các module đó cho NukeViet.</p>', '', 4, '', '0', 5, 1, 1632575222, 1632575222, 1, 0, 0),
(6, 'Yêu cầu sử dụng NukeViet 4', 'Yeu-cau-su-dung-NukeViet-4', '', '', 0, '', '<h2 class=\"sectionedit2\" id=\"moi_truong_may_chủ\">1. Môi trường máy chủ</h2>  <div class=\"level2\"> <p><strong>Yêu cầu bắt buộc</strong></p>  <ul> 	<li class=\"level1\"> 	<div class=\"li\">Hệ điều hành: Unix (Linux, Ubuntu, Fedora …) hoặc Windows</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">PHP: PHP 5.4 hoặc phiên bản mới nhất.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">MySQL: MySQL 5.5 hoặc phiên bản mới nhất</div> 	</li> </ul>  <p><strong>Tùy chọn bổ sung</strong></p>  <ul> 	<li class=\"level1\"> 	<div class=\"li\">Máy chủ Apache cần hỗ trợ mod mod_rewrite.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Máy chủ Nginx cấu hình các thông số rewite.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Máy chủ IIS 7.0 hoặc IIS 7.5 cần cài thêm module rewrite</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Môi trường PHP mở rộng: Các thư viện PHP cần có: file_uploads, session, mbstring, curl, gd2, zlib, soap, php_zip.</div> 	</li> </ul>  <p><em class=\"u\"><strong>Ghi chú:</strong></em></p>  <ul> 	<li class=\"level1\"> 	<div class=\"li\">Những yêu cầu trên không có nghĩa là NukeViet 4 không làm việc trên các hệ thống khác, điều quan trọng là cần thiết lập môi trường làm việc phù hợp.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Với những website sử dụng hosting, NukeViet 4 làm việc tốt nhất trên các hosting Linux cài sẵn Apache 2.2, PHP 5, MySQL 5, DirectAdmin hoặc Cpanel.</div> 	</li> 	<li class=\"level1\"> 	<div class=\"li\">Với các website cần chịu tải cao, nên sử dụng Nginx, PHP7 (php-fpm). Tham khảo thêm mô hình <a class=\"urlextern\" href=\"http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao\" rel=\"nofollow\" target=\"_blank\" title=\"http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao\">http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao</a></div> 	</li> </ul> </div>  <div class=\"secedit editbutton_section editbutton_2\">  <div class=\"no\">&nbsp;</div>  </div>  <h2 class=\"sectionedit3\" id=\"may_tinh_nguời_truy_cập\">2. Máy tính người truy cập</h2>  <div class=\"level2\"> <p>NukeViet 4 cho kết quả là chuẩn HTML5 và CSS 3, đây là định dạng chuẩn mà hầu hết các trình duyệt hiện nay đang hỗ trợ. Chính vì vậy các website làm trên nền NukeViet 4 có thể truy cập tốt trên các phiên bản mới nhất của trình duyệt FireFox, Internet Explorer 9, Google Chrome … Máy tính người truy cập chỉ cần cài một trong các trình duyệt này là có thể tương tác với NukeViet thông qua internet hoặc intranet.</p> </div>', '', 0, '4', '', 6, 1, 1632575222, 1632575222, 1, 0, 0),
(7, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam', '', '', 0, '', '<p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực. Wbsite đang hoạt động chính thức: <a href=\"http://vinades.vn/\">http://vinades.vn/</a><br  /> <br  /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là <em><strong>&quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;</strong></em>.<br  /> <br  /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href=\"http://nukeviet.vn/\" target=\"_blank\">NukeViet</a></strong> thành một <a href=\"http://nukeviet.vn/\" target=\"_blank\">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.</p>  <div style=\"text-align: center;\"> <div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"480\" src=\"//www.youtube.com/embed/ZOhu2bLE-eA?rel=0&amp;autoplay=1\" style=\"position: absolute;top: 0;left: 0;width: 100%;height: 100%;\" width=\"640\"></iframe></div> <br  /> <span style=\"font-size:12px;\"><strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br  /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</span></div>  <p style=\"text-align: justify;\"><br  /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br  /> <br  /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p>  <p>Nếu bạn có nhu cầu triển khai các hệ thống <strong><a href=\"http://toasoandientu.vn\" target=\"_blank\">Tòa Soạn Điện Tử</a></strong>, <strong><a href=\"http://webnhanh.vn\" target=\"_blank\">phần mềm trực tuyến</a></strong>, <strong><a href=\"http://vinades.vn\" target=\"_blank\">thiết kế website</a></strong> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p>  <p><strong><span style=\"font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;\">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br  /> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br  /> Website: <a href=\"http://vinades.vn/\">http://vinades.vn</a> | <a href=\"http://nukeviet.vn/\">http://nukeviet.vn</a> | <a href=\"http://webnhanh.vn/\">http://webnhanh.vn</a><br  /> Trụ sở: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /> - Tel: +84-4-85872007<br  /> - Fax: +84-4-35500914<br  /> - Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a></p>', 'giới thiệu,công ty,cổ phần,phát triển', 0, '4', '', 7, 1, 1632575222, 1632575222, 1, 0, 0),
(8, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet', '', '', 0, 'Nếu bạn yêu thích NukeViet, bạn có thể ủng hộ và hỗ trợ NukeViet bằng nhiều cách', '<h2>1. Ủng hộ bằng tiền mặt vào Quỹ tài trợ NukeViet</h2>\r\nQua tài khoản Paypal:\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=5LUSNE2SV5RR2\" target=\"_blank\"><img alt=\"\" src=\"https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif\" /></a></p>\r\nChuyển khoản ngân hàng trực tiếp:\r\n\r\n<ul>\r\n	<li>Người đứng tên tài khoản:&nbsp;NGUYEN THE HUNG</li>\r\n	<li>Số tài khoản:&nbsp;0031000792053</li>\r\n	<li>Loại tài khoản: VND (Việt Nam Đồng)</li>\r\n	<li>Ngân hàng Vietcombank chi nhánh Hải Phòng.</li>\r\n	<li>Website:&nbsp;<a href=\"http://www.vietcombank.com.vn/\">http://www.vietcombank.com.vn</a></li>\r\n</ul>\r\n\r\n<div class=\"alert alert-info\">Lưu ý: Đây là tài khoản hợp lệ duy nhất mà NukeViet.VN sử dụng cho&nbsp;Quỹ tài trợ NukeViet.</div>\r\nThảo luận tại đây:&nbsp;<a href=\"http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592\" target=\"_blank\">http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592</a>\r\n\r\n<h2>2. Ủng hộ bằng cách sử dụng và phổ biến NukeViet đến nhiều người hơn</h2>\r\nCách đơn giản nhất để ủng hộ NukeViet phát triển là sử dụng NukeViet và giúp NukeViet phổ biến đến nhiều người hơn (ví dụ như giữ lại dòng chữ &quot;Powered by&nbsp;<a href=\"http://nukeviet.vn/\" target=\"_blank\">NukeViet</a>&quot; hoặc &quot;Sử dụng&nbsp;<a href=\"http://nukeviet.vn/\" target=\"_blank\">NukeViet</a>&quot; trên website của bạn, viết bài giới thiệu NukeViet đến mọi người).<br />\r\nNếu bạn có thời gian, bạn có thể tham gia&nbsp;<a href=\"http://forum.nukeviet.vn/\" target=\"_blank\">diễn đàn NukeViet</a>&nbsp;thường xuyên và giúp đỡ những người mới sử dụng NukeViet.\r\n\r\n<h2>3. Ủng hộ bằng cách tham gia phát triển NukeViet</h2>\r\n\r\n<h3>3.1. Phát triển module, giao diện cho NukeViet</h3>\r\nNếu bạn biết code, hãy tham gia viết module, block, theme cho NukeViet và đưa lên&nbsp;<a href=\"http://nukeviet.vn/vi/store/\" target=\"_blank\">NukeViet Store</a>&nbsp;để cung cấp cho cộng đồng. Bạn cũng có thể tham gia đội ngũ phát triển NukeViet.\r\n\r\n<h3>3.2. Tham gia phát triển nhân hệ thống</h3>\r\nToàn bộ code nhân hệ thống NukeViet đã được đưa lên GitHub.com (truy cập tắt:&nbsp;<a href=\"http://code.nukeviet.vn/\" target=\"_blank\">http://code.nukeviet.vn</a>), dù bạn là ai, cá nhân hay doanh nghiệp chỉ cần có một tài khoản tại GitHub và học cách sử dụng&nbsp;<a href=\"#git\">git&nbsp;(1)</a>&nbsp;là bạn có thể tham gia phát triển code NukeViet. Tìm hiểu thêm về việc tham gia phát triển code nhân hệ thống NukeViet tại đây:&nbsp;<a href=\"http://wiki.nukeviet.vn/programming:github_rule\" target=\"_blank\">http://wiki.nukeviet.vn/programming:github_rule</a>\r\n\r\n<h3>3.3. Tham gia dịch thuật</h3>\r\nNếu bạn biết ngoại ngữ, hãy đăng ký tham gia đội ngũ dịch thuật tình nguyện tại&nbsp;<a href=\"http://translate.nukeviet.vn/\" target=\"_blank\">NukeViet Stranslate System</a>&nbsp;để dịch thuật NukeViet sang các ngôn ngữ khác, quảng bá NukeViet ra với thế giới.\r\n\r\n<h3>3.4. Tham gia viết tài liệu hướng dẫn sử dụng</h3>\r\nNếu bạn không biết code, không biết ngoại ngữ, bạn vẫn có thể tham gia đóng góp cho NukeViet bằng cách biên soạn tài liệu hướng dẫn người dùng NukeViet tại thư viện tài liệu mở của NukeViet ở địa chỉ&nbsp;<a href=\"http://wiki.nukeviet.vn/\" target=\"_blank\">http://wiki.nukeviet.vn</a>\r\n\r\n<hr  /> <a id=\"git\" name=\"git\">(1)</a>: Tìm hiểu về git:&nbsp;<a href=\"http://wiki.nukeviet.vn/programming:vcs:git\" target=\"_blank\">http://wiki.nukeviet.vn/programming:vcs:git</a>', 'ủng hộ,hỗ trợ,tham gia,phát triển', 0, '4', '', 8, 1, 1632575222, 1632575222, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about_config`
--

CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'banners', 'global.banners.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:48:\"/nukeviet/index.php?language=vi&amp;nv=siteterms\";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:48:\"/nukeviet/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(32, 'themtet2018', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:20.984516000000013;s:20:\"company_mapcenterlng\";d:105.795475;s:14:\"company_maplat\";d:20.984515999999999;s:14:\"company_maplng\";d:105.79547500000001;s:15:\"company_mapzoom\";i:17;s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(33, 'themtet2018', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(34, 'themtet2018', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(35, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[FIX_BANNER_LEFT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:4;}'),
(36, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[FIX_BANNER_RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(37, 'themtet2018', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(38, 'themtet2018', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(39, 'themtet2018', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:25;}'),
(40, 'themtet2018', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(41, 'themtet2018', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(42, 'themtet2018', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(43, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 5, 'a:1:{s:12:\"idplanbanner\";i:6;}'),
(44, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 6, 'a:1:{s:12:\"idplanbanner\";i:7;}'),
(45, 'themtet2018', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(46, 'themtet2018', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(47, 'themtet2018', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(48, 'themtet2018', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:\"level\";s:1:\"M\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),
(49, 'themtet2018', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(50, 'themtet2018', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(51, 'themtet2018', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(52, 'themtet2018', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(53, 'themtet2018', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(54, 'themtet2018', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 5, 'a:1:{s:12:\"idplanbanner\";i:7;}'),
(55, 'themtet2018', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(56, 'themtet2018', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(57, 'themtet2018', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(59, 'shop-hoa', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:1;}'),
(60, 'shop-hoa', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, ''),
(61, 'shop-hoa', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(62, 'shop-hoa', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(63, 'shop-hoa', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 3, ''),
(64, 'shop-hoa', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(65, 'shop-hoa', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(66, 'shop-hoa', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, ''),
(67, 'shop-hoa', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(68, 'shop-hoa', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(69, 'shop-hoa', 'news', 'global.block_category.php', 'Tin tức', '/nukeviet/vi/news/Tin-tuc/', 'primary', '[RIGHT]', 0, '1', 1, '6', 0, 3, 'a:2:{s:5:\"catid\";i:1;s:12:\"title_length\";i:0;}'),
(70, 'shop-hoa', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(71, 'shop-hoa', 'news', 'module.block_headline.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:3:{s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),
(72, 'shop-hoa', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'primary', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(79, 'theme_bkhdt', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(80, 'theme_bkhdt', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(90, 'default', 'theme', 'global.block_slide.php', 'Tin túc nổi bật', '', '', '[NEW]', 0, '1', 1, '6', 1, 5, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(97, 'default', 'theme', 'global.block_newnav.php', 'global block default', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 3, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(98, 'default', 'news', 'global.block_tophits.php', 'HỘI THẢO', '', '', '[NEW]', 0, '1', 1, '6', 0, 1, 'a:6:{s:10:\"number_day\";i:365;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}'),
(100, 'default', 'news', 'global.block_tophits.php', 'HỘI THẢO', '', '', '[NEW]', 0, '1', 1, '6', 1, 2, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:3;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}'),
(101, 'default', 'theme', 'global.block_rightnews.php', 'Học bổng - tuyển dụng', '', '', '[RIGHT]', 0, '1', 1, '6', 1, 4, ''),
(102, 'default', 'theme', 'global.block_rightnews.php', 'Hợp tác - quốc tế', '', '', '[RIGHT]', 0, '1', 1, '6', 1, 5, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(103, 'default', 'theme', 'global.block_rightnews.php', 'Video', '', '', '[RIGHT]', 0, '1', 1, '6', 1, 6, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(104, 'default', 'theme', 'global.block_rightnews.php', 'Tấm gương vượt khó', '', '', '[RIGHT]', 0, '1', 1, '6', 1, 7, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(105, 'default', 'theme', 'global.block_rightnews.php', 'Những cựu sinh viên ưu tú', '', '', '[RIGHT]', 0, '1', 1, '6', 1, 8, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(106, 'default', 'news', 'global.block_tophits.php', 'TIN LIÊN QUAN', '', '', '[NEW]', 0, '1', 1, '6', 1, 3, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:30;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}'),
(107, 'default', 'news', 'global.block_tophits.php', 'NHÀ GIÁO', '', '', '[NEW]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:4;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}'),
(108, 'default', 'theme', 'global.block_image.php', 'GÓC ẢNH', '', '', '[BOTTOM]', 0, '1', 1, '6', 1, 1, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(110, 'theme_bkhdt', 'about', 'global.about.php', 'global about', '', '', '[ABOUT]', 0, '1', 1, '6', 0, 1, ''),
(111, 'theme_bkhdt', 'news', 'module.block_newscenter.php', 'module block newscenter', '', 'no_title', '[NEWS]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:3;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:0;s:5:\"width\";i:400;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(112, 'theme_bkhdt', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', '', '[TOPHITS]', 0, '1', 1, '6', 0, 1, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:5;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}'),
(113, 'theme_bkhdt', 'banners', 'global.banners.php', 'global banners', '', '', '[INTRO]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(119, 'theme_bkhdt', 'banners', 'global.banners.php', 'global banners', '', '', '[BOTTOM_ADS]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(118, 'theme_bkhdt', 'statistics', 'global.counter.php', 'global counter button', '', '', '[STATISTICS]', 0, '1', 1, '6', 0, 1, ''),
(120, 'theme_bkhdt', 'voting', 'global.voting_random.php', 'global voting random', '', '', '[VOTING]', 0, '1', 1, '6', 0, 1, ''),
(122, 'theme_bkhdt', 'news', 'global.block_tophits.php', 'module block content', '', '', '[CHUYENMUC]', 0, '1', 1, '6', 0, 1, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:3;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";s:7:\"nocatid\";a:0:{}}'),
(126, 'theme_bkhdt', 'theme', 'global.block_slide.php', 'global block slide', '', '', '[SLIDE]', 0, '1', 1, '6', 0, 1, 'a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}'),
(127, 'theme_bkhdt', 'theme', 'global.block_default.php', 'global block default', '', '', '[WELCOME]', 0, '1', 1, '6', 0, 1, 'a:1:{s:4:\"name\";s:10:\"abccafdfds\";}'),
(129, 'default', 'theme', 'global.block_example.php', 'global block example', '', '', '[BOTTOM]', 0, '1', 1, '6', 0, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(18, 1, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 51, 1),
(18, 61, 1),
(18, 64, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 52, 1),
(18, 63, 1),
(18, 55, 1),
(18, 56, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 58, 1),
(18, 59, 1),
(18, 60, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 62, 1),
(11, 1, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 51, 1),
(11, 61, 1),
(11, 64, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 52, 1),
(11, 63, 1),
(11, 55, 1),
(11, 56, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 58, 1),
(11, 59, 1),
(11, 60, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 29, 1),
(11, 62, 1),
(12, 1, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 41, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 50, 2),
(12, 51, 2),
(12, 61, 2),
(12, 64, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 52, 2),
(12, 63, 2),
(12, 55, 2),
(12, 56, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 37, 2),
(12, 58, 2),
(12, 59, 2),
(12, 60, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 29, 2),
(12, 62, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(5, 1, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 41, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 61, 1),
(5, 64, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 52, 1),
(5, 63, 1),
(5, 55, 1),
(5, 56, 1),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 1),
(5, 62, 1),
(6, 1, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 41, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 50, 2),
(6, 51, 2),
(6, 61, 2),
(6, 64, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 52, 2),
(6, 63, 2),
(6, 55, 2),
(6, 56, 2),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 37, 3),
(6, 58, 2),
(6, 59, 2),
(6, 60, 2),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 2),
(6, 62, 2),
(17, 1, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 61, 1),
(17, 64, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 52, 1),
(17, 63, 1),
(17, 55, 1),
(17, 56, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 62, 1),
(15, 1, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 61, 1),
(15, 64, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 52, 1),
(15, 63, 1),
(15, 55, 1),
(15, 56, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 62, 1),
(13, 1, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 61, 1),
(13, 64, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 52, 1),
(13, 63, 1),
(13, 55, 1),
(13, 56, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 62, 1),
(14, 1, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 51, 2),
(14, 61, 2),
(14, 64, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 52, 2),
(14, 63, 2),
(14, 55, 2),
(14, 56, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 58, 2),
(14, 59, 2),
(14, 60, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 62, 2),
(7, 1, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 41, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 50, 1),
(7, 51, 1),
(7, 61, 1),
(7, 64, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 52, 1),
(7, 63, 1),
(7, 55, 1),
(7, 56, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 37, 1),
(7, 58, 1),
(7, 59, 1),
(7, 60, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 29, 1),
(7, 62, 1),
(19, 1, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 61, 1),
(19, 64, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 52, 1),
(19, 63, 1),
(19, 55, 1),
(19, 56, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 62, 1),
(30, 1, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 61, 1),
(30, 64, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 52, 1),
(30, 63, 1),
(30, 55, 1),
(30, 56, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 62, 1),
(28, 1, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 61, 1),
(28, 64, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 52, 1),
(28, 63, 1),
(28, 55, 1),
(28, 56, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 62, 1),
(29, 1, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 61, 1),
(29, 64, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 52, 1),
(29, 63, 1),
(29, 55, 1),
(29, 56, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 62, 1),
(22, 1, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 41, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 61, 1),
(22, 64, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 52, 1),
(22, 63, 1),
(22, 55, 1),
(22, 56, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 29, 1),
(22, 62, 1),
(23, 1, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 61, 2),
(23, 64, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 52, 2),
(23, 63, 2),
(23, 55, 2),
(23, 56, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 62, 2),
(24, 1, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 61, 1),
(24, 64, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 52, 1),
(24, 63, 1),
(24, 55, 1),
(24, 56, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 62, 1),
(25, 1, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 61, 2),
(25, 64, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 52, 2),
(25, 63, 2),
(25, 55, 2),
(25, 56, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 62, 2),
(26, 1, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 61, 3),
(26, 64, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 52, 3),
(26, 63, 3),
(26, 55, 3),
(26, 56, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 62, 3),
(27, 1, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 61, 4),
(27, 64, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 52, 4),
(27, 63, 4),
(27, 55, 4),
(27, 56, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 62, 4),
(18, 66, 1),
(18, 65, 1),
(11, 66, 1),
(11, 65, 1),
(12, 66, 2),
(12, 65, 2),
(5, 66, 1),
(5, 65, 1),
(6, 66, 2),
(6, 65, 2),
(17, 66, 1),
(17, 65, 1),
(15, 66, 1),
(15, 65, 1),
(13, 66, 1),
(13, 65, 1),
(14, 66, 2),
(14, 65, 2),
(7, 66, 1),
(7, 65, 1),
(19, 66, 1),
(19, 65, 1),
(30, 66, 1),
(30, 65, 1),
(28, 66, 1),
(28, 65, 1),
(29, 66, 1),
(29, 65, 1),
(22, 66, 1),
(22, 65, 1),
(23, 66, 2),
(23, 65, 2),
(24, 66, 1),
(24, 65, 1),
(25, 66, 2),
(25, 65, 2),
(26, 66, 3),
(26, 65, 3),
(27, 66, 4),
(27, 65, 4),
(17, 3, 1),
(32, 3, 1),
(32, 1, 1),
(32, 38, 1),
(32, 39, 1),
(32, 40, 1),
(32, 41, 1),
(32, 47, 1),
(32, 48, 1),
(32, 49, 1),
(32, 50, 1),
(32, 51, 1),
(32, 61, 1),
(32, 64, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 52, 1),
(32, 63, 1),
(32, 55, 1),
(32, 56, 1),
(32, 31, 1),
(32, 32, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 36, 1),
(32, 37, 1),
(32, 66, 1),
(32, 65, 1),
(32, 58, 1),
(32, 59, 1),
(32, 60, 1),
(32, 19, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 29, 1),
(32, 62, 1),
(33, 3, 1),
(33, 1, 1),
(33, 38, 1),
(33, 39, 1),
(33, 40, 1),
(33, 41, 1),
(33, 47, 1),
(33, 48, 1),
(33, 49, 1),
(33, 50, 1),
(33, 51, 1),
(33, 61, 1),
(33, 64, 1),
(33, 4, 1),
(33, 5, 1),
(33, 6, 1),
(33, 7, 1),
(33, 8, 1),
(33, 9, 1),
(33, 10, 1),
(33, 11, 1),
(33, 12, 1),
(33, 52, 1),
(33, 63, 1),
(33, 55, 1),
(33, 56, 1),
(33, 31, 1),
(33, 32, 1),
(33, 33, 1),
(33, 34, 1),
(33, 35, 1),
(33, 36, 1),
(33, 37, 1),
(33, 66, 1),
(33, 65, 1),
(33, 58, 1),
(33, 59, 1),
(33, 60, 1),
(33, 19, 1),
(33, 20, 1),
(33, 21, 1),
(33, 22, 1),
(33, 23, 1),
(33, 24, 1),
(33, 25, 1),
(33, 26, 1),
(33, 27, 1),
(33, 28, 1),
(33, 29, 1),
(33, 62, 1),
(34, 3, 1),
(34, 1, 1),
(34, 38, 1),
(34, 39, 1),
(34, 40, 1),
(34, 41, 1),
(34, 47, 1),
(34, 48, 1),
(34, 49, 1),
(34, 50, 1),
(34, 51, 1),
(34, 61, 1),
(34, 64, 1),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(34, 52, 1),
(34, 63, 1),
(34, 55, 1),
(34, 56, 1),
(34, 31, 1),
(34, 32, 1),
(34, 33, 1),
(34, 34, 1),
(34, 35, 1),
(34, 36, 1),
(34, 37, 1),
(34, 66, 1),
(34, 65, 1),
(34, 58, 1),
(34, 59, 1),
(34, 60, 1),
(34, 19, 1),
(34, 20, 1),
(34, 21, 1),
(34, 22, 1),
(34, 23, 1),
(34, 24, 1),
(34, 25, 1),
(34, 26, 1),
(34, 27, 1),
(34, 28, 1),
(34, 29, 1),
(34, 62, 1),
(35, 3, 1),
(35, 1, 1),
(35, 38, 1),
(35, 39, 1),
(35, 40, 1),
(35, 41, 1),
(35, 47, 1),
(35, 48, 1),
(35, 49, 1),
(35, 50, 1),
(35, 51, 1),
(35, 61, 1),
(35, 64, 1),
(35, 4, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(35, 8, 1),
(35, 9, 1),
(35, 10, 1),
(35, 11, 1),
(35, 12, 1),
(35, 52, 1),
(35, 63, 1),
(35, 55, 1),
(35, 56, 1),
(35, 31, 1),
(35, 32, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(35, 36, 1),
(35, 37, 1),
(35, 66, 1),
(35, 65, 1),
(35, 58, 1),
(35, 59, 1),
(35, 60, 1),
(35, 19, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 28, 1),
(35, 29, 1),
(35, 62, 1),
(36, 3, 1),
(36, 1, 1),
(36, 38, 1),
(36, 39, 1),
(36, 40, 1),
(36, 41, 1),
(36, 47, 1),
(36, 48, 1),
(36, 49, 1),
(36, 50, 1),
(36, 51, 1),
(36, 61, 1),
(36, 64, 1),
(36, 4, 1),
(36, 5, 1),
(36, 6, 1),
(36, 7, 1),
(36, 8, 1),
(36, 9, 1),
(36, 10, 1),
(36, 11, 1),
(36, 12, 1),
(36, 52, 1),
(36, 63, 1),
(36, 55, 1),
(36, 56, 1),
(36, 31, 1),
(36, 32, 1),
(36, 33, 1),
(36, 34, 1),
(36, 35, 1),
(36, 36, 1),
(36, 37, 1),
(36, 66, 1),
(36, 65, 1),
(36, 58, 1),
(36, 59, 1),
(36, 60, 1),
(36, 19, 1),
(36, 20, 1),
(36, 21, 1),
(36, 22, 1),
(36, 23, 1),
(36, 24, 1),
(36, 25, 1),
(36, 26, 1),
(36, 27, 1),
(36, 28, 1),
(36, 29, 1),
(36, 62, 1),
(37, 3, 1),
(37, 1, 1),
(37, 38, 1),
(37, 39, 1),
(37, 40, 1),
(37, 41, 1),
(37, 47, 1),
(37, 48, 1),
(37, 49, 1),
(37, 50, 1),
(37, 51, 1),
(37, 61, 1),
(37, 64, 1),
(37, 4, 1),
(37, 5, 1),
(37, 6, 1),
(37, 7, 1),
(37, 8, 1),
(37, 9, 1),
(37, 10, 1),
(37, 11, 1),
(37, 12, 1),
(37, 52, 1),
(37, 63, 1),
(37, 55, 1),
(37, 56, 1),
(37, 31, 1),
(37, 32, 1),
(37, 33, 1),
(37, 34, 1),
(37, 35, 1),
(37, 36, 1),
(37, 37, 1),
(37, 66, 1),
(37, 65, 1),
(37, 58, 1),
(37, 59, 1),
(37, 60, 1),
(37, 19, 1),
(37, 20, 1),
(37, 21, 1),
(37, 22, 1),
(37, 23, 1),
(37, 24, 1),
(37, 25, 1),
(37, 26, 1),
(37, 27, 1),
(37, 28, 1),
(37, 29, 1),
(37, 62, 1),
(38, 3, 2),
(38, 1, 2),
(38, 38, 2),
(38, 39, 2),
(38, 40, 2),
(38, 41, 2),
(38, 47, 2),
(38, 48, 2),
(38, 49, 2),
(38, 50, 2),
(38, 51, 2),
(38, 61, 2),
(38, 64, 2),
(38, 4, 2),
(38, 5, 2),
(38, 6, 2),
(38, 7, 2),
(38, 8, 2),
(38, 9, 2),
(38, 10, 2),
(38, 11, 2),
(38, 12, 2),
(38, 52, 2),
(38, 63, 2),
(38, 55, 2),
(38, 56, 2),
(38, 31, 2),
(38, 32, 2),
(38, 33, 2),
(38, 34, 2),
(38, 35, 2),
(38, 36, 2),
(38, 37, 2),
(38, 66, 2),
(38, 65, 2),
(38, 58, 2),
(38, 59, 2),
(38, 60, 2),
(38, 19, 2),
(38, 20, 2),
(38, 21, 2),
(38, 22, 2),
(38, 23, 2),
(38, 24, 2),
(38, 25, 2),
(38, 26, 2),
(38, 27, 2),
(38, 28, 2),
(38, 29, 2),
(38, 62, 2),
(39, 4, 1),
(39, 5, 1),
(39, 6, 1),
(39, 7, 1),
(39, 8, 1),
(39, 9, 1),
(39, 10, 1),
(39, 11, 1),
(39, 12, 1),
(40, 19, 1),
(40, 20, 1),
(40, 21, 1),
(40, 22, 1),
(40, 23, 1),
(40, 24, 1),
(40, 25, 1),
(40, 26, 1),
(40, 27, 1),
(40, 28, 1),
(40, 31, 1),
(40, 32, 1),
(40, 33, 1),
(40, 34, 1),
(40, 35, 1),
(40, 36, 1),
(40, 37, 1),
(41, 3, 1),
(41, 1, 1),
(41, 38, 1),
(41, 39, 1),
(41, 40, 1),
(41, 41, 1),
(41, 47, 1),
(41, 48, 1),
(41, 49, 1),
(41, 50, 1),
(41, 51, 1),
(41, 61, 1),
(41, 64, 1),
(41, 4, 2),
(41, 5, 2),
(41, 6, 2),
(41, 7, 2),
(41, 8, 2),
(41, 9, 2),
(41, 10, 2),
(41, 11, 2),
(41, 12, 2),
(41, 52, 1),
(41, 63, 1),
(41, 55, 1),
(41, 56, 1),
(41, 31, 2),
(41, 32, 2),
(41, 33, 2),
(41, 34, 2),
(41, 35, 2),
(41, 36, 2),
(41, 37, 2),
(41, 66, 1),
(41, 65, 1),
(41, 58, 1),
(41, 59, 1),
(41, 60, 1),
(41, 19, 2),
(41, 20, 2),
(41, 21, 2),
(41, 22, 2),
(41, 23, 2),
(41, 24, 2),
(41, 25, 2),
(41, 26, 2),
(41, 27, 2),
(41, 28, 2),
(41, 29, 1),
(41, 62, 1),
(42, 3, 2),
(42, 1, 2),
(42, 38, 2),
(42, 39, 2),
(42, 40, 2),
(42, 41, 2),
(42, 47, 2),
(42, 48, 2),
(42, 49, 2),
(42, 50, 2),
(42, 51, 2),
(42, 61, 2),
(42, 64, 2),
(42, 4, 3),
(42, 5, 3),
(42, 6, 3),
(42, 7, 3),
(42, 8, 3),
(42, 9, 3),
(42, 10, 3),
(42, 11, 3),
(42, 12, 3),
(42, 52, 2),
(42, 63, 2),
(42, 55, 2),
(42, 56, 2),
(42, 31, 3),
(42, 32, 3),
(42, 33, 3),
(42, 34, 3),
(42, 35, 3),
(42, 36, 3),
(42, 37, 3),
(42, 66, 2),
(42, 65, 2),
(42, 58, 2),
(42, 59, 2),
(42, 60, 2),
(42, 19, 3),
(42, 20, 3),
(42, 21, 3),
(42, 22, 3),
(42, 23, 3),
(42, 24, 3),
(42, 25, 3),
(42, 26, 3),
(42, 27, 3),
(42, 28, 3),
(42, 29, 2),
(42, 62, 2),
(43, 3, 3),
(43, 1, 3),
(43, 38, 3),
(43, 39, 3),
(43, 40, 3),
(43, 41, 3),
(43, 47, 3),
(43, 48, 3),
(43, 49, 3),
(43, 50, 3),
(43, 51, 3),
(43, 61, 3),
(43, 64, 3),
(43, 4, 4),
(43, 5, 4),
(43, 6, 4),
(43, 7, 4),
(43, 8, 4),
(43, 9, 4),
(43, 10, 4),
(43, 11, 4),
(43, 12, 4),
(43, 52, 3),
(43, 63, 3),
(43, 55, 3),
(43, 56, 3),
(43, 31, 4),
(43, 32, 4),
(43, 33, 4),
(43, 34, 4),
(43, 35, 4),
(43, 36, 4),
(43, 37, 4),
(43, 66, 3),
(43, 65, 3),
(43, 58, 3),
(43, 59, 3),
(43, 60, 3),
(43, 19, 4),
(43, 20, 4),
(43, 21, 4),
(43, 22, 4),
(43, 23, 4),
(43, 24, 4),
(43, 25, 4),
(43, 26, 4),
(43, 27, 4),
(43, 28, 4),
(43, 29, 3),
(43, 62, 3),
(44, 1, 4),
(45, 3, 1),
(45, 1, 1),
(45, 38, 1),
(45, 39, 1),
(45, 40, 1),
(45, 41, 1),
(45, 47, 1),
(45, 48, 1),
(45, 49, 1),
(45, 50, 1),
(45, 51, 1),
(45, 61, 1),
(45, 64, 1),
(45, 4, 1),
(45, 5, 1),
(45, 6, 1),
(45, 7, 1),
(45, 8, 1),
(45, 9, 1),
(45, 10, 1),
(45, 11, 1),
(45, 12, 1),
(45, 52, 1),
(45, 63, 1),
(45, 55, 1),
(45, 56, 1),
(45, 31, 1),
(45, 32, 1),
(45, 33, 1),
(45, 34, 1),
(45, 35, 1),
(45, 36, 1),
(45, 37, 1),
(45, 66, 1),
(45, 65, 1),
(45, 58, 1),
(45, 59, 1),
(45, 60, 1),
(45, 19, 1),
(45, 20, 1),
(45, 21, 1),
(45, 22, 1),
(45, 23, 1),
(45, 24, 1),
(45, 25, 1),
(45, 26, 1),
(45, 27, 1),
(45, 28, 1),
(45, 29, 1),
(45, 62, 1),
(46, 3, 1),
(46, 1, 1),
(46, 38, 1),
(46, 39, 1),
(46, 40, 1),
(46, 41, 1),
(46, 47, 1),
(46, 48, 1),
(46, 49, 1),
(46, 50, 1),
(46, 51, 1),
(46, 61, 1),
(46, 64, 1),
(46, 4, 1),
(46, 5, 1),
(46, 6, 1),
(46, 7, 1),
(46, 8, 1),
(46, 9, 1),
(46, 10, 1),
(46, 11, 1),
(46, 12, 1),
(46, 52, 1),
(46, 63, 1),
(46, 55, 1),
(46, 56, 1),
(46, 31, 1),
(46, 32, 1),
(46, 33, 1),
(46, 34, 1),
(46, 35, 1),
(46, 36, 1),
(46, 37, 1),
(46, 66, 1),
(46, 65, 1),
(46, 58, 1),
(46, 59, 1),
(46, 60, 1),
(46, 19, 1),
(46, 20, 1),
(46, 21, 1),
(46, 22, 1),
(46, 23, 1),
(46, 24, 1),
(46, 25, 1),
(46, 26, 1),
(46, 27, 1),
(46, 28, 1),
(46, 29, 1),
(46, 62, 1),
(47, 3, 1),
(47, 1, 1),
(47, 38, 1),
(47, 39, 1),
(47, 40, 1),
(47, 41, 1),
(47, 47, 1),
(47, 48, 1),
(47, 49, 1),
(47, 50, 1),
(47, 51, 1),
(47, 61, 1),
(47, 64, 1),
(47, 4, 1),
(47, 5, 1),
(47, 6, 1),
(47, 7, 1),
(47, 8, 1),
(47, 9, 1),
(47, 10, 1),
(47, 11, 1),
(47, 12, 1),
(47, 52, 1),
(47, 63, 1),
(47, 55, 1),
(47, 56, 1),
(47, 31, 1),
(47, 32, 1),
(47, 33, 1),
(47, 34, 1),
(47, 35, 1),
(47, 36, 1),
(47, 37, 1),
(47, 66, 1),
(47, 65, 1),
(47, 58, 1),
(47, 59, 1),
(47, 60, 1),
(47, 19, 1),
(47, 20, 1),
(47, 21, 1),
(47, 22, 1),
(47, 23, 1),
(47, 24, 1),
(47, 25, 1),
(47, 26, 1),
(47, 27, 1),
(47, 28, 1),
(47, 29, 1),
(47, 62, 1),
(48, 3, 1),
(48, 1, 1),
(48, 38, 1),
(48, 39, 1),
(48, 40, 1),
(48, 41, 1),
(48, 47, 1),
(48, 48, 1),
(48, 49, 1),
(48, 50, 1),
(48, 51, 1),
(48, 61, 1),
(48, 64, 1),
(48, 4, 1),
(48, 5, 1),
(48, 6, 1),
(48, 7, 1),
(48, 8, 1),
(48, 9, 1),
(48, 10, 1),
(48, 11, 1),
(48, 12, 1),
(48, 52, 1),
(48, 63, 1),
(48, 55, 1),
(48, 56, 1),
(48, 31, 1),
(48, 32, 1),
(48, 33, 1),
(48, 34, 1),
(48, 35, 1),
(48, 36, 1),
(48, 37, 1),
(48, 66, 1),
(48, 65, 1),
(48, 58, 1),
(48, 59, 1),
(48, 60, 1),
(48, 19, 1),
(48, 20, 1),
(48, 21, 1),
(48, 22, 1),
(48, 23, 1),
(48, 24, 1),
(48, 25, 1),
(48, 26, 1),
(48, 27, 1),
(48, 28, 1),
(48, 29, 1),
(48, 62, 1),
(49, 3, 2),
(49, 1, 2),
(49, 38, 2),
(49, 39, 2),
(49, 40, 2),
(49, 41, 2),
(49, 47, 2),
(49, 48, 2),
(49, 49, 2),
(49, 50, 2),
(49, 51, 2),
(49, 61, 2),
(49, 64, 2),
(49, 4, 2),
(49, 5, 2),
(49, 6, 2),
(49, 7, 2),
(49, 8, 2),
(49, 9, 2),
(49, 10, 2),
(49, 11, 2),
(49, 12, 2),
(49, 52, 2),
(49, 63, 2),
(49, 55, 2),
(49, 56, 2),
(49, 31, 2),
(49, 32, 2),
(49, 33, 2),
(49, 34, 2),
(49, 35, 2),
(49, 36, 2),
(49, 37, 2),
(49, 66, 2),
(49, 65, 2),
(49, 58, 2),
(49, 59, 2),
(49, 60, 2),
(49, 19, 2),
(49, 20, 2),
(49, 21, 2),
(49, 22, 2),
(49, 23, 2),
(49, 24, 2),
(49, 25, 2),
(49, 26, 2),
(49, 27, 2),
(49, 28, 2),
(49, 29, 2),
(49, 62, 2),
(50, 3, 1),
(50, 1, 1),
(50, 38, 1),
(50, 39, 1),
(50, 40, 1),
(50, 41, 1),
(50, 47, 1),
(50, 48, 1),
(50, 49, 1),
(50, 50, 1),
(50, 51, 1),
(50, 61, 1),
(50, 64, 1),
(50, 4, 1),
(50, 5, 1),
(50, 6, 1),
(50, 7, 1),
(50, 8, 1),
(50, 9, 1),
(50, 10, 1),
(50, 11, 1),
(50, 12, 1),
(50, 52, 1),
(50, 63, 1),
(50, 55, 1),
(50, 56, 1),
(50, 31, 1),
(50, 32, 1),
(50, 33, 1),
(50, 34, 1),
(50, 35, 1),
(50, 36, 1),
(50, 37, 1),
(50, 66, 1),
(50, 65, 1),
(50, 58, 1),
(50, 59, 1),
(50, 60, 1),
(50, 19, 1),
(50, 20, 1),
(50, 21, 1),
(50, 22, 1),
(50, 23, 1),
(50, 24, 1),
(50, 25, 1),
(50, 26, 1),
(50, 27, 1),
(50, 28, 1),
(50, 29, 1),
(50, 62, 1),
(51, 3, 2),
(51, 1, 2),
(51, 38, 2),
(51, 39, 2),
(51, 40, 2),
(51, 41, 2),
(51, 47, 2),
(51, 48, 2),
(51, 49, 2),
(51, 50, 2),
(51, 51, 2),
(51, 61, 2),
(51, 64, 2),
(51, 4, 2),
(51, 5, 2),
(51, 6, 2),
(51, 7, 2),
(51, 8, 2),
(51, 9, 2),
(51, 10, 2),
(51, 11, 2),
(51, 12, 2),
(51, 52, 2),
(51, 63, 2),
(51, 55, 2),
(51, 56, 2),
(51, 31, 2),
(51, 32, 2),
(51, 33, 2),
(51, 34, 2),
(51, 35, 2),
(51, 36, 2),
(51, 37, 2),
(51, 66, 2),
(51, 65, 2),
(51, 58, 2),
(51, 59, 2),
(51, 60, 2),
(51, 19, 2),
(51, 20, 2),
(51, 21, 2),
(51, 22, 2),
(51, 23, 2),
(51, 24, 2),
(51, 25, 2),
(51, 26, 2),
(51, 27, 2),
(51, 28, 2),
(51, 29, 2),
(51, 62, 2),
(52, 3, 3),
(52, 1, 3),
(52, 38, 3),
(52, 39, 3),
(52, 40, 3),
(52, 41, 3),
(52, 47, 3),
(52, 48, 3),
(52, 49, 3),
(52, 50, 3),
(52, 51, 3),
(52, 61, 3),
(52, 64, 3),
(52, 4, 3),
(52, 5, 3),
(52, 6, 3),
(52, 7, 3),
(52, 8, 3),
(52, 9, 3),
(52, 10, 3),
(52, 11, 3),
(52, 12, 3),
(52, 52, 3),
(52, 63, 3),
(52, 55, 3),
(52, 56, 3),
(52, 31, 3),
(52, 32, 3),
(52, 33, 3),
(52, 34, 3),
(52, 35, 3),
(52, 36, 3),
(52, 37, 3),
(52, 66, 3),
(52, 65, 3),
(52, 58, 3),
(52, 59, 3),
(52, 60, 3),
(52, 19, 3),
(52, 20, 3),
(52, 21, 3),
(52, 22, 3),
(52, 23, 3),
(52, 24, 3),
(52, 25, 3),
(52, 26, 3),
(52, 27, 3),
(52, 28, 3),
(52, 29, 3),
(52, 62, 3),
(53, 3, 4),
(53, 1, 4),
(53, 38, 4),
(53, 39, 4),
(53, 40, 4),
(53, 41, 4),
(53, 47, 4),
(53, 48, 4),
(53, 49, 4),
(53, 50, 4),
(53, 51, 4),
(53, 61, 4),
(53, 64, 4),
(53, 4, 4),
(53, 5, 4),
(53, 6, 4),
(53, 7, 4),
(53, 8, 4),
(53, 9, 4),
(53, 10, 4),
(53, 11, 4),
(53, 12, 4),
(53, 52, 4),
(53, 63, 4),
(53, 55, 4),
(53, 56, 4),
(53, 31, 4),
(53, 32, 4),
(53, 33, 4),
(53, 34, 4),
(53, 35, 4),
(53, 36, 4),
(53, 37, 4),
(53, 66, 4),
(53, 65, 4),
(53, 58, 4),
(53, 59, 4),
(53, 60, 4),
(53, 19, 4),
(53, 20, 4),
(53, 21, 4),
(53, 22, 4),
(53, 23, 4),
(53, 24, 4),
(53, 25, 4),
(53, 26, 4),
(53, 27, 4),
(53, 28, 4),
(53, 29, 4),
(53, 62, 4),
(54, 3, 5),
(54, 1, 5),
(54, 38, 5),
(54, 39, 5),
(54, 40, 5),
(54, 41, 5),
(54, 47, 5),
(54, 48, 5),
(54, 49, 5),
(54, 50, 5),
(54, 51, 5),
(54, 61, 5),
(54, 64, 5),
(54, 4, 5),
(54, 5, 5),
(54, 6, 5),
(54, 7, 5),
(54, 8, 5),
(54, 9, 5),
(54, 10, 5),
(54, 11, 5),
(54, 12, 5),
(54, 52, 5),
(54, 63, 5),
(54, 55, 5),
(54, 56, 5),
(54, 31, 5),
(54, 32, 5),
(54, 33, 5),
(54, 34, 5),
(54, 35, 5),
(54, 36, 5),
(54, 37, 5),
(54, 66, 5),
(54, 65, 5),
(54, 58, 5),
(54, 59, 5),
(54, 60, 5),
(54, 19, 5),
(54, 20, 5),
(54, 21, 5),
(54, 22, 5),
(54, 23, 5),
(54, 24, 5),
(54, 25, 5),
(54, 26, 5),
(54, 27, 5),
(54, 28, 5),
(54, 29, 5),
(54, 62, 5),
(55, 3, 1),
(55, 1, 1),
(55, 38, 1),
(55, 39, 1),
(55, 40, 1),
(55, 41, 1),
(55, 47, 1),
(55, 48, 1),
(55, 49, 1),
(55, 50, 1),
(55, 51, 1),
(55, 61, 1),
(55, 64, 1),
(55, 4, 1),
(55, 5, 1),
(55, 6, 1),
(55, 7, 1),
(55, 8, 1),
(55, 9, 1),
(55, 10, 1),
(55, 11, 1),
(55, 12, 1),
(55, 52, 1),
(55, 63, 1),
(55, 55, 1),
(55, 56, 1),
(55, 31, 1),
(55, 32, 1),
(55, 33, 1),
(55, 34, 1),
(55, 35, 1),
(55, 36, 1),
(55, 37, 1),
(55, 66, 1),
(55, 65, 1),
(55, 58, 1),
(55, 59, 1),
(55, 60, 1),
(55, 19, 1),
(55, 20, 1),
(55, 21, 1),
(55, 22, 1),
(55, 23, 1),
(55, 24, 1),
(55, 25, 1),
(55, 26, 1),
(55, 27, 1),
(55, 28, 1),
(55, 29, 1),
(55, 62, 1),
(56, 4, 1),
(57, 4, 2),
(59, 3, 2),
(59, 1, 2),
(59, 38, 2),
(59, 39, 2),
(59, 40, 2),
(59, 41, 2),
(59, 47, 2),
(59, 48, 2),
(59, 49, 2),
(59, 50, 2),
(59, 51, 2),
(59, 61, 2),
(59, 64, 2),
(59, 4, 2),
(59, 5, 2),
(59, 6, 2),
(59, 7, 2),
(59, 8, 2),
(59, 9, 2),
(59, 10, 2),
(59, 11, 2),
(59, 12, 2),
(59, 52, 2),
(59, 63, 2),
(59, 55, 2),
(59, 56, 2),
(59, 31, 2),
(59, 32, 2),
(59, 33, 2),
(59, 34, 2),
(59, 35, 2),
(59, 36, 2),
(59, 37, 2),
(59, 66, 2),
(59, 65, 2),
(59, 58, 2),
(59, 59, 2),
(59, 60, 2),
(59, 19, 2),
(59, 20, 2),
(59, 21, 2),
(59, 22, 2),
(59, 23, 2),
(59, 24, 2),
(59, 25, 2),
(59, 26, 2),
(59, 27, 2),
(59, 28, 2),
(59, 29, 2),
(59, 62, 2),
(60, 3, 1),
(60, 1, 1),
(60, 38, 1),
(60, 39, 1),
(60, 40, 1),
(60, 41, 1),
(60, 47, 1),
(60, 48, 1),
(60, 49, 1),
(60, 50, 1),
(60, 51, 1),
(60, 61, 1),
(60, 64, 1),
(60, 4, 1),
(60, 5, 1),
(60, 6, 1),
(60, 7, 1),
(60, 8, 1),
(60, 9, 1),
(60, 10, 1),
(60, 11, 1),
(60, 12, 1),
(60, 52, 1),
(60, 63, 1),
(60, 55, 1),
(60, 56, 1),
(60, 31, 1),
(60, 32, 1),
(60, 33, 1),
(60, 34, 1),
(60, 35, 1),
(60, 36, 1),
(60, 37, 1),
(60, 66, 1),
(60, 65, 1),
(60, 58, 1),
(60, 59, 1),
(60, 60, 1),
(60, 19, 1),
(60, 20, 1),
(60, 21, 1),
(60, 22, 1),
(60, 23, 1),
(60, 24, 1),
(60, 25, 1),
(60, 26, 1),
(60, 27, 1),
(60, 28, 1),
(60, 29, 1),
(60, 62, 1),
(61, 4, 1),
(61, 5, 1),
(61, 6, 1),
(61, 7, 1),
(61, 8, 1),
(61, 9, 1),
(61, 10, 1),
(61, 11, 1),
(61, 12, 1),
(62, 3, 1),
(62, 1, 1),
(62, 38, 1),
(62, 39, 1),
(62, 40, 1),
(62, 41, 1),
(62, 47, 1),
(62, 48, 1),
(62, 49, 1),
(62, 50, 1),
(62, 51, 1),
(62, 61, 1),
(62, 64, 1),
(62, 4, 2),
(62, 5, 2),
(62, 6, 2),
(62, 7, 2),
(62, 8, 2),
(62, 9, 2),
(62, 10, 2),
(62, 11, 2),
(62, 12, 2),
(62, 52, 1),
(62, 63, 1),
(62, 55, 1),
(62, 56, 1),
(62, 31, 1),
(62, 32, 1),
(62, 33, 1),
(62, 34, 1),
(62, 35, 1),
(62, 36, 1),
(62, 37, 1),
(62, 66, 1),
(62, 65, 1),
(62, 58, 1),
(62, 59, 1),
(62, 60, 1),
(62, 19, 1),
(62, 20, 1),
(62, 21, 1),
(62, 22, 1),
(62, 23, 1),
(62, 24, 1),
(62, 25, 1),
(62, 26, 1),
(62, 27, 1),
(62, 28, 1),
(62, 29, 1),
(62, 62, 1),
(63, 3, 2),
(63, 1, 2),
(63, 38, 2),
(63, 39, 2),
(63, 40, 2),
(63, 41, 2),
(63, 47, 2),
(63, 48, 2),
(63, 49, 2),
(63, 50, 2),
(63, 51, 2),
(63, 61, 2),
(63, 64, 2),
(63, 4, 3),
(63, 5, 3),
(63, 6, 3),
(63, 7, 3),
(63, 8, 3),
(63, 9, 3),
(63, 10, 3),
(63, 11, 3),
(63, 12, 3),
(63, 52, 2),
(63, 63, 2),
(63, 55, 2),
(63, 56, 2),
(63, 31, 2),
(63, 32, 2),
(63, 33, 2),
(63, 34, 2),
(63, 35, 2),
(63, 36, 2),
(63, 37, 2),
(63, 66, 2),
(63, 65, 2),
(63, 58, 2),
(63, 59, 2),
(63, 60, 2),
(63, 19, 2),
(63, 20, 2),
(63, 21, 2),
(63, 22, 2),
(63, 23, 2),
(63, 24, 2),
(63, 25, 2),
(63, 26, 2),
(63, 27, 2),
(63, 28, 2),
(63, 29, 2),
(63, 62, 2),
(64, 3, 1),
(64, 1, 1),
(64, 38, 1),
(64, 39, 1),
(64, 40, 1),
(64, 41, 1),
(64, 47, 1),
(64, 48, 1),
(64, 49, 1),
(64, 50, 1),
(64, 51, 1),
(64, 61, 1),
(64, 64, 1),
(64, 4, 1),
(64, 5, 1),
(64, 6, 1),
(64, 7, 1),
(64, 8, 1),
(64, 9, 1),
(64, 10, 1),
(64, 11, 1),
(64, 12, 1),
(64, 52, 1),
(64, 63, 1),
(64, 55, 1),
(64, 56, 1),
(64, 31, 1),
(64, 32, 1),
(64, 33, 1),
(64, 34, 1),
(64, 35, 1),
(64, 36, 1),
(64, 37, 1),
(64, 66, 1),
(64, 65, 1),
(64, 58, 1),
(64, 59, 1),
(64, 60, 1),
(64, 19, 1),
(64, 20, 1),
(64, 21, 1),
(64, 22, 1),
(64, 23, 1),
(64, 24, 1),
(64, 25, 1),
(64, 26, 1),
(64, 27, 1),
(64, 28, 1),
(64, 29, 1),
(64, 62, 1),
(65, 3, 1),
(65, 1, 1),
(65, 38, 1),
(65, 39, 1),
(65, 40, 1),
(65, 41, 1),
(65, 47, 1),
(65, 48, 1),
(65, 49, 1),
(65, 50, 1),
(65, 51, 1),
(65, 61, 1),
(65, 64, 1),
(65, 4, 1),
(65, 5, 1),
(65, 6, 1),
(65, 7, 1),
(65, 8, 1),
(65, 9, 1),
(65, 10, 1),
(65, 11, 1),
(65, 12, 1),
(65, 52, 1),
(65, 63, 1),
(65, 55, 1),
(65, 56, 1),
(65, 31, 1),
(65, 32, 1),
(65, 33, 1),
(65, 34, 1),
(65, 35, 1),
(65, 36, 1),
(65, 37, 1),
(65, 66, 1),
(65, 65, 1),
(65, 58, 1),
(65, 59, 1),
(65, 60, 1),
(65, 19, 1),
(65, 20, 1),
(65, 21, 1),
(65, 22, 1),
(65, 23, 1),
(65, 24, 1),
(65, 25, 1),
(65, 26, 1),
(65, 27, 1),
(65, 28, 1),
(65, 29, 1),
(65, 62, 1),
(66, 3, 1),
(66, 1, 1),
(66, 38, 1),
(66, 39, 1),
(66, 40, 1),
(66, 41, 1),
(66, 47, 1),
(66, 48, 1),
(66, 49, 1),
(66, 50, 1),
(66, 51, 1),
(66, 61, 1),
(66, 64, 1),
(66, 4, 1),
(66, 5, 1),
(66, 6, 1),
(66, 7, 1),
(66, 8, 1),
(66, 9, 1),
(66, 10, 1),
(66, 11, 1),
(66, 12, 1),
(66, 52, 1),
(66, 63, 1),
(66, 55, 1),
(66, 56, 1),
(66, 31, 1),
(66, 32, 1),
(66, 33, 1),
(66, 34, 1),
(66, 35, 1),
(66, 36, 1),
(66, 37, 1),
(66, 66, 1),
(66, 65, 1),
(66, 58, 1),
(66, 59, 1),
(66, 60, 1),
(66, 19, 1),
(66, 20, 1),
(66, 21, 1),
(66, 22, 1),
(66, 23, 1),
(66, 24, 1),
(66, 25, 1),
(66, 26, 1),
(66, 27, 1),
(66, 28, 1),
(66, 29, 1),
(66, 62, 1),
(67, 3, 1),
(67, 1, 1),
(67, 38, 1),
(67, 39, 1),
(67, 40, 1),
(67, 41, 1),
(67, 47, 1),
(67, 48, 1),
(67, 49, 1),
(67, 50, 1),
(67, 51, 1),
(67, 61, 1),
(67, 64, 1),
(67, 4, 1),
(67, 5, 1),
(67, 6, 1),
(67, 7, 1),
(67, 8, 1),
(67, 9, 1),
(67, 10, 1),
(67, 11, 1),
(67, 12, 1),
(67, 52, 1),
(67, 63, 1),
(67, 55, 1),
(67, 56, 1),
(67, 31, 1),
(67, 32, 1),
(67, 33, 1),
(67, 34, 1),
(67, 35, 1),
(67, 36, 1),
(67, 37, 1),
(67, 66, 1),
(67, 65, 1),
(67, 58, 1),
(67, 59, 1),
(67, 60, 1),
(67, 19, 1),
(67, 20, 1),
(67, 21, 1),
(67, 22, 1),
(67, 23, 1),
(67, 24, 1),
(67, 25, 1),
(67, 26, 1),
(67, 27, 1),
(67, 28, 1),
(67, 29, 1),
(67, 62, 1),
(68, 3, 2),
(68, 1, 2),
(68, 38, 2),
(68, 39, 2),
(68, 40, 2),
(68, 41, 2),
(68, 47, 2),
(68, 48, 2),
(68, 49, 2),
(68, 50, 2),
(68, 51, 2),
(68, 61, 2),
(68, 64, 2),
(68, 4, 2),
(68, 5, 2),
(68, 6, 2),
(68, 7, 2),
(68, 8, 2),
(68, 9, 2),
(68, 10, 2),
(68, 11, 2),
(68, 12, 2),
(68, 52, 2),
(68, 63, 2),
(68, 55, 2),
(68, 56, 2),
(68, 31, 2),
(68, 32, 2),
(68, 33, 2),
(68, 34, 2),
(68, 35, 2),
(68, 36, 2),
(68, 37, 2),
(68, 66, 2),
(68, 65, 2),
(68, 58, 2),
(68, 59, 2),
(68, 60, 2),
(68, 19, 2),
(68, 20, 2),
(68, 21, 2),
(68, 22, 2),
(68, 23, 2),
(68, 24, 2),
(68, 25, 2),
(68, 26, 2),
(68, 27, 2),
(68, 28, 2),
(68, 29, 2),
(68, 62, 2),
(69, 4, 3),
(69, 5, 3),
(69, 6, 3),
(69, 7, 3),
(69, 8, 3),
(69, 9, 3),
(69, 10, 3),
(69, 11, 3),
(69, 12, 3),
(70, 3, 3),
(70, 1, 3),
(70, 38, 3),
(70, 39, 3),
(70, 40, 3),
(70, 41, 3),
(70, 47, 3),
(70, 48, 3),
(70, 49, 3),
(70, 50, 3),
(70, 51, 3),
(70, 61, 3),
(70, 64, 3),
(70, 4, 4),
(70, 5, 4),
(70, 6, 4),
(70, 7, 4),
(70, 8, 4),
(70, 9, 4),
(70, 10, 4),
(70, 11, 4),
(70, 12, 4),
(70, 52, 3),
(70, 63, 3),
(70, 55, 3),
(70, 56, 3),
(70, 31, 3),
(70, 32, 3),
(70, 33, 3),
(70, 34, 3),
(70, 35, 3),
(70, 36, 3),
(70, 37, 3),
(70, 66, 3),
(70, 65, 3),
(70, 58, 3),
(70, 59, 3),
(70, 60, 3),
(70, 19, 3),
(70, 20, 3),
(70, 21, 3),
(70, 22, 3),
(70, 23, 3),
(70, 24, 3),
(70, 25, 3),
(70, 26, 3),
(70, 27, 3),
(70, 28, 3),
(70, 29, 3),
(70, 62, 3),
(71, 4, 1),
(72, 4, 2),
(79, 3, 1),
(79, 1, 1),
(79, 38, 1),
(79, 39, 1),
(79, 40, 1),
(79, 41, 1),
(79, 47, 1),
(79, 48, 1),
(79, 49, 1),
(79, 50, 1),
(79, 51, 1),
(79, 61, 1),
(79, 64, 1),
(79, 4, 1),
(79, 5, 1),
(79, 6, 1),
(79, 7, 1),
(79, 8, 1),
(79, 9, 1),
(79, 10, 1),
(79, 11, 1),
(79, 12, 1),
(79, 52, 1),
(79, 63, 1),
(79, 55, 1),
(79, 56, 1),
(79, 31, 1),
(79, 32, 1),
(79, 33, 1),
(79, 34, 1),
(79, 35, 1),
(79, 36, 1),
(79, 37, 1),
(79, 66, 1),
(79, 65, 1),
(79, 58, 1),
(79, 59, 1),
(79, 60, 1),
(79, 19, 1),
(79, 20, 1),
(79, 21, 1),
(79, 22, 1),
(79, 23, 1),
(79, 24, 1),
(79, 25, 1),
(79, 26, 1),
(79, 27, 1),
(79, 28, 1),
(79, 29, 1),
(79, 62, 1),
(80, 3, 1),
(80, 1, 1),
(80, 38, 1),
(80, 39, 1),
(80, 40, 1),
(80, 41, 1),
(80, 47, 1),
(80, 48, 1),
(80, 49, 1),
(80, 50, 1),
(80, 51, 1),
(80, 61, 1),
(80, 64, 1),
(80, 4, 1),
(80, 5, 1),
(80, 6, 1),
(80, 7, 1),
(80, 8, 1),
(80, 9, 1),
(80, 10, 1),
(80, 11, 1),
(80, 12, 1),
(80, 52, 1),
(80, 63, 1),
(80, 55, 1),
(80, 56, 1),
(80, 31, 1),
(80, 32, 1),
(80, 33, 1),
(80, 34, 1),
(80, 35, 1),
(80, 36, 1),
(80, 37, 1),
(80, 66, 1),
(80, 65, 1),
(80, 58, 1),
(80, 59, 1),
(80, 60, 1),
(80, 19, 1),
(80, 20, 1),
(80, 21, 1),
(80, 22, 1),
(80, 23, 1),
(80, 24, 1),
(80, 25, 1),
(80, 26, 1),
(80, 27, 1),
(80, 28, 1),
(80, 29, 1),
(80, 62, 1),
(18, 68, 1),
(11, 68, 1),
(12, 68, 2),
(5, 68, 1),
(6, 68, 2),
(15, 68, 1),
(13, 68, 1),
(14, 68, 2),
(19, 68, 1),
(30, 68, 1),
(28, 68, 1),
(29, 68, 1),
(22, 68, 1),
(23, 68, 2),
(24, 68, 1),
(25, 68, 2),
(26, 68, 3),
(27, 68, 4),
(60, 68, 1),
(62, 68, 1),
(63, 68, 2),
(64, 68, 1),
(65, 68, 1),
(66, 68, 1),
(59, 68, 2),
(67, 68, 1),
(68, 68, 2),
(79, 68, 1),
(80, 68, 1),
(32, 68, 1),
(33, 68, 1),
(34, 68, 1),
(35, 68, 1),
(36, 68, 1),
(37, 68, 1),
(38, 68, 2),
(41, 68, 1),
(42, 68, 2),
(43, 68, 3),
(45, 68, 1),
(46, 68, 1),
(47, 68, 1),
(48, 68, 1),
(49, 68, 2),
(50, 68, 1),
(51, 68, 2),
(52, 68, 3),
(53, 68, 4),
(54, 68, 5),
(55, 68, 1),
(18, 70, 1),
(11, 70, 1),
(12, 70, 2),
(5, 70, 1),
(6, 70, 2),
(15, 70, 1),
(13, 70, 1),
(14, 70, 2),
(7, 3, 1),
(19, 70, 1),
(30, 70, 1),
(28, 70, 1),
(29, 70, 1),
(22, 70, 1),
(23, 70, 2),
(24, 70, 1),
(25, 70, 2),
(26, 70, 3),
(27, 70, 4),
(60, 70, 1),
(62, 70, 1),
(63, 70, 2),
(64, 70, 1),
(65, 70, 1),
(66, 70, 1),
(59, 70, 2),
(67, 70, 1),
(68, 70, 2),
(79, 70, 1),
(80, 70, 1),
(32, 70, 1),
(33, 70, 1),
(34, 70, 1),
(35, 70, 1),
(36, 70, 1),
(37, 70, 1),
(38, 70, 2),
(41, 70, 1),
(42, 70, 2),
(43, 70, 3),
(45, 70, 1),
(46, 70, 1),
(47, 70, 1),
(48, 70, 1),
(49, 70, 2),
(50, 70, 1),
(51, 70, 2),
(52, 70, 3),
(53, 70, 4),
(54, 70, 5),
(55, 70, 1),
(18, 72, 1),
(11, 72, 1),
(12, 72, 2),
(5, 72, 1),
(6, 72, 2),
(17, 72, 1),
(15, 72, 1),
(13, 72, 1),
(14, 72, 2),
(7, 72, 1),
(19, 72, 1),
(30, 72, 1),
(28, 72, 1),
(29, 72, 1),
(22, 72, 1),
(23, 72, 2),
(24, 72, 1),
(25, 72, 2),
(26, 72, 3),
(27, 72, 4),
(60, 72, 1),
(62, 72, 1),
(63, 72, 2),
(64, 72, 1),
(65, 72, 1),
(66, 72, 1),
(59, 72, 2),
(67, 72, 1),
(68, 72, 2),
(70, 85, 1),
(79, 72, 1),
(80, 72, 1),
(32, 72, 1),
(33, 72, 1),
(34, 72, 1),
(35, 72, 1),
(36, 72, 1),
(37, 72, 1),
(38, 72, 2),
(41, 72, 1),
(42, 72, 2),
(43, 72, 3),
(45, 72, 1),
(46, 72, 1),
(47, 72, 1),
(48, 72, 1),
(49, 72, 2),
(50, 72, 1),
(51, 72, 2),
(52, 72, 3),
(53, 72, 4),
(54, 72, 5),
(55, 72, 1),
(90, 72, 2),
(90, 3, 4),
(90, 1, 4),
(90, 4, 1),
(90, 5, 5),
(90, 6, 5),
(90, 7, 5),
(90, 8, 5),
(90, 9, 5),
(90, 10, 5),
(90, 11, 5),
(90, 12, 5),
(90, 19, 4),
(90, 20, 4),
(90, 21, 4),
(90, 22, 4),
(90, 23, 4),
(90, 24, 4),
(90, 25, 4),
(90, 26, 4),
(90, 27, 4),
(90, 28, 4),
(90, 29, 4),
(90, 61, 4),
(90, 31, 4),
(90, 32, 4),
(90, 33, 4),
(90, 34, 4),
(90, 35, 4),
(90, 36, 4),
(90, 37, 4),
(90, 62, 4),
(90, 38, 4),
(90, 39, 4),
(90, 40, 4),
(90, 41, 4),
(90, 63, 4),
(90, 64, 4),
(90, 52, 4),
(90, 47, 4),
(90, 48, 4),
(90, 49, 4),
(90, 50, 4),
(90, 51, 4),
(90, 55, 4),
(90, 56, 4),
(90, 58, 4),
(90, 59, 4),
(90, 60, 4),
(90, 66, 4),
(90, 65, 4),
(24, 84, 1),
(24, 83, 1),
(23, 84, 2),
(23, 83, 2),
(22, 84, 1),
(22, 83, 1),
(29, 84, 1),
(29, 83, 1),
(28, 84, 1),
(28, 83, 1),
(30, 84, 1),
(30, 83, 1),
(90, 84, 4),
(90, 83, 4),
(19, 84, 1),
(19, 83, 1),
(105, 84, 7),
(105, 83, 7),
(104, 84, 6),
(104, 83, 6),
(103, 84, 5),
(103, 83, 5),
(102, 84, 4),
(102, 83, 4),
(101, 84, 3),
(101, 83, 3),
(97, 84, 2),
(97, 83, 2),
(7, 84, 1),
(7, 83, 1),
(14, 84, 2),
(14, 83, 2),
(13, 84, 1),
(13, 83, 1),
(15, 84, 1),
(15, 83, 1),
(107, 84, 3),
(107, 83, 3),
(106, 84, 2),
(106, 83, 2),
(100, 84, 1),
(100, 83, 1),
(17, 84, 1),
(17, 83, 1),
(6, 84, 2),
(6, 83, 2),
(5, 84, 1),
(5, 83, 1),
(12, 84, 2),
(97, 3, 3),
(97, 1, 3),
(97, 4, 3),
(97, 5, 3),
(97, 6, 3),
(97, 7, 3),
(97, 8, 3),
(97, 9, 3),
(97, 10, 3),
(97, 11, 3),
(97, 12, 3),
(97, 19, 3),
(97, 20, 3),
(97, 21, 3),
(97, 22, 3),
(97, 23, 3),
(97, 24, 3),
(97, 25, 3),
(97, 26, 3),
(97, 27, 3),
(97, 28, 3),
(97, 29, 3),
(97, 61, 3),
(97, 31, 3),
(97, 32, 3),
(97, 33, 3),
(97, 34, 3),
(97, 35, 3),
(97, 36, 3),
(97, 37, 3),
(97, 62, 3),
(97, 38, 3),
(97, 39, 3),
(97, 40, 3),
(97, 41, 3),
(97, 63, 3),
(97, 64, 3),
(97, 52, 3),
(97, 47, 3),
(97, 48, 3),
(97, 49, 3),
(97, 50, 3),
(97, 51, 3),
(97, 55, 3),
(97, 56, 3),
(97, 58, 3),
(97, 59, 3),
(97, 60, 3),
(97, 66, 3),
(97, 65, 3),
(100, 4, 2),
(98, 5, 1),
(98, 6, 1),
(98, 7, 1),
(98, 8, 1),
(98, 9, 1),
(98, 10, 1),
(98, 11, 1),
(98, 12, 1),
(100, 3, 1),
(100, 1, 1),
(100, 5, 2),
(100, 6, 2),
(100, 7, 2),
(100, 8, 2),
(100, 9, 2),
(100, 10, 2),
(100, 11, 2),
(100, 12, 2),
(100, 19, 1),
(100, 20, 1),
(100, 21, 1),
(100, 22, 1),
(100, 23, 1),
(100, 24, 1),
(100, 25, 1),
(100, 26, 1),
(100, 27, 1),
(100, 28, 1),
(100, 29, 1),
(100, 61, 1),
(100, 31, 1),
(100, 32, 1),
(100, 33, 1),
(100, 34, 1),
(100, 35, 1),
(100, 36, 1),
(100, 37, 1),
(100, 62, 1),
(100, 38, 1),
(100, 39, 1),
(100, 40, 1),
(100, 41, 1),
(100, 63, 1),
(100, 64, 1),
(100, 52, 1),
(100, 47, 1),
(100, 48, 1),
(100, 49, 1),
(100, 50, 1),
(100, 51, 1),
(100, 55, 1),
(100, 56, 1),
(100, 58, 1),
(100, 59, 1),
(100, 60, 1),
(100, 66, 1),
(100, 65, 1),
(101, 72, 4),
(101, 3, 4),
(101, 1, 4),
(101, 4, 4),
(101, 5, 4),
(101, 6, 4),
(101, 7, 4),
(101, 8, 4),
(101, 9, 4),
(101, 10, 4),
(101, 11, 4),
(101, 12, 4),
(101, 19, 4),
(101, 20, 4),
(101, 21, 4),
(101, 22, 4),
(101, 23, 4),
(101, 24, 4),
(101, 25, 4),
(101, 26, 4),
(101, 27, 4),
(101, 28, 4),
(101, 29, 4),
(101, 61, 4),
(101, 31, 4),
(101, 32, 4),
(101, 33, 4),
(101, 34, 4),
(101, 35, 4),
(101, 36, 4),
(101, 37, 4),
(101, 62, 4),
(101, 38, 4),
(101, 39, 4),
(101, 40, 4),
(101, 41, 4),
(101, 63, 4),
(101, 64, 4),
(101, 52, 4),
(101, 47, 4),
(101, 48, 4),
(101, 49, 4),
(101, 50, 4),
(101, 51, 4),
(101, 55, 4),
(101, 56, 4),
(101, 58, 4),
(101, 59, 4),
(101, 60, 4),
(101, 66, 4),
(101, 65, 4),
(102, 72, 5),
(102, 3, 5),
(102, 1, 5),
(102, 4, 5),
(102, 5, 5),
(102, 6, 5),
(102, 7, 5),
(102, 8, 5),
(102, 9, 5),
(102, 10, 5),
(102, 11, 5),
(102, 12, 5),
(102, 19, 5),
(102, 20, 5),
(102, 21, 5),
(102, 22, 5),
(102, 23, 5),
(102, 24, 5),
(102, 25, 5),
(102, 26, 5),
(102, 27, 5),
(102, 28, 5),
(102, 29, 5),
(102, 61, 5),
(102, 31, 5),
(102, 32, 5),
(102, 33, 5),
(102, 34, 5),
(102, 35, 5),
(102, 36, 5),
(102, 37, 5),
(102, 62, 5),
(102, 38, 5),
(102, 39, 5),
(102, 40, 5),
(102, 41, 5),
(102, 63, 5),
(102, 64, 5),
(102, 52, 5),
(102, 47, 5),
(102, 48, 5),
(102, 49, 5),
(102, 50, 5),
(102, 51, 5),
(102, 55, 5),
(102, 56, 5),
(102, 58, 5),
(102, 59, 5),
(102, 60, 5),
(102, 66, 5),
(102, 65, 5),
(103, 72, 6),
(103, 3, 6),
(103, 1, 6),
(103, 4, 6),
(103, 5, 6),
(103, 6, 6),
(103, 7, 6),
(103, 8, 6),
(103, 9, 6),
(103, 10, 6),
(103, 11, 6),
(103, 12, 6),
(103, 19, 6),
(103, 20, 6),
(103, 21, 6),
(103, 22, 6),
(103, 23, 6),
(103, 24, 6),
(103, 25, 6),
(103, 26, 6),
(103, 27, 6),
(103, 28, 6),
(103, 29, 6),
(103, 61, 6),
(103, 31, 6),
(103, 32, 6),
(103, 33, 6),
(103, 34, 6),
(103, 35, 6),
(103, 36, 6),
(103, 37, 6),
(103, 62, 6),
(103, 38, 6),
(103, 39, 6),
(103, 40, 6),
(103, 41, 6),
(103, 63, 6),
(103, 64, 6),
(103, 52, 6),
(103, 47, 6),
(103, 48, 6),
(103, 49, 6),
(103, 50, 6),
(103, 51, 6),
(103, 55, 6),
(103, 56, 6),
(103, 58, 6),
(103, 59, 6),
(103, 60, 6),
(103, 66, 6),
(103, 65, 6),
(104, 72, 7),
(104, 3, 7),
(104, 1, 7),
(104, 4, 7),
(104, 5, 7),
(104, 6, 7),
(104, 7, 7),
(104, 8, 7),
(104, 9, 7),
(104, 10, 7),
(104, 11, 7),
(104, 12, 7),
(104, 19, 7),
(104, 20, 7),
(104, 21, 7),
(104, 22, 7),
(104, 23, 7),
(104, 24, 7),
(104, 25, 7),
(104, 26, 7),
(104, 27, 7),
(104, 28, 7),
(104, 29, 7),
(104, 61, 7),
(104, 31, 7),
(104, 32, 7),
(104, 33, 7),
(104, 34, 7),
(104, 35, 7),
(104, 36, 7),
(104, 37, 7),
(104, 62, 7),
(104, 38, 7),
(104, 39, 7),
(104, 40, 7),
(104, 41, 7),
(104, 63, 7),
(104, 64, 7),
(104, 52, 7),
(104, 47, 7),
(104, 48, 7),
(104, 49, 7),
(104, 50, 7),
(104, 51, 7),
(104, 55, 7),
(104, 56, 7),
(104, 58, 7),
(104, 59, 7),
(104, 60, 7),
(104, 66, 7),
(104, 65, 7),
(105, 72, 8),
(105, 3, 8),
(105, 1, 8),
(105, 4, 8),
(105, 5, 8),
(105, 6, 8),
(105, 7, 8),
(105, 8, 8),
(105, 9, 8),
(105, 10, 8),
(105, 11, 8),
(105, 12, 8),
(105, 19, 8),
(105, 20, 8),
(105, 21, 8),
(105, 22, 8),
(105, 23, 8),
(105, 24, 8),
(105, 25, 8),
(105, 26, 8),
(105, 27, 8),
(105, 28, 8),
(105, 29, 8),
(105, 61, 8),
(105, 31, 8),
(105, 32, 8),
(105, 33, 8),
(105, 34, 8),
(105, 35, 8),
(105, 36, 8),
(105, 37, 8),
(105, 62, 8),
(105, 38, 8),
(105, 39, 8),
(105, 40, 8),
(105, 41, 8),
(105, 63, 8),
(105, 64, 8),
(105, 52, 8),
(105, 47, 8),
(105, 48, 8),
(105, 49, 8),
(105, 50, 8),
(105, 51, 8),
(105, 55, 8),
(105, 56, 8),
(105, 58, 8),
(105, 59, 8),
(105, 60, 8),
(105, 66, 8),
(105, 65, 8),
(106, 3, 2),
(106, 1, 2),
(106, 4, 3),
(106, 5, 3),
(106, 6, 3),
(106, 7, 3),
(106, 8, 3),
(106, 9, 3),
(106, 10, 3),
(106, 11, 3),
(106, 12, 3),
(106, 19, 2),
(106, 20, 2),
(106, 21, 2),
(106, 22, 2),
(106, 23, 2),
(106, 24, 2),
(106, 25, 2),
(106, 26, 2),
(106, 27, 2),
(106, 28, 2),
(106, 29, 2),
(106, 61, 2),
(106, 31, 2),
(106, 32, 2),
(106, 33, 2),
(106, 34, 2),
(106, 35, 2),
(106, 36, 2),
(106, 37, 2),
(106, 62, 2),
(106, 38, 2),
(106, 39, 2),
(106, 40, 2),
(106, 41, 2),
(106, 63, 2),
(106, 64, 2),
(106, 52, 2),
(106, 47, 2),
(106, 48, 2),
(106, 49, 2),
(106, 50, 2),
(106, 51, 2),
(106, 55, 2),
(106, 56, 2),
(106, 58, 2),
(106, 59, 2),
(106, 60, 2),
(106, 66, 2),
(106, 65, 2),
(107, 72, 1),
(107, 3, 3),
(107, 1, 3),
(107, 4, 4),
(107, 5, 4),
(107, 6, 4),
(107, 7, 4),
(107, 8, 4),
(107, 9, 4),
(107, 10, 4),
(107, 11, 4),
(107, 12, 4),
(107, 19, 3),
(107, 20, 3),
(107, 21, 3),
(107, 22, 3),
(107, 23, 3),
(107, 24, 3),
(107, 25, 3),
(107, 26, 3),
(107, 27, 3),
(107, 28, 3),
(107, 29, 3),
(107, 61, 3),
(107, 31, 3),
(107, 32, 3),
(107, 33, 3),
(107, 34, 3),
(107, 35, 3),
(107, 36, 3),
(107, 37, 3),
(107, 62, 3),
(107, 38, 3),
(107, 39, 3),
(107, 40, 3),
(107, 41, 3),
(107, 63, 3),
(107, 64, 3),
(107, 52, 3),
(107, 47, 3),
(107, 48, 3),
(107, 49, 3),
(107, 50, 3),
(107, 51, 3),
(107, 55, 3),
(107, 56, 3),
(107, 58, 3),
(107, 59, 3),
(107, 60, 3),
(107, 66, 3),
(107, 65, 3),
(108, 72, 1),
(108, 3, 1),
(108, 1, 1),
(108, 4, 1),
(108, 5, 1),
(108, 6, 1),
(108, 7, 1),
(108, 8, 1),
(108, 9, 1),
(108, 10, 1),
(108, 11, 1),
(108, 12, 1),
(108, 19, 1),
(108, 20, 1),
(108, 21, 1),
(108, 22, 1),
(108, 23, 1),
(108, 24, 1),
(108, 25, 1),
(108, 26, 1),
(108, 27, 1),
(108, 28, 1),
(108, 29, 1),
(108, 61, 1),
(108, 31, 1),
(108, 32, 1),
(108, 33, 1),
(108, 34, 1),
(108, 35, 1),
(108, 36, 1),
(108, 37, 1),
(108, 62, 1),
(108, 38, 1),
(108, 39, 1),
(108, 40, 1),
(108, 41, 1),
(108, 63, 1),
(108, 64, 1),
(108, 52, 1),
(108, 47, 1),
(108, 48, 1),
(108, 49, 1),
(108, 50, 1),
(108, 51, 1),
(108, 55, 1),
(108, 56, 1),
(108, 58, 1),
(108, 59, 1),
(108, 60, 1),
(108, 66, 1),
(108, 65, 1),
(110, 4, 1),
(111, 4, 1),
(112, 4, 1),
(113, 4, 1),
(108, 76, 1),
(108, 75, 1),
(108, 78, 1),
(108, 73, 1),
(108, 74, 1),
(108, 81, 1),
(108, 79, 1),
(18, 76, 1),
(18, 75, 1),
(18, 78, 1),
(18, 73, 1),
(18, 74, 1),
(18, 81, 1),
(18, 79, 1),
(11, 76, 1),
(11, 75, 1),
(11, 78, 1),
(11, 73, 1),
(11, 74, 1),
(11, 81, 1),
(11, 79, 1),
(12, 76, 2),
(12, 75, 2),
(12, 78, 2),
(12, 73, 2),
(12, 74, 2),
(12, 81, 2),
(12, 79, 2),
(5, 76, 1),
(5, 75, 1),
(5, 78, 1),
(5, 73, 1),
(5, 74, 1),
(5, 81, 1),
(5, 79, 1),
(6, 76, 2),
(6, 75, 2),
(6, 78, 2),
(6, 73, 2),
(6, 74, 2),
(6, 81, 2),
(6, 79, 2),
(17, 76, 1),
(17, 75, 1),
(17, 78, 1),
(17, 73, 1),
(17, 74, 1),
(17, 81, 1),
(17, 79, 1),
(100, 76, 1),
(100, 75, 1),
(100, 78, 1),
(100, 73, 1),
(100, 74, 1),
(100, 81, 1),
(100, 79, 1),
(106, 76, 2),
(106, 75, 2),
(106, 78, 2),
(106, 73, 2),
(106, 74, 2),
(106, 81, 2),
(106, 79, 2),
(107, 76, 3),
(107, 75, 3),
(107, 78, 3),
(107, 73, 3),
(107, 74, 3),
(107, 81, 3),
(107, 79, 3),
(15, 76, 1),
(15, 75, 1),
(15, 78, 1),
(15, 73, 1),
(15, 74, 1),
(15, 81, 1),
(15, 79, 1),
(13, 76, 1),
(13, 75, 1),
(13, 78, 1),
(13, 73, 1),
(13, 74, 1),
(13, 81, 1),
(13, 79, 1),
(14, 76, 2),
(14, 75, 2),
(14, 78, 2),
(14, 73, 2),
(14, 74, 2),
(14, 81, 2),
(14, 79, 2),
(7, 76, 1),
(7, 75, 1),
(7, 78, 1),
(7, 73, 1),
(7, 74, 1),
(7, 81, 1),
(7, 79, 1),
(12, 83, 2),
(11, 84, 1),
(11, 83, 1),
(18, 84, 1),
(18, 83, 1),
(108, 84, 1),
(108, 83, 1),
(97, 76, 3),
(97, 75, 3),
(97, 78, 3),
(97, 73, 3),
(97, 74, 3),
(97, 81, 3),
(97, 79, 3),
(101, 76, 4),
(101, 75, 4),
(101, 78, 4),
(101, 73, 4),
(101, 74, 4),
(101, 81, 4),
(101, 79, 4),
(102, 76, 5),
(102, 75, 5),
(102, 78, 5),
(102, 73, 5),
(102, 74, 5),
(102, 81, 5),
(102, 79, 5),
(103, 76, 6),
(103, 75, 6),
(103, 78, 6),
(103, 73, 6),
(103, 74, 6),
(103, 81, 6),
(103, 79, 6),
(104, 76, 7),
(104, 75, 7),
(104, 78, 7),
(104, 73, 7),
(104, 74, 7),
(104, 81, 7),
(104, 79, 7),
(105, 76, 8),
(105, 75, 8),
(105, 78, 8),
(105, 73, 8),
(105, 74, 8),
(105, 81, 8),
(105, 79, 8),
(19, 76, 1),
(19, 75, 1),
(19, 78, 1),
(19, 73, 1),
(19, 74, 1),
(19, 81, 1),
(19, 79, 1),
(90, 76, 4),
(90, 75, 4),
(90, 78, 4),
(90, 73, 4),
(90, 74, 4),
(90, 81, 4),
(90, 79, 4),
(30, 76, 1),
(30, 75, 1),
(30, 78, 1),
(30, 73, 1),
(30, 74, 1),
(30, 81, 1),
(30, 79, 1),
(28, 76, 1),
(28, 75, 1),
(28, 78, 1),
(28, 73, 1),
(28, 74, 1),
(28, 81, 1),
(28, 79, 1),
(29, 76, 1),
(29, 75, 1),
(29, 78, 1),
(29, 73, 1),
(29, 74, 1),
(29, 81, 1),
(29, 79, 1),
(22, 76, 1),
(22, 75, 1),
(22, 78, 1),
(22, 73, 1),
(22, 74, 1),
(22, 81, 1),
(22, 79, 1),
(23, 76, 2),
(23, 75, 2),
(23, 78, 2),
(23, 73, 2),
(23, 74, 2),
(23, 81, 2),
(23, 79, 2),
(24, 76, 1),
(24, 75, 1),
(24, 78, 1),
(24, 73, 1),
(24, 74, 1),
(24, 81, 1),
(24, 79, 1),
(25, 76, 2),
(25, 75, 2),
(25, 78, 2),
(25, 73, 2),
(25, 74, 2),
(25, 81, 2),
(25, 79, 2),
(26, 76, 3),
(26, 75, 3),
(26, 78, 3),
(26, 73, 3),
(26, 74, 3),
(26, 81, 3),
(26, 79, 3),
(27, 76, 4),
(27, 75, 4),
(27, 78, 4),
(27, 73, 4),
(27, 74, 4),
(27, 81, 4),
(27, 79, 4),
(60, 76, 1),
(60, 75, 1),
(60, 78, 1),
(60, 73, 1),
(60, 74, 1),
(60, 81, 1),
(60, 79, 1),
(62, 76, 1),
(62, 75, 1),
(62, 78, 1),
(62, 73, 1),
(62, 74, 1),
(62, 81, 1),
(62, 79, 1),
(63, 76, 2),
(63, 75, 2),
(63, 78, 2),
(63, 73, 2),
(63, 74, 2),
(63, 81, 2),
(63, 79, 2),
(64, 76, 1),
(64, 75, 1),
(64, 78, 1),
(64, 73, 1),
(64, 74, 1),
(64, 81, 1),
(64, 79, 1),
(65, 76, 1),
(65, 75, 1),
(65, 78, 1),
(65, 73, 1),
(65, 74, 1),
(65, 81, 1),
(65, 79, 1),
(66, 76, 1),
(66, 75, 1),
(66, 78, 1),
(66, 73, 1),
(66, 74, 1),
(66, 81, 1),
(66, 79, 1),
(59, 76, 2),
(59, 75, 2),
(59, 78, 2),
(59, 73, 2),
(59, 74, 2),
(59, 81, 2),
(59, 79, 2),
(67, 76, 1),
(67, 75, 1),
(67, 78, 1),
(67, 73, 1),
(67, 74, 1),
(67, 81, 1),
(67, 79, 1),
(68, 76, 2),
(68, 75, 2),
(68, 78, 2),
(68, 73, 2),
(68, 74, 2),
(68, 81, 2),
(68, 79, 2),
(70, 76, 3),
(70, 75, 3),
(70, 78, 3),
(70, 73, 3),
(70, 74, 3),
(70, 81, 3),
(70, 79, 3),
(79, 76, 1),
(79, 75, 1),
(79, 78, 1),
(79, 73, 1),
(79, 74, 1),
(79, 81, 1),
(79, 79, 1),
(80, 76, 1),
(80, 75, 1),
(80, 78, 1),
(80, 73, 1),
(80, 74, 1),
(80, 81, 1),
(80, 79, 1),
(32, 76, 1),
(32, 75, 1),
(32, 78, 1),
(32, 73, 1),
(32, 74, 1),
(32, 81, 1),
(32, 79, 1),
(33, 76, 1),
(33, 75, 1),
(33, 78, 1),
(33, 73, 1),
(33, 74, 1),
(33, 81, 1),
(33, 79, 1),
(34, 76, 1),
(34, 75, 1),
(34, 78, 1),
(34, 73, 1),
(34, 74, 1),
(34, 81, 1),
(34, 79, 1),
(35, 76, 1),
(35, 75, 1),
(35, 78, 1),
(35, 73, 1),
(35, 74, 1),
(35, 81, 1),
(35, 79, 1),
(36, 76, 1),
(36, 75, 1),
(36, 78, 1),
(36, 73, 1),
(36, 74, 1),
(36, 81, 1),
(36, 79, 1),
(37, 76, 1),
(37, 75, 1),
(37, 78, 1),
(37, 73, 1),
(37, 74, 1),
(37, 81, 1),
(37, 79, 1),
(38, 76, 2),
(38, 75, 2),
(38, 78, 2),
(38, 73, 2),
(38, 74, 2),
(38, 81, 2),
(38, 79, 2),
(41, 76, 1),
(41, 75, 1),
(41, 78, 1),
(41, 73, 1),
(41, 74, 1),
(41, 81, 1),
(41, 79, 1),
(42, 76, 2),
(42, 75, 2),
(42, 78, 2),
(42, 73, 2),
(42, 74, 2),
(42, 81, 2),
(42, 79, 2),
(43, 76, 3),
(43, 75, 3),
(43, 78, 3),
(43, 73, 3),
(43, 74, 3),
(43, 81, 3),
(43, 79, 3),
(45, 76, 1),
(45, 75, 1),
(45, 78, 1),
(45, 73, 1),
(45, 74, 1),
(45, 81, 1),
(45, 79, 1),
(46, 76, 1),
(46, 75, 1),
(46, 78, 1),
(46, 73, 1),
(46, 74, 1),
(46, 81, 1),
(46, 79, 1),
(47, 76, 1),
(47, 75, 1),
(47, 78, 1),
(47, 73, 1),
(47, 74, 1),
(47, 81, 1),
(47, 79, 1),
(48, 76, 1),
(48, 75, 1),
(48, 78, 1),
(48, 73, 1),
(48, 74, 1),
(48, 81, 1),
(48, 79, 1),
(49, 76, 2),
(49, 75, 2),
(49, 78, 2),
(49, 73, 2),
(49, 74, 2),
(49, 81, 2),
(49, 79, 2),
(50, 76, 1),
(50, 75, 1),
(50, 78, 1),
(50, 73, 1),
(50, 74, 1),
(50, 81, 1),
(50, 79, 1),
(51, 76, 2),
(51, 75, 2),
(51, 78, 2),
(51, 73, 2),
(51, 74, 2),
(51, 81, 2),
(51, 79, 2),
(52, 76, 3),
(52, 75, 3),
(52, 78, 3),
(52, 73, 3),
(52, 74, 3),
(52, 81, 3),
(52, 79, 3),
(53, 76, 4),
(53, 75, 4),
(53, 78, 4),
(53, 73, 4),
(53, 74, 4),
(53, 81, 4),
(53, 79, 4),
(54, 76, 5),
(54, 75, 5),
(54, 78, 5),
(54, 73, 5),
(54, 74, 5),
(54, 81, 5),
(54, 79, 5),
(55, 76, 1),
(55, 75, 1),
(55, 78, 1),
(55, 73, 1),
(55, 74, 1),
(55, 81, 1),
(55, 79, 1),
(119, 4, 1),
(118, 4, 1),
(18, 100, 1),
(18, 97, 1),
(18, 98, 1),
(108, 101, 1),
(108, 103, 1),
(108, 96, 1),
(108, 95, 1),
(120, 4, 1),
(122, 4, 1),
(108, 100, 1),
(108, 97, 1),
(108, 98, 1),
(126, 4, 1),
(127, 4, 1),
(25, 83, 2),
(25, 84, 2),
(26, 83, 3),
(26, 84, 3),
(27, 83, 4),
(27, 84, 4),
(60, 83, 1),
(60, 84, 1),
(62, 83, 1),
(62, 84, 1),
(63, 83, 2),
(63, 84, 2),
(64, 83, 1),
(64, 84, 1),
(65, 83, 1),
(65, 84, 1),
(66, 83, 1),
(66, 84, 1),
(59, 83, 2),
(59, 84, 2),
(67, 83, 1),
(67, 84, 1),
(68, 83, 2),
(68, 84, 2),
(70, 83, 3),
(70, 84, 3),
(79, 83, 1),
(79, 84, 1),
(80, 83, 1),
(80, 84, 1),
(32, 83, 1),
(32, 84, 1),
(33, 83, 1),
(33, 84, 1),
(34, 83, 1),
(34, 84, 1),
(35, 83, 1),
(35, 84, 1),
(36, 83, 1),
(36, 84, 1),
(37, 83, 1),
(37, 84, 1),
(38, 83, 2),
(38, 84, 2),
(41, 83, 1),
(41, 84, 1),
(42, 83, 2),
(42, 84, 2),
(43, 83, 3),
(43, 84, 3),
(45, 83, 1),
(45, 84, 1),
(46, 83, 1),
(46, 84, 1),
(47, 83, 1),
(47, 84, 1),
(48, 83, 1),
(48, 84, 1),
(49, 83, 2),
(49, 84, 2),
(50, 83, 1),
(50, 84, 1),
(51, 83, 2),
(51, 84, 2),
(52, 83, 3),
(52, 84, 3),
(53, 83, 4),
(53, 84, 4),
(54, 83, 5),
(54, 84, 5),
(55, 83, 1),
(55, 84, 1),
(129, 4, 2),
(108, 86, 1),
(108, 87, 1),
(108, 88, 1),
(18, 86, 1),
(18, 87, 1),
(18, 88, 1),
(11, 86, 1),
(11, 87, 1),
(11, 88, 1),
(12, 86, 2),
(12, 87, 2),
(12, 88, 2),
(5, 86, 1),
(5, 87, 1),
(5, 88, 1),
(6, 86, 2),
(6, 87, 2),
(6, 88, 2),
(17, 86, 1),
(17, 87, 1),
(17, 88, 1),
(107, 86, 1),
(107, 87, 1),
(107, 88, 1),
(15, 86, 1),
(15, 87, 1),
(15, 88, 1),
(13, 86, 1),
(13, 87, 1),
(13, 88, 1),
(14, 86, 2),
(14, 87, 2),
(14, 88, 2),
(7, 86, 1),
(7, 87, 1),
(7, 88, 1),
(101, 86, 3),
(101, 87, 3),
(101, 88, 3),
(102, 86, 4),
(102, 87, 4),
(102, 88, 4),
(103, 86, 5),
(103, 87, 5),
(103, 88, 5),
(104, 86, 6),
(104, 87, 6),
(104, 88, 6),
(105, 86, 7),
(105, 87, 7),
(105, 88, 7),
(19, 86, 1),
(19, 87, 1),
(19, 88, 1),
(90, 86, 2),
(90, 87, 2),
(90, 88, 2),
(30, 86, 1),
(30, 87, 1),
(30, 88, 1),
(28, 86, 1),
(28, 87, 1),
(28, 88, 1),
(29, 86, 1),
(29, 87, 1),
(29, 88, 1),
(22, 86, 1),
(22, 87, 1),
(22, 88, 1),
(23, 86, 2),
(23, 87, 2),
(23, 88, 2),
(24, 86, 1),
(24, 87, 1),
(24, 88, 1),
(25, 86, 2),
(25, 87, 2),
(25, 88, 2),
(26, 86, 3),
(26, 87, 3),
(26, 88, 3),
(27, 86, 4),
(27, 87, 4),
(27, 88, 4),
(60, 86, 1),
(60, 87, 1),
(60, 88, 1),
(62, 86, 1),
(62, 87, 1),
(62, 88, 1),
(63, 86, 2),
(63, 87, 2),
(63, 88, 2),
(64, 86, 1),
(64, 87, 1),
(64, 88, 1),
(65, 86, 1),
(65, 87, 1),
(65, 88, 1),
(66, 86, 1),
(66, 87, 1),
(66, 88, 1),
(59, 86, 2),
(59, 87, 2),
(59, 88, 2),
(67, 86, 1),
(67, 87, 1),
(67, 88, 1),
(68, 86, 2),
(68, 87, 2),
(68, 88, 2),
(70, 86, 3),
(70, 87, 3),
(70, 88, 3),
(79, 86, 1),
(79, 87, 1),
(79, 88, 1),
(80, 86, 1),
(80, 87, 1),
(80, 88, 1),
(32, 86, 1),
(32, 87, 1),
(32, 88, 1),
(33, 86, 1),
(33, 87, 1),
(33, 88, 1),
(34, 86, 1),
(34, 87, 1),
(34, 88, 1),
(35, 86, 1),
(35, 87, 1),
(35, 88, 1),
(36, 86, 1),
(36, 87, 1),
(36, 88, 1),
(37, 86, 1),
(37, 87, 1),
(37, 88, 1),
(38, 86, 2),
(38, 87, 2),
(38, 88, 2),
(41, 86, 1),
(41, 87, 1),
(41, 88, 1),
(42, 86, 2),
(42, 87, 2),
(42, 88, 2),
(43, 86, 3),
(43, 87, 3),
(43, 88, 3),
(45, 86, 1),
(45, 87, 1),
(45, 88, 1),
(46, 86, 1),
(46, 87, 1),
(46, 88, 1),
(47, 86, 1),
(47, 87, 1),
(47, 88, 1),
(48, 86, 1),
(48, 87, 1),
(48, 88, 1),
(49, 86, 2),
(49, 87, 2),
(49, 88, 2),
(50, 86, 1),
(50, 87, 1),
(50, 88, 1),
(51, 86, 2),
(51, 87, 2),
(51, 88, 2),
(52, 86, 3),
(52, 87, 3),
(52, 88, 3),
(53, 86, 4),
(53, 87, 4),
(53, 88, 4),
(54, 86, 5),
(54, 87, 5),
(54, 88, 5),
(55, 86, 1),
(55, 87, 1),
(55, 88, 1),
(108, 89, 1),
(108, 90, 1),
(18, 89, 1),
(18, 90, 1),
(11, 89, 1),
(11, 90, 1),
(12, 89, 2),
(12, 90, 2),
(5, 89, 1),
(5, 90, 1),
(6, 89, 2),
(6, 90, 2),
(17, 89, 1),
(17, 90, 1),
(107, 89, 1),
(107, 90, 1),
(15, 89, 1),
(15, 90, 1),
(13, 89, 1),
(13, 90, 1),
(14, 89, 2),
(14, 90, 2),
(7, 89, 1),
(7, 90, 1),
(101, 89, 3),
(101, 90, 3),
(102, 89, 4),
(102, 90, 4),
(103, 89, 5),
(103, 90, 5),
(104, 89, 6),
(104, 90, 6),
(105, 89, 7),
(105, 90, 7),
(19, 89, 1),
(19, 90, 1),
(90, 89, 2),
(90, 90, 2),
(30, 89, 1),
(30, 90, 1),
(28, 89, 1),
(28, 90, 1),
(29, 89, 1),
(29, 90, 1),
(22, 89, 1),
(22, 90, 1),
(23, 89, 2),
(23, 90, 2),
(24, 89, 1),
(24, 90, 1),
(25, 89, 2),
(25, 90, 2),
(26, 89, 3),
(26, 90, 3),
(27, 89, 4),
(27, 90, 4),
(60, 89, 1),
(60, 90, 1),
(62, 89, 1),
(62, 90, 1),
(63, 89, 2),
(63, 90, 2),
(64, 89, 1),
(64, 90, 1),
(65, 89, 1),
(65, 90, 1),
(66, 89, 1),
(66, 90, 1),
(59, 89, 2),
(59, 90, 2),
(67, 89, 1),
(67, 90, 1),
(68, 89, 2),
(68, 90, 2),
(70, 89, 3),
(70, 90, 3),
(79, 89, 1),
(79, 90, 1),
(80, 89, 1),
(80, 90, 1),
(32, 89, 1),
(32, 90, 1),
(33, 89, 1),
(33, 90, 1),
(34, 89, 1),
(34, 90, 1),
(35, 89, 1),
(35, 90, 1),
(36, 89, 1),
(36, 90, 1),
(37, 89, 1),
(37, 90, 1),
(38, 89, 2),
(38, 90, 2),
(41, 89, 1),
(41, 90, 1),
(42, 89, 2),
(42, 90, 2),
(43, 89, 3),
(43, 90, 3),
(45, 89, 1),
(45, 90, 1),
(46, 89, 1),
(46, 90, 1),
(47, 89, 1),
(47, 90, 1),
(48, 89, 1),
(48, 90, 1),
(49, 89, 2),
(49, 90, 2),
(50, 89, 1),
(50, 90, 1),
(51, 89, 2),
(51, 90, 2),
(52, 89, 3),
(52, 90, 3),
(53, 89, 4),
(53, 90, 4),
(54, 89, 5),
(54, 90, 5),
(55, 89, 1),
(55, 90, 1),
(108, 91, 1),
(108, 92, 1),
(18, 91, 1),
(18, 92, 1),
(11, 91, 1),
(11, 92, 1),
(12, 91, 2),
(12, 92, 2),
(5, 91, 1),
(5, 92, 1),
(6, 91, 2),
(6, 92, 2),
(17, 91, 1),
(17, 92, 1),
(100, 85, 2),
(106, 85, 1),
(107, 91, 1),
(107, 92, 1),
(15, 91, 1),
(15, 92, 1),
(13, 91, 1),
(13, 92, 1),
(14, 91, 2),
(14, 92, 2),
(7, 91, 1),
(7, 92, 1),
(97, 85, 1),
(101, 91, 3),
(101, 92, 3),
(102, 91, 4),
(102, 92, 4),
(103, 91, 5),
(103, 92, 5),
(104, 91, 6),
(104, 92, 6),
(105, 91, 7),
(105, 92, 7),
(19, 91, 1),
(19, 92, 1),
(90, 91, 2),
(90, 92, 2),
(30, 91, 1),
(30, 92, 1),
(28, 91, 1),
(28, 92, 1),
(29, 91, 1),
(29, 92, 1),
(22, 91, 1),
(22, 92, 1),
(23, 91, 2),
(23, 92, 2),
(24, 91, 1),
(24, 92, 1),
(25, 91, 2),
(25, 92, 2),
(26, 91, 3),
(26, 92, 3),
(27, 91, 4),
(27, 92, 4),
(60, 91, 1),
(60, 92, 1),
(62, 91, 1),
(62, 92, 1),
(63, 91, 2),
(63, 92, 2),
(64, 91, 1),
(64, 92, 1),
(65, 91, 1),
(65, 92, 1),
(66, 91, 1),
(66, 92, 1),
(59, 91, 2),
(59, 92, 2),
(67, 91, 1),
(67, 92, 1),
(68, 91, 2),
(68, 92, 2),
(70, 91, 3),
(70, 92, 3),
(79, 91, 1),
(79, 92, 1),
(80, 91, 1),
(80, 92, 1),
(32, 91, 1),
(32, 92, 1),
(33, 91, 1),
(33, 92, 1),
(34, 91, 1),
(34, 92, 1),
(35, 91, 1),
(35, 92, 1),
(36, 91, 1),
(36, 92, 1),
(37, 91, 1),
(37, 92, 1),
(38, 91, 2),
(38, 92, 2),
(41, 91, 1),
(41, 92, 1),
(42, 91, 2),
(42, 92, 2),
(43, 91, 3),
(43, 92, 3),
(45, 91, 1),
(45, 92, 1),
(46, 91, 1),
(46, 92, 1),
(47, 91, 1),
(47, 92, 1),
(48, 91, 1),
(48, 92, 1),
(49, 91, 2),
(49, 92, 2),
(50, 91, 1),
(50, 92, 1),
(51, 91, 2),
(51, 92, 2),
(52, 91, 3),
(52, 92, 3),
(53, 91, 4),
(53, 92, 4),
(54, 91, 5),
(54, 92, 5),
(55, 91, 1),
(55, 92, 1),
(108, 93, 1),
(108, 94, 1),
(18, 93, 1),
(18, 94, 1),
(11, 93, 1),
(11, 94, 1),
(12, 93, 2),
(12, 94, 2),
(5, 93, 1),
(5, 94, 1),
(6, 93, 2),
(6, 94, 2),
(17, 93, 1),
(17, 94, 1),
(100, 93, 1),
(100, 94, 1),
(106, 93, 2),
(106, 94, 2),
(107, 93, 3),
(107, 94, 3),
(90, 93, 4),
(90, 94, 4),
(15, 93, 1),
(15, 94, 1),
(13, 93, 1),
(13, 94, 1),
(14, 93, 2),
(14, 94, 2),
(7, 93, 1),
(7, 94, 1),
(97, 93, 2),
(97, 94, 2),
(101, 93, 3),
(101, 94, 3),
(102, 93, 4),
(102, 94, 4),
(103, 93, 5),
(103, 94, 5),
(104, 93, 6),
(104, 94, 6),
(105, 93, 7),
(105, 94, 7),
(19, 93, 1),
(19, 94, 1),
(30, 93, 1),
(30, 94, 1),
(28, 93, 1),
(28, 94, 1),
(29, 93, 1),
(29, 94, 1),
(22, 93, 1),
(22, 94, 1),
(23, 93, 2),
(23, 94, 2),
(24, 93, 1),
(24, 94, 1),
(25, 93, 2),
(25, 94, 2),
(26, 93, 3),
(26, 94, 3),
(27, 93, 4),
(27, 94, 4),
(60, 93, 1),
(60, 94, 1),
(62, 93, 1),
(62, 94, 1),
(63, 93, 2),
(63, 94, 2),
(64, 93, 1),
(64, 94, 1),
(65, 93, 1),
(65, 94, 1),
(66, 93, 1),
(66, 94, 1),
(59, 93, 2),
(59, 94, 2),
(67, 93, 1),
(67, 94, 1),
(68, 93, 2),
(68, 94, 2),
(70, 93, 3),
(70, 94, 3),
(79, 93, 1),
(79, 94, 1),
(80, 93, 1),
(80, 94, 1),
(32, 93, 1),
(32, 94, 1),
(33, 93, 1),
(33, 94, 1),
(34, 93, 1),
(34, 94, 1),
(35, 93, 1),
(35, 94, 1),
(36, 93, 1),
(36, 94, 1),
(37, 93, 1),
(37, 94, 1),
(38, 93, 2);
INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(38, 94, 2),
(41, 93, 1),
(41, 94, 1),
(42, 93, 2),
(42, 94, 2),
(43, 93, 3),
(43, 94, 3),
(45, 93, 1),
(45, 94, 1),
(46, 93, 1),
(46, 94, 1),
(47, 93, 1),
(47, 94, 1),
(48, 93, 1),
(48, 94, 1),
(49, 93, 2),
(49, 94, 2),
(50, 93, 1),
(50, 94, 1),
(51, 93, 2),
(51, 94, 2),
(52, 93, 3),
(52, 94, 3),
(53, 93, 4),
(53, 94, 4),
(54, 93, 5),
(54, 94, 5),
(55, 93, 1),
(55, 94, 1),
(18, 95, 1),
(18, 96, 1),
(18, 103, 1),
(18, 101, 1),
(11, 98, 1),
(11, 97, 1),
(11, 100, 1),
(11, 95, 1),
(11, 96, 1),
(11, 103, 1),
(11, 101, 1),
(12, 98, 2),
(12, 97, 2),
(12, 100, 2),
(12, 95, 2),
(12, 96, 2),
(12, 103, 2),
(12, 101, 2),
(5, 98, 1),
(5, 97, 1),
(5, 100, 1),
(5, 95, 1),
(5, 96, 1),
(5, 103, 1),
(5, 101, 1),
(6, 98, 2),
(6, 97, 2),
(6, 100, 2),
(6, 95, 2),
(6, 96, 2),
(6, 103, 2),
(6, 101, 2),
(17, 98, 1),
(17, 97, 1),
(17, 100, 1),
(17, 95, 1),
(17, 96, 1),
(17, 103, 1),
(17, 101, 1),
(100, 98, 1),
(100, 97, 1),
(100, 100, 1),
(100, 95, 1),
(100, 96, 1),
(100, 103, 1),
(100, 101, 1),
(106, 98, 2),
(106, 97, 2),
(106, 100, 2),
(106, 95, 2),
(106, 96, 2),
(106, 103, 2),
(106, 101, 2),
(107, 98, 3),
(107, 97, 3),
(107, 100, 3),
(107, 95, 3),
(107, 96, 3),
(107, 103, 3),
(107, 101, 3),
(90, 98, 4),
(90, 97, 4),
(90, 100, 4),
(90, 95, 4),
(90, 96, 4),
(90, 103, 4),
(90, 101, 4),
(15, 98, 1),
(15, 97, 1),
(15, 100, 1),
(15, 95, 1),
(15, 96, 1),
(15, 103, 1),
(15, 101, 1),
(13, 98, 1),
(13, 97, 1),
(13, 100, 1),
(13, 95, 1),
(13, 96, 1),
(13, 103, 1),
(13, 101, 1),
(14, 98, 2),
(14, 97, 2),
(14, 100, 2),
(14, 95, 2),
(14, 96, 2),
(14, 103, 2),
(14, 101, 2),
(7, 98, 1),
(7, 97, 1),
(7, 100, 1),
(7, 95, 1),
(7, 96, 1),
(7, 103, 1),
(7, 101, 1),
(97, 98, 2),
(97, 97, 2),
(97, 100, 2),
(97, 95, 2),
(97, 96, 2),
(97, 103, 2),
(97, 101, 2),
(101, 98, 3),
(101, 97, 3),
(101, 100, 3),
(101, 95, 3),
(101, 96, 3),
(101, 103, 3),
(101, 101, 3),
(102, 98, 4),
(102, 97, 4),
(102, 100, 4),
(102, 95, 4),
(102, 96, 4),
(102, 103, 4),
(102, 101, 4),
(103, 98, 5),
(103, 97, 5),
(103, 100, 5),
(103, 95, 5),
(103, 96, 5),
(103, 103, 5),
(103, 101, 5),
(104, 98, 6),
(104, 97, 6),
(104, 100, 6),
(104, 95, 6),
(104, 96, 6),
(104, 103, 6),
(104, 101, 6),
(105, 98, 7),
(105, 97, 7),
(105, 100, 7),
(105, 95, 7),
(105, 96, 7),
(105, 103, 7),
(105, 101, 7),
(19, 98, 1),
(19, 97, 1),
(19, 100, 1),
(19, 95, 1),
(19, 96, 1),
(19, 103, 1),
(19, 101, 1),
(30, 98, 1),
(30, 97, 1),
(30, 100, 1),
(30, 95, 1),
(30, 96, 1),
(30, 103, 1),
(30, 101, 1),
(28, 98, 1),
(28, 97, 1),
(28, 100, 1),
(28, 95, 1),
(28, 96, 1),
(28, 103, 1),
(28, 101, 1),
(29, 98, 1),
(29, 97, 1),
(29, 100, 1),
(29, 95, 1),
(29, 96, 1),
(29, 103, 1),
(29, 101, 1),
(22, 98, 1),
(22, 97, 1),
(22, 100, 1),
(22, 95, 1),
(22, 96, 1),
(22, 103, 1),
(22, 101, 1),
(23, 98, 2),
(23, 97, 2),
(23, 100, 2),
(23, 95, 2),
(23, 96, 2),
(23, 103, 2),
(23, 101, 2),
(24, 98, 1),
(24, 97, 1),
(24, 100, 1),
(24, 95, 1),
(24, 96, 1),
(24, 103, 1),
(24, 101, 1),
(25, 98, 2),
(25, 97, 2),
(25, 100, 2),
(25, 95, 2),
(25, 96, 2),
(25, 103, 2),
(25, 101, 2),
(26, 98, 3),
(26, 97, 3),
(26, 100, 3),
(26, 95, 3),
(26, 96, 3),
(26, 103, 3),
(26, 101, 3),
(27, 98, 4),
(27, 97, 4),
(27, 100, 4),
(27, 95, 4),
(27, 96, 4),
(27, 103, 4),
(27, 101, 4),
(60, 98, 1),
(60, 97, 1),
(60, 100, 1),
(60, 95, 1),
(60, 96, 1),
(60, 103, 1),
(60, 101, 1),
(62, 98, 1),
(62, 97, 1),
(62, 100, 1),
(62, 95, 1),
(62, 96, 1),
(62, 103, 1),
(62, 101, 1),
(63, 98, 2),
(63, 97, 2),
(63, 100, 2),
(63, 95, 2),
(63, 96, 2),
(63, 103, 2),
(63, 101, 2),
(64, 98, 1),
(64, 97, 1),
(64, 100, 1),
(64, 95, 1),
(64, 96, 1),
(64, 103, 1),
(64, 101, 1),
(65, 98, 1),
(65, 97, 1),
(65, 100, 1),
(65, 95, 1),
(65, 96, 1),
(65, 103, 1),
(65, 101, 1),
(66, 98, 1),
(66, 97, 1),
(66, 100, 1),
(66, 95, 1),
(66, 96, 1),
(66, 103, 1),
(66, 101, 1),
(59, 98, 2),
(59, 97, 2),
(59, 100, 2),
(59, 95, 2),
(59, 96, 2),
(59, 103, 2),
(59, 101, 2),
(67, 98, 1),
(67, 97, 1),
(67, 100, 1),
(67, 95, 1),
(67, 96, 1),
(67, 103, 1),
(67, 101, 1),
(68, 98, 2),
(68, 97, 2),
(68, 100, 2),
(68, 95, 2),
(68, 96, 2),
(68, 103, 2),
(68, 101, 2),
(70, 98, 3),
(70, 97, 3),
(70, 100, 3),
(70, 95, 3),
(70, 96, 3),
(70, 103, 3),
(70, 101, 3),
(79, 98, 1),
(79, 97, 1),
(79, 100, 1),
(79, 95, 1),
(79, 96, 1),
(79, 103, 1),
(79, 101, 1),
(80, 98, 1),
(80, 97, 1),
(80, 100, 1),
(80, 95, 1),
(80, 96, 1),
(80, 103, 1),
(80, 101, 1),
(32, 98, 1),
(32, 97, 1),
(32, 100, 1),
(32, 95, 1),
(32, 96, 1),
(32, 103, 1),
(32, 101, 1),
(33, 98, 1),
(33, 97, 1),
(33, 100, 1),
(33, 95, 1),
(33, 96, 1),
(33, 103, 1),
(33, 101, 1),
(34, 98, 1),
(34, 97, 1),
(34, 100, 1),
(34, 95, 1),
(34, 96, 1),
(34, 103, 1),
(34, 101, 1),
(35, 98, 1),
(35, 97, 1),
(35, 100, 1),
(35, 95, 1),
(35, 96, 1),
(35, 103, 1),
(35, 101, 1),
(36, 98, 1),
(36, 97, 1),
(36, 100, 1),
(36, 95, 1),
(36, 96, 1),
(36, 103, 1),
(36, 101, 1),
(37, 98, 1),
(37, 97, 1),
(37, 100, 1),
(37, 95, 1),
(37, 96, 1),
(37, 103, 1),
(37, 101, 1),
(38, 98, 2),
(38, 97, 2),
(38, 100, 2),
(38, 95, 2),
(38, 96, 2),
(38, 103, 2),
(38, 101, 2),
(41, 98, 1),
(41, 97, 1),
(41, 100, 1),
(41, 95, 1),
(41, 96, 1),
(41, 103, 1),
(41, 101, 1),
(42, 98, 2),
(42, 97, 2),
(42, 100, 2),
(42, 95, 2),
(42, 96, 2),
(42, 103, 2),
(42, 101, 2),
(43, 98, 3),
(43, 97, 3),
(43, 100, 3),
(43, 95, 3),
(43, 96, 3),
(43, 103, 3),
(43, 101, 3),
(45, 98, 1),
(45, 97, 1),
(45, 100, 1),
(45, 95, 1),
(45, 96, 1),
(45, 103, 1),
(45, 101, 1),
(46, 98, 1),
(46, 97, 1),
(46, 100, 1),
(46, 95, 1),
(46, 96, 1),
(46, 103, 1),
(46, 101, 1),
(47, 98, 1),
(47, 97, 1),
(47, 100, 1),
(47, 95, 1),
(47, 96, 1),
(47, 103, 1),
(47, 101, 1),
(48, 98, 1),
(48, 97, 1),
(48, 100, 1),
(48, 95, 1),
(48, 96, 1),
(48, 103, 1),
(48, 101, 1),
(49, 98, 2),
(49, 97, 2),
(49, 100, 2),
(49, 95, 2),
(49, 96, 2),
(49, 103, 2),
(49, 101, 2),
(50, 98, 1),
(50, 97, 1),
(50, 100, 1),
(50, 95, 1),
(50, 96, 1),
(50, 103, 1),
(50, 101, 1),
(51, 98, 2),
(51, 97, 2),
(51, 100, 2),
(51, 95, 2),
(51, 96, 2),
(51, 103, 2),
(51, 101, 2),
(52, 98, 3),
(52, 97, 3),
(52, 100, 3),
(52, 95, 3),
(52, 96, 3),
(52, 103, 3),
(52, 101, 3),
(53, 98, 4),
(53, 97, 4),
(53, 100, 4),
(53, 95, 4),
(53, 96, 4),
(53, 103, 4),
(53, 101, 4),
(54, 98, 5),
(54, 97, 5),
(54, 100, 5),
(54, 95, 5),
(54, 96, 5),
(54, 103, 5),
(54, 101, 5),
(55, 98, 1),
(55, 97, 1),
(55, 100, 1),
(55, 95, 1),
(55, 96, 1),
(55, 103, 1),
(55, 101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{\"viber\":\"myViber\",\"skype\":\"mySkype\",\"yahoo\":\"myYahoo\"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_supporter`
--

CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1632575222, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1632575222, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1632575222, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1632575222, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1632575222, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_admins`
--

CREATE TABLE `nv4_vi_laws_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `subjectid` smallint(4) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_area`
--

CREATE TABLE `nv4_vi_laws_area` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_area`
--

INSERT INTO `nv4_vi_laws_area` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `addtime`, `weight`) VALUES
(1, 0, 'Giao-duc-1', 'Giáo dục', '', '', 1412265295, 1),
(2, 0, 'Phap-quy-2', 'Pháp quy', '', '', 1412265295, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_cat`
--

CREATE TABLE `nv4_vi_laws_cat` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `parentid` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '5',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_cat`
--

INSERT INTO `nv4_vi_laws_cat` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `newday`, `addtime`, `weight`) VALUES
(1, 0, 'Cong-van', 'Công văn', '', '', 5, 1412265295, 1),
(2, 0, 'Thong-tu', 'Thông tư', '', '', 5, 1412265295, 2),
(3, 0, 'Quyet-dinh', 'Quyết định', '', '', 5, 1412265295, 3),
(4, 0, 'Nghi-dinh', 'Nghị định', '', '', 5, 1412265295, 4),
(5, 0, 'Thong-bao', 'Thông báo', '', '', 5, 1412998152, 5),
(6, 0, 'Huong-dan', 'Hướng dẫn', '', '', 5, 1412998170, 6),
(7, 0, 'Bao-cao', 'Báo cáo', '', '', 5, 1412998182, 7),
(8, 0, 'Chi-thi', 'Chỉ thị', '', '', 5, 1412998193, 8),
(9, 0, 'Ke-hoach', 'Kế hoạch', '', '', 5, 1412998208, 9);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_config`
--

CREATE TABLE `nv4_vi_laws_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_config`
--

INSERT INTO `nv4_vi_laws_config` (`config_name`, `config_value`) VALUES
('nummain', '50'),
('numsub', '50'),
('typeview', '0'),
('down_in_home', '1'),
('detail_other', 'a:1:{i:0;s:3:\"cat\";}'),
('detail_hide_empty_field', '1'),
('detail_show_link_cat', '1'),
('detail_show_link_area', '1'),
('detail_show_link_subject', '1'),
('detail_show_link_signer', '1'),
('detail_pdf_quick_view', '1'),
('other_numlinks', '5'),
('title_show_type', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_examine`
--

CREATE TABLE `nv4_vi_laws_examine` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_examine`
--

INSERT INTO `nv4_vi_laws_examine` (`id`, `title`, `weight`) VALUES
(1, 'Ủy ban Pháp luật', 1),
(2, 'Ủy ban Đối ngoại', 2),
(3, 'Ủy ban Kinh tế', 3),
(4, 'Ủy ban Tư pháp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_row`
--

CREATE TABLE `nv4_vi_laws_row` (
  `id` int(10) NOT NULL,
  `replacement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `relatement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sid` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `eid` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sgid` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodytext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_download` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `addtime` int(11) NOT NULL,
  `edittime` int(11) NOT NULL,
  `publtime` int(11) NOT NULL DEFAULT '0',
  `start_comm_time` int(11) DEFAULT NULL,
  `end_comm_time` int(11) DEFAULT NULL,
  `startvalid` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '0',
  `view_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `admin_add` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `admin_edit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_row_area`
--

CREATE TABLE `nv4_vi_laws_row_area` (
  `row_id` int(10) UNSIGNED NOT NULL,
  `area_id` smallint(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_set_replace`
--

CREATE TABLE `nv4_vi_laws_set_replace` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `oid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_signer`
--

CREATE TABLE `nv4_vi_laws_signer` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `positions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_signer`
--

INSERT INTO `nv4_vi_laws_signer` (`id`, `title`, `offices`, `positions`, `addtime`) VALUES
(1, 'Phạm Vũ Luận', '', 'Bộ trưởng', 1412265295),
(2, 'Bùi Văn Ga', '', 'Thứ trưởng', 1412265295),
(3, 'Nguyễn Thị Nghĩa', '', 'Thứ trưởng', 1412265295),
(4, 'Nguyễn Vinh Hiển', '', 'Thứ trưởng', 1412265295),
(5, 'Khác', '', '', 1412265295);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_laws_subject`
--

CREATE TABLE `nv4_vi_laws_subject` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numcount` int(10) NOT NULL DEFAULT '0',
  `numlink` tinyint(2) NOT NULL DEFAULT '5',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_laws_subject`
--

INSERT INTO `nv4_vi_laws_subject` (`id`, `alias`, `title`, `introduction`, `keywords`, `numcount`, `numlink`, `addtime`, `weight`) VALUES
(1, 'Bo-GD-DT', 'Bộ GD&amp;ĐT', '', '', 0, 5, 1412265295, 1),
(2, 'So-GD-DT', 'Sở GD&amp;ĐT', '', '', 0, 5, 1412265295, 2),
(3, 'Phong-GD-DT', 'Phòng GD', '', '', 0, 5, 1412265295, 3),
(4, 'Khac', 'Khác', '', '', 0, 5, 1412265295, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(42, 26, 1, 'Giải đố', '/nukeviet/index.php?language=vi&nv=music&op=managetype', '', '', '', 1, 2, 1, '', '6', 'music', '', 1, '', 0, 1),
(35, 0, 1, 'RSS-feeds', '/nukeviet/index.php?language=vi&nv=feeds', '', '', '', 10, 11, 0, '', '6', 'feeds', '', 1, '', 1, 1),
(34, 0, 1, 'Tìm kiếm', '/nukeviet/index.php?language=vi&nv=seek', '', '', '', 9, 10, 0, '', '6', 'seek', '', 1, '', 1, 1),
(33, 0, 1, 'Quảng cáo', '/nukeviet/index.php?language=vi&nv=banners', '', '', '', 8, 9, 0, '', '6', 'banners', '', 1, '', 1, 1),
(32, 0, 1, 'Thăm dò ý kiến', '/nukeviet/index.php?language=vi&nv=voting', '', '', '', 7, 8, 0, '', '6', 'voting', '', 1, '', 1, 1),
(31, 0, 1, 'Thống kê', '/nukeviet/index.php?language=vi&nv=statistics', '', '', '', 6, 7, 0, '', '6', 'statistics', '', 1, '', 1, 1),
(30, 0, 1, 'Liên hệ', '/nukeviet/index.php?language=vi&nv=contact', '', '', '', 5, 6, 0, '', '6', 'contact', '', 1, '', 1, 1),
(29, 0, 1, 'Thành viên', '/nukeviet/index.php?language=vi&nv=users', '', '', '', 4, 5, 0, '', '6', 'users', '', 1, '', 1, 1),
(28, 0, 1, 'Tin Tức', '/nukeviet/index.php?language=vi&nv=news', '', '', '', 3, 4, 0, '', '6', 'news', '', 1, '', 1, 1),
(27, 0, 1, 'Giới thiệu', '/nukeviet/index.php?language=vi&nv=about', '', '', '', 2, 3, 0, '', '6', 'about', '', 1, '', 1, 1),
(26, 0, 1, 'Nghe nhạc', '/nukeviet/index.php?language=vi&nv=music', '', '', '', 1, 1, 0, '42', '6', 'music', '', 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 1, 0, 0, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(18, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(19, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(20, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(21, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(22, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(23, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(24, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(25, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(26, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(27, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 9, ''),
(28, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 10, ''),
(29, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 0, 11, ''),
(30, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(31, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(32, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(33, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(34, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(35, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(36, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(37, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(38, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(39, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(40, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(41, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(42, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(43, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(44, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(45, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(46, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(47, 'main', 'main', 'main', '', 'comment', 1, 0, 1, ''),
(48, 'post', 'post', 'post', '', 'comment', 1, 0, 2, ''),
(49, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(50, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(51, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(56, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(57, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(58, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(59, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(60, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(61, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(62, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(63, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(64, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(65, 'giaovien', 'giaovien', 'Giaovien', '', 'tkb', 1, 1, 2, ''),
(66, 'main', 'main', 'Main', '', 'tkb', 1, 1, 1, ''),
(84, 'managetype', 'managetype', 'Managetype', '', 'music', 1, 0, 2, ''),
(103, 'subject', 'subject', 'Subject', '', 'laws', 1, 1, 6, ''),
(102, 'sitemap', 'sitemap', 'Sitemap', '', 'laws', 0, 0, 0, ''),
(101, 'signer', 'signer', 'Signer', '', 'laws', 1, 1, 7, ''),
(100, 'search', 'search', 'Search', '', 'laws', 1, 1, 3, ''),
(99, 'rss', 'rss', 'Rss', '', 'laws', 0, 0, 0, ''),
(98, 'main', 'main', 'Main', '', 'laws', 1, 1, 1, ''),
(96, 'cat', 'cat', 'Cat', '', 'laws', 1, 1, 5, ''),
(97, 'detail', 'detail', 'Detail', '', 'laws', 1, 1, 2, ''),
(95, 'area', 'area', 'Area', '', 'laws', 1, 1, 4, ''),
(85, 'result_page', 'result_page', 'Result_page', '', 'music', 1, 0, 3, ''),
(83, 'main', 'main', 'Main', '', 'music', 1, 0, 1, ''),
(94, 'view', 'view', 'View', '', 'ochu', 1, 1, 2, ''),
(93, 'main', 'main', 'Main', '', 'ochu', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'left-main-right', 'shop-hoa'),
(0, 'left-main-right', 'theme_bkhdt'),
(0, 'left-main-right', 'themtet2018'),
(0, 'main', 'mobile_default'),
(1, 'left-main', 'themtet2018'),
(1, 'left-main-right', 'shop-hoa'),
(1, 'left-main-right', 'theme_bkhdt'),
(1, 'main', 'mobile_default'),
(1, 'main-right', 'default'),
(3, 'left-main-right', 'shop-hoa'),
(3, 'left-main-right', 'theme_bkhdt'),
(3, 'left-main-right', 'themtet2018'),
(3, 'main-right', 'default'),
(4, 'left-main-right', 'theme_bkhdt'),
(4, 'left-main-right', 'themtet2018'),
(4, 'main', 'mobile_default'),
(4, 'main-right', 'default'),
(4, 'main-right', 'shop-hoa'),
(5, 'left-main-right', 'theme_bkhdt'),
(5, 'left-main-right', 'themtet2018'),
(5, 'main', 'mobile_default'),
(5, 'main', 'shop-hoa'),
(5, 'main-right', 'default'),
(6, 'left-main-right', 'theme_bkhdt'),
(6, 'left-main-right', 'themtet2018'),
(6, 'main', 'mobile_default'),
(6, 'main', 'shop-hoa'),
(6, 'main-right', 'default'),
(7, 'left-main-right', 'shop-hoa'),
(7, 'left-main-right', 'theme_bkhdt'),
(7, 'left-main-right', 'themtet2018'),
(7, 'main', 'mobile_default'),
(7, 'main-right', 'default'),
(8, 'left-main-right', 'shop-hoa'),
(8, 'left-main-right', 'theme_bkhdt'),
(8, 'left-main-right', 'themtet2018'),
(8, 'main', 'mobile_default'),
(8, 'main-right', 'default'),
(9, 'left-main-right', 'theme_bkhdt'),
(9, 'left-main-right', 'themtet2018'),
(9, 'main', 'mobile_default'),
(9, 'main', 'shop-hoa'),
(9, 'main-right', 'default'),
(10, 'left-main-right', 'theme_bkhdt'),
(10, 'left-main-right', 'themtet2018'),
(10, 'main', 'shop-hoa'),
(10, 'main-right', 'default'),
(11, 'left-main-right', 'shop-hoa'),
(11, 'left-main-right', 'theme_bkhdt'),
(11, 'left-main-right', 'themtet2018'),
(11, 'main', 'mobile_default'),
(11, 'main-right', 'default'),
(12, 'left-main-right', 'theme_bkhdt'),
(12, 'left-main-right', 'themtet2018'),
(12, 'main', 'mobile_default'),
(12, 'main', 'shop-hoa'),
(12, 'main-right', 'default'),
(19, 'left-main-right', 'shop-hoa'),
(19, 'left-main-right', 'theme_bkhdt'),
(19, 'left-main-right', 'themtet2018'),
(19, 'main', 'mobile_default'),
(19, 'main-right', 'default'),
(20, 'left-main-right', 'shop-hoa'),
(20, 'left-main-right', 'theme_bkhdt'),
(20, 'left-main-right', 'themtet2018'),
(20, 'main', 'mobile_default'),
(20, 'main-right', 'default'),
(21, 'left-main-right', 'shop-hoa'),
(21, 'left-main-right', 'theme_bkhdt'),
(21, 'left-main-right', 'themtet2018'),
(21, 'main', 'mobile_default'),
(21, 'main-right', 'default'),
(22, 'left-main-right', 'shop-hoa'),
(22, 'left-main-right', 'theme_bkhdt'),
(22, 'left-main-right', 'themtet2018'),
(22, 'main', 'mobile_default'),
(22, 'main-right', 'default'),
(23, 'left-main-right', 'shop-hoa'),
(23, 'left-main-right', 'theme_bkhdt'),
(23, 'left-main-right', 'themtet2018'),
(23, 'main', 'mobile_default'),
(23, 'main-right', 'default'),
(24, 'left-main-right', 'shop-hoa'),
(24, 'left-main-right', 'theme_bkhdt'),
(24, 'left-main-right', 'themtet2018'),
(24, 'main', 'mobile_default'),
(24, 'main-right', 'default'),
(25, 'left-main', 'shop-hoa'),
(25, 'left-main', 'theme_bkhdt'),
(25, 'left-main', 'themtet2018'),
(25, 'main', 'mobile_default'),
(25, 'main-right', 'default'),
(26, 'left-main-right', 'shop-hoa'),
(26, 'left-main-right', 'theme_bkhdt'),
(26, 'left-main-right', 'themtet2018'),
(26, 'main', 'mobile_default'),
(26, 'main-right', 'default'),
(27, 'left-main-right', 'shop-hoa'),
(27, 'left-main-right', 'theme_bkhdt'),
(27, 'left-main-right', 'themtet2018'),
(27, 'main-right', 'default'),
(28, 'left-main-right', 'shop-hoa'),
(28, 'left-main-right', 'theme_bkhdt'),
(28, 'left-main-right', 'themtet2018'),
(28, 'main', 'mobile_default'),
(28, 'main-right', 'default'),
(29, 'left-main', 'shop-hoa'),
(29, 'left-main', 'theme_bkhdt'),
(29, 'left-main', 'themtet2018'),
(29, 'main', 'mobile_default'),
(29, 'main-right', 'default'),
(31, 'left-main', 'shop-hoa'),
(31, 'left-main', 'theme_bkhdt'),
(31, 'left-main', 'themtet2018'),
(31, 'main', 'mobile_default'),
(31, 'main-right', 'default'),
(32, 'left-main', 'shop-hoa'),
(32, 'left-main', 'theme_bkhdt'),
(32, 'left-main', 'themtet2018'),
(32, 'main', 'mobile_default'),
(32, 'main-right', 'default'),
(33, 'left-main', 'shop-hoa'),
(33, 'left-main', 'theme_bkhdt'),
(33, 'left-main', 'themtet2018'),
(33, 'main', 'mobile_default'),
(33, 'main-right', 'default'),
(34, 'left-main', 'shop-hoa'),
(34, 'left-main', 'theme_bkhdt'),
(34, 'left-main', 'themtet2018'),
(34, 'main', 'mobile_default'),
(34, 'main-right', 'default'),
(35, 'left-main', 'shop-hoa'),
(35, 'left-main', 'theme_bkhdt'),
(35, 'left-main', 'themtet2018'),
(35, 'main', 'mobile_default'),
(35, 'main-right', 'default'),
(36, 'left-main', 'shop-hoa'),
(36, 'left-main', 'theme_bkhdt'),
(36, 'left-main', 'themtet2018'),
(36, 'main', 'mobile_default'),
(36, 'main-right', 'default'),
(37, 'left-main', 'shop-hoa'),
(37, 'left-main', 'theme_bkhdt'),
(37, 'left-main', 'themtet2018'),
(37, 'main', 'mobile_default'),
(37, 'main-right', 'default'),
(38, 'left-main-right', 'shop-hoa'),
(38, 'left-main-right', 'theme_bkhdt'),
(38, 'left-main-right', 'themtet2018'),
(38, 'main', 'mobile_default'),
(38, 'main-right', 'default'),
(39, 'left-main-right', 'shop-hoa'),
(39, 'left-main-right', 'theme_bkhdt'),
(39, 'left-main-right', 'themtet2018'),
(39, 'main', 'mobile_default'),
(39, 'main-right', 'default'),
(40, 'left-main-right', 'shop-hoa'),
(40, 'left-main-right', 'theme_bkhdt'),
(40, 'left-main-right', 'themtet2018'),
(40, 'main', 'mobile_default'),
(40, 'main-right', 'default'),
(41, 'left-main-right', 'shop-hoa'),
(41, 'left-main-right', 'theme_bkhdt'),
(41, 'left-main-right', 'themtet2018'),
(41, 'main', 'mobile_default'),
(41, 'main-right', 'default'),
(47, 'left-main-right', 'shop-hoa'),
(47, 'left-main-right', 'theme_bkhdt'),
(47, 'left-main-right', 'themtet2018'),
(47, 'main', 'mobile_default'),
(47, 'main-right', 'default'),
(48, 'left-main-right', 'shop-hoa'),
(48, 'left-main-right', 'theme_bkhdt'),
(48, 'left-main-right', 'themtet2018'),
(48, 'main', 'mobile_default'),
(48, 'main-right', 'default'),
(49, 'left-main-right', 'shop-hoa'),
(49, 'left-main-right', 'theme_bkhdt'),
(49, 'left-main-right', 'themtet2018'),
(49, 'main', 'mobile_default'),
(49, 'main-right', 'default'),
(50, 'left-main-right', 'shop-hoa'),
(50, 'left-main-right', 'theme_bkhdt'),
(50, 'left-main-right', 'themtet2018'),
(50, 'main', 'mobile_default'),
(50, 'main-right', 'default'),
(51, 'left-main-right', 'shop-hoa'),
(51, 'left-main-right', 'theme_bkhdt'),
(51, 'left-main-right', 'themtet2018'),
(51, 'main-right', 'default'),
(52, 'left-main', 'shop-hoa'),
(52, 'left-main', 'theme_bkhdt'),
(52, 'left-main', 'themtet2018'),
(52, 'main', 'mobile_default'),
(52, 'main-right', 'default'),
(55, 'left-main-right', 'shop-hoa'),
(55, 'left-main-right', 'theme_bkhdt'),
(55, 'left-main-right', 'themtet2018'),
(55, 'main', 'mobile_default'),
(55, 'main-right', 'default'),
(56, 'left-main-right', 'shop-hoa'),
(56, 'left-main-right', 'theme_bkhdt'),
(56, 'left-main-right', 'themtet2018'),
(56, 'main', 'mobile_default'),
(56, 'main-right', 'default'),
(58, 'left-main-right', 'shop-hoa'),
(58, 'left-main-right', 'theme_bkhdt'),
(58, 'left-main-right', 'themtet2018'),
(58, 'main', 'mobile_default'),
(58, 'main-right', 'default'),
(59, 'left-main-right', 'shop-hoa'),
(59, 'left-main-right', 'theme_bkhdt'),
(59, 'left-main-right', 'themtet2018'),
(59, 'main', 'mobile_default'),
(59, 'main-right', 'default'),
(60, 'left-main-right', 'shop-hoa'),
(60, 'left-main-right', 'theme_bkhdt'),
(60, 'left-main-right', 'themtet2018'),
(60, 'main', 'mobile_default'),
(60, 'main-right', 'default'),
(61, 'left-main', 'shop-hoa'),
(61, 'left-main', 'theme_bkhdt'),
(61, 'left-main', 'themtet2018'),
(61, 'main', 'mobile_default'),
(61, 'main-right', 'default'),
(62, 'left-main', 'shop-hoa'),
(62, 'left-main', 'theme_bkhdt'),
(62, 'left-main', 'themtet2018'),
(62, 'main', 'mobile_default'),
(62, 'main-right', 'default'),
(63, 'left-main-right', 'shop-hoa'),
(63, 'left-main-right', 'theme_bkhdt'),
(63, 'left-main-right', 'themtet2018'),
(63, 'main', 'mobile_default'),
(63, 'main-right', 'default'),
(64, 'left-main-right', 'shop-hoa'),
(64, 'left-main-right', 'theme_bkhdt'),
(64, 'left-main-right', 'themtet2018'),
(64, 'main', 'mobile_default'),
(64, 'main-right', 'default'),
(65, 'left-main-right', 'shop-hoa'),
(65, 'left-main-right', 'theme_bkhdt'),
(65, 'left-main-right', 'themtet2018'),
(65, 'main', 'mobile_default'),
(65, 'main-right', 'default'),
(66, 'left-main-right', 'shop-hoa'),
(66, 'left-main-right', 'theme_bkhdt'),
(66, 'left-main-right', 'themtet2018'),
(66, 'main', 'mobile_default'),
(66, 'main-right', 'default'),
(83, 'left-main-right', 'theme_bkhdt'),
(83, 'left-main-right', 'themtet2018'),
(84, 'left-main-right', 'theme_bkhdt'),
(84, 'left-main-right', 'themtet2018'),
(85, 'left-main-right', 'theme_bkhdt'),
(85, 'left-main-right', 'themtet2018'),
(93, 'left-main-right', 'default'),
(93, 'left-main-right', 'shop-hoa'),
(93, 'left-main-right', 'theme_bkhdt'),
(93, 'left-main-right', 'themtet2018'),
(93, 'main', 'mobile_default'),
(94, 'left-main-right', 'default'),
(94, 'left-main-right', 'shop-hoa'),
(94, 'left-main-right', 'theme_bkhdt'),
(94, 'left-main-right', 'themtet2018'),
(94, 'main', 'mobile_default'),
(95, 'left-main-right', 'default'),
(95, 'left-main-right', 'shop-hoa'),
(95, 'left-main-right', 'theme_bkhdt'),
(95, 'left-main-right', 'themtet2018'),
(95, 'main', 'mobile_default'),
(96, 'left-main-right', 'default'),
(96, 'left-main-right', 'shop-hoa'),
(96, 'left-main-right', 'theme_bkhdt'),
(96, 'left-main-right', 'themtet2018'),
(96, 'main', 'mobile_default'),
(97, 'left-main-right', 'default'),
(97, 'left-main-right', 'shop-hoa'),
(97, 'left-main-right', 'theme_bkhdt'),
(97, 'left-main-right', 'themtet2018'),
(97, 'main', 'mobile_default'),
(98, 'left-main-right', 'default'),
(98, 'left-main-right', 'shop-hoa'),
(98, 'left-main-right', 'theme_bkhdt'),
(98, 'left-main-right', 'themtet2018'),
(98, 'main', 'mobile_default'),
(99, 'left-main-right', 'shop-hoa'),
(100, 'left-main-right', 'default'),
(100, 'left-main-right', 'shop-hoa'),
(100, 'left-main-right', 'theme_bkhdt'),
(100, 'left-main-right', 'themtet2018'),
(100, 'main', 'mobile_default'),
(101, 'left-main-right', 'default'),
(101, 'left-main-right', 'shop-hoa'),
(101, 'left-main-right', 'theme_bkhdt'),
(101, 'left-main-right', 'themtet2018'),
(101, 'main', 'mobile_default'),
(102, 'left-main-right', 'shop-hoa'),
(103, 'left-main-right', 'default'),
(103, 'left-main-right', 'shop-hoa'),
(103, 'left-main-right', 'theme_bkhdt'),
(103, 'left-main-right', 'themtet2018'),
(103, 'main', 'mobile_default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `sitemap` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1632575222, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1632575222, 1, 1, '', '', '', '', '6', 3, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1632575222, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1632575222, 1, 1, '', '', '', '', '6', 5, 1, '', 0, 1),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1632575222, 1, 1, '', '', '', 'online, statistics', '6', 6, 1, '', 0, 1),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1632575222, 1, 1, '', '', '', '', '6', 7, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1632575222, 1, 1, '', '', '', '', '6', 8, 1, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1632575222, 1, 0, '', '', '', '', '6', 9, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1632575222, 0, 1, '', '', '', '', '6', 10, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', 'RSS-feeds', 1632575222, 1, 1, '', '', '', '', '6', 11, 1, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1632575222, 1, 1, '', '', '', '', '6', 12, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1632575222, 0, 1, '', '', '', '', '6', 13, 1, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1632575222, 1, 1, '', '', '', '', '6', 14, 1, '', 1, 1),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1632575222, 0, 1, '', '', '', '', '6', 15, 1, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1632575222, 1, 0, '', '', '', '', '6', 16, 1, '', 0, 1),
('tkb', 'tkb', 'tkb', 'tkb', 'tkb', 'Thời khóa biểu', '', '', 1632646470, 1, 1, '', '', '', '', '6', 17, 1, '', 0, 0),
('music', 'music', 'music', 'music', 'music', 'Music', '', '', 1633275279, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 1),
('laws', 'laws', 'laws', 'laws', 'laws', 'Laws', '', '', 1633962245, 1, 1, '', '', '', '', '6', 19, 1, '', 1, 1),
('ochu', 'ochu', 'ochu', 'ochu', 'ochu', 'Ô chữ', '', '', 1633961897, 1, 1, '', '', '', '', '6', 18, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_music_cats`
--

CREATE TABLE `nv4_vi_music_cats` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_music_cats`
--

INSERT INTO `nv4_vi_music_cats` (`id`, `cat_name`, `add_time`, `update_time`) VALUES
(1, 'abc', 1633962685, 1633962685);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_music_game_max_results`
--

CREATE TABLE `nv4_vi_music_game_max_results` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `timeupdate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_music_game_max_results`
--

INSERT INTO `nv4_vi_music_game_max_results` (`id`, `username`, `diem`, `timeupdate`) VALUES
(1, 'admin', 211, '1633313550'),
(2, 'admin', 182, '1633315711'),
(3, 'admin', 199, '1633315819'),
(4, 'admin', 214, '1633316635'),
(5, 'admin', 212, '1633316997'),
(6, 'dokien1997', 190, '1633317557'),
(7, 'dokien1997', 192, '1633317656'),
(8, 'admin', -12, '1633319073'),
(9, 'admin', 125, '1633356626');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_music_singers`
--

CREATE TABLE `nv4_vi_music_singers` (
  `id` int(11) NOT NULL,
  `singer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_music_songs`
--

CREATE TABLE `nv4_vi_music_songs` (
  `id` int(11) NOT NULL,
  `song_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singer_id` int(11) NOT NULL,
  `cat_id` smallint(4) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_1`
--

INSERT INTO `nv4_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 3, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 9, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_2`
--

INSERT INTO `nv4_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 13, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 3, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, 'VINADES', 0, 1501837620, 1501837620, 1, 14, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, 'VINADES', 0, 1510215907, 1510215907, 1, 15, 1510215907, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(21, 2, '2', 0, 1, '', 0, 1633702108, 1633702108, 1, 16, 1633701480, 0, 2, 'Trường Đại học Mở Hà Nội hỗ trợ tỉnh Bắc Giang chống dịch Covid-19', 'truong-dai-hoc-mo-ha-noi-ho-tro-tinh-bac-giang-chong-dich-covid-19', 'dsad', '277.jpg', 'abc', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_8`
--

CREATE TABLE `nv4_vi_news_8` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_8`
--

INSERT INTO `nv4_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_9`
--

CREATE TABLE `nv4_vi_news_9` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_9`
--

INSERT INTO `nv4_vi_news_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_10`
--

CREATE TABLE `nv4_vi_news_10` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_10`
--

INSERT INTO `nv4_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_11`
--

CREATE TABLE `nv4_vi_news_11` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_11`
--

INSERT INTO `nv4_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 4, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 5, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 6, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 8, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 11, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_12`
--

CREATE TABLE `nv4_vi_news_12` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_12`
--

INSERT INTO `nv4_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 1),
(2, 17, 2),
(2, 16, 3),
(2, 15, 4),
(2, 14, 5),
(2, 12, 6),
(2, 11, 7),
(2, 1, 8),
(2, 6, 9),
(2, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 4, 2, 0, '', '', '', 1274986690, 1274986690, '6', 1),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274986705, 1274986705, '6', 1),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987105, 1274987244, '6', 1),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987212, 1274987212, '6', 1),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987460, 1274987460, '6', 1),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987538, 1274987538, '6', 1),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987902, 1274987902, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_config_post`
--

INSERT INTO `nv4_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(1, '', '', '<p style=\"text-align: justify;\">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style=\"text-align: justify;\"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href=\"http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm\" target=\"_blank\">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href=\"http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov\" target=\"_blank\">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', '', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', NULL, 2, '', 0, 1, 1, 1),
(6, '', '', '<div style=\"text-align: justify;\">Tính đến năm 2015, ước tính có hơn 10.000 website đang sử dụng NukeViet. Nhu cầu triển khai NukeViet không chỉ dừng lại ở các cá nhân, doanh nghiệp, cơ sở giáo dục mà đã lan rộng ra khối chính phủ.</div><div style=\"text-align: justify;\"><br  />Cộng đồng NukeViet cũng đã lớn mạnh hơn trước. Nếu như đầu năm 2010, ngoài Công ty VINADES chỉ có một vài công ty cung cấp dịch vụ cho NukeViet nhưng không chuyên, thì theo thống kê năm 2015 đã có hàng trăm doanh nghiệp đang cung cấp dịch vụ có liên quan đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... trên nền tảng NukeViet. Đặc biệt có nhiều doanh nghiệp hoàn toàn cung cấp dịch vụ thiết kế web, cung cấp giao diện, module... sử dụng nền tảng NukeViet. Nhiều sản phẩm phái sinh từ NukeViet đã ra đời, NukeViet được phát triển thành nhiều phần mềm quản lý sử dụng trên mạng LAN hay trên internet, được phát triển thành các phần mềm dùng riêng hay sử dụng như một nền tảng để cung cấp dịch vụ online, thậm chí đã được thử nghiệm tích hợp vào trong các thiết bị phần cứng để bán cùng thiết bị (NukeViet Captive Portal - dùng để quản lý người dùng truy cập internet, tích hợp trong thiết bị quản lý wifi)...<br  /><br  />Tuy nhiên, cùng với những cơ hội, cộng đồng NukeViet đang đứng trước một thách thức mới. NukeViet cần tập hợp tất cả các doanh nghiệp, tổ chức và cá nhân đang cung cấp dịch vụ cho NukeViet và liên kết các đơn vị này với nhau để giúp nhau chuyên nghiệp hóa, cùng nhau chia sẻ những cơ hội kinh doanh và trở lên lớn mạnh hơn.<br  /><br  />Nếu cộng đồng NukeViet có 500 công ty siêu nhỏ chỉ 2-3 người và những công ty này đứng riêng rẽ như hiện nay thì NukeViet mãi bé nhỏ và sẽ không làm được việc gì. Nhưng nếu 500 công ty này biết nhau, cùng làm một số việc, cùng tham gia phát triển NukeViet, đó sẽ là sức mạnh rất lớn cho một phần mềm nguồn mở như NukeViet, và đó cũng là cơ hội rất lớn để các công ty nhỏ ấy trở lên chuyên nghiệp và vững mạnh.<br  /><br  />Cho dù bạn là doanh nghiệp hay một nhóm kinh doanh, cho dù bạn đang cung cấp bất kỳ dịch vụ có liên quan trực tiếp đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... hoặc gián tiếp có liên quan đến NukeViet (ví dụ các công ty hosting, các nhà cung cấp dịch vụ thanh toán điện tử...). Bạn đều là một thành phần quan trọng của NukeViet. Dù bạn là công ty to hay một nhóm nhỏ, hãy đăng ký vào danh sách các đối tác của NukeViet để thiết lập kênh liên lạc với các doanh nghiệp khác trong cộng đồng NukeViet và nhận sự hỗ trợ từ Ban Quản Trị NukeViet cũng như từ các cơ quan nhà nước đang có nhu cầu tìm kiếm các đơn vị cung ứng dịch vụ cho NukeViet.<br  /><br  />Hãy gửi email cho Ban Quản Trị NukeViet về địa chỉ: admin@nukeviet.vn để đăng ký vào danh sách các đơn vị hỗ trợ NukeViet.<br  /><br  />Tiêu đề email: Đăng ký vào danh sách các đơn vị cung cấp dịch vụ dựa trên NukeViet<br  />Nội dung email: Thông tin về đơn vị, dịch vụ cung cấp.<br  /><br  />Hoặc gửi yêu cầu tại đây: <a href=\"http://nukeviet.vn/vi/contact/\" target=\"_blank\">http://nukeviet.vn/vi/contact/</a><br  /><br  />Mọi yêu cầu sẽ được phản hồi trong vòng 24h. Trường hợp không nhận được phản hồi, hãy liên hệ với Ban Quản Trị NukeViet qua các kênh liên lạc khác như:<br  /><br  />- Diễn đàn doanh nghiệp NukeViet: <a href=\"http://forum.nukeviet.vn/viewforum.php?f=4\" target=\"_blank\">http://forum.nukeviet.vn/viewforum.php?f=4</a><br  />- Fanpage NukeViet trên FaceBook: <a href=\"http://fb.com/nukeviet/\" target=\"_blank\">http://fb.com/nukeviet/</a><br  /><br  />Vui lòng truy cập địa chỉ sau để xem danh sách các đơn vị: <a href=\"https://nukeviet.vn/vi/partner/\" target=\"_blank\">https://nukeviet.vn/vi/partner/</a></div>', '', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', NULL, 2, '', 0, 1, 1, 1),
(7, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Phát triển hệ thống NukeViet.</li><li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li><li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li><li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li><li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo.</li><li>Đam mê công việc về lập trình web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', 'http://vinades.vn/vi/news/Tuyen-dung/', NULL, 2, '', 0, 1, 1, 1),
(8, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><br /><br /><em><strong>Công việc chính:</strong></em><ul><li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li><li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul><li>Cắt và ghép giao diện cho hệ thống.</li><li>Valid CSS, xHTML.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt</li><li>Đam mê công việc thiết kế và website.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(9, '', '', 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html\">Lập trình viên PHP và MySQL.</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html\">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href=\"/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html\">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style=\"font-size:16px;\"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên front-end (HTML/ CSS/ JS)<br /><br /><span style=\"font-size:16px;\"><strong>2. Mô tả công việc:</strong></span><ul><li>Cắt, làm giao diện website từ bản thiết kế (sử dụng Photoshop) trên nền hệ thống NukeViet.</li><li>Tham gia vào việc phát triển Front-End các ứng dụng nền web.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng, thẩm mỹ của sản phẩm trong khi sản phẩm hoạt động Tham mưu, tư vấn về chất lượng, thẩm mỹ, trải nghiệm người dùng về các sản phẩm.</li><li>Đảm bảo website theo các tiêu chuẩn web (W3c, XHTML, CSS 3.0, Tableless, no inline style, … ).</li><li>Đảm bảo website hiển thị đúng trên tất cả các trình duyệt.</li><li>Đảm bảo website theo chuẩn “Responsive Web Design.</li><li>Đảm bảo việc đưa sản phẩm thiết kế đến người dùng cuối cùng một cách chính xác và đẹp.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style=\"font-size:16px;\"><strong>3. Yêu cầu:</strong></span><ul><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt.</li><li>Đam mê công việc về web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style=\"font-size:16px;\"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style=\"font-size:16px;\"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style=\"font-size:16px;\"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style=\"font-size:16px;\"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/\" target=\"_blank\"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br /><br /><span style=\"font-size:16px;\"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style=\"text-align: justify;\"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-24-85872007 - Fax: +84-24-35500914<br />- Email: <a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a> - Website: <a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></div></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(10, '', '', 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align=\"center\"> &nbsp;</div><div align=\"left\"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg\" width=\"350\" /></div> <div align=\"center\"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style=\"FONT-STYLE: italic\">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg\" style=\"MARGIN: 5px\" width=\"400\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style=\"FONT-WEIGHT: bold\">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style=\"FONT-STYLE: italic\">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style=\"FONT-WEIGHT: bold\">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style=\"FONT-STYLE: italic\">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style=\"FONT-WEIGHT: bold\">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style=\"FONT-STYLE: italic\">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style=\"FONT-STYLE: italic\">Giải Nhất:</span> Không có.</p><p> <span style=\"FONT-STYLE: italic\">Giải Nhì:</span> Không có</p><p> <span style=\"FONT-STYLE: italic\">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style=\"FONT-WEIGHT: bold\">1.</span> <span style=\"FONT-STYLE: italic\">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style=\"FONT-WEIGHT: bold; FONT-STYLE: italic\">2.</span> <span style=\"FONT-STYLE: italic\">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" alt=\"NukeViet nhận giải ba Nhân tài đất Việt 2011\" src=\"/uploads/news/nukeviet-nhantaidatviet2011.jpg\" style=\"margin: 5px; width: 450px; height: 301px;\" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style=\"FONT-WEIGHT: bold\">3.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style=\"FONT-STYLE: italic\">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style=\"FONT-STYLE: italic\">Giải Nhất: </span>Không có.</p><div> <span style=\"FONT-STYLE: italic\">Giải Nhì:</span> trị giá 50 triệu đồng: <span style=\"FONT-STYLE: italic\">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style=\"FONT-STYLE: italic\">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style=\"FONT-WEIGHT: bold\">1. </span><span style=\"FONT-STYLE: italic\">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> <span style=\"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style=\"FONT-WEIGHT: bold\">2.</span> <span style=\"FONT-STYLE: italic\">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align=\"center\"> <div> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <img _fl=\"\" align=\"middle\" src=\"http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg\" style=\"MARGIN: 5px\" width=\"450\" /></div><div align=\"center\"> &nbsp;</div><div align=\"center\"> <div align=\"center\"> <table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"90%\"> <tbody> <tr> <td> <div> <span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div> <div> <span style=\"FONT-WEIGHT: bold\"><span style=\"FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma\">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style=\"FONT-WEIGHT: bold\">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', '', '', NULL, 2, '', 0, 1, 1, 1);
INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(11, '', '', '<div style=\"text-align: justify;\">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nSản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div>\r\n\r\n<p style=\"text-align: justify;\">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p>\r\n\r\n<p style=\"text-align: justify;\">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p>\r\n\r\n<p style=\"text-align: justify;\">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/\" target=\"_blank\">tại đây</a>.</p>\r\n\r\n<p style=\"text-align: justify;\">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style=\"text-align: justify;\">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style=\"text-align: justify;\">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nThời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href=\"http://vinades.vn/\" target=\"_blank\">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', '', 'mic.gov.vn', NULL, 2, '', 0, 1, 1, 1),
(12, '', '', '<div style=\"text-align: justify;\">Trong năm 2016, chúng tôi xác định là đơn vị sát cánh cùng các đơn vị giáo dục- là đơn vị xây dựng nhiều website cho ngành giáo dục nhất trên cả nước.<br  />Với phần mềm mã nguồn mở NukeViet hiện có nhiều lợi thế:<br  />+ Được Bộ giáo dục khuyến khích sử dụng.<br  />+ Được bộ thông tin truyền thông chỉ định sử dụng trong khối cơ quan nhà nước.<br  />+Được cục công nghệ thông tin ghi rõ tên sản phẩm NukeViet nên dùng theo hướng dẫn thực hiện CNTT 2015-2016.<br  />Chúng tôi cần các bạn góp phần xây dựng nền giáo dục nước nhà ngày càng phát triển.</div><div>&nbsp;</div><table align=\"left\" border=\"1\" cellpadding=\"20\" cellspacing=\"0\" class=\"table table-striped table-bordered table-hover\" style=\"width:100%;\" width=\"653\">	<tbody>		<tr>			<td style=\"width: 27.66%;\"><strong>Vị trí tuyển dụng:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên kinh doanh</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Chức vụ:</strong></td>			<td style=\"width: 72.34%;\">Nhân viên</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Ngành nghề:</strong></td>			<td style=\"width: 72.34%;\"><strong>Sản phẩm:</strong><br  />			Cổng thông tin, website cho các phòng, sở giáo dục và đào tạo các trường học.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức làm việc:</strong></td>			<td style=\"width: 72.34%;\">Toàn thời gian cố định</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa điểm làm việc:</strong></td>			<td style=\"width: 72.34%;\">Văn phòng công ty (Được đi công tác theo hợp đồng đã ký)</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mức lương:</strong></td>			<td style=\"width: 72.34%;\">&nbsp;Lương cố định + Thưởng vượt doanh số + thưởng theo từng hợp đồng (từ 2-7%).</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Mô tả công việc:</strong></td>			<td style=\"width: 72.34%;\">Chúng tôi có khách hàng mục tiêu và danh sách khách hàng, công việc đòi hỏi ứng viên sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc và có laptop để phục vụ công việc.<br  />			- Sales Online, quảng bá ký kết, liên kết, với các đối tác qua INTERNET. Xây dưng mối quan hệ phát triển bền vững với các đối tác.<br  />			- Gọi điện, giới thiệu dịch vụ, sản phẩm của công ty đến đối tác.<br  />			- Xử lý các cuộc gọi của khách hàng liên quan đến, sản phẩm, dịch vụ công ty.<br  />			- Đàm phán, thương thuyết, ký kết hợp đồng với khách hàng đang có nhu cầu thiết kế website , SEO website , PR thương hiệu trên Internet&nbsp;<br  />			- Duy trì và chăm sóc mối quan hệ lâu dài với khách hàng, mở rộng khách hàng tiềm năng nhằm thúc đẩy doanh số bán hàng<br  />			- Hỗ trợ khách hàng khi được yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số lượng cần tuyển:</strong></td>			<td style=\"width: 72.34%;\">05</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Quyền lợi được hưởng:</strong></td>			<td style=\"width: 72.34%;\">- Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.<br  />			- Lương cứng: 3.000.000 VNĐ+ hoa hồng dự án (2-7%/năm/hợp đồng). Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.<br  />			- Bậc lương xét trên năng lực bán hàng.<br  />			- Thưởng theo dự án, các ngày lễ tết.<br  />			- Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.<br  />			- Cơ hội làm việc và gắn bó lâu dài trong công ty, được thưởng cổ phần nếu doanh thu tốt.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Số năm kinh nghiệm:</strong></td>			<td style=\"width: 72.34%;\">Trên 6 tháng</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu bằng cấp:</strong></td>			<td style=\"width: 72.34%;\">Cao đẳng, Đại học</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu giới tính:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu độ tuổi:</strong></td>			<td style=\"width: 72.34%;\">Không yêu cầu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Yêu cầu khác:</strong></td>			<td style=\"width: 72.34%;\">- Yêu thích và đam mê Internet Marketing, thích online, thương mại điện tử<br  />			- Giọng nói dễ nghe, không nói ngọng.<br  />			- Có khả năng giao tiếp qua điện thoại.<br  />			- Ngoại hình ưa nhìn là một lợi thế<br  />			- Có tính cẩn thận trong công việc, luôn cố gắng học hỏi.<br  />			- Kỹ năng sales online tốt.<br  />			-Trung thực, năng động, nhiệt tình,siêng năng, nhiệt huyết trong công việc.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hồ sơ bao gồm:</strong></td>			<td style=\"width: 72.34%;\"><strong>* Yêu cầu Hồ sơ:</strong><br  />			<strong>Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư <a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a><br  />			<br  />			<strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  />			<strong>+ Đơn xin việc:</strong>&nbsp;Theo hướng dẫn bên dưới.<br  />			<strong>+ Thông tin ứng viên:</strong>&nbsp;Theo mẫu của VINADES.,JSC <strong><em>(download tại đây:&nbsp;<a href=\"http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-kinh-doanh/\">Mẫu lý lịch ứng viên</a>)</em></strong><br  />			<strong>* Hồ sơ xin việc (Bản in thông thường) bao gồm</strong>:<br  />			- Giấy khám sức khoẻ của cơ quan y tế.<br  />			- Bản sao hộ khẩu (có công chứng)<br  />			- Bản sao giấy khai sinh (có công chứng)<br  />			- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn -bằng chứng chỉ (có công chứng)<br  />			- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.<br  />			- Thư giới thiệu (nếu có)<br  />			- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).<br  />			<br  />			<strong>*Hướng dẫn</strong>:<br  />			- Với bản in của hồ sơ ứng tuyển, ứng viên sẽ phải nộp trước cho Ban tuyển dụng hoặc muộn nhất là mang theo khi có lịch phỏng vấn. Bản in sẽ không được trả lại ngay cả khi ứng viên không đạt yêu cầu.<br  />			- Nếu không thể bố trí thời gian phỏng vấn như sắp xếp của -Ban tuyển dụng, thí sinh cần thông báo ngay để được đổi lịch.<br  />			- Nếu có bất cứ thắc mắc gì bạn có thể liên hệ với Ms. Thu qua email: tuyendung@vinades.vn. Có thể gọi điện theo số điện thoại: 01255723353</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hạn nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Không hạn chế cho tới khi tuyển đủ.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Hình thức nộp hồ sơ:</strong></td>			<td style=\"width: 72.34%;\">Qua Email</td>		</tr>		<tr>			<td colspan=\"2\" style=\"width:100.0%;\">			<h3>THÔNG TIN LIÊN HỆ</h3>			</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Điện thoại liên hệ:</strong></td>			<td style=\"width: 72.34%;\">01255723353- Ms. Thu</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Địa chỉ liên hệ:</strong></td>			<td style=\"width: 72.34%;\">Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</td>		</tr>		<tr>			<td style=\"width: 27.66%;\"><strong>Email liên hệ:</strong></td><td style=\"width: 72.34%;\">tuyendung@vinades.vn</td></tr></tbody></table>', '', '', NULL, 2, '', 0, 1, 1, 1),
(14, '', '', '<p style=\"text-align: justify;\">Nếu bạn yêu thích công nghệ, thích kinh doanh hoặc lập trình web và mong muốn trải nghiệm, học hỏi, thậm chí là đi làm ngay từ khi còn ngồi trên ghế nhà trường, hãy tham gia chương trình thực tập sinh tại công ty VINADES.</p><p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;. Là công ty được thành lập từ cộng đồng phần mềm nguồn mở, hàng năm công ty dành những vị trí đặc biệt cho các bạn sinh viên được học tập, trải nghiệm, làm việc tại công ty.<br  />&nbsp;</p><h2 style=\"text-align: justify;\"><b>C</b><b>ác vị trí thực tập</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của thực tập sinh</b></h2><ul>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Có cơ hội tìm hiểu, phát triển định hướng của bản thân.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội được học việc để trở thành nhân viên chính thức nếu có kết quả thực tập tốt.</li>	<li style=\"text-align: justify;\">Thực tập không hưởng lương nhưng có thể được trả thù lao cho một số công việc được giao theo đơn hàng.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng và điều kiện ứng tuyển</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>).</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;.</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-24-85872007 - Fax: +84-24-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(15, '', '', '<p style=\"text-align: justify;\">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href=\"http://vinades.vn/vi/about/history/\" target=\"_blank\">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;.</p><p style=\"text-align: justify;\">Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.</p><h2 style=\"text-align: justify;\"><b>Các vị trí nhận học việc</b></h2><ul>	<li style=\"text-align: justify;\"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style=\"text-align: justify;\"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style=\"text-align: justify;\"><b>Quyền lợi của học viên</b></h2><ul>	<li style=\"text-align: justify;\">Được hưởng trợ cấp ăn trưa.</li>	<li style=\"text-align: justify;\">Được trợ cấp vé gửi xe.</li>	<li style=\"text-align: justify;\">Được hưởng lương khoán theo từng dự án (nếu có).</li>	<li style=\"text-align: justify;\">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có).</li>	<li style=\"text-align: justify;\">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style=\"text-align: justify;\">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style=\"text-align: justify;\">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style=\"text-align: justify;\">Cơ&nbsp;hội ưu tiên (không cần qua thử việc) trở thành nhân viên chính thức nếu có kết quả học việc tốt.</li></ul><h2 style=\"text-align: justify;\"><b>Thời gian làm việc</b></h2><ul>	<li style=\"text-align: justify;\">Toàn thời gian cố định hoặc làm online.</li>	<li style=\"text-align: justify;\">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style=\"text-align: justify;\">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style=\"text-align: justify;\"><b>Đối tượng</b></h2><p style=\"text-align: justify;\">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style=\"text-align: justify;\">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style=\"text-align: justify;\">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style=\"text-align: justify;\">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style=\"text-align: justify;\">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href=\"http://forum.nukeviet.vn/\">forum.nukeviet.vn</a>)</p><h2 style=\"text-align: justify;\"><b>Điều kiện</b></h2><p style=\"text-align: justify;\">Có máy tính xách tay để làm việc.</p><p style=\"text-align: justify;\">Ứng viên sẽ được ký hợp đồng học việc (có thời hạn cụ thể). Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</p><p style=\"text-align: justify;\">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</p><p style=\"text-align: justify;\">Thực hiện theo các quy định khác của công ty...</p><h2 style=\"text-align: justify;\"><b>Cách thức ứng tuyển</b></h2><p style=\"text-align: justify;\">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href=\"mailto:tuyendung@vinades.vn\">tuyendung@vinades.vn</a>;</p><p style=\"text-align: justify;\">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</p><p style=\"text-align: justify;\">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</p><p style=\"text-align: justify;\">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style=\"text-align: justify;\">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style=\"text-align: justify;\">Bản sao giấy khai sinh (có công chứng).</li>	<li style=\"text-align: justify;\">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style=\"text-align: justify;\">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style=\"text-align: justify;\">Chứng minh thư (photo không cần công chứng).</li>	<li style=\"text-align: justify;\">Thư giới thiệu (nếu có)</li>	<li style=\"text-align: justify;\">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p style=\"text-align: justify;\"><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href=\"http://vinades.vn/vi/news/Tuyen-dung/\" target=\"_blank\">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style=\"text-align: justify;\"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-24-85872007 - Fax: +84-24-35500914<br  />- Email:&nbsp;<a href=\"mailto:contact@vinades.vn\">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href=\"http://www.vinades.vn/\">http://www.vinades.vn</a></p></blockquote>', '', '', NULL, 2, '', 0, 1, 1, 1),
(16, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href=\"http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage\" target=\"_blank\">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href=\"http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/\" target=\"_blank\">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href=\"http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/\" target=\"_blank\">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', '', NULL, 2, '', 0, 1, 1, 1),
(17, '', '', '<div class=\"details-content clearfix\" id=\"bodytext\"><span style=\"font-size:16px;\"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style=\"font-size:16px;\"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href=\"http://edu.nukeviet.vn/lienminh-dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href=\"http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/\" target=\"_blank\">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href=\"http://edu.nukeviet.vn/\" target=\"_blank\">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style=\"font-size:14px;\"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 024-85872007, <strong>Fax</strong>: 024-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style=\"color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;\">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href=\"http://edu.nukeviet.vn/dangky.html\" target=\"_blank\">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style=\"font-size:16px;\"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href=\"http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/\" target=\"_blank\">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', '', NULL, 2, '', 0, 1, 1, 1),
(18, '', '', '<p dir=\"ltr\" style=\"text-align: justify;\">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style=\"line-height: 1.6;\"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style=\"line-height: 1.6;\">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href=\"http://www.php-fig.org/psr/\">http://www.php-fig.org/psr/</a></p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đổi đường dẫn module</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\" style=\"text-align: justify;\">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style=\"line-height: 1.6;\">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify; margin-left: 40px;\"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style=\"line-height: 1.6;\">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Các thay đổi của module:</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module menu:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module about:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm RSS</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Bổ sung các trạng thái bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\" style=\"text-align: justify;\">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir=\"ltr\" style=\"text-align: justify;\"><strong>Quản lý Bình luận</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\" style=\"text-align: justify;\">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir=\"ltr\" style=\"text-align: justify;\">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', '', NULL, 2, '', 0, 1, 1, 1),
(19, '', '', '<strong>Hệ thống:</strong><br  />- Sửa code theo khuyến nghị của codacy: https://www.codacy.com/app/nukeviet/nukeviet/dashboard<br  />- Cải thiện an ninh hệ thống theo đánh giá của các phần mềm bảo mật OWASP ZAP 2.6<br  />- Cải tiến chức năng Rewrite<br  />- Thêm tính năng bật tắt sitemap cho các module<br  />- Thêm link hướng dẫn sử dụng website dẫn tới từng chức năng tại https://wiki.nukeviet.vn/<br  />- Cập nhật trình soạn thảo&nbsp; CKEditor 4.7.1 để hỗ trợ việc copy nội dung từ Word, Excel, Hỗ trợ việc kéo thả ảnh, file từ máy tính vào trình soạn thảo tốt hơn: http://ckeditor.com/blog/CKEditor-4.7-released<br  />- Tích hợp thêm <a href=\\\"https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-1-se-ho-tro-redis-de-cache-435.html\\\">Redis để cache</a> cho hệ thống<br  /><br  /><strong>Module Tài khoản:</strong><br  />- Tùy biến các trường hệ thống của module users giúp quản trị có thể cho ẩn/hiện khi đăng ký và đổi tên các trường này.<br  />- Thêm chức năng&nbsp; xác thực hai bước cho từng nhóm thành viên, Cấu hình yêu cầu xác thực hai bước cho từng nhóm thành viên.<br  />- Tích hợp reCAPTCHA<br  /><br  /><strong>Module Tin tức:</strong><br  />- Thêm cấu hình có bật tính năng copy bài viết, để dùng module này đăng cái bài viết có cạc trình bày tương tự nhau.<br  />- Cải thiện tính năng cho bài viết Facebook Instant Articles<br  />- Cảnh báo tránh cùng&nbsp; một lúc nhiều người sửa bài viết.<br  /><br  /><strong>Module banners</strong><br  />- Bỏ phần quản lý khách hàng tại quảng cáo, chuyển sang dùng tài khoản chung của site<br  />- Phần cấu hình khối quảng cáo được viết lại để cấu hình nhóm&nbsp; thành viên được đăng quảng cáo ngoài site, sau đó quản trị duyệt lại quảng cáo để hiển thị ngoài site.<br  />- Thêm cấu hình về thời gian chung áp dụng cho quảng cáo theo khối.<br  />- Sửa lại link quản cáo để tránh các click ảo.<br  />- Sửa hiển thị quản lý quảng cáo để tiện quản lý hơn.<br  /><br  />Và nhiều cập nhật sửa lỗi khác, xem chi tiết tại: https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt<br  />', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-2-co-gi-moi-505.html', NULL, 2, '', 0, 1, 1, 1),
(20, '', '', '<strong>Hệ thống:</strong><br  />- Thay đổi phần quản lý block để dễ dùng hơn khi module có quá nhiều chức năng.<br  />- Thêm các tham số cấu hình&nbsp; SSL cho&nbsp; SMTP<br  />- Module Upload: Thêm cấu hình có thể chia nhỏ các file khi upload để có thể upload<br  />- Plugin:Thêm vị trí chạy sau khi thực hiện module, cải tiến mỗi Plugin sẽ chạy được ở các vị trí nhất định theo người lập trình quy định.<br  />- Tích hợp thêm thư viện PDF.js<br  />- Thêm tính năng xuất dữ liệu mẫu để khi tiết hành cài đặt có thể dựng luôn site hoàn chỉnh tường tự như cài đặt NukeViet eGovernment<br  /><br  /><strong>Module comment: </strong><br  />- Cho phép cấu hình có sử dụng trình soạn thảo ở phần bình luận hay không.<br  />- Cho phép cấu hình có sử dụng file đính kèm ở phần bình luận hay không.<br  />- Module news: Allow deactive category, allow search for locked posts, Allows attaching files to posts<br  />- Config module display on admin index for authors<br  />&nbsp;<br  /><strong>Module Tài khoản:</strong><br  />- Module users: Allowed to delete and change status multiple account, fix block login, update Openid icon, fix sort groups, fix delete group<br  />- Người điều hành chung của site có thể cấu hình 1 số thông số. (Lúc trước chỉ quản trị tối cao mới cấu hình được)<br  />- Với mỗi tài khoản quản trị, có thể chọn module mặc định sau khi đăng nhập quản trị.<br  /><br  /><strong>Module Tin tức:</strong><br  />-&nbsp; Thay đổi chức năng quản lý chủ đề có thể: Hiển thị trên trang chủ, không hiển thị trên trang chủ hoặc Khóa chủ đề.<br  />-&nbsp; Cho phép đính kèm file vào các bài viết (Không cần thông qua trình soạn thảo)<br  />- Thêm tính năng sắp xếp các bài viết.<br  />- Cho phép cấu hình layout khi xem chi tiết bài viết (Tưong tự module page đã có trước)<br  /><br  /><strong>Module page</strong><br  />-&nbsp; Thêm cấu hình alias lower khi thêm bài viết mới.<br  /><br  />Và nhiều cập nhật sửa lỗi khác, xem chi tiết tại: <a href=\"https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt\">https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt</a>', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-3-co-gi-moi-540.html', NULL, 2, '', 0, 1, 1, 1),
(21, '', '', 'abc', '', '', '', 1, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 0, 2, 0, 0, 0, 0, '', 0),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 12, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 0, 14, 0, 0, 0, 0, '', 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 11, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 5, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 6, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)? Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0, 0, 0, '', 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 2, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 0, 1, 0, 0, 0, 0, '', 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 3, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 4, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 7, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 8, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 9, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0, 0, 0, '', 0),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 10, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 0, 2, 0, 0, 0, 0, '', 0),
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 13, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 3, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, 'VINADES', 0, 1501837620, 1501837620, 1, 14, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, 'VINADES', 0, 1510215907, 1510215907, 1, 15, 1510215907, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(21, 2, '2', 0, 1, '', 0, 1633702108, 1633702108, 1, 16, 1633701480, 0, 2, 'Trường Đại học Mở Hà Nội hỗ trợ tỉnh Bắc Giang chống dịch Covid-19', 'truong-dai-hoc-mo-ha-noi-ho-tro-tinh-bac-giang-chong-dich-covid-19', 'dsad', '277.jpg', 'abc', 1, 1, '4', 1, 0, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 13, 'nukeviet', '', '', 'nukeviet'),
(10, 8, 'vinades', '', '', 'vinades'),
(11, 3, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 3, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 3, 'php', '', '', 'php'),
(14, 2, 'mysql', '', '', 'mysql'),
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 9, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 2, 'nukeviet4', '', '', 'nukeviet4'),
(18, 1, 'mail', '', '', 'mail'),
(19, 1, 'fpt', '', '', 'fpt'),
(20, 1, 'smtp', '', '', 'smtp'),
(21, 1, 'bootstrap', '', '', 'bootstrap'),
(22, 1, 'block', '', '', 'block'),
(23, 1, 'modules', '', '', 'modules'),
(24, 2, 'banner', '', '', 'banner'),
(25, 1, 'liên-kết', '', '', 'liên kết'),
(26, 2, 'hosting', '', '', 'hosting'),
(27, 1, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 1, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 2, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 4, 'giáo-dục', '', '', 'giáo dục'),
(33, 1, 'edu-gate', '', '', 'edu gate'),
(34, 2, 'lập-trình', '', '', 'lập trình'),
(35, 1, 'logo', '', '', 'logo'),
(36, 1, 'code', '', '', 'code'),
(37, 1, 'thực-tập', '', '', 'thực tập'),
(38, 1, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 1, 'nhân-viên', '', '', 'nhân viên'),
(40, 1, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 1, 'module', '', '', 'module'),
(42, 1, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

INSERT INTO `nv4_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 7, 'thương mại điện'),
(1, 9, 'nukeviet'),
(7, 10, 'vinades'),
(7, 9, 'nukeviet'),
(7, 11, 'lập trình viên'),
(7, 12, 'chuyên viên đồ họa'),
(7, 13, 'php'),
(7, 14, 'mysql'),
(10, 15, 'Nhân tài đất Việt 2011'),
(10, 16, 'mã nguồn mở'),
(10, 9, 'nukeviet'),
(18, 17, 'nukeviet4'),
(18, 9, 'nukeviet'),
(18, 10, 'vinades'),
(18, 13, 'php'),
(18, 14, 'mysql'),
(18, 18, 'mail'),
(18, 19, 'fpt'),
(18, 20, 'smtp'),
(18, 21, 'bootstrap'),
(18, 22, 'block'),
(18, 23, 'modules'),
(18, 16, 'mã nguồn mở'),
(6, 16, 'mã nguồn mở'),
(6, 9, 'nukeviet'),
(6, 17, 'nukeviet4'),
(6, 10, 'vinades'),
(6, 24, 'banner'),
(6, 25, 'liên kết'),
(6, 26, 'hosting'),
(6, 27, 'hỗ trợ'),
(6, 28, 'hợp tác'),
(17, 9, 'nukeviet'),
(17, 32, 'giáo dục'),
(17, 33, 'edu gate'),
(15, 16, 'mã nguồn mở'),
(15, 10, 'vinades'),
(15, 9, 'nukeviet'),
(15, 11, 'lập trình viên'),
(15, 12, 'chuyên viên đồ họa'),
(16, 9, 'nukeviet'),
(16, 16, 'mã nguồn mở'),
(16, 32, 'giáo dục'),
(8, 10, 'vinades'),
(8, 34, 'lập trình'),
(8, 35, 'logo'),
(8, 24, 'banner'),
(8, 30, 'website'),
(8, 36, 'code'),
(8, 13, 'php'),
(9, 16, 'mã nguồn mở'),
(9, 10, 'vinades'),
(9, 34, 'lập trình'),
(9, 9, 'nukeviet'),
(14, 37, 'thực tập'),
(14, 10, 'vinades'),
(14, 12, 'chuyên viên đồ họa'),
(14, 11, 'lập trình viên'),
(14, 9, 'nukeviet'),
(14, 16, 'mã nguồn mở'),
(12, 38, 'kinh doanh'),
(12, 9, 'nukeviet'),
(12, 32, 'giáo dục'),
(12, 39, 'nhân viên'),
(11, 16, 'mã nguồn mở'),
(11, 9, 'nukeviet'),
(11, 40, 'Bộ GD&ĐT'),
(11, 32, 'giáo dục'),
(1, 41, 'module'),
(1, 16, 'mã nguồn mở'),
(1, 42, 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tmp`
--

CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms`
--

CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3 style=\"text-align: justify;\">1.1. Thu thập tự động:</h3>  <div style=\"text-align: justify;\">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style=\"text-align: justify;\">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style=\"text-align: justify;\">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style=\"text-align: justify;\">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style=\"text-align: justify;\">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style=\"text-align: justify;\">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style=\"text-align: justify;\">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style=\"text-align: justify;\">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style=\"text-align: justify;\">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p style=\"text-align: justify;\">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style=\"text-align: justify;\">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style=\"text-align: justify;\">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style=\"text-align: justify;\">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style=\"text-align: justify;\">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style=\"text-align: justify;\">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style=\"text-align: justify;\">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style=\"text-align: justify;\">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style=\"text-align: justify;\">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style=\"text-align: justify;\">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style=\"text-align: justify;\">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1632575222, 1632575222, 1, 2, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style=\"text-align: justify;\">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style=\"text-align: justify;\"><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style=\"text-align: justify;\">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style=\"text-align: justify;\">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p style=\"text-align: justify;\">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p style=\"text-align: justify;\">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p style=\"text-align: justify;\">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p style=\"text-align: justify;\">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style=\"text-align: justify;\">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2 style=\"text-align: justify;\"><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style=\"text-align: justify;\">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1632575222, 1632575222, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms_config`
--

CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_tkb_config`
--

CREATE TABLE `nv4_vi_tkb_config` (
  `cfg_name` varchar(150) NOT NULL,
  `cfg_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv4_vi_tkb_config`
--

INSERT INTO `nv4_vi_tkb_config` (`cfg_name`, `cfg_value`) VALUES
('day_apply', '27/09/2021'),
('title_tkb_lop', 'THỜI KHÓA BIỂU LỚP'),
('title_tkb_gv', 'THỜI KHÓA BIỂU GIÁO VIÊN');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_tkb_giaovien`
--

CREATE TABLE `nv4_vi_tkb_giaovien` (
  `giaovien` varchar(150) NOT NULL,
  `tiet` mediumint(2) NOT NULL,
  `buoi` mediumint(2) NOT NULL,
  `thu2` varchar(150) DEFAULT NULL,
  `thu3` varchar(150) DEFAULT NULL,
  `thu4` varchar(150) DEFAULT NULL,
  `thu5` varchar(150) DEFAULT NULL,
  `thu6` varchar(150) DEFAULT NULL,
  `thu7` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_tkb_lop`
--

CREATE TABLE `nv4_vi_tkb_lop` (
  `lop` varchar(10) NOT NULL,
  `tiet` mediumint(2) NOT NULL,
  `buoi` mediumint(2) NOT NULL,
  `thu2` varchar(150) DEFAULT NULL,
  `thu3` varchar(150) DEFAULT NULL,
  `thu4` varchar(150) DEFAULT NULL,
  `thu5` varchar(150) DEFAULT NULL,
  `thu6` varchar(150) DEFAULT NULL,
  `thu7` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting`
--

CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `active_captcha` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_rows`
--

CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 2),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_edit`
--
ALTER TABLE `nv4_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_admins`
--
ALTER TABLE `nv4_vi_laws_admins`
  ADD UNIQUE KEY `userid` (`userid`,`subjectid`);

--
-- Indexes for table `nv4_vi_laws_area`
--
ALTER TABLE `nv4_vi_laws_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `nv4_vi_laws_cat`
--
ALTER TABLE `nv4_vi_laws_cat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `nv4_vi_laws_config`
--
ALTER TABLE `nv4_vi_laws_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_laws_examine`
--
ALTER TABLE `nv4_vi_laws_examine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_row`
--
ALTER TABLE `nv4_vi_laws_row`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_row_area`
--
ALTER TABLE `nv4_vi_laws_row_area`
  ADD UNIQUE KEY `alias` (`row_id`,`area_id`);

--
-- Indexes for table `nv4_vi_laws_set_replace`
--
ALTER TABLE `nv4_vi_laws_set_replace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_signer`
--
ALTER TABLE `nv4_vi_laws_signer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_laws_subject`
--
ALTER TABLE `nv4_vi_laws_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_music_cats`
--
ALTER TABLE `nv4_vi_music_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_music_game_max_results`
--
ALTER TABLE `nv4_vi_music_game_max_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_music_singers`
--
ALTER TABLE `nv4_vi_music_singers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_music_songs`
--
ALTER TABLE `nv4_vi_music_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_tmp`
--
ALTER TABLE `nv4_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_tkb_config`
--
ALTER TABLE `nv4_vi_tkb_config`
  ADD PRIMARY KEY (`cfg_name`);

--
-- Indexes for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_area`
--
ALTER TABLE `nv4_vi_laws_area`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_cat`
--
ALTER TABLE `nv4_vi_laws_cat`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_examine`
--
ALTER TABLE `nv4_vi_laws_examine`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_row`
--
ALTER TABLE `nv4_vi_laws_row`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_set_replace`
--
ALTER TABLE `nv4_vi_laws_set_replace`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_signer`
--
ALTER TABLE `nv4_vi_laws_signer`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nv4_vi_laws_subject`
--
ALTER TABLE `nv4_vi_laws_subject`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `nv4_vi_music_cats`
--
ALTER TABLE `nv4_vi_music_cats`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_music_game_max_results`
--
ALTER TABLE `nv4_vi_music_game_max_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_vi_music_singers`
--
ALTER TABLE `nv4_vi_music_singers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_music_songs`
--
ALTER TABLE `nv4_vi_music_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
