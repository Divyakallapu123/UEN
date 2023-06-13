-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 09:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uen`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(8, 'action_scheduler/migration_hook', 'complete', '2023-06-08 06:48:48', '2023-06-08 06:48:48', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1686206928;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1686206928;}', 1, 1, '2023-06-08 06:48:49', '2023-06-08 06:48:49', 0, NULL),
(9, 'ig_es_process_workflow_queue', 'complete', '2023-06-09 11:56:58', '2023-06-09 11:56:58', '[{\"queue_id\":1}]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1686311818;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1686311818;}', 2, 1, '2023-06-09 11:57:01', '2023-06-09 11:57:01', 0, NULL),
(10, 'ig_es_process_workflow_queue', 'complete', '2023-06-09 12:53:21', '2023-06-09 12:53:21', '[{\"queue_id\":2}]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1686315201;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1686315201;}', 2, 1, '2023-06-09 12:53:24', '2023-06-09 12:53:24', 0, NULL),
(11, 'ig_es_process_workflow_queue', 'complete', '2023-06-09 13:02:39', '2023-06-09 13:02:39', '[{\"queue_id\":3}]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1686315759;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1686315759;}', 2, 1, '2023-06-09 13:02:42', '2023-06-09 13:02:42', 0, NULL),
(12, 'ig_es_process_workflow_queue', 'complete', '2023-06-09 13:03:57', '2023-06-09 13:03:57', '[{\"queue_id\":4}]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1686315837;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1686315837;}', 2, 1, '2023-06-09 13:04:00', '2023-06-09 13:04:00', 0, NULL),
(13, 'ig_es_process_workflow_queue', 'complete', '2023-06-09 13:13:39', '2023-06-09 13:13:39', '[{\"queue_id\":5}]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1686316419;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1686316419;}', 2, 1, '2023-06-09 13:13:42', '2023-06-09 13:13:42', 0, NULL),
(14, 'ig_es_process_workflow_queue', 'complete', '2023-06-12 13:30:44', '2023-06-12 13:30:44', '[{\"queue_id\":6}]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1686576644;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1686576644;}', 2, 1, '2023-06-12 13:30:47', '2023-06-12 13:30:47', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'email-subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 8, 'action created', '2023-06-08 06:47:48', '2023-06-08 06:47:48'),
(2, 8, 'action started via WP Cron', '2023-06-08 06:48:49', '2023-06-08 06:48:49'),
(3, 8, 'action complete via WP Cron', '2023-06-08 06:48:49', '2023-06-08 06:48:49'),
(4, 9, 'action created', '2023-06-09 11:56:58', '2023-06-09 11:56:58'),
(5, 9, 'action started via WP Cron', '2023-06-09 11:56:58', '2023-06-09 11:56:58'),
(6, 9, 'action complete via WP Cron', '2023-06-09 11:57:01', '2023-06-09 11:57:01'),
(7, 10, 'action created', '2023-06-09 12:53:21', '2023-06-09 12:53:21'),
(8, 10, 'action started via WP Cron', '2023-06-09 12:53:22', '2023-06-09 12:53:22'),
(9, 10, 'action complete via WP Cron', '2023-06-09 12:53:24', '2023-06-09 12:53:24'),
(10, 11, 'action created', '2023-06-09 13:02:39', '2023-06-09 13:02:39'),
(11, 11, 'action started via WP Cron', '2023-06-09 13:02:40', '2023-06-09 13:02:40'),
(12, 11, 'action complete via WP Cron', '2023-06-09 13:02:42', '2023-06-09 13:02:42'),
(13, 12, 'action created', '2023-06-09 13:03:57', '2023-06-09 13:03:57'),
(14, 12, 'action started via WP Cron', '2023-06-09 13:03:58', '2023-06-09 13:03:58'),
(15, 12, 'action complete via WP Cron', '2023-06-09 13:04:00', '2023-06-09 13:04:00'),
(16, 13, 'action created', '2023-06-09 13:13:39', '2023-06-09 13:13:39'),
(17, 13, 'action started via WP Cron', '2023-06-09 13:13:40', '2023-06-09 13:13:40'),
(18, 13, 'action complete via WP Cron', '2023-06-09 13:13:42', '2023-06-09 13:13:42'),
(19, 14, 'action created', '2023-06-12 13:30:44', '2023-06-12 13:30:44'),
(20, 14, 'action started via WP Cron', '2023-06-12 13:30:45', '2023-06-12 13:30:45'),
(21, 14, 'action complete via WP Cron', '2023-06-12 13:30:47', '2023-06-12 13:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-08 06:05:46', '2023-06-08 06:05:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_actions`
--

CREATE TABLE `wp_ig_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `link_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `list_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `email_client` varchar(50) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ig_actions`
--

INSERT INTO `wp_ig_actions` (`id`, `contact_id`, `message_id`, `campaign_id`, `type`, `count`, `link_id`, `list_id`, `ip`, `country`, `device`, `browser`, `email_client`, `os`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, 1, 1, 0, 1, '', '', '', '', '', '', 1686311818, 1686311818),
(2, 5, NULL, NULL, 1, 1, 0, 1, '', '', '', '', '', '', 1686315201, 1686315201),
(3, 5, NULL, NULL, 1, 1, 0, 1, '', '', '', '', '', '', 1686315759, 1686315759),
(4, 6, NULL, NULL, 1, 1, 0, 1, '', '', '', '', '', '', 1686315837, 1686315837),
(5, 5, NULL, NULL, 1, 1, 0, 1, '', '', '', '', '', '', 1686316419, 1686316419),
(6, 5, NULL, NULL, 1, 1, 0, 1, '', '', '', '', '', '', 1686576644, 1686576644);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_blocked_emails`
--

CREATE TABLE `wp_ig_blocked_emails` (
  `id` int(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_campaigns`
--

CREATE TABLE `wp_ig_campaigns` (
  `id` int(10) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_type` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `from_email` varchar(150) DEFAULT NULL,
  `reply_to_name` varchar(250) DEFAULT NULL,
  `reply_to_email` varchar(150) DEFAULT NULL,
  `categories` text DEFAULT NULL,
  `list_ids` text NOT NULL,
  `base_template_id` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `meta` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ig_campaigns`
--

INSERT INTO `wp_ig_campaigns` (`id`, `slug`, `name`, `type`, `parent_id`, `parent_type`, `subject`, `body`, `from_name`, `from_email`, `reply_to_name`, `reply_to_email`, `categories`, `list_ids`, `base_template_id`, `status`, `meta`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'send-confirmation-email', 'Send confirmation email', 'workflow', 2, 'workflow', NULL, '', 'UEN', 'tech.db@dollarbirdinc.com', 'UEN', 'tech.db@dollarbirdinc.com', '', '', 0, 1, NULL, '2023-06-09 11:38:57', '2023-06-09 11:38:57', NULL),
(4, 'notify-admin-when-someone-subscribes', 'Notify admin when someone subscribes', 'workflow_email', 3, 'workflow', 'Thanks!', '<p>Hi {{NAME}},</p>\n<p>Just one more step before we share the awesomeness from {{SITENAME}}!</p>\n<p>Please confirm your subscription by clicking on <a href=\'{{SUBSCRIBE-LINK}}\'>this link</a></p>\n<p>Thanks!</p>\n', 'UEN', 'tech.db@dollarbirdinc.com', 'UEN', 'tech.db@dollarbirdinc.com', '', '', 0, 1, 'a:3:{s:20:\"enable_open_tracking\";s:2:\"no\";s:20:\"enable_link_tracking\";s:2:\"no\";s:11:\"attachments\";a:0:{}}', '2023-06-09 11:38:57', '2023-06-09 11:38:57', NULL),
(5, 'notify-admin-when-campaign-is-sent', 'Notify admin when campaign is sent', 'workflow_email', 4, 'workflow', 'One more contact joins our tribe!', '<p>Hi,</p>\n<p>Your friendly Icegram Express notification bot here!</p>\n<p>{{NAME}} ({{EMAIL}}) joined our tribe just now.</p>\n<p>Which list/s? {{LIST}}</p>\n<p>If you know this person, or if they are an influencer, you may want to reach out to them personally!</p>\n<p>Later...</p>\n', 'UEN', 'tech.db@dollarbirdinc.com', 'UEN', 'tech.db@dollarbirdinc.com', '', '', 0, 1, 'a:3:{s:20:\"enable_open_tracking\";s:2:\"no\";s:20:\"enable_link_tracking\";s:2:\"no\";s:11:\"attachments\";a:0:{}}', '2023-06-09 11:38:57', '2023-06-09 11:38:57', NULL),
(6, 'add-to-main-list-when-someone-registers', 'Add to Main list when someone registers', 'workflow_email', 5, 'workflow', 'Campaign Sent!', '<p>Hi Admin,</p>\n<p>Cron URL has been triggered successfully on {{DATE}} for the email \'{{SUBJECT}}\'. And it sent email to {{COUNT}} recipient(s).</p>\n<p>Best,<br />\nUEN</p>\n', 'UEN', 'tech.db@dollarbirdinc.com', 'UEN', 'tech.db@dollarbirdinc.com', '', '', 0, 0, 'a:3:{s:20:\"enable_open_tracking\";s:2:\"no\";s:20:\"enable_link_tracking\";s:2:\"no\";s:11:\"attachments\";a:0:{}}', '2023-06-09 11:38:57', '2023-06-09 11:38:57', NULL),
(7, 'welcome-to-icegram-express', 'Welcome To Icegram Express', 'newsletter', NULL, NULL, 'Welcome To Icegram Express', '<strong style=\"color: #990000\">What can you achieve using Icegram Express?</strong><p>Add subscription forms on website, send HTML newsletters. You can also Import or Export subscribers from any list to Icegram Express.</p> <strong style=\"color: #990000\">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to create emails.</li> </ol> <strong>Thanks & Regards,</strong><br/>Admin<br/>', 'UEN', 'tech.db@dollarbirdinc.com', 'UEN', 'tech.db@dollarbirdinc.com', '', '', 0, 1, 'a:3:{s:20:\"enable_open_tracking\";s:3:\"yes\";s:20:\"enable_link_tracking\";s:2:\"no\";s:15:\"list_conditions\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:10:\"_lists__in\";s:8:\"operator\";s:2:\"is\";s:5:\"value\";s:1:\"2\";}}}}', '2023-06-09 11:38:57', NULL, NULL),
(8, 'new-post-published-posttitle', 'New Post Published - {{POSTTITLE}}', 'post_notification', NULL, NULL, 'New Post Published - {{POSTTITLE}}', 'Hello {{NAME}},\r\n\r\nWe have published a new blog article on our website : {{POSTTITLE}}\r\n{{POSTIMAGE}}\r\n\r\nYou can view it from this link : {{POSTLINK}}\r\n\r\nThanks & Regards,\r\nAdmin\r\n\r\nYou received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'tech.db@dollarbirdinc.com', 'UEN', 'tech.db@dollarbirdinc.com', 'UEN', '##1##', '2', 0, 0, 'a:1:{s:15:\"list_conditions\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:10:\"_lists__in\";s:8:\"operator\";s:2:\"is\";s:5:\"value\";s:1:\"2\";}}}}', '2023-06-09 11:38:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_contactmeta`
--

CREATE TABLE `wp_ig_contactmeta` (
  `meta_id` bigint(20) NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_contacts`
--

CREATE TABLE `wp_ig_contacts` (
  `id` int(10) NOT NULL,
  `wp_user_id` int(10) NOT NULL DEFAULT 0,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `bounce_status` enum('0','1','2') NOT NULL DEFAULT '0',
  `timezone` varchar(255) DEFAULT NULL,
  `form_id` int(10) NOT NULL DEFAULT 0,
  `status` varchar(10) DEFAULT NULL,
  `reference_site` varchar(255) DEFAULT NULL,
  `unsubscribed` tinyint(1) NOT NULL DEFAULT 0,
  `hash` varchar(50) DEFAULT NULL,
  `engagement_score` float DEFAULT NULL,
  `average_opened_at` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `is_disposable` tinyint(1) DEFAULT 0,
  `is_rolebased` tinyint(1) DEFAULT 0,
  `is_webmail` tinyint(1) DEFAULT 0,
  `is_deliverable` tinyint(1) DEFAULT 0,
  `is_sendsafely` tinyint(1) DEFAULT 0,
  `meta` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ig_contacts`
--

INSERT INTO `wp_ig_contacts` (`id`, `wp_user_id`, `first_name`, `last_name`, `email`, `source`, `ip_address`, `country_code`, `bounce_status`, `timezone`, `form_id`, `status`, `reference_site`, `unsubscribed`, `hash`, `engagement_score`, `average_opened_at`, `created_at`, `updated_at`, `is_verified`, `is_disposable`, `is_rolebased`, `is_webmail`, `is_deliverable`, `is_sendsafely`, `meta`) VALUES
(1, 1, 'dollarbird', '', 'tech.db@dollarbirdinc.com', 'admin', '', '', '0', '', 0, 'verified', '', 0, 'sozepl-aqbkpo-whygxc-cpjemv-tczapd', 4, NULL, '2023-06-09 11:38:57', '0000-00-00 00:00:00', 1, 0, 0, 0, 1, 1, ''),
(2, 0, 'tech.db', '', 'tech.db@dollarbirdinc.com', 'admin', '', '', '0', '', 0, 'verified', '', 0, 'uykdge-owyaet-ynbgqu-obhufj-wtcrfs', 4, NULL, '2023-06-09 11:38:57', '0000-00-00 00:00:00', 1, 0, 0, 0, 1, 1, ''),
(3, 0, 'tech.db', '', 'tech.db@dollarbirdinc.com', 'admin', '', '', '0', '', 0, 'verified', '', 0, 'ehwifj-oumhct-cgqadv-vdxmpz-bmouzy', 4, NULL, '2023-06-09 11:38:57', '0000-00-00 00:00:00', 1, 0, 0, 0, 1, 1, ''),
(4, 0, '', '', 'john@gmail.com', 'form', '', '', '0', '', 1, 'verified', '', 0, 'bsphte-txwsmf-jrfnxk-rfekgt-zoklng', 4, NULL, '2023-06-09 11:56:58', NULL, 1, 0, 0, 0, 1, 1, NULL),
(5, 0, '', '', 'danial@gmail.com', 'form', '', '', '0', '', 1, 'verified', '', 0, 'fgmexv-mljeit-oijvlt-zufaxq-mqxdfs', 4, NULL, '2023-06-09 12:53:21', NULL, 1, 0, 0, 0, 1, 1, NULL),
(6, 0, '', '', 'uwqeu@gmail.com', 'form', '', '', '0', '', 1, 'verified', '', 0, 'abcvks-crmtxl-vkgyom-ohkcby-ugfexh', 4, NULL, '2023-06-09 13:03:57', NULL, 1, 0, 0, 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_contacts_ips`
--

CREATE TABLE `wp_ig_contacts_ips` (
  `ip` varchar(45) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_contact_meta`
--

CREATE TABLE `wp_ig_contact_meta` (
  `id` int(10) NOT NULL,
  `contact_id` bigint(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_custom_fields`
--

CREATE TABLE `wp_ig_custom_fields` (
  `id` int(10) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `meta` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_forms`
--

CREATE TABLE `wp_ig_forms` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `styles` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `af_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ig_forms`
--

INSERT INTO `wp_ig_forms` (`id`, `name`, `body`, `settings`, `styles`, `created_at`, `updated_at`, `deleted_at`, `af_id`) VALUES
(1, 'First Form', '<div class=\"es-form-field-container\"><div class=\"gjs-row\"><div class=\"gjs-cell\"></div></div><div class=\"gjs-row\"><div class=\"gjs-cell\"><label for=\"esfpx_email_0fe74ada6116e\" class=\"es-field-label\">Email</label><input type=\"email\" required class=\"es-email\" name=\"esfpx_email\" autocomplete=\"off\" placeholder=\"Enter your email\" id=\"esfpx_email_0fe74ada6116e\"/></div></div><div class=\"gjs-row\"><input type=\"submit\" name=\"submit\" value=\"Subscribe\" required/><div class=\"gjs-cell\"></div></div></div>', 'a:8:{s:11:\"editor_type\";s:13:\"drag-and-drop\";s:10:\"form_style\";s:0:\"\";s:15:\"dnd_editor_data\";s:903:\"[{\"type\":\"form-field-container\",\"classes\":[\"es-form-field-container\"],\"components\":[{\"classes\":[{\"name\":\"gjs-row\",\"private\":1}],\"components\":[{\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}]}]},{\"classes\":[{\"name\":\"gjs-row\",\"private\":1}],\"components\":[{\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}],\"components\":[{\"tagName\":\"label\",\"type\":\"text\",\"classes\":[\"es-field-label\"],\"attributes\":{\"for\":\"esfpx_email_0fe74ada6116e\"},\"components\":[{\"type\":\"textnode\",\"content\":\"Email\"}]},{\"type\":\"email\",\"void\":true,\"classes\":[\"es-email\"],\"attributes\":{\"type\":\"email\",\"required\":true,\"name\":\"esfpx_email\",\"autocomplete\":\"off\",\"placeholder\":\"Enter your email\",\"id\":\"esfpx_email_0fe74ada6116e\"}}]}]},{\"classes\":[{\"name\":\"gjs-row\",\"private\":1}],\"components\":[{\"type\":\"submit\",\"void\":true,\"attributes\":{\"type\":\"submit\",\"name\":\"submit\",\"value\":\"Subscribe\",\"required\":true}},{\"classes\":[{\"name\":\"gjs-cell\",\"private\":1}]}]}]}]\";s:14:\"dnd_editor_css\";s:1234:\"* { box-sizing: border-box; } body {margin: 0;}.es-form-field-container .gjs-row{display:flex;justify-content:flex-start;align-items:stretch;flex-wrap:nowrap;}.es-form-field-container .gjs-cell{flex-grow:1;flex-basis:100%;}.es-form-field-container .gjs-cell[data-highlightable=\"1\"]:empty{border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-left-width:1px;border-top-style:dashed;border-right-style:dashed;border-bottom-style:dashed;border-left-style:dashed;border-top-color:rgb(204, 204, 204);border-right-color:rgb(204, 204, 204);border-bottom-color:rgb(204, 204, 204);border-left-color:rgb(204, 204, 204);border-image-source:initial;border-image-slice:initial;border-image-width:initial;border-image-outset:initial;border-image-repeat:initial;height:30px;}.es-form-field-container .gjs-row .gjs-cell input[type=\"checkbox\"], .es-form-field-container .gjs-row .gjs-cell input[type=\"radio\"]{margin-top:0px;margin-right:5px;margin-bottom:0px;margin-left:0px;width:auto;}.es-form-field-container .gjs-row{margin-bottom:0.6em;}.es-form-field-container label.es-field-label{display:block;}@media (max-width: 320px){.es-form-field-container{padding-top:1rem;padding-right:1rem;padding-bottom:1rem;padding-left:1rem;}}\";s:5:\"lists\";a:1:{i:0;s:1:\"1\";}s:14:\"popup_headline\";s:0:\"\";s:19:\"action_after_submit\";s:20:\"show_success_message\";s:15:\"success_message\";s:0:\"\";}', NULL, '2023-06-09 11:38:57', '2023-06-09 11:48:20', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_links`
--

CREATE TABLE `wp_ig_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(2083) NOT NULL,
  `hash` varchar(20) NOT NULL,
  `i` tinyint(1) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_lists`
--

CREATE TABLE `wp_ig_lists` (
  `id` int(10) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hash` varchar(12) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ig_lists`
--

INSERT INTO `wp_ig_lists` (`id`, `slug`, `name`, `description`, `hash`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'main', 'Main', '', 'ff57cffc2ff4', '2023-06-09 11:38:57', NULL, NULL),
(2, 'test', 'Test', '', '8200f114c1a2', '2023-06-09 11:38:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_lists_contacts`
--

CREATE TABLE `wp_ig_lists_contacts` (
  `id` int(10) NOT NULL,
  `list_id` int(10) NOT NULL,
  `contact_id` int(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `optin_type` tinyint(4) NOT NULL,
  `subscribed_at` datetime DEFAULT NULL,
  `subscribed_ip` varchar(45) DEFAULT NULL,
  `unsubscribed_at` datetime DEFAULT NULL,
  `unsubscribed_ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ig_lists_contacts`
--

INSERT INTO `wp_ig_lists_contacts` (`id`, `list_id`, `contact_id`, `status`, `optin_type`, `subscribed_at`, `subscribed_ip`, `unsubscribed_at`, `unsubscribed_ip`) VALUES
(1, 2, 1, 'subscribed', 1, '2023-06-09 11:38:57', '', NULL, NULL),
(2, 1, 1, 'subscribed', 1, '2023-06-09 11:38:57', '', NULL, NULL),
(3, 2, 2, 'subscribed', 1, '2023-06-09 11:38:57', NULL, NULL, NULL),
(4, 2, 3, 'subscribed', 1, '2023-06-09 11:38:57', NULL, NULL, NULL),
(5, 1, 4, 'unconfirmed', 2, '0000-00-00 00:00:00', '', NULL, NULL),
(8, 1, 6, 'unconfirmed', 2, '0000-00-00 00:00:00', '', NULL, NULL),
(10, 1, 5, 'unconfirmed', 2, '0000-00-00 00:00:00', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_mailing_queue`
--

CREATE TABLE `wp_ig_mailing_queue` (
  `id` int(10) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `campaign_id` int(10) NOT NULL DEFAULT 0,
  `subject` text DEFAULT '',
  `body` longtext DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(10) NOT NULL,
  `start_at` datetime DEFAULT NULL,
  `finish_at` datetime DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_queue`
--

CREATE TABLE `wp_ig_queue` (
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `campaign_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `requeued` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sent_at` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `count` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `error` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ignore_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `options` varchar(191) NOT NULL DEFAULT '',
  `tags` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_sending_queue`
--

CREATE TABLE `wp_ig_sending_queue` (
  `id` int(10) NOT NULL,
  `mailing_queue_id` int(10) NOT NULL DEFAULT 0,
  `mailing_queue_hash` varchar(50) DEFAULT NULL,
  `campaign_id` int(10) NOT NULL DEFAULT 0,
  `contact_id` int(10) NOT NULL DEFAULT 0,
  `contact_hash` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `links` longtext DEFAULT NULL,
  `opened` int(1) DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `opened_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_temp_import`
--

CREATE TABLE `wp_ig_temp_import` (
  `ID` bigint(20) NOT NULL,
  `data` longtext NOT NULL,
  `identifier` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_unsubscribe_feedback`
--

CREATE TABLE `wp_ig_unsubscribe_feedback` (
  `id` int(10) NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `list_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `mailing_queue_id` int(10) UNSIGNED NOT NULL,
  `feedback_slug` varchar(50) NOT NULL,
  `feedback_text` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `meta` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_wc_cart`
--

CREATE TABLE `wp_ig_wc_cart` (
  `id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `guest_id` bigint(20) NOT NULL DEFAULT 0,
  `last_modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `items` longtext NOT NULL DEFAULT '',
  `coupons` longtext NOT NULL DEFAULT '',
  `fees` longtext NOT NULL DEFAULT '',
  `shipping_tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `token` varchar(32) NOT NULL DEFAULT '',
  `currency` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_wc_guests`
--

CREATE TABLE `wp_ig_wc_guests` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `tracking_key` varchar(32) NOT NULL DEFAULT '',
  `created` datetime DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `meta` longtext NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT '',
  `most_recent_order` bigint(20) NOT NULL DEFAULT 0,
  `version` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_workflows`
--

CREATE TABLE `wp_ig_workflows` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `trigger_name` varchar(250) NOT NULL,
  `trigger_options` longtext NOT NULL,
  `rules` longtext NOT NULL,
  `actions` longtext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `priority` int(11) DEFAULT 0,
  `meta` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ig_workflows`
--

INSERT INTO `wp_ig_workflows` (`id`, `name`, `title`, `trigger_name`, `trigger_options`, `rules`, `actions`, `status`, `type`, `priority`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'send-welcome-email-when-someone-subscribes', 'Send welcome email when someone subscribes', 'ig_es_user_subscribed', '', '', 'a:1:{i:0;a:5:{s:11:\"action_name\";s:16:\"ig_es_send_email\";s:13:\"ig-es-send-to\";s:9:\"{{EMAIL}}\";s:19:\"ig-es-email-subject\";s:23:\"Welcome to {{SITENAME}}\";s:19:\"ig-es-email-content\";s:189:\"<p>Hi {{NAME}},</p>\n<p>Just wanted to send you a quick note...</p>\n<p>Thank you for joining the awesome {{SITENAME}} tribe.</p>\n<p>Only valuable emails from me, promise!</p>\n<p>Thanks!</p>\n\";s:26:\"ig-es-tracking-campaign-id\";i:2;}}', 1, 1, 0, 'a:1:{s:11:\"when_to_run\";s:11:\"immediately\";}', '2023-06-09 11:38:57', '2023-06-09 11:38:57'),
(2, 'send-confirmation-email', 'Send confirmation email', 'ig_es_user_unconfirmed', '', '', 'a:1:{i:0;a:5:{s:11:\"action_name\";s:16:\"ig_es_send_email\";s:13:\"ig-es-send-to\";s:9:\"{{EMAIL}}\";s:19:\"ig-es-email-subject\";s:7:\"Thanks!\";s:19:\"ig-es-email-content\";s:210:\"<p>Hi {{NAME}},</p>\n<p>Just one more step before we share the awesomeness from {{SITENAME}}!</p>\n<p>Please confirm your subscription by clicking on <a href=\'{{SUBSCRIBE-LINK}}\'>this link</a></p>\n<p>Thanks!</p>\n\";s:26:\"ig-es-tracking-campaign-id\";i:4;}}', 1, 1, 0, 'a:2:{s:11:\"when_to_run\";s:11:\"immediately\";s:11:\"last_ran_at\";s:19:\"2023-06-12 13:30:45\";}', '2023-06-09 11:38:57', '2023-06-09 11:38:57'),
(3, 'notify-admin-when-someone-subscribes', 'Notify admin when someone subscribes', 'ig_es_user_subscribed', '', '', 'a:1:{i:0;a:5:{s:11:\"action_name\";s:16:\"ig_es_send_email\";s:13:\"ig-es-send-to\";s:25:\"tech.db@dollarbirdinc.com\";s:19:\"ig-es-email-subject\";s:33:\"One more contact joins our tribe!\";s:19:\"ig-es-email-content\";s:280:\"<p>Hi,</p>\n<p>Your friendly Icegram Express notification bot here!</p>\n<p>{{NAME}} ({{EMAIL}}) joined our tribe just now.</p>\n<p>Which list/s? {{LIST}}</p>\n<p>If you know this person, or if they are an influencer, you may want to reach out to them personally!</p>\n<p>Later...</p>\n\";s:26:\"ig-es-tracking-campaign-id\";i:5;}}', 1, 1, 0, 'a:1:{s:11:\"when_to_run\";s:11:\"immediately\";}', '2023-06-09 11:38:57', '2023-06-09 11:38:57'),
(4, 'notify-admin-when-campaign-is-sent', 'Notify admin when campaign is sent', 'ig_es_campaign_sent', '', '', 'a:1:{i:0;a:5:{s:11:\"action_name\";s:16:\"ig_es_send_email\";s:13:\"ig-es-send-to\";s:25:\"tech.db@dollarbirdinc.com\";s:19:\"ig-es-email-subject\";s:14:\"Campaign Sent!\";s:19:\"ig-es-email-content\";s:174:\"<p>Hi Admin,</p>\n<p>Cron URL has been triggered successfully on {{DATE}} for the email \'{{SUBJECT}}\'. And it sent email to {{COUNT}} recipient(s).</p>\n<p>Best,<br />\nUEN</p>\n\";s:26:\"ig-es-tracking-campaign-id\";i:6;}}', 1, 1, 0, 'a:1:{s:11:\"when_to_run\";s:11:\"immediately\";}', '2023-06-09 11:38:57', '2023-06-09 11:38:57'),
(5, 'add-to-main-list-when-someone-registers', 'Add to Main list when someone registers', 'ig_es_user_registered', '', '', 'a:1:{i:0;a:2:{s:11:\"action_name\";s:17:\"ig_es_add_to_list\";s:10:\"ig-es-list\";i:1;}}', 0, 0, 0, 'a:1:{s:11:\"when_to_run\";s:11:\"immediately\";}', '2023-06-09 11:38:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ig_workflows_queue`
--

CREATE TABLE `wp_ig_workflows_queue` (
  `id` bigint(20) NOT NULL,
  `workflow_id` bigint(20) DEFAULT NULL,
  `failed` int(1) NOT NULL DEFAULT 0,
  `failure_code` int(3) NOT NULL DEFAULT 0,
  `meta` longtext NOT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/UEN', 'yes'),
(2, 'home', 'http://localhost/UEN', 'yes'),
(3, 'blogname', 'UEN', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tech.db@dollarbirdinc.com', 'yes'),
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
(29, 'rewrite_rules', 'a:196:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"header/?$\";s:26:\"index.php?post_type=header\";s:39:\"header/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=header&feed=$matches[1]\";s:34:\"header/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=header&feed=$matches[1]\";s:26:\"header/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=header&paged=$matches[1]\";s:9:\"footer/?$\";s:26:\"index.php?post_type=footer\";s:39:\"footer/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=footer&feed=$matches[1]\";s:34:\"footer/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=footer&feed=$matches[1]\";s:26:\"footer/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=footer&paged=$matches[1]\";s:8:\"blogs/?$\";s:25:\"index.php?post_type=blogs\";s:38:\"blogs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=blogs&feed=$matches[1]\";s:33:\"blogs/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=blogs&feed=$matches[1]\";s:25:\"blogs/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=blogs&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"es_template/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"es_template/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"es_template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"es_template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"es_template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"es_template/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"es_template/([^/]+)/embed/?$\";s:44:\"index.php?es_template=$matches[1]&embed=true\";s:32:\"es_template/([^/]+)/trackback/?$\";s:38:\"index.php?es_template=$matches[1]&tb=1\";s:40:\"es_template/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?es_template=$matches[1]&paged=$matches[2]\";s:47:\"es_template/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?es_template=$matches[1]&cpage=$matches[2]\";s:36:\"es_template/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?es_template=$matches[1]&page=$matches[2]\";s:28:\"es_template/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"es_template/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"es_template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"es_template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"es_template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"es_template/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"header/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"header/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"header/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"header/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"header/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"header/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"header/([^/]+)/embed/?$\";s:39:\"index.php?header=$matches[1]&embed=true\";s:27:\"header/([^/]+)/trackback/?$\";s:33:\"index.php?header=$matches[1]&tb=1\";s:47:\"header/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?header=$matches[1]&feed=$matches[2]\";s:42:\"header/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?header=$matches[1]&feed=$matches[2]\";s:35:\"header/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?header=$matches[1]&paged=$matches[2]\";s:42:\"header/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?header=$matches[1]&cpage=$matches[2]\";s:31:\"header/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?header=$matches[1]&page=$matches[2]\";s:23:\"header/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"header/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"header/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"header/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"header/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"header/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"header-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?header-category=$matches[1]&feed=$matches[2]\";s:51:\"header-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?header-category=$matches[1]&feed=$matches[2]\";s:32:\"header-category/([^/]+)/embed/?$\";s:48:\"index.php?header-category=$matches[1]&embed=true\";s:44:\"header-category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?header-category=$matches[1]&paged=$matches[2]\";s:26:\"header-category/([^/]+)/?$\";s:37:\"index.php?header-category=$matches[1]\";s:34:\"footer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"footer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"footer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"footer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"footer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"footer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"footer/([^/]+)/embed/?$\";s:39:\"index.php?footer=$matches[1]&embed=true\";s:27:\"footer/([^/]+)/trackback/?$\";s:33:\"index.php?footer=$matches[1]&tb=1\";s:47:\"footer/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?footer=$matches[1]&feed=$matches[2]\";s:42:\"footer/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?footer=$matches[1]&feed=$matches[2]\";s:35:\"footer/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?footer=$matches[1]&paged=$matches[2]\";s:42:\"footer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?footer=$matches[1]&cpage=$matches[2]\";s:31:\"footer/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?footer=$matches[1]&page=$matches[2]\";s:23:\"footer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"footer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"footer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"footer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"footer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"footer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"footer-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?footer-category=$matches[1]&feed=$matches[2]\";s:51:\"footer-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?footer-category=$matches[1]&feed=$matches[2]\";s:32:\"footer-category/([^/]+)/embed/?$\";s:48:\"index.php?footer-category=$matches[1]&embed=true\";s:44:\"footer-category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?footer-category=$matches[1]&paged=$matches[2]\";s:26:\"footer-category/([^/]+)/?$\";s:37:\"index.php?footer-category=$matches[1]\";s:33:\"blogs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"blogs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"blogs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blogs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blogs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"blogs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"blogs/([^/]+)/embed/?$\";s:38:\"index.php?blogs=$matches[1]&embed=true\";s:26:\"blogs/([^/]+)/trackback/?$\";s:32:\"index.php?blogs=$matches[1]&tb=1\";s:46:\"blogs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?blogs=$matches[1]&feed=$matches[2]\";s:41:\"blogs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?blogs=$matches[1]&feed=$matches[2]\";s:34:\"blogs/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?blogs=$matches[1]&paged=$matches[2]\";s:41:\"blogs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?blogs=$matches[1]&cpage=$matches[2]\";s:30:\"blogs/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?blogs=$matches[1]&page=$matches[2]\";s:22:\"blogs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"blogs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"blogs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"blogs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"blogs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"blogs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"blogs-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?blogs-category=$matches[1]&feed=$matches[2]\";s:50:\"blogs-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?blogs-category=$matches[1]&feed=$matches[2]\";s:31:\"blogs-category/([^/]+)/embed/?$\";s:47:\"index.php?blogs-category=$matches[1]&embed=true\";s:43:\"blogs-category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?blogs-category=$matches[1]&paged=$matches[2]\";s:25:\"blogs-category/([^/]+)/?$\";s:36:\"index.php?blogs-category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:48:\"advanced-custom-fields-component_field/index.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:39:\"categories-images/categories-images.php\";i:4;s:33:\"classic-editor/classic-editor.php\";i:5;s:36:\"contact-form-7/wp-contact-form-7.php\";i:6;s:53:\"contact-form-submissions/contact-form-submissions.php\";i:7;s:39:\"email-subscribers/email-subscribers.php\";i:8;s:21:\"safe-svg/safe-svg.php\";i:9;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:10;s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'UEN', 'yes'),
(41, 'stylesheet', 'UEN', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1701756345', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:24:\"email-subscribers-form-1\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:13:{i:1686640547;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1686641280;a:1:{s:25:\"ig_es_cron_auto_responder\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:19:\"ig_es_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1686641400;a:1:{s:17:\"ig_es_cron_worker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:19:\"ig_es_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1686642900;a:1:{s:10:\"ig_es_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1686643546;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1686679546;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1686679568;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1686722746;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1686722768;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1686722775;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1686819600;a:1:{s:35:\"ig_es_newsletter_summary_automation\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1686895546;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(128, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1686632354;s:7:\"checked\";a:1:{s:3:\"UEN\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(131, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1686809172', 'no'),
(132, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1686809175', 'no'),
(134, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(148, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1686636397;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(149, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"tech.db@dollarbirdinc.com\";s:7:\"version\";s:5:\"6.2.2\";s:9:\"timestamp\";i:1686204420;}', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(155, 'theme_mods_twentytwentythree', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686206236;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(156, 'current_theme', 'Twenty Twenty-One/UEN', 'yes'),
(157, 'theme_mods_UEN', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:19:\"ot_set_google_fonts\";a:0:{}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(159, 'option_tree_settings', 'a:3:{s:15:\"contextual_help\";a:2:{s:7:\"content\";a:1:{i:0;a:3:{s:2:\"id\";s:17:\"option_types_help\";s:5:\"title\";s:12:\"Option Types\";s:7:\"content\";s:30:\"<p>Help content goes here!</p>\";}}s:7:\"sidebar\";s:33:\"<p>Sidebar content goes here!</p>\";}s:8:\"sections\";a:3:{i:0;a:2:{s:2:\"id\";s:6:\"header\";s:5:\"title\";s:14:\"Header Section\";}i:1;a:2:{s:2:\"id\";s:6:\"footer\";s:5:\"title\";s:14:\"footer Section\";}i:2;a:2:{s:2:\"id\";s:13:\"error_section\";s:5:\"title\";s:10:\"Error Page\";}}s:8:\"settings\";a:20:{i:0;a:4:{s:2:\"id\";s:4:\"logo\";s:5:\"label\";s:6:\"Header\";s:4:\"type\";s:3:\"tab\";s:7:\"section\";s:6:\"header\";}i:1;a:5:{s:2:\"id\";s:14:\"header_favicon\";s:5:\"label\";s:18:\"Header Tab Favicon\";s:4:\"desc\";s:19:\"Upload Your Favicon\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:6:\"header\";}i:2;a:5:{s:2:\"id\";s:11:\"header_logo\";s:5:\"label\";s:16:\"Header Main Logo\";s:4:\"desc\";s:16:\"Upload Your Logo\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:6:\"header\";}i:3;a:5:{s:2:\"id\";s:16:\"header_colorlogo\";s:5:\"label\";s:22:\"Header Main Color Logo\";s:4:\"desc\";s:16:\"Upload Your Logo\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:6:\"header\";}i:4;a:5:{s:2:\"id\";s:10:\"site_title\";s:5:\"label\";s:10:\"Site Title\";s:4:\"desc\";s:19:\"Add your site title\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:6:\"header\";}i:5;a:4:{s:2:\"id\";s:10:\"error_page\";s:5:\"label\";s:14:\"404 Error Page\";s:4:\"type\";s:3:\"tab\";s:7:\"section\";s:13:\"error_section\";}i:6;a:5:{s:2:\"id\";s:9:\"404_image\";s:5:\"label\";s:5:\"Image\";s:4:\"desc\";s:12:\"Error  Image\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:13:\"error_section\";}i:7;a:5:{s:2:\"id\";s:13:\"error_heading\";s:5:\"label\";s:7:\"Heading\";s:4:\"desc\";s:14:\"Error  Heading\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:13:\"error_section\";}i:8;a:5:{s:2:\"id\";s:10:\"error_desc\";s:5:\"label\";s:11:\"Description\";s:4:\"desc\";s:18:\"Error  Description\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:13:\"error_section\";}i:9;a:5:{s:2:\"id\";s:12:\"button_title\";s:5:\"label\";s:6:\"Button\";s:4:\"desc\";s:11:\"Button text\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:13:\"error_section\";}i:10;a:4:{s:2:\"id\";s:4:\"logo\";s:5:\"label\";s:6:\"footer\";s:4:\"type\";s:3:\"tab\";s:7:\"section\";s:6:\"footer\";}i:11;a:5:{s:2:\"id\";s:14:\"footer_favicon\";s:5:\"label\";s:18:\"footer Tab Favicon\";s:4:\"desc\";s:19:\"Upload Your Favicon\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:6:\"footer\";}i:12;a:5:{s:2:\"id\";s:11:\"footer_logo\";s:5:\"label\";s:16:\"footer Main Logo\";s:4:\"desc\";s:16:\"Upload Your Logo\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:6:\"footer\";}i:13;a:5:{s:2:\"id\";s:10:\"site_title\";s:5:\"label\";s:10:\"Site Title\";s:4:\"desc\";s:19:\"Add your site title\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:6:\"footer\";}i:14;a:5:{s:2:\"id\";s:9:\"main_logo\";s:5:\"label\";s:10:\"Main Logos\";s:4:\"desc\";s:10:\"Main Logos\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:6:\"footer\";}i:15;a:4:{s:2:\"id\";s:12:\"social_media\";s:5:\"label\";s:14:\"Social Media\'s\";s:4:\"type\";s:3:\"tab\";s:7:\"section\";s:6:\"footer\";}i:16;a:5:{s:2:\"id\";s:14:\"instagram_link\";s:5:\"label\";s:14:\"Instagram Link\";s:4:\"desc\";s:14:\"Instagram Link\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:6:\"footer\";}i:17;a:5:{s:2:\"id\";s:13:\"linkedin_link\";s:5:\"label\";s:13:\"Linkedin Link\";s:4:\"desc\";s:13:\"Linkedin Link\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:6:\"footer\";}i:18;a:5:{s:2:\"id\";s:12:\"twitter_link\";s:5:\"label\";s:12:\"Twitter Link\";s:4:\"desc\";s:12:\"Twitter Link\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:6:\"footer\";}i:19;a:5:{s:2:\"id\";s:13:\"facebook_link\";s:5:\"label\";s:13:\"Facebook Link\";s:4:\"desc\";s:13:\"Facebook Link\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:6:\"footer\";}}}', 'yes'),
(160, 'option_tree', 'a:15:{s:14:\"header_favicon\";s:0:\"\";s:11:\"header_logo\";s:56:\"http://localhost/UEN/wp-content/uploads/2023/06/logo.svg\";s:16:\"header_colorlogo\";s:0:\"\";s:10:\"site_title\";s:0:\"\";s:14:\"footer_favicon\";s:0:\"\";s:11:\"footer_logo\";s:0:\"\";s:9:\"main_logo\";s:0:\"\";s:14:\"instagram_link\";s:0:\"\";s:13:\"linkedin_link\";s:0:\"\";s:12:\"twitter_link\";s:0:\"\";s:13:\"facebook_link\";s:0:\"\";s:9:\"404_image\";s:0:\"\";s:13:\"error_heading\";s:0:\"\";s:10:\"error_desc\";s:0:\"\";s:12:\"button_title\";s:0:\"\";}', 'yes'),
(161, 'ot_media_post_ID', '5', 'yes'),
(162, 'recently_activated', 'a:0:{}', 'yes'),
(169, 'tadv_settings', 'a:7:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:21:\"toolbar_classic_block\";s:123:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,forecolor,backcolor,table,wp_help\";}', 'yes'),
(170, 'tadv_admin_settings', 'a:1:{s:7:\"options\";s:86:\"classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}', 'yes'),
(171, 'tadv_version', '5900', 'yes'),
(174, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1686206790;s:7:\"version\";s:5:\"5.7.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(176, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'action_scheduler_hybrid_store_demarkation', '7', 'yes'),
(180, 'schema-ActionScheduler_StoreSchema', '6.0.1686206867', 'yes'),
(181, 'schema-ActionScheduler_LoggerSchema', '3.0.1686206867', 'yes'),
(184, 'ig_es_from_name', 'UEN', 'no'),
(185, 'ig_es_from_email', 'tech.db@dollarbirdinc.com', 'no'),
(186, 'ig_es_admin_new_contact_email_subject', 'One more contact joins our tribe!', 'no'),
(187, 'ig_es_admin_new_contact_email_content', 'Hi,\r\n\r\nYour friendly Icegram Express notification bot here!\r\n\r\n{{NAME}} ({{EMAIL}}) joined our tribe just now.\r\n\r\nWhich list/s? {{LIST}}\r\n\r\nIf you know this person, or if they are an influencer, you may want to reach out to them personally!\r\n\r\nLater...', 'no'),
(188, 'ig_es_admin_emails', 'tech.db@dollarbirdinc.com', 'no'),
(189, 'ig_es_confirmation_mail_subject', 'Thanks!', 'no'),
(190, 'ig_es_confirmation_mail_content', '<p>Hi {{NAME}},</p>\n<p>Just one more step before we share the awesomeness from {{SITENAME}}!</p>\n<p>Please confirm your subscription by clicking on <a href=\'{{SUBSCRIBE-LINK}}\'>this link</a></p>\n<p>Thanks!</p>\n', 'no'),
(191, 'ig_es_enable_welcome_email', 'yes', 'no'),
(192, 'ig_es_welcome_email_subject', 'One more contact joins our tribe!', 'no'),
(193, 'ig_es_welcome_email_content', '<p>Hi,</p>\n<p>Your friendly Icegram Express notification bot here!</p>\n<p>{{NAME}} ({{EMAIL}}) joined our tribe just now.</p>\n<p>Which list/s? {{LIST}}</p>\n<p>If you know this person, or if they are an influencer, you may want to reach out to them personally!</p>\n<p>Later...</p>\n', 'no'),
(194, 'ig_es_enable_cron_admin_email', 'yes', 'no'),
(195, 'ig_es_enable_summary_automation', 'yes', 'no'),
(196, 'ig_es_run_cron_on', 'monday', 'no'),
(197, 'ig_es_run_cron_time', '4pm', 'no'),
(198, 'ig_es_cron_admin_email', 'Hi Admin,\r\n\r\nCron URL has been triggered successfully on {{DATE}} for the email \'{{SUBJECT}}\'. And it sent email to {{COUNT}} recipient(s).\r\n\r\nBest,\r\nUEN', 'no'),
(199, 'ig_es_cronurl', 'http://localhost/UEN/?es=cron&guid=nrzqkg-pitszl-dsznip-apirgm-ouabsf', 'no'),
(200, 'ig_es_hourly_email_send_limit', '300', 'no'),
(201, 'ig_es_sent_report_subject', 'Your email has been sent', 'no'),
(202, 'ig_es_sent_report_content', 'Hi Admin,\n\nEmail has been sent successfully to {{COUNT}} email(s). Please find the details below:\n\nUnique ID: {{UNIQUE}}\nStart Time: {{STARTTIME}}\nEnd Time: {{ENDTIME}}\nFor more information, login to your dashboard and go to Reports menu in Icegram Express.\n\nThank You.', 'no'),
(203, 'ig_es_unsubscribe_link', 'http://localhost/UEN/?es=unsubscribe&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'no'),
(204, 'ig_es_optin_link', 'http://localhost/UEN/?es=optin&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'no'),
(205, 'ig_es_unsubscribe_link_content', 'I\'d be sad to see you go. But if you want to, you can unsubscribe from <a href=\'{{UNSUBSCRIBE-LINK}}\'>here</a>', 'no'),
(206, 'ig_es_email_type', 'wp_html_mail', 'no'),
(207, 'ig_es_notify_admin', 'yes', 'no'),
(208, 'ig_es_optin_type', 'double_opt_in', 'no'),
(209, 'ig_es_subscription_error_messsage', 'Hmm.. Something\'s amiss..\r\n\r\nCould not complete your request. That email address  is probably already subscribed. Or worse blocked!!\r\n\r\nPlease try again after some time - or contact us if the problem persists.\r\n\r\n', 'no'),
(210, 'ig_es_subscription_success_message', 'You have been successfully subscribed.', 'no'),
(211, 'ig_es_unsubscribe_error_message', 'Urrgh.. Something\'s wrong..\r\n\r\nAre you sure that email address is on our file? There was some problem in completing your request.\r\n\r\nPlease try again after some time - or contact us if the problem persists.\r\n\r\n', 'no'),
(212, 'ig_es_unsubscribe_success_message', '<p>You will no longer hear from us. ☹️ Sorry to see you go!</p>', 'no'),
(213, 'ig_es_post_image_size', 'thumbnail', 'no'),
(214, 'ig_es_db_version', '5.6.6', 'no'),
(215, 'ig_es_current_version_date_details', '', 'no'),
(216, 'ig_es_enable_captcha', '', 'no'),
(217, 'ig_es_roles_and_capabilities', '', 'no'),
(218, 'ig_es_sample_data_imported', 'no', 'no'),
(219, 'ig_es_default_subscriber_imported', 'no', 'no'),
(220, 'ig_es_set_widget', '', 'no'),
(221, 'ig_es_sync_wp_users', 'a:0:{}', 'no'),
(222, 'ig_es_blocked_domains', 'mail.ru', 'no'),
(223, 'ig_es_disable_wp_cron', 'no', 'no'),
(224, 'ig_es_enable_sending_mails_in_customer_timezone', 'no', 'no'),
(225, 'ig_es_track_email_opens', 'yes', 'no'),
(226, 'ig_es_enable_ajax_form_submission', 'yes', 'no'),
(227, 'ig_es_show_opt_in_consent', 'yes', 'no'),
(228, 'ig_es_opt_in_consent_text', 'Subscribe to our email updates as well.', 'no'),
(229, 'ig_es_installed_on', '2023-06-08 06:47:47', 'no'),
(230, 'ig_es_form_submission_success_message', 'Your subscription was successful! Kindly check your mailbox and confirm your subscription. If you don\'t see the email within a few minutes, check the spam/junk folder.', 'no'),
(231, 'ig_es_db_update_history', 'a:1:{s:5:\"5.6.6\";s:19:\"2023-06-08 06:47:47\";}', 'no'),
(232, 'ig_es_email_sent_data', 'a:0:{}', 'no'),
(233, 'ig_es_mailer_settings', 'a:1:{s:6:\"mailer\";s:6:\"wpmail\";}', 'no'),
(234, 'ig_es_user_roles', 'a:6:{s:9:\"campaigns\";a:1:{s:13:\"administrator\";s:3:\"yes\";}s:7:\"reports\";a:1:{s:13:\"administrator\";s:3:\"yes\";}s:9:\"sequences\";a:1:{s:13:\"administrator\";s:3:\"yes\";}s:8:\"audience\";a:1:{s:13:\"administrator\";s:3:\"yes\";}s:5:\"forms\";a:1:{s:13:\"administrator\";s:3:\"yes\";}s:9:\"workflows\";a:1:{s:13:\"administrator\";s:3:\"yes\";}}', 'no'),
(235, 'ig_es_cron_interval', '900', 'no'),
(236, 'ig_es_max_email_send_at_once', '30', 'no'),
(237, 'ig_es_test_mailbox_user', '27ad2_tech.db_localhost', 'no'),
(239, 'action_scheduler_lock_async-request-runner', '1686640596', 'yes'),
(240, 'ig_es_admin_notices', 'a:1:{i:0;s:15:\"bfcm_offer_2022\";}', 'yes'),
(241, 'widget_email-subscribers-form', 'a:2:{s:12:\"_multiwidget\";i:1;i:1;a:1:{s:7:\"form_id\";i:1;}}', 'yes'),
(246, 'ig_es_cron_last_hit', 'a:1:{s:9:\"timestamp\";i:1686640535;}', 'yes'),
(248, 'action_scheduler_migration_status', 'complete', 'yes'),
(253, 'acf_version', '5.12.2', 'yes'),
(261, 'acf_component_field_version', '2.0.1', 'yes'),
(333, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":2}', 'yes'),
(500, 'ig_es_allow_tracking', 'yes', 'yes'),
(506, 'ig_es_onboarding_complete', 'yes', 'yes'),
(507, 'ig_es_custom_admin_notice_bfcm_offer_2022', 'a:2:{s:3:\"url\";s:24:\"https://www.icegram.com/\";s:7:\"include\";s:105:\"C:\\xampp\\htdocs\\UEN\\wp-content\\plugins\\email-subscribers/lite/includes/notices/views/ig-es-bfcm-offer.php\";}', 'yes'),
(508, '_transient_timeout_ig_es_cache_dashboard_reports_data', '1699271760', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(509, '_transient_ig_es_cache_dashboard_reports_data', 'a:16:{s:9:\"campaigns\";a:0:{}s:16:\"total_subscribed\";s:1:\"3\";s:17:\"total_email_opens\";s:1:\"0\";s:18:\"total_links_clicks\";s:1:\"0\";s:18:\"total_message_sent\";s:1:\"0\";s:18:\"total_unsubscribed\";s:1:\"0\";s:13:\"avg_open_rate\";s:4:\"0.00\";s:15:\"contacts_growth\";a:61:{s:10:\"2023-04-10\";i:0;s:10:\"2023-04-11\";i:0;s:10:\"2023-04-12\";i:0;s:10:\"2023-04-13\";i:0;s:10:\"2023-04-14\";i:0;s:10:\"2023-04-15\";i:0;s:10:\"2023-04-16\";i:0;s:10:\"2023-04-17\";i:0;s:10:\"2023-04-18\";i:0;s:10:\"2023-04-19\";i:0;s:10:\"2023-04-20\";i:0;s:10:\"2023-04-21\";i:0;s:10:\"2023-04-22\";i:0;s:10:\"2023-04-23\";i:0;s:10:\"2023-04-24\";i:0;s:10:\"2023-04-25\";i:0;s:10:\"2023-04-26\";i:0;s:10:\"2023-04-27\";i:0;s:10:\"2023-04-28\";i:0;s:10:\"2023-04-29\";i:0;s:10:\"2023-04-30\";i:0;s:10:\"2023-05-01\";i:0;s:10:\"2023-05-02\";i:0;s:10:\"2023-05-03\";i:0;s:10:\"2023-05-04\";i:0;s:10:\"2023-05-05\";i:0;s:10:\"2023-05-06\";i:0;s:10:\"2023-05-07\";i:0;s:10:\"2023-05-08\";i:0;s:10:\"2023-05-09\";i:0;s:10:\"2023-05-10\";i:0;s:10:\"2023-05-11\";i:0;s:10:\"2023-05-12\";i:0;s:10:\"2023-05-13\";i:0;s:10:\"2023-05-14\";i:0;s:10:\"2023-05-15\";i:0;s:10:\"2023-05-16\";i:0;s:10:\"2023-05-17\";i:0;s:10:\"2023-05-18\";i:0;s:10:\"2023-05-19\";i:0;s:10:\"2023-05-20\";i:0;s:10:\"2023-05-21\";i:0;s:10:\"2023-05-22\";i:0;s:10:\"2023-05-23\";i:0;s:10:\"2023-05-24\";i:0;s:10:\"2023-05-25\";i:0;s:10:\"2023-05-26\";i:0;s:10:\"2023-05-27\";i:0;s:10:\"2023-05-28\";i:0;s:10:\"2023-05-29\";i:0;s:10:\"2023-05-30\";i:0;s:10:\"2023-05-31\";i:0;s:10:\"2023-06-01\";i:0;s:10:\"2023-06-02\";i:0;s:10:\"2023-06-03\";i:0;s:10:\"2023-06-04\";i:0;s:10:\"2023-06-05\";i:0;s:10:\"2023-06-06\";i:0;s:10:\"2023-06-07\";i:0;s:10:\"2023-06-08\";i:0;s:10:\"2023-06-09\";i:3;}s:22:\"sent_percentage_growth\";i:0;s:22:\"sent_before_two_months\";s:1:\"0\";s:22:\"open_percentage_growth\";i:0;s:22:\"open_before_two_months\";s:1:\"0\";s:23:\"click_percentage_growth\";i:0;s:23:\"click_before_two_months\";s:1:\"0\";s:29:\"unsubscribe_percentage_growth\";i:0;s:29:\"unsubscribe_before_two_months\";s:1:\"0\";}', 'no'),
(660, 'events-category_children', 'a:0:{}', 'yes'),
(708, 'individual-category_children', 'a:0:{}', 'yes'),
(1110, '_transient_timeout_acf_plugin_updates', '1686738236', 'no'),
(1111, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";}}', 'no'),
(1126, 'z_taxonomy_image6', 'http://localhost/UEN/wp-content/uploads/2023/06/water_img.png', 'no'),
(1128, 'z_taxonomy_image7', 'http://localhost/UEN/wp-content/uploads/2023/06/featured2_img.png', 'no'),
(1132, 'z_taxonomy_image8', 'http://localhost/UEN/wp-content/uploads/2023/06/combat_img.png', 'no'),
(1142, 'z_taxonomy_image5', 'http://localhost/UEN/wp-content/uploads/2023/06/combat_img.png', 'no'),
(1146, 'z_taxonomy_image4', 'http://localhost/UEN/wp-content/uploads/2023/06/featured1_img.png', 'no'),
(1147, 'blogs-category_children', 'a:0:{}', 'yes'),
(1433, '_site_transient_timeout_theme_roots', '1686638198', 'no'),
(1434, '_site_transient_theme_roots', 'a:1:{s:3:\"UEN\";s:7:\"/themes\";}', 'no'),
(1435, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1686636399;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.2\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2390186\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2390186\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:39:\"categories-images/categories-images.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/categories-images\";s:4:\"slug\";s:17:\"categories-images\";s:6:\"plugin\";s:39:\"categories-images/categories-images.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/categories-images/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/categories-images.3.0.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/categories-images/assets/icon-128x128.png?rev=2256871\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/categories-images/assets/banner-772x250.png?rev=1803373\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:39:\"email-subscribers/email-subscribers.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/email-subscribers\";s:4:\"slug\";s:17:\"email-subscribers\";s:6:\"plugin\";s:39:\"email-subscribers/email-subscribers.php\";s:11:\"new_version\";s:5:\"5.6.9\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/email-subscribers/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/email-subscribers.5.6.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/email-subscribers/assets/icon-256x256.png?rev=2274172\";s:2:\"1x\";s:70:\"https://ps.w.org/email-subscribers/assets/icon-128x128.png?rev=2274172\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/email-subscribers/assets/banner-1544x500.png?rev=2304804\";s:2:\"1x\";s:72:\"https://ps.w.org/email-subscribers/assets/banner-772x250.png?rev=2304804\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/velvet-blues-update-urls\";s:4:\"slug\";s:24:\"velvet-blues-update-urls\";s:6:\"plugin\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:11:\"new_version\";s:6:\"3.2.10\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/velvet-blues-update-urls/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/velvet-blues-update-urls.3.2.10.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://s.w.org/plugins/geopattern-icon/velvet-blues-update-urls_727172.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/velvet-blues-update-urls/assets/banner-772x250.jpg?rev=486343\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";}}s:7:\"checked\";a:11:{s:48:\"advanced-custom-fields-component_field/index.php\";s:5:\"2.0.2\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"5.9.0\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:39:\"categories-images/categories-images.php\";s:5:\"3.0.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.7\";s:53:\"contact-form-submissions/contact-form-submissions.php\";s:5:\"1.7.1\";s:39:\"email-subscribers/email-subscribers.php\";s:5:\"5.6.9\";s:21:\"safe-svg/safe-svg.php\";s:5:\"2.1.1\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:6:\"3.2.10\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(4, 6, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <tech.db@dollarbirdinc.com>\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <tech.db@dollarbirdinc.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 6, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(7, 6, '_additional_settings', ''),
(8, 6, '_locale', 'en_US'),
(17, 3, '_wp_trash_meta_status', 'draft'),
(18, 3, '_wp_trash_meta_time', '1686289166'),
(19, 3, '_wp_desired_post_slug', 'privacy-policy'),
(20, 2, '_wp_trash_meta_status', 'publish'),
(21, 2, '_wp_trash_meta_time', '1686289166'),
(22, 2, '_wp_desired_post_slug', 'sample-page'),
(23, 13, '_edit_last', '1'),
(24, 13, '_edit_lock', '1686581628:1'),
(25, 13, '_wp_page_template', 'index.php'),
(26, 15, '_edit_last', '1'),
(27, 15, 'is_acf_component', ''),
(28, 15, '_edit_lock', '1686582810:1'),
(33, 20, '_wp_attached_file', '2023/06/Home-Banner.webm'),
(34, 20, '_wp_attachment_metadata', 'a:9:{s:7:\"bitrate\";i:1343125;s:8:\"filesize\";i:5192859;s:9:\"mime_type\";s:10:\"video/webm\";s:6:\"length\";i:31;s:16:\"length_formatted\";s:4:\"0:31\";s:5:\"width\";i:1440;s:6:\"height\";i:756;s:10:\"fileformat\";s:4:\"webm\";s:10:\"dataformat\";s:5:\"V_VP9\";}'),
(35, 13, 'banner_video', '20'),
(36, 13, '_banner_video', 'field_6482beac0459e'),
(37, 21, 'banner_video', '20'),
(38, 21, '_banner_video', 'field_6482beac0459e'),
(39, 22, '_edit_last', '1'),
(40, 22, '_edit_lock', '1686581179:1'),
(41, 24, '_edit_last', '1'),
(42, 24, 'is_acf_component', ''),
(43, 24, '_edit_lock', '1686578732:1'),
(44, 22, 'home', 'HOME'),
(45, 22, '_home', 'field_6482f9428698b'),
(46, 22, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(47, 22, '_homepagelink', 'field_6482f9608698c'),
(48, 22, 'about', 'ABOUT'),
(49, 22, '_about', 'field_6482f9df8698d'),
(50, 22, 'aboutpagelink', 'a:3:{s:5:\"title\";s:5:\"about\";s:3:\"url\";s:27:\"http://localhost/UEN/about/\";s:6:\"target\";s:0:\"\";}'),
(51, 22, '_aboutpagelink', 'field_6482f9ea8698e'),
(52, 22, 'categories', 'CATEGORIES'),
(53, 22, '_categories', 'field_6482fa078698f'),
(54, 22, 'category_0_categoryname', 'RACKET'),
(55, 22, '_category_0_categoryname', 'field_6482fabc86991'),
(56, 22, 'category_0_categorylink', ''),
(57, 22, '_category_0_categorylink', 'field_6482facf86992'),
(58, 22, 'category_1_categoryname', 'COMBAT'),
(59, 22, '_category_1_categoryname', 'field_6482fabc86991'),
(60, 22, 'category_1_categorylink', ''),
(61, 22, '_category_1_categorylink', 'field_6482facf86992'),
(62, 22, 'category_2_categoryname', 'WATER'),
(63, 22, '_category_2_categoryname', 'field_6482fabc86991'),
(64, 22, 'category_2_categorylink', ''),
(65, 22, '_category_2_categorylink', 'field_6482facf86992'),
(66, 22, 'category_3_categoryname', 'TEAM'),
(67, 22, '_category_3_categoryname', 'field_6482fabc86991'),
(68, 22, 'category_3_categorylink', ''),
(69, 22, '_category_3_categorylink', 'field_6482facf86992'),
(70, 22, 'category_4_categoryname', 'INDIVIDUAL'),
(71, 22, '_category_4_categoryname', 'field_6482fabc86991'),
(72, 22, 'category_4_categorylink', ''),
(73, 22, '_category_4_categorylink', 'field_6482facf86992'),
(74, 22, 'category_5_categoryname', 'EVENTS'),
(75, 22, '_category_5_categoryname', 'field_6482fabc86991'),
(76, 22, 'category_5_categorylink', ''),
(77, 22, '_category_5_categorylink', 'field_6482facf86992'),
(78, 22, 'category_6_categoryname', 'EXTREME'),
(79, 22, '_category_6_categoryname', 'field_6482fabc86991'),
(80, 22, 'category_6_categorylink', ''),
(81, 22, '_category_6_categorylink', 'field_6482facf86992'),
(82, 22, 'category_7_categoryname', 'MOTOR'),
(83, 22, '_category_7_categoryname', 'field_6482fabc86991'),
(84, 22, 'category_7_categorylink', ''),
(85, 22, '_category_7_categorylink', 'field_6482facf86992'),
(86, 22, 'category_8_categoryname', 'WINTER'),
(87, 22, '_category_8_categoryname', 'field_6482fabc86991'),
(88, 22, 'category_8_categorylink', ''),
(89, 22, '_category_8_categorylink', 'field_6482facf86992'),
(90, 22, 'category', '9'),
(91, 22, '_category', 'field_6482fa3886990'),
(92, 22, 'blogs', 'BLOGS'),
(93, 22, '_blogs', 'field_6482faea86993'),
(94, 22, 'blogspagelink', ''),
(95, 22, '_blogspagelink', 'field_6482faf886994'),
(96, 22, 'contact', 'CONTACT'),
(97, 22, '_contact', 'field_6482fb2186995'),
(98, 22, 'contact_pagelink', ''),
(99, 22, '_contact_pagelink', 'field_6482fb3c86996'),
(100, 22, 'subscribe_button', 'SUBSCRIBE'),
(101, 22, '_subscribe_button', 'field_6482fb7b86997'),
(102, 22, 'search', '42'),
(103, 22, '_search', 'field_6482fbb386998'),
(104, 40, 'home', 'HOME'),
(105, 40, '_home', 'field_6482f9428698b'),
(106, 40, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(107, 40, '_homepagelink', 'field_6482f9608698c'),
(108, 40, 'about', 'ABOUT'),
(109, 40, '_about', 'field_6482f9df8698d'),
(110, 40, 'aboutpagelink', ''),
(111, 40, '_aboutpagelink', 'field_6482f9ea8698e'),
(112, 40, 'categories', 'CATEGORIES'),
(113, 40, '_categories', 'field_6482fa078698f'),
(114, 40, 'category_0_categoryname', 'RACKET'),
(115, 40, '_category_0_categoryname', 'field_6482fabc86991'),
(116, 40, 'category_0_categorylink', ''),
(117, 40, '_category_0_categorylink', 'field_6482facf86992'),
(118, 40, 'category_1_categoryname', 'COMBAT'),
(119, 40, '_category_1_categoryname', 'field_6482fabc86991'),
(120, 40, 'category_1_categorylink', ''),
(121, 40, '_category_1_categorylink', 'field_6482facf86992'),
(122, 40, 'category_2_categoryname', 'WATER'),
(123, 40, '_category_2_categoryname', 'field_6482fabc86991'),
(124, 40, 'category_2_categorylink', ''),
(125, 40, '_category_2_categorylink', 'field_6482facf86992'),
(126, 40, 'category_3_categoryname', 'TEAM'),
(127, 40, '_category_3_categoryname', 'field_6482fabc86991'),
(128, 40, 'category_3_categorylink', ''),
(129, 40, '_category_3_categorylink', 'field_6482facf86992'),
(130, 40, 'category_4_categoryname', 'INDIVIDUAL'),
(131, 40, '_category_4_categoryname', 'field_6482fabc86991'),
(132, 40, 'category_4_categorylink', ''),
(133, 40, '_category_4_categorylink', 'field_6482facf86992'),
(134, 40, 'category_5_categoryname', 'EVENTS'),
(135, 40, '_category_5_categoryname', 'field_6482fabc86991'),
(136, 40, 'category_5_categorylink', ''),
(137, 40, '_category_5_categorylink', 'field_6482facf86992'),
(138, 40, 'category_6_categoryname', 'EXTREME'),
(139, 40, '_category_6_categoryname', 'field_6482fabc86991'),
(140, 40, 'category_6_categorylink', ''),
(141, 40, '_category_6_categorylink', 'field_6482facf86992'),
(142, 40, 'category_7_categoryname', 'MOTOR'),
(143, 40, '_category_7_categoryname', 'field_6482fabc86991'),
(144, 40, 'category_7_categorylink', ''),
(145, 40, '_category_7_categorylink', 'field_6482facf86992'),
(146, 40, 'category_8_categoryname', 'WINTER'),
(147, 40, '_category_8_categoryname', 'field_6482fabc86991'),
(148, 40, 'category_8_categorylink', ''),
(149, 40, '_category_8_categorylink', 'field_6482facf86992'),
(150, 40, 'category', '9'),
(151, 40, '_category', 'field_6482fa3886990'),
(152, 40, 'blogs', 'BLOGS'),
(153, 40, '_blogs', 'field_6482faea86993'),
(154, 40, 'blogspagelink', ''),
(155, 40, '_blogspagelink', 'field_6482faf886994'),
(156, 40, 'contact', 'CONTACT'),
(157, 40, '_contact', 'field_6482fb2186995'),
(158, 40, 'contact_pagelink', ''),
(159, 40, '_contact_pagelink', 'field_6482fb3c86996'),
(160, 40, 'subscribe_button', 'SUBSCRIBE'),
(161, 40, '_subscribe_button', 'field_6482fb7b86997'),
(162, 40, 'search', ''),
(163, 40, '_search', 'field_6482fbb386998'),
(164, 41, '_wp_attached_file', '2023/06/logo.svg'),
(165, 41, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:45;s:6:\"height\";i:48;s:4:\"file\";s:16:\"2023/06/logo.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";i:1568;s:6:\"height\";i:9999;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(166, 42, '_wp_attached_file', '2023/06/search_icon.svg'),
(167, 42, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:23:\"2023/06/search_icon.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:15:\"search_icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"search_icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"search_icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"search_icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"search_icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"search_icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";i:1568;s:6:\"height\";i:9999;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"search_icon.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(168, 43, 'home', 'HOME'),
(169, 43, '_home', 'field_6482f9428698b'),
(170, 43, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(171, 43, '_homepagelink', 'field_6482f9608698c'),
(172, 43, 'about', 'ABOUT'),
(173, 43, '_about', 'field_6482f9df8698d'),
(174, 43, 'aboutpagelink', ''),
(175, 43, '_aboutpagelink', 'field_6482f9ea8698e'),
(176, 43, 'categories', 'CATEGORIES'),
(177, 43, '_categories', 'field_6482fa078698f'),
(178, 43, 'category_0_categoryname', 'RACKET'),
(179, 43, '_category_0_categoryname', 'field_6482fabc86991'),
(180, 43, 'category_0_categorylink', ''),
(181, 43, '_category_0_categorylink', 'field_6482facf86992'),
(182, 43, 'category_1_categoryname', 'COMBAT'),
(183, 43, '_category_1_categoryname', 'field_6482fabc86991'),
(184, 43, 'category_1_categorylink', ''),
(185, 43, '_category_1_categorylink', 'field_6482facf86992'),
(186, 43, 'category_2_categoryname', 'WATER'),
(187, 43, '_category_2_categoryname', 'field_6482fabc86991'),
(188, 43, 'category_2_categorylink', ''),
(189, 43, '_category_2_categorylink', 'field_6482facf86992'),
(190, 43, 'category_3_categoryname', 'TEAM'),
(191, 43, '_category_3_categoryname', 'field_6482fabc86991'),
(192, 43, 'category_3_categorylink', ''),
(193, 43, '_category_3_categorylink', 'field_6482facf86992'),
(194, 43, 'category_4_categoryname', 'INDIVIDUAL'),
(195, 43, '_category_4_categoryname', 'field_6482fabc86991'),
(196, 43, 'category_4_categorylink', ''),
(197, 43, '_category_4_categorylink', 'field_6482facf86992'),
(198, 43, 'category_5_categoryname', 'EVENTS'),
(199, 43, '_category_5_categoryname', 'field_6482fabc86991'),
(200, 43, 'category_5_categorylink', ''),
(201, 43, '_category_5_categorylink', 'field_6482facf86992'),
(202, 43, 'category_6_categoryname', 'EXTREME'),
(203, 43, '_category_6_categoryname', 'field_6482fabc86991'),
(204, 43, 'category_6_categorylink', ''),
(205, 43, '_category_6_categorylink', 'field_6482facf86992'),
(206, 43, 'category_7_categoryname', 'MOTOR'),
(207, 43, '_category_7_categoryname', 'field_6482fabc86991'),
(208, 43, 'category_7_categorylink', ''),
(209, 43, '_category_7_categorylink', 'field_6482facf86992'),
(210, 43, 'category_8_categoryname', 'WINTER'),
(211, 43, '_category_8_categoryname', 'field_6482fabc86991'),
(212, 43, 'category_8_categorylink', ''),
(213, 43, '_category_8_categorylink', 'field_6482facf86992'),
(214, 43, 'category', '9'),
(215, 43, '_category', 'field_6482fa3886990'),
(216, 43, 'blogs', 'BLOGS'),
(217, 43, '_blogs', 'field_6482faea86993'),
(218, 43, 'blogspagelink', ''),
(219, 43, '_blogspagelink', 'field_6482faf886994'),
(220, 43, 'contact', 'CONTACT'),
(221, 43, '_contact', 'field_6482fb2186995'),
(222, 43, 'contact_pagelink', ''),
(223, 43, '_contact_pagelink', 'field_6482fb3c86996'),
(224, 43, 'subscribe_button', 'SUBSCRIBE'),
(225, 43, '_subscribe_button', 'field_6482fb7b86997'),
(226, 43, 'search', '42'),
(227, 43, '_search', 'field_6482fbb386998'),
(228, 22, 'search_white_img', '42'),
(229, 22, '_search_white_img', 'field_6482fbb386998'),
(230, 44, 'home', 'HOME'),
(231, 44, '_home', 'field_6482f9428698b'),
(232, 44, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(233, 44, '_homepagelink', 'field_6482f9608698c'),
(234, 44, 'about', 'ABOUT'),
(235, 44, '_about', 'field_6482f9df8698d'),
(236, 44, 'aboutpagelink', ''),
(237, 44, '_aboutpagelink', 'field_6482f9ea8698e'),
(238, 44, 'categories', 'CATEGORIES'),
(239, 44, '_categories', 'field_6482fa078698f'),
(240, 44, 'category_0_categoryname', 'RACKET'),
(241, 44, '_category_0_categoryname', 'field_6482fabc86991'),
(242, 44, 'category_0_categorylink', ''),
(243, 44, '_category_0_categorylink', 'field_6482facf86992'),
(244, 44, 'category_1_categoryname', 'COMBAT'),
(245, 44, '_category_1_categoryname', 'field_6482fabc86991'),
(246, 44, 'category_1_categorylink', ''),
(247, 44, '_category_1_categorylink', 'field_6482facf86992'),
(248, 44, 'category_2_categoryname', 'WATER'),
(249, 44, '_category_2_categoryname', 'field_6482fabc86991'),
(250, 44, 'category_2_categorylink', ''),
(251, 44, '_category_2_categorylink', 'field_6482facf86992'),
(252, 44, 'category_3_categoryname', 'TEAM'),
(253, 44, '_category_3_categoryname', 'field_6482fabc86991'),
(254, 44, 'category_3_categorylink', ''),
(255, 44, '_category_3_categorylink', 'field_6482facf86992'),
(256, 44, 'category_4_categoryname', 'INDIVIDUAL'),
(257, 44, '_category_4_categoryname', 'field_6482fabc86991'),
(258, 44, 'category_4_categorylink', ''),
(259, 44, '_category_4_categorylink', 'field_6482facf86992'),
(260, 44, 'category_5_categoryname', 'EVENTS'),
(261, 44, '_category_5_categoryname', 'field_6482fabc86991'),
(262, 44, 'category_5_categorylink', ''),
(263, 44, '_category_5_categorylink', 'field_6482facf86992'),
(264, 44, 'category_6_categoryname', 'EXTREME'),
(265, 44, '_category_6_categoryname', 'field_6482fabc86991'),
(266, 44, 'category_6_categorylink', ''),
(267, 44, '_category_6_categorylink', 'field_6482facf86992'),
(268, 44, 'category_7_categoryname', 'MOTOR'),
(269, 44, '_category_7_categoryname', 'field_6482fabc86991'),
(270, 44, 'category_7_categorylink', ''),
(271, 44, '_category_7_categorylink', 'field_6482facf86992'),
(272, 44, 'category_8_categoryname', 'WINTER'),
(273, 44, '_category_8_categoryname', 'field_6482fabc86991'),
(274, 44, 'category_8_categorylink', ''),
(275, 44, '_category_8_categorylink', 'field_6482facf86992'),
(276, 44, 'category', '9'),
(277, 44, '_category', 'field_6482fa3886990'),
(278, 44, 'blogs', 'BLOGS'),
(279, 44, '_blogs', 'field_6482faea86993'),
(280, 44, 'blogspagelink', ''),
(281, 44, '_blogspagelink', 'field_6482faf886994'),
(282, 44, 'contact', 'CONTACT'),
(283, 44, '_contact', 'field_6482fb2186995'),
(284, 44, 'contact_pagelink', ''),
(285, 44, '_contact_pagelink', 'field_6482fb3c86996'),
(286, 44, 'subscribe_button', 'SUBSCRIBE'),
(287, 44, '_subscribe_button', 'field_6482fb7b86997'),
(288, 44, 'search', '42'),
(289, 44, '_search', 'field_6482fbb386998'),
(290, 44, 'search_white_img', '42'),
(291, 44, '_search_white_img', 'field_6482fbb386998'),
(292, 51, '_wp_attached_file', '2023/06/norfolk_img.png'),
(293, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:610;s:6:\"height\";i:374;s:4:\"file\";s:23:\"2023/06/norfolk_img.png\";s:8:\"filesize\";i:344414;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 13, 'about_title', 'ABOUT'),
(295, 13, '_about_title', 'field_648302fa06103'),
(296, 13, 'about_sub_title1', 'The Norfolk'),
(297, 13, '_about_sub_title1', 'field_6483031806104'),
(298, 13, 'about_sub_title2', 'State University baseball'),
(299, 13, '_about_sub_title2', 'field_6483041806105'),
(300, 13, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.'),
(301, 13, '_about_content', 'field_6483044306106'),
(302, 13, 'about_image', '51'),
(303, 13, '_about_image', 'field_6483047806107'),
(304, 52, 'banner_video', '20'),
(305, 52, '_banner_video', 'field_6482beac0459e'),
(306, 52, 'about_title', 'ABOUT'),
(307, 52, '_about_title', 'field_648302fa06103'),
(308, 52, 'about_sub_title1', 'The Norfolk'),
(309, 52, '_about_sub_title1', 'field_6483031806104'),
(310, 52, 'about_sub_title2', 'State University baseball'),
(311, 52, '_about_sub_title2', 'field_6483041806105'),
(312, 52, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.'),
(313, 52, '_about_content', 'field_6483044306106'),
(314, 52, 'about_image', '51'),
(315, 52, '_about_image', 'field_6483047806107'),
(316, 58, '_wp_attached_file', '2023/06/pvamu_img.svg'),
(317, 58, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:162;s:6:\"height\";i:127;s:4:\"file\";s:21:\"2023/06/pvamu_img.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"pvamu_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"pvamu_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"pvamu_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"pvamu_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"pvamu_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"pvamu_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";i:1568;s:6:\"height\";i:9999;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"pvamu_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(318, 59, '_wp_attached_file', '2023/06/titans_img.svg'),
(319, 59, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:101;s:6:\"height\";i:127;s:4:\"file\";s:22:\"2023/06/titans_img.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"titans_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"titans_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"titans_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"titans_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"titans_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"titans_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";i:1568;s:6:\"height\";i:9999;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"titans_img.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(320, 13, 'scores_section_0_score_number', '0-0'),
(321, 13, '_scores_section_0_score_number', 'field_648306ea11659'),
(322, 13, 'scores_section_0_team_logo', '58'),
(323, 13, '_scores_section_0_team_logo', 'field_648307141165a'),
(324, 13, 'scores_section_0_team_name', 'pvamu'),
(325, 13, '_scores_section_0_team_name', 'field_6483072a1165b'),
(326, 13, 'scores_section_1_score_number', '0-0'),
(327, 13, '_scores_section_1_score_number', 'field_648306ea11659'),
(328, 13, 'scores_section_1_team_logo', '59'),
(329, 13, '_scores_section_1_team_logo', 'field_648307141165a'),
(330, 13, 'scores_section_1_team_name', 'titans'),
(331, 13, '_scores_section_1_team_name', 'field_6483072a1165b'),
(332, 13, 'scores_section_2_score_number', '0-0'),
(333, 13, '_scores_section_2_score_number', 'field_648306ea11659'),
(334, 13, 'scores_section_2_team_logo', '58'),
(335, 13, '_scores_section_2_team_logo', 'field_648307141165a'),
(336, 13, 'scores_section_2_team_name', 'pvamu'),
(337, 13, '_scores_section_2_team_name', 'field_6483072a1165b'),
(338, 13, 'scores_section_3_score_number', '0-0'),
(339, 13, '_scores_section_3_score_number', 'field_648306ea11659'),
(340, 13, 'scores_section_3_team_logo', '59'),
(341, 13, '_scores_section_3_team_logo', 'field_648307141165a'),
(342, 13, 'scores_section_3_team_name', 'titans'),
(343, 13, '_scores_section_3_team_name', 'field_6483072a1165b'),
(344, 13, 'scores_section_4_score_number', '0-0'),
(345, 13, '_scores_section_4_score_number', 'field_648306ea11659'),
(346, 13, 'scores_section_4_team_logo', '58'),
(347, 13, '_scores_section_4_team_logo', 'field_648307141165a'),
(348, 13, 'scores_section_4_team_name', 'pvamu'),
(349, 13, '_scores_section_4_team_name', 'field_6483072a1165b'),
(350, 13, 'scores_section_5_score_number', '0-0'),
(351, 13, '_scores_section_5_score_number', 'field_648306ea11659'),
(352, 13, 'scores_section_5_team_logo', '59'),
(353, 13, '_scores_section_5_team_logo', 'field_648307141165a'),
(354, 13, 'scores_section_5_team_name', 'titans'),
(355, 13, '_scores_section_5_team_name', 'field_6483072a1165b'),
(356, 13, 'scores_section_6_score_number', '0-0'),
(357, 13, '_scores_section_6_score_number', 'field_648306ea11659'),
(358, 13, 'scores_section_6_team_logo', '58'),
(359, 13, '_scores_section_6_team_logo', 'field_648307141165a'),
(360, 13, 'scores_section_6_team_name', 'pvamu'),
(361, 13, '_scores_section_6_team_name', 'field_6483072a1165b'),
(362, 13, 'scores_section_7_score_number', '0-0'),
(363, 13, '_scores_section_7_score_number', 'field_648306ea11659'),
(364, 13, 'scores_section_7_team_logo', '59'),
(365, 13, '_scores_section_7_team_logo', 'field_648307141165a'),
(366, 13, 'scores_section_7_team_name', 'titans'),
(367, 13, '_scores_section_7_team_name', 'field_6483072a1165b'),
(368, 13, 'scores_section', '8'),
(369, 13, '_scores_section', 'field_6483069211658'),
(370, 60, 'banner_video', '20'),
(371, 60, '_banner_video', 'field_6482beac0459e'),
(372, 60, 'about_title', 'ABOUT'),
(373, 60, '_about_title', 'field_648302fa06103'),
(374, 60, 'about_sub_title1', 'The Norfolk'),
(375, 60, '_about_sub_title1', 'field_6483031806104'),
(376, 60, 'about_sub_title2', 'State University baseball'),
(377, 60, '_about_sub_title2', 'field_6483041806105'),
(378, 60, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.'),
(379, 60, '_about_content', 'field_6483044306106'),
(380, 60, 'about_image', '51'),
(381, 60, '_about_image', 'field_6483047806107'),
(382, 60, 'scores_section_0_score_number', '0-0'),
(383, 60, '_scores_section_0_score_number', 'field_648306ea11659'),
(384, 60, 'scores_section_0_team_logo', '58'),
(385, 60, '_scores_section_0_team_logo', 'field_648307141165a'),
(386, 60, 'scores_section_0_team_name', 'pvamu'),
(387, 60, '_scores_section_0_team_name', 'field_6483072a1165b'),
(388, 60, 'scores_section_1_score_number', '0-0'),
(389, 60, '_scores_section_1_score_number', 'field_648306ea11659'),
(390, 60, 'scores_section_1_team_logo', '59'),
(391, 60, '_scores_section_1_team_logo', 'field_648307141165a'),
(392, 60, 'scores_section_1_team_name', 'titans'),
(393, 60, '_scores_section_1_team_name', 'field_6483072a1165b'),
(394, 60, 'scores_section_2_score_number', '0-0'),
(395, 60, '_scores_section_2_score_number', 'field_648306ea11659'),
(396, 60, 'scores_section_2_team_logo', '58'),
(397, 60, '_scores_section_2_team_logo', 'field_648307141165a'),
(398, 60, 'scores_section_2_team_name', 'pvamu'),
(399, 60, '_scores_section_2_team_name', 'field_6483072a1165b'),
(400, 60, 'scores_section_3_score_number', '0-0'),
(401, 60, '_scores_section_3_score_number', 'field_648306ea11659'),
(402, 60, 'scores_section_3_team_logo', '59'),
(403, 60, '_scores_section_3_team_logo', 'field_648307141165a'),
(404, 60, 'scores_section_3_team_name', 'titans'),
(405, 60, '_scores_section_3_team_name', 'field_6483072a1165b'),
(406, 60, 'scores_section_4_score_number', '0-0'),
(407, 60, '_scores_section_4_score_number', 'field_648306ea11659'),
(408, 60, 'scores_section_4_team_logo', '58'),
(409, 60, '_scores_section_4_team_logo', 'field_648307141165a'),
(410, 60, 'scores_section_4_team_name', 'pvamu'),
(411, 60, '_scores_section_4_team_name', 'field_6483072a1165b'),
(412, 60, 'scores_section_5_score_number', '0-0'),
(413, 60, '_scores_section_5_score_number', 'field_648306ea11659'),
(414, 60, 'scores_section_5_team_logo', '59'),
(415, 60, '_scores_section_5_team_logo', 'field_648307141165a'),
(416, 60, 'scores_section_5_team_name', 'titans'),
(417, 60, '_scores_section_5_team_name', 'field_6483072a1165b'),
(418, 60, 'scores_section_6_score_number', '0-0'),
(419, 60, '_scores_section_6_score_number', 'field_648306ea11659'),
(420, 60, 'scores_section_6_team_logo', '58'),
(421, 60, '_scores_section_6_team_logo', 'field_648307141165a'),
(422, 60, 'scores_section_6_team_name', 'pvamu'),
(423, 60, '_scores_section_6_team_name', 'field_6483072a1165b'),
(424, 60, 'scores_section_7_score_number', '0-0'),
(425, 60, '_scores_section_7_score_number', 'field_648306ea11659'),
(426, 60, 'scores_section_7_team_logo', '59'),
(427, 60, '_scores_section_7_team_logo', 'field_648307141165a'),
(428, 60, 'scores_section_7_team_name', 'titans'),
(429, 60, '_scores_section_7_team_name', 'field_6483072a1165b'),
(430, 60, 'scores_section', '8'),
(431, 60, '_scores_section', 'field_6483069211658'),
(432, 63, '_wp_attached_file', '2023/06/next_arrow.svg'),
(433, 63, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:27;s:6:\"height\";i:28;s:4:\"file\";s:22:\"2023/06/next_arrow.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"next_arrow.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"next_arrow.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"next_arrow.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"next_arrow.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"next_arrow.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"next_arrow.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";i:1568;s:6:\"height\";i:9999;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"next_arrow.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(434, 13, 'right_arrow', '63'),
(435, 13, '_right_arrow', 'field_64830afc32359'),
(436, 13, 'left_arrow', '63'),
(437, 13, '_left_arrow', 'field_64830b1e3235a'),
(438, 64, 'banner_video', '20'),
(439, 64, '_banner_video', 'field_6482beac0459e'),
(440, 64, 'about_title', 'ABOUT'),
(441, 64, '_about_title', 'field_648302fa06103'),
(442, 64, 'about_sub_title1', 'The Norfolk'),
(443, 64, '_about_sub_title1', 'field_6483031806104'),
(444, 64, 'about_sub_title2', 'State University baseball'),
(445, 64, '_about_sub_title2', 'field_6483041806105'),
(446, 64, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.'),
(447, 64, '_about_content', 'field_6483044306106'),
(448, 64, 'about_image', '51'),
(449, 64, '_about_image', 'field_6483047806107'),
(450, 64, 'scores_section_0_score_number', '0-0'),
(451, 64, '_scores_section_0_score_number', 'field_648306ea11659'),
(452, 64, 'scores_section_0_team_logo', '58'),
(453, 64, '_scores_section_0_team_logo', 'field_648307141165a'),
(454, 64, 'scores_section_0_team_name', 'pvamu'),
(455, 64, '_scores_section_0_team_name', 'field_6483072a1165b'),
(456, 64, 'scores_section_1_score_number', '0-0'),
(457, 64, '_scores_section_1_score_number', 'field_648306ea11659'),
(458, 64, 'scores_section_1_team_logo', '59'),
(459, 64, '_scores_section_1_team_logo', 'field_648307141165a'),
(460, 64, 'scores_section_1_team_name', 'titans'),
(461, 64, '_scores_section_1_team_name', 'field_6483072a1165b'),
(462, 64, 'scores_section_2_score_number', '0-0'),
(463, 64, '_scores_section_2_score_number', 'field_648306ea11659'),
(464, 64, 'scores_section_2_team_logo', '58'),
(465, 64, '_scores_section_2_team_logo', 'field_648307141165a'),
(466, 64, 'scores_section_2_team_name', 'pvamu'),
(467, 64, '_scores_section_2_team_name', 'field_6483072a1165b'),
(468, 64, 'scores_section_3_score_number', '0-0'),
(469, 64, '_scores_section_3_score_number', 'field_648306ea11659'),
(470, 64, 'scores_section_3_team_logo', '59'),
(471, 64, '_scores_section_3_team_logo', 'field_648307141165a'),
(472, 64, 'scores_section_3_team_name', 'titans'),
(473, 64, '_scores_section_3_team_name', 'field_6483072a1165b'),
(474, 64, 'scores_section_4_score_number', '0-0'),
(475, 64, '_scores_section_4_score_number', 'field_648306ea11659'),
(476, 64, 'scores_section_4_team_logo', '58'),
(477, 64, '_scores_section_4_team_logo', 'field_648307141165a'),
(478, 64, 'scores_section_4_team_name', 'pvamu'),
(479, 64, '_scores_section_4_team_name', 'field_6483072a1165b'),
(480, 64, 'scores_section_5_score_number', '0-0'),
(481, 64, '_scores_section_5_score_number', 'field_648306ea11659'),
(482, 64, 'scores_section_5_team_logo', '59'),
(483, 64, '_scores_section_5_team_logo', 'field_648307141165a'),
(484, 64, 'scores_section_5_team_name', 'titans'),
(485, 64, '_scores_section_5_team_name', 'field_6483072a1165b'),
(486, 64, 'scores_section_6_score_number', '0-0'),
(487, 64, '_scores_section_6_score_number', 'field_648306ea11659'),
(488, 64, 'scores_section_6_team_logo', '58'),
(489, 64, '_scores_section_6_team_logo', 'field_648307141165a'),
(490, 64, 'scores_section_6_team_name', 'pvamu'),
(491, 64, '_scores_section_6_team_name', 'field_6483072a1165b'),
(492, 64, 'scores_section_7_score_number', '0-0'),
(493, 64, '_scores_section_7_score_number', 'field_648306ea11659'),
(494, 64, 'scores_section_7_team_logo', '59'),
(495, 64, '_scores_section_7_team_logo', 'field_648307141165a'),
(496, 64, 'scores_section_7_team_name', 'titans'),
(497, 64, '_scores_section_7_team_name', 'field_6483072a1165b'),
(498, 64, 'scores_section', '8'),
(499, 64, '_scores_section', 'field_6483069211658'),
(500, 64, 'right_arrow', '63'),
(501, 64, '_right_arrow', 'field_64830afc32359'),
(502, 64, 'left_arrow', '63'),
(503, 64, '_left_arrow', 'field_64830b1e3235a'),
(504, 65, '_edit_last', '1'),
(505, 65, '_edit_lock', '1686580299:1'),
(506, 67, '_edit_last', '1'),
(507, 67, 'is_acf_component', ''),
(508, 67, '_edit_lock', '1686310483:1'),
(509, 65, 'newsletter_title', 'Newsletter'),
(510, 65, '_newsletter_title', 'field_64830d12c23b9'),
(511, 65, 'newsletter_content', 'Stay up to date with all the latest news, updates, and exclusive content from our organization.'),
(512, 65, '_newsletter_content', 'field_64830d25c23ba'),
(513, 71, 'newsletter_title', 'Newsletter'),
(514, 71, '_newsletter_title', 'field_64830d12c23b9'),
(515, 71, 'newsletter_content', 'Stay up to date with all the latest news, updates, and exclusive content from our organization.'),
(516, 71, '_newsletter_content', 'field_64830d25c23ba'),
(517, 65, 'footer_logo', 'LOGO'),
(518, 65, '_footer_logo', 'field_64830e4aea0cd'),
(519, 65, 'footer_content', 'Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.'),
(520, 65, '_footer_content', 'field_64830e5bea0ce'),
(521, 75, 'newsletter_title', 'Newsletter'),
(522, 75, '_newsletter_title', 'field_64830d12c23b9'),
(523, 75, 'newsletter_content', 'Stay up to date with all the latest news, updates, and exclusive content from our organization.'),
(524, 75, '_newsletter_content', 'field_64830d25c23ba'),
(525, 75, 'footer_logo', 'LOGO'),
(526, 75, '_footer_logo', 'field_64830e4aea0cd'),
(527, 75, 'footer_content', 'Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.'),
(528, 75, '_footer_content', 'field_64830e5bea0ce'),
(529, 76, '_edit_last', '1'),
(530, 76, '_edit_lock', '1686331299:1'),
(531, 77, '_wp_attached_file', '2023/06/featured1_img.png'),
(532, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2023/06/featured1_img.png\";s:8:\"filesize\";i:260354;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(533, 76, '_thumbnail_id', '77'),
(534, 79, '_edit_last', '1'),
(535, 79, '_edit_lock', '1686331304:1'),
(536, 80, '_wp_attached_file', '2023/06/featured2_img.png'),
(537, 80, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2023/06/featured2_img.png\";s:8:\"filesize\";i:246113;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 79, '_thumbnail_id', '80'),
(539, 82, '_edit_last', '1'),
(540, 82, '_edit_lock', '1686331309:1'),
(541, 82, '_thumbnail_id', '80'),
(542, 84, '_edit_last', '1'),
(543, 84, '_edit_lock', '1686331322:1'),
(544, 85, '_wp_attached_file', '2023/06/featured4_img.png'),
(545, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2023/06/featured4_img.png\";s:8:\"filesize\";i:201789;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 84, '_thumbnail_id', '85'),
(547, 87, '_edit_last', '1'),
(548, 87, '_edit_lock', '1686331336:1'),
(549, 88, '_wp_attached_file', '2023/06/featured5_img.png'),
(550, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2023/06/featured5_img.png\";s:8:\"filesize\";i:162795;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(551, 87, '_thumbnail_id', '88'),
(552, 90, '_edit_last', '1'),
(553, 90, '_edit_lock', '1686331343:1'),
(554, 91, '_wp_attached_file', '2023/06/featured6_img.png'),
(555, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2023/06/featured6_img.png\";s:8:\"filesize\";i:131167;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(556, 90, '_thumbnail_id', '91'),
(557, 93, '_edit_last', '1'),
(558, 93, '_edit_lock', '1686331359:1'),
(561, 93, '_thumbnail_id', '77'),
(562, 96, '_edit_last', '1'),
(563, 96, '_edit_lock', '1686331364:1'),
(564, 96, '_thumbnail_id', '88'),
(565, 98, '_edit_last', '1'),
(566, 98, '_edit_lock', '1686547530:1'),
(567, 98, '_thumbnail_id', '80'),
(568, 102, '_edit_last', '1'),
(569, 102, '_edit_lock', '1686547734:1'),
(570, 102, '_thumbnail_id', '77'),
(571, 104, '_edit_last', '1'),
(572, 104, '_edit_lock', '1686547625:1'),
(573, 104, '_thumbnail_id', '80'),
(574, 106, '_edit_last', '1'),
(575, 106, '_edit_lock', '1686547616:1'),
(576, 106, '_thumbnail_id', '85'),
(577, 108, '_edit_last', '1'),
(578, 108, '_edit_lock', '1686547605:1'),
(579, 108, '_thumbnail_id', '88'),
(580, 110, '_edit_last', '1'),
(581, 110, '_edit_lock', '1686547592:1'),
(582, 110, '_thumbnail_id', '91'),
(583, 112, '_edit_last', '1'),
(584, 112, '_edit_lock', '1686547580:1'),
(585, 112, '_thumbnail_id', '91'),
(586, 114, '_edit_last', '1'),
(587, 114, '_edit_lock', '1686547570:1'),
(588, 114, '_thumbnail_id', '77'),
(589, 116, '_edit_last', '1'),
(590, 116, '_edit_lock', '1686547561:1'),
(591, 116, '_thumbnail_id', '85'),
(592, 118, '_edit_last', '1'),
(593, 118, '_edit_lock', '1686547979:1'),
(594, 118, '_thumbnail_id', '77'),
(595, 121, '_edit_last', '1'),
(596, 121, '_edit_lock', '1686495963:1'),
(597, 123, '_edit_last', '1'),
(598, 123, '_edit_lock', '1686550451:1'),
(599, 123, '_thumbnail_id', '88'),
(600, 121, '_thumbnail_id', '77'),
(601, 127, '_edit_last', '1'),
(602, 127, '_edit_lock', '1686481239:1'),
(603, 127, '_thumbnail_id', '80'),
(604, 129, '_edit_last', '1'),
(605, 129, '_edit_lock', '1686481258:1'),
(606, 129, '_thumbnail_id', '91'),
(607, 131, '_edit_last', '1'),
(608, 131, '_edit_lock', '1686481281:1'),
(609, 131, '_thumbnail_id', '85'),
(610, 133, '_edit_last', '1'),
(611, 133, '_edit_lock', '1686481289:1'),
(612, 133, '_thumbnail_id', '51'),
(613, 135, '_edit_last', '1'),
(614, 135, 'is_acf_component', ''),
(615, 135, '_edit_lock', '1686550620:1'),
(616, 138, '_edit_last', '1'),
(617, 138, '_edit_lock', '1686547191:1'),
(618, 139, '_edit_last', '1'),
(619, 139, '_wp_page_template', 'default'),
(620, 139, 'events_title', ''),
(621, 139, '_events_title', 'field_6486aa92a925f'),
(622, 140, 'events_title', ''),
(623, 140, '_events_title', 'field_6486aa92a925f'),
(624, 139, '_edit_lock', '1686547094:1'),
(625, 138, '_wp_trash_meta_status', 'draft'),
(626, 138, '_wp_trash_meta_time', '1686547232'),
(627, 138, '_wp_desired_post_slug', ''),
(628, 139, '_wp_trash_meta_status', 'publish'),
(629, 139, '_wp_trash_meta_time', '1686547248'),
(630, 139, '_wp_desired_post_slug', 'events'),
(631, 98, 'events_title', 'events'),
(632, 98, '_events_title', 'field_6486aa92a925f'),
(633, 144, 'events_title', 'events'),
(634, 144, '_events_title', 'field_6486aa92a925f'),
(635, 145, '_edit_last', '1'),
(636, 145, 'is_acf_component', ''),
(637, 145, '_edit_lock', '1686552817:1'),
(638, 118, 'individual_title', 'Individual'),
(639, 118, '_individual_title', 'field_6486adc99ec77'),
(640, 148, 'individual_title', 'Individual'),
(641, 148, '_individual_title', 'field_6486adc99ec77'),
(642, 149, '_edit_last', '1'),
(643, 149, '_edit_lock', '1686548145:1'),
(644, 149, '_thumbnail_id', '77'),
(645, 151, '_edit_last', '1'),
(646, 151, '_edit_lock', '1686548170:1'),
(647, 151, '_thumbnail_id', '88'),
(648, 153, '_edit_last', '1'),
(649, 153, '_edit_lock', '1686548208:1'),
(650, 153, '_thumbnail_id', '77'),
(651, 155, '_edit_last', '1'),
(652, 155, '_thumbnail_id', '91'),
(653, 155, '_edit_lock', '1686548228:1'),
(654, 157, '_edit_last', '1'),
(655, 157, '_edit_lock', '1686548255:1'),
(656, 157, '_thumbnail_id', '85'),
(657, 159, '_edit_last', '1'),
(658, 159, '_edit_lock', '1686548287:1'),
(659, 159, '_thumbnail_id', '51'),
(660, 161, '_edit_last', '1'),
(661, 161, '_edit_lock', '1686548315:1'),
(662, 161, '_thumbnail_id', '88'),
(663, 163, '_edit_last', '1'),
(664, 163, '_edit_lock', '1686548351:1'),
(665, 163, '_thumbnail_id', '80'),
(666, 165, '_edit_last', '1'),
(667, 165, '_thumbnail_id', '51'),
(668, 165, '_edit_lock', '1686548377:1'),
(669, 167, '_edit_last', '1'),
(670, 167, '_edit_lock', '1686548431:1'),
(671, 167, '_thumbnail_id', '51'),
(672, 169, '_edit_last', '1'),
(673, 169, '_edit_lock', '1686548453:1'),
(674, 169, '_thumbnail_id', '85'),
(675, 171, '_edit_last', '1'),
(676, 171, '_edit_lock', '1686548482:1'),
(677, 171, '_thumbnail_id', '80'),
(678, 173, '_edit_last', '1'),
(679, 173, '_edit_lock', '1686553618:1'),
(680, 173, '_thumbnail_id', '80'),
(681, 175, '_edit_last', '1'),
(682, 175, '_edit_lock', '1686553223:1'),
(683, 175, '_thumbnail_id', '51'),
(684, 177, '_edit_last', '1'),
(685, 177, '_edit_lock', '1686634757:1'),
(686, 177, '_thumbnail_id', '88'),
(687, 179, '_edit_last', '1'),
(688, 179, 'is_acf_component', ''),
(689, 179, '_edit_lock', '1686553191:1'),
(690, 123, 'events_title', 'Events'),
(691, 123, '_events_title', 'field_6486b23e31687'),
(692, 123, 'individual_title', ''),
(693, 123, '_individual_title', 'field_6486b2653168a'),
(694, 184, 'events_title', 'Events'),
(695, 184, '_events_title', 'field_6486b23e31687'),
(696, 184, 'individual_title', 'Individual'),
(697, 184, '_individual_title', 'field_6486b2653168a'),
(698, 177, 'events_title', ''),
(699, 177, '_events_title', 'field_6486b23e31687'),
(700, 177, 'individual_title', 'Individual'),
(701, 177, '_individual_title', 'field_6486b2653168a'),
(702, 185, 'events_title', 'Events'),
(703, 185, '_events_title', 'field_6486b23e31687'),
(704, 185, 'individual_title', 'Individual'),
(705, 185, '_individual_title', 'field_6486b2653168a'),
(706, 186, 'events_title', 'Events'),
(707, 186, '_events_title', 'field_6486b23e31687'),
(708, 186, 'individual_title', ''),
(709, 186, '_individual_title', 'field_6486b2653168a'),
(710, 187, 'events_title', ''),
(711, 187, '_events_title', 'field_6486b23e31687'),
(712, 187, 'individual_title', 'Individual'),
(713, 187, '_individual_title', 'field_6486b2653168a'),
(714, 188, 'events_title', ''),
(715, 188, '_events_title', 'field_6486b23e31687'),
(716, 188, 'individual_title', 'Individual'),
(717, 188, '_individual_title', 'field_6486adc99ec77'),
(718, 189, 'events_title', 'Individual'),
(719, 189, '_events_title', 'field_6486b23e31687'),
(720, 189, 'individual_title', 'Individual'),
(721, 189, '_individual_title', 'field_6486adc99ec77'),
(722, 175, 'events_title', ''),
(723, 175, '_events_title', 'field_6486b23e31687'),
(724, 175, 'individual_title', 'Individual'),
(725, 175, '_individual_title', 'field_6486adc99ec77'),
(726, 190, 'events_title', ''),
(727, 190, '_events_title', 'field_6486b23e31687'),
(728, 190, 'individual_title', 'Individual'),
(729, 190, '_individual_title', 'field_6486adc99ec77'),
(730, 145, '_wp_trash_meta_status', 'publish'),
(731, 145, '_wp_trash_meta_time', '1686552969'),
(732, 145, '_wp_desired_post_slug', 'group_6486ada8b947a'),
(733, 146, '_wp_trash_meta_status', 'publish'),
(734, 146, '_wp_trash_meta_time', '1686552969'),
(735, 146, '_wp_desired_post_slug', 'field_6486adb49ec76'),
(736, 147, '_wp_trash_meta_status', 'publish'),
(737, 147, '_wp_trash_meta_time', '1686552969'),
(738, 147, '_wp_desired_post_slug', 'field_6486adc99ec77'),
(739, 135, '_wp_trash_meta_status', 'publish'),
(740, 135, '_wp_trash_meta_time', '1686552974'),
(741, 135, '_wp_desired_post_slug', 'group_6486aa5121271'),
(742, 136, '_wp_trash_meta_status', 'publish'),
(743, 136, '_wp_trash_meta_time', '1686552974'),
(744, 136, '_wp_desired_post_slug', 'field_6486aa62a925e'),
(745, 137, '_wp_trash_meta_status', 'publish'),
(746, 137, '_wp_trash_meta_time', '1686552975'),
(747, 137, '_wp_desired_post_slug', 'field_6486aa92a925f'),
(748, 177, 'featured_title', 'FEATURED'),
(749, 177, '_featured_title', 'field_6486c1c43525f'),
(750, 193, 'events_title', 'Individual'),
(751, 193, '_events_title', 'field_6486b23e31687'),
(752, 193, 'individual_title', 'Individual'),
(753, 193, '_individual_title', 'field_6486b2653168a'),
(754, 193, 'featured_title', 'FEATURED'),
(755, 193, '_featured_title', 'field_6486c1c43525f'),
(756, 194, 'events_title', ''),
(757, 194, '_events_title', 'field_6486b23e31687'),
(758, 194, 'individual_title', 'Individual'),
(759, 194, '_individual_title', 'field_6486b2653168a'),
(760, 194, 'featured_title', 'FEATURED'),
(761, 194, '_featured_title', 'field_6486c1c43525f'),
(762, 173, 'events_title', ''),
(763, 173, '_events_title', 'field_6486b23e31687'),
(764, 173, 'individual_title', ''),
(765, 173, '_individual_title', 'field_6486b2653168a'),
(766, 173, 'featured_title', 'FEATURED'),
(767, 173, '_featured_title', 'field_6486c1c43525f'),
(768, 195, 'events_title', ''),
(769, 195, '_events_title', 'field_6486b23e31687'),
(770, 195, 'individual_title', ''),
(771, 195, '_individual_title', 'field_6486b2653168a'),
(772, 195, 'featured_title', 'FEATURED'),
(773, 195, '_featured_title', 'field_6486c1c43525f'),
(774, 13, 'events', 'a:1:{i:0;s:1:\"4\";}'),
(775, 13, '_events', 'field_6486d665c9336'),
(776, 198, 'banner_video', '20'),
(777, 198, '_banner_video', 'field_6482beac0459e'),
(778, 198, 'about_title', 'ABOUT'),
(779, 198, '_about_title', 'field_648302fa06103'),
(780, 198, 'about_sub_title1', 'The Norfolk'),
(781, 198, '_about_sub_title1', 'field_6483031806104'),
(782, 198, 'about_sub_title2', 'State University baseball'),
(783, 198, '_about_sub_title2', 'field_6483041806105'),
(784, 198, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(785, 198, '_about_content', 'field_6483044306106'),
(786, 198, 'about_image', '51'),
(787, 198, '_about_image', 'field_6483047806107'),
(788, 198, 'scores_section_0_score_number', '0-0'),
(789, 198, '_scores_section_0_score_number', 'field_648306ea11659'),
(790, 198, 'scores_section_0_team_logo', '58'),
(791, 198, '_scores_section_0_team_logo', 'field_648307141165a'),
(792, 198, 'scores_section_0_team_name', 'pvamu'),
(793, 198, '_scores_section_0_team_name', 'field_6483072a1165b'),
(794, 198, 'scores_section_1_score_number', '0-0'),
(795, 198, '_scores_section_1_score_number', 'field_648306ea11659'),
(796, 198, 'scores_section_1_team_logo', '59'),
(797, 198, '_scores_section_1_team_logo', 'field_648307141165a'),
(798, 198, 'scores_section_1_team_name', 'titans'),
(799, 198, '_scores_section_1_team_name', 'field_6483072a1165b'),
(800, 198, 'scores_section_2_score_number', '0-0'),
(801, 198, '_scores_section_2_score_number', 'field_648306ea11659'),
(802, 198, 'scores_section_2_team_logo', '58'),
(803, 198, '_scores_section_2_team_logo', 'field_648307141165a'),
(804, 198, 'scores_section_2_team_name', 'pvamu'),
(805, 198, '_scores_section_2_team_name', 'field_6483072a1165b'),
(806, 198, 'scores_section_3_score_number', '0-0'),
(807, 198, '_scores_section_3_score_number', 'field_648306ea11659'),
(808, 198, 'scores_section_3_team_logo', '59'),
(809, 198, '_scores_section_3_team_logo', 'field_648307141165a'),
(810, 198, 'scores_section_3_team_name', 'titans'),
(811, 198, '_scores_section_3_team_name', 'field_6483072a1165b'),
(812, 198, 'scores_section_4_score_number', '0-0'),
(813, 198, '_scores_section_4_score_number', 'field_648306ea11659'),
(814, 198, 'scores_section_4_team_logo', '58'),
(815, 198, '_scores_section_4_team_logo', 'field_648307141165a'),
(816, 198, 'scores_section_4_team_name', 'pvamu'),
(817, 198, '_scores_section_4_team_name', 'field_6483072a1165b'),
(818, 198, 'scores_section_5_score_number', '0-0'),
(819, 198, '_scores_section_5_score_number', 'field_648306ea11659'),
(820, 198, 'scores_section_5_team_logo', '59'),
(821, 198, '_scores_section_5_team_logo', 'field_648307141165a'),
(822, 198, 'scores_section_5_team_name', 'titans'),
(823, 198, '_scores_section_5_team_name', 'field_6483072a1165b'),
(824, 198, 'scores_section_6_score_number', '0-0'),
(825, 198, '_scores_section_6_score_number', 'field_648306ea11659'),
(826, 198, 'scores_section_6_team_logo', '58'),
(827, 198, '_scores_section_6_team_logo', 'field_648307141165a'),
(828, 198, 'scores_section_6_team_name', 'pvamu'),
(829, 198, '_scores_section_6_team_name', 'field_6483072a1165b'),
(830, 198, 'scores_section_7_score_number', '0-0'),
(831, 198, '_scores_section_7_score_number', 'field_648306ea11659'),
(832, 198, 'scores_section_7_team_logo', '59'),
(833, 198, '_scores_section_7_team_logo', 'field_648307141165a'),
(834, 198, 'scores_section_7_team_name', 'titans'),
(835, 198, '_scores_section_7_team_name', 'field_6483072a1165b'),
(836, 198, 'scores_section', '8'),
(837, 198, '_scores_section', 'field_6483069211658'),
(838, 198, 'right_arrow', '63'),
(839, 198, '_right_arrow', 'field_64830afc32359'),
(840, 198, 'left_arrow', '63'),
(841, 198, '_left_arrow', 'field_64830b1e3235a'),
(842, 198, 'events', 'a:1:{i:0;s:1:\"4\";}'),
(843, 198, '_events', 'field_6486d665c9336'),
(844, 200, '_wp_attached_file', '2023/06/water_img.png'),
(845, 200, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:374;s:4:\"file\";s:21:\"2023/06/water_img.png\";s:8:\"filesize\";i:219689;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(846, 201, '_wp_attached_file', '2023/06/combat_img.png'),
(847, 201, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:290;s:6:\"height\";i:374;s:4:\"file\";s:22:\"2023/06/combat_img.png\";s:8:\"filesize\";i:176165;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(848, 13, 'category_title', 'CATEGORIES'),
(849, 13, '_category_title', 'field_6486f5b3e22f9'),
(850, 204, 'banner_video', '20'),
(851, 204, '_banner_video', 'field_6482beac0459e'),
(852, 204, 'about_title', 'ABOUT'),
(853, 204, '_about_title', 'field_648302fa06103'),
(854, 204, 'about_sub_title1', 'The Norfolk'),
(855, 204, '_about_sub_title1', 'field_6483031806104'),
(856, 204, 'about_sub_title2', 'State University baseball'),
(857, 204, '_about_sub_title2', 'field_6483041806105'),
(858, 204, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.'),
(859, 204, '_about_content', 'field_6483044306106'),
(860, 204, 'about_image', '51'),
(861, 204, '_about_image', 'field_6483047806107'),
(862, 204, 'scores_section_0_score_number', '0-0'),
(863, 204, '_scores_section_0_score_number', 'field_648306ea11659'),
(864, 204, 'scores_section_0_team_logo', '58'),
(865, 204, '_scores_section_0_team_logo', 'field_648307141165a'),
(866, 204, 'scores_section_0_team_name', 'pvamu'),
(867, 204, '_scores_section_0_team_name', 'field_6483072a1165b'),
(868, 204, 'scores_section_1_score_number', '0-0'),
(869, 204, '_scores_section_1_score_number', 'field_648306ea11659'),
(870, 204, 'scores_section_1_team_logo', '59'),
(871, 204, '_scores_section_1_team_logo', 'field_648307141165a'),
(872, 204, 'scores_section_1_team_name', 'titans'),
(873, 204, '_scores_section_1_team_name', 'field_6483072a1165b'),
(874, 204, 'scores_section_2_score_number', '0-0'),
(875, 204, '_scores_section_2_score_number', 'field_648306ea11659'),
(876, 204, 'scores_section_2_team_logo', '58'),
(877, 204, '_scores_section_2_team_logo', 'field_648307141165a'),
(878, 204, 'scores_section_2_team_name', 'pvamu'),
(879, 204, '_scores_section_2_team_name', 'field_6483072a1165b'),
(880, 204, 'scores_section_3_score_number', '0-0'),
(881, 204, '_scores_section_3_score_number', 'field_648306ea11659'),
(882, 204, 'scores_section_3_team_logo', '59'),
(883, 204, '_scores_section_3_team_logo', 'field_648307141165a'),
(884, 204, 'scores_section_3_team_name', 'titans'),
(885, 204, '_scores_section_3_team_name', 'field_6483072a1165b'),
(886, 204, 'scores_section_4_score_number', '0-0'),
(887, 204, '_scores_section_4_score_number', 'field_648306ea11659'),
(888, 204, 'scores_section_4_team_logo', '58'),
(889, 204, '_scores_section_4_team_logo', 'field_648307141165a'),
(890, 204, 'scores_section_4_team_name', 'pvamu'),
(891, 204, '_scores_section_4_team_name', 'field_6483072a1165b'),
(892, 204, 'scores_section_5_score_number', '0-0'),
(893, 204, '_scores_section_5_score_number', 'field_648306ea11659'),
(894, 204, 'scores_section_5_team_logo', '59'),
(895, 204, '_scores_section_5_team_logo', 'field_648307141165a'),
(896, 204, 'scores_section_5_team_name', 'titans'),
(897, 204, '_scores_section_5_team_name', 'field_6483072a1165b'),
(898, 204, 'scores_section_6_score_number', '0-0'),
(899, 204, '_scores_section_6_score_number', 'field_648306ea11659'),
(900, 204, 'scores_section_6_team_logo', '58'),
(901, 204, '_scores_section_6_team_logo', 'field_648307141165a'),
(902, 204, 'scores_section_6_team_name', 'pvamu'),
(903, 204, '_scores_section_6_team_name', 'field_6483072a1165b'),
(904, 204, 'scores_section_7_score_number', '0-0'),
(905, 204, '_scores_section_7_score_number', 'field_648306ea11659'),
(906, 204, 'scores_section_7_team_logo', '59'),
(907, 204, '_scores_section_7_team_logo', 'field_648307141165a'),
(908, 204, 'scores_section_7_team_name', 'titans'),
(909, 204, '_scores_section_7_team_name', 'field_6483072a1165b'),
(910, 204, 'scores_section', '8'),
(911, 204, '_scores_section', 'field_6483069211658'),
(912, 204, 'right_arrow', '63'),
(913, 204, '_right_arrow', 'field_64830afc32359'),
(914, 204, 'left_arrow', '63'),
(915, 204, '_left_arrow', 'field_64830b1e3235a'),
(916, 204, 'events', 'a:1:{i:0;s:1:\"4\";}'),
(917, 204, '_events', 'field_6486d665c9336'),
(918, 204, 'category_title', 'CATEGORIES'),
(919, 204, '_category_title', 'field_6486f5b3e22f9'),
(920, 205, '_edit_last', '1'),
(921, 205, '_edit_lock', '1686567309:1'),
(922, 205, '_thumbnail_id', '201'),
(923, 205, 'events_title', ''),
(924, 205, '_events_title', 'field_6486b23e31687'),
(925, 205, 'individual_title', ''),
(926, 205, '_individual_title', 'field_6486b2653168a'),
(927, 205, 'featured_title', ''),
(928, 205, '_featured_title', 'field_6486c1c43525f'),
(929, 206, 'events_title', ''),
(930, 206, '_events_title', 'field_6486b23e31687'),
(931, 206, 'individual_title', ''),
(932, 206, '_individual_title', 'field_6486b2653168a'),
(933, 206, 'featured_title', ''),
(934, 206, '_featured_title', 'field_6486c1c43525f'),
(935, 205, '_wp_trash_meta_status', 'publish'),
(936, 205, '_wp_trash_meta_time', '1686567456'),
(937, 205, '_wp_desired_post_slug', 'lorem-ipsum-dolor-sit-22'),
(938, 207, '_edit_last', '1'),
(939, 207, '_edit_lock', '1686567359:1'),
(940, 208, '_edit_last', '1'),
(941, 208, '_edit_lock', '1686567401:1'),
(942, 209, 'banner_video', '20'),
(943, 209, '_banner_video', 'field_6482beac0459e'),
(944, 209, 'about_title', 'ABOUT'),
(945, 209, '_about_title', 'field_648302fa06103'),
(946, 209, 'about_sub_title1', 'The Norfolk'),
(947, 209, '_about_sub_title1', 'field_6483031806104'),
(948, 209, 'about_sub_title2', 'State University baseball'),
(949, 209, '_about_sub_title2', 'field_6483041806105'),
(950, 209, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.'),
(951, 209, '_about_content', 'field_6483044306106'),
(952, 209, 'about_image', '51'),
(953, 209, '_about_image', 'field_6483047806107'),
(954, 209, 'scores_section_0_score_number', '0-0'),
(955, 209, '_scores_section_0_score_number', 'field_648306ea11659'),
(956, 209, 'scores_section_0_team_logo', '58'),
(957, 209, '_scores_section_0_team_logo', 'field_648307141165a'),
(958, 209, 'scores_section_0_team_name', 'pvamu'),
(959, 209, '_scores_section_0_team_name', 'field_6483072a1165b'),
(960, 209, 'scores_section_1_score_number', '0-0'),
(961, 209, '_scores_section_1_score_number', 'field_648306ea11659'),
(962, 209, 'scores_section_1_team_logo', '59'),
(963, 209, '_scores_section_1_team_logo', 'field_648307141165a'),
(964, 209, 'scores_section_1_team_name', 'titans'),
(965, 209, '_scores_section_1_team_name', 'field_6483072a1165b'),
(966, 209, 'scores_section_2_score_number', '0-0'),
(967, 209, '_scores_section_2_score_number', 'field_648306ea11659'),
(968, 209, 'scores_section_2_team_logo', '58'),
(969, 209, '_scores_section_2_team_logo', 'field_648307141165a'),
(970, 209, 'scores_section_2_team_name', 'pvamu'),
(971, 209, '_scores_section_2_team_name', 'field_6483072a1165b'),
(972, 209, 'scores_section_3_score_number', '0-0'),
(973, 209, '_scores_section_3_score_number', 'field_648306ea11659'),
(974, 209, 'scores_section_3_team_logo', '59'),
(975, 209, '_scores_section_3_team_logo', 'field_648307141165a'),
(976, 209, 'scores_section_3_team_name', 'titans'),
(977, 209, '_scores_section_3_team_name', 'field_6483072a1165b'),
(978, 209, 'scores_section_4_score_number', '0-0'),
(979, 209, '_scores_section_4_score_number', 'field_648306ea11659'),
(980, 209, 'scores_section_4_team_logo', '58'),
(981, 209, '_scores_section_4_team_logo', 'field_648307141165a'),
(982, 209, 'scores_section_4_team_name', 'pvamu'),
(983, 209, '_scores_section_4_team_name', 'field_6483072a1165b'),
(984, 209, 'scores_section_5_score_number', '0-0'),
(985, 209, '_scores_section_5_score_number', 'field_648306ea11659'),
(986, 209, 'scores_section_5_team_logo', '59'),
(987, 209, '_scores_section_5_team_logo', 'field_648307141165a'),
(988, 209, 'scores_section_5_team_name', 'titans'),
(989, 209, '_scores_section_5_team_name', 'field_6483072a1165b'),
(990, 209, 'scores_section_6_score_number', '0-0'),
(991, 209, '_scores_section_6_score_number', 'field_648306ea11659'),
(992, 209, 'scores_section_6_team_logo', '58'),
(993, 209, '_scores_section_6_team_logo', 'field_648307141165a'),
(994, 209, 'scores_section_6_team_name', 'pvamu'),
(995, 209, '_scores_section_6_team_name', 'field_6483072a1165b'),
(996, 209, 'scores_section_7_score_number', '0-0'),
(997, 209, '_scores_section_7_score_number', 'field_648306ea11659'),
(998, 209, 'scores_section_7_team_logo', '59'),
(999, 209, '_scores_section_7_team_logo', 'field_648307141165a'),
(1000, 209, 'scores_section_7_team_name', 'titans'),
(1001, 209, '_scores_section_7_team_name', 'field_6483072a1165b'),
(1002, 209, 'scores_section', '8'),
(1003, 209, '_scores_section', 'field_6483069211658'),
(1004, 209, 'right_arrow', '63'),
(1005, 209, '_right_arrow', 'field_64830afc32359'),
(1006, 209, 'left_arrow', '63'),
(1007, 209, '_left_arrow', 'field_64830b1e3235a'),
(1008, 209, 'events', 'a:1:{i:0;s:1:\"4\";}'),
(1009, 209, '_events', 'field_6486d665c9336'),
(1010, 209, 'category_title', 'CATEGORIES'),
(1011, 209, '_category_title', 'field_6486f5b3e22f9'),
(1012, 210, '_edit_last', '1'),
(1013, 210, '_edit_lock', '1686580059:1'),
(1014, 210, '_wp_page_template', 'about.php'),
(1015, 212, '_edit_last', '1'),
(1016, 212, 'is_acf_component', ''),
(1017, 212, '_edit_lock', '1686575881:1'),
(1018, 213, 'home', 'HOME'),
(1019, 213, '_home', 'field_6482f9428698b'),
(1020, 213, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(1021, 213, '_homepagelink', 'field_6482f9608698c'),
(1022, 213, 'about', 'ABOUT'),
(1023, 213, '_about', 'field_6482f9df8698d'),
(1024, 213, 'aboutpagelink', 'a:3:{s:5:\"title\";s:5:\"about\";s:3:\"url\";s:27:\"http://localhost/UEN/about/\";s:6:\"target\";s:0:\"\";}'),
(1025, 213, '_aboutpagelink', 'field_6482f9ea8698e'),
(1026, 213, 'categories', 'CATEGORIES'),
(1027, 213, '_categories', 'field_6482fa078698f'),
(1028, 213, 'category_0_categoryname', 'RACKET'),
(1029, 213, '_category_0_categoryname', 'field_6482fabc86991'),
(1030, 213, 'category_0_categorylink', ''),
(1031, 213, '_category_0_categorylink', 'field_6482facf86992'),
(1032, 213, 'category_1_categoryname', 'COMBAT'),
(1033, 213, '_category_1_categoryname', 'field_6482fabc86991'),
(1034, 213, 'category_1_categorylink', ''),
(1035, 213, '_category_1_categorylink', 'field_6482facf86992'),
(1036, 213, 'category_2_categoryname', 'WATER'),
(1037, 213, '_category_2_categoryname', 'field_6482fabc86991'),
(1038, 213, 'category_2_categorylink', ''),
(1039, 213, '_category_2_categorylink', 'field_6482facf86992'),
(1040, 213, 'category_3_categoryname', 'TEAM'),
(1041, 213, '_category_3_categoryname', 'field_6482fabc86991'),
(1042, 213, 'category_3_categorylink', ''),
(1043, 213, '_category_3_categorylink', 'field_6482facf86992'),
(1044, 213, 'category_4_categoryname', 'INDIVIDUAL'),
(1045, 213, '_category_4_categoryname', 'field_6482fabc86991'),
(1046, 213, 'category_4_categorylink', ''),
(1047, 213, '_category_4_categorylink', 'field_6482facf86992'),
(1048, 213, 'category_5_categoryname', 'EVENTS'),
(1049, 213, '_category_5_categoryname', 'field_6482fabc86991'),
(1050, 213, 'category_5_categorylink', ''),
(1051, 213, '_category_5_categorylink', 'field_6482facf86992'),
(1052, 213, 'category_6_categoryname', 'EXTREME'),
(1053, 213, '_category_6_categoryname', 'field_6482fabc86991'),
(1054, 213, 'category_6_categorylink', ''),
(1055, 213, '_category_6_categorylink', 'field_6482facf86992'),
(1056, 213, 'category_7_categoryname', 'MOTOR'),
(1057, 213, '_category_7_categoryname', 'field_6482fabc86991'),
(1058, 213, 'category_7_categorylink', ''),
(1059, 213, '_category_7_categorylink', 'field_6482facf86992'),
(1060, 213, 'category_8_categoryname', 'WINTER'),
(1061, 213, '_category_8_categoryname', 'field_6482fabc86991'),
(1062, 213, 'category_8_categorylink', ''),
(1063, 213, '_category_8_categorylink', 'field_6482facf86992'),
(1064, 213, 'category', '9'),
(1065, 213, '_category', 'field_6482fa3886990'),
(1066, 213, 'blogs', 'BLOGS'),
(1067, 213, '_blogs', 'field_6482faea86993'),
(1068, 213, 'blogspagelink', ''),
(1069, 213, '_blogspagelink', 'field_6482faf886994'),
(1070, 213, 'contact', 'CONTACT'),
(1071, 213, '_contact', 'field_6482fb2186995'),
(1072, 213, 'contact_pagelink', ''),
(1073, 213, '_contact_pagelink', 'field_6482fb3c86996'),
(1074, 213, 'subscribe_button', 'SUBSCRIBE'),
(1075, 213, '_subscribe_button', 'field_6482fb7b86997'),
(1076, 213, 'search', '42'),
(1077, 213, '_search', 'field_6482fbb386998'),
(1078, 213, 'search_white_img', '42'),
(1079, 213, '_search_white_img', 'field_6482fbb386998'),
(1080, 214, 'home', 'HOME'),
(1081, 214, '_home', 'field_6482f9428698b'),
(1082, 214, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(1083, 214, '_homepagelink', 'field_6482f9608698c'),
(1084, 214, 'about', 'ABOUT'),
(1085, 214, '_about', 'field_6482f9df8698d'),
(1086, 214, 'aboutpagelink', 'a:3:{s:5:\"title\";s:5:\"about\";s:3:\"url\";s:27:\"http://localhost/UEN/about/\";s:6:\"target\";s:0:\"\";}'),
(1087, 214, '_aboutpagelink', 'field_6482f9ea8698e'),
(1088, 214, 'categories', 'CATEGORIES'),
(1089, 214, '_categories', 'field_6482fa078698f'),
(1090, 214, 'category_0_categoryname', 'RACKET'),
(1091, 214, '_category_0_categoryname', 'field_6482fabc86991'),
(1092, 214, 'category_0_categorylink', ''),
(1093, 214, '_category_0_categorylink', 'field_6482facf86992'),
(1094, 214, 'category_1_categoryname', 'COMBAT'),
(1095, 214, '_category_1_categoryname', 'field_6482fabc86991'),
(1096, 214, 'category_1_categorylink', ''),
(1097, 214, '_category_1_categorylink', 'field_6482facf86992'),
(1098, 214, 'category_2_categoryname', 'WATER'),
(1099, 214, '_category_2_categoryname', 'field_6482fabc86991'),
(1100, 214, 'category_2_categorylink', ''),
(1101, 214, '_category_2_categorylink', 'field_6482facf86992'),
(1102, 214, 'category_3_categoryname', 'TEAM'),
(1103, 214, '_category_3_categoryname', 'field_6482fabc86991'),
(1104, 214, 'category_3_categorylink', ''),
(1105, 214, '_category_3_categorylink', 'field_6482facf86992'),
(1106, 214, 'category_4_categoryname', 'INDIVIDUAL'),
(1107, 214, '_category_4_categoryname', 'field_6482fabc86991'),
(1108, 214, 'category_4_categorylink', ''),
(1109, 214, '_category_4_categorylink', 'field_6482facf86992'),
(1110, 214, 'category_5_categoryname', 'EVENTS'),
(1111, 214, '_category_5_categoryname', 'field_6482fabc86991'),
(1112, 214, 'category_5_categorylink', ''),
(1113, 214, '_category_5_categorylink', 'field_6482facf86992'),
(1114, 214, 'category_6_categoryname', 'EXTREME'),
(1115, 214, '_category_6_categoryname', 'field_6482fabc86991'),
(1116, 214, 'category_6_categorylink', ''),
(1117, 214, '_category_6_categorylink', 'field_6482facf86992'),
(1118, 214, 'category_7_categoryname', 'MOTOR'),
(1119, 214, '_category_7_categoryname', 'field_6482fabc86991'),
(1120, 214, 'category_7_categorylink', ''),
(1121, 214, '_category_7_categorylink', 'field_6482facf86992'),
(1122, 214, 'category_8_categoryname', 'WINTER'),
(1123, 214, '_category_8_categoryname', 'field_6482fabc86991'),
(1124, 214, 'category_8_categorylink', ''),
(1125, 214, '_category_8_categorylink', 'field_6482facf86992'),
(1126, 214, 'category', '9'),
(1127, 214, '_category', 'field_6482fa3886990'),
(1128, 214, 'blogs', 'BLOGS'),
(1129, 214, '_blogs', 'field_6482faea86993'),
(1130, 214, 'blogspagelink', ''),
(1131, 214, '_blogspagelink', 'field_6482faf886994'),
(1132, 214, 'contact', 'CONTACT'),
(1133, 214, '_contact', 'field_6482fb2186995'),
(1134, 214, 'contact_pagelink', ''),
(1135, 214, '_contact_pagelink', 'field_6482fb3c86996'),
(1136, 214, 'subscribe_button', 'SUBSCRIBE'),
(1137, 214, '_subscribe_button', 'field_6482fb7b86997'),
(1138, 214, 'search', '42'),
(1139, 214, '_search', 'field_6482fbb386998'),
(1140, 214, 'search_white_img', '42'),
(1141, 214, '_search_white_img', 'field_6482fbb386998'),
(1142, 218, '_wp_attached_file', '2023/06/about_bannerimg.png'),
(1143, 218, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1240;s:6:\"height\";i:478;s:4:\"file\";s:27:\"2023/06/about_bannerimg.png\";s:8:\"filesize\";i:934390;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1144, 210, 'about_banner_image', '218'),
(1145, 210, '_about_banner_image', 'field_64870cd7e8530'),
(1146, 210, 'about_title', 'ABOUT'),
(1147, 210, '_about_title', 'field_64870d0d9eb49'),
(1148, 219, 'about_banner_image', '218'),
(1149, 219, '_about_banner_image', 'field_64870cd7e8530'),
(1150, 219, 'about_title', 'ABOUT'),
(1151, 219, '_about_title', 'field_64870d0d9eb49'),
(1152, 210, 'banner_title', 'Lorem ipsum dolor sit amet consectetur'),
(1153, 210, '_banner_title', 'field_64870f544823e'),
(1154, 210, 'banner_description', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae. Elementum tortor ipsum enim sit adipiscing. Eu eget semper urna velit euismod in amet faucibus id. Blandit pretium odio consequat nunc sed dignissim elit ac. Ipsum eget ornare augue viverra adipiscing quis ullamcorper condimentum. Non vel scelerisque mauris sit arcu tristique Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae. Elementum tortor ipsum enim sit adipiscing. Eu eget semper urna velit euismod in amet faucibus id.'),
(1155, 210, '_banner_description', 'field_64870f5f4823f'),
(1156, 222, 'about_banner_image', '218'),
(1157, 222, '_about_banner_image', 'field_64870cd7e8530'),
(1158, 222, 'about_title', 'ABOUT'),
(1159, 222, '_about_title', 'field_64870d0d9eb49'),
(1160, 222, 'banner_title', 'Lorem ipsum dolor sit amet consectetur'),
(1161, 222, '_banner_title', 'field_64870f544823e'),
(1162, 222, 'banner_description', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae. Elementum tortor ipsum enim sit adipiscing. Eu eget semper urna velit euismod in amet faucibus id. Blandit pretium odio consequat nunc sed dignissim elit ac. Ipsum eget ornare augue viverra adipiscing quis ullamcorper condimentum. Non vel scelerisque mauris sit arcu tristique Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae. Elementum tortor ipsum enim sit adipiscing. Eu eget semper urna velit euismod in amet faucibus id.'),
(1163, 222, '_banner_description', 'field_64870f5f4823f'),
(1164, 210, 'vision_0_vision_title', 'VISION'),
(1165, 210, '_vision_0_vision_title', 'field_64871163fc7de'),
(1166, 210, 'vision_0_vision_description', 'Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Ac magna massa Lorem ipsum dolor sit amet'),
(1167, 210, '_vision_0_vision_description', 'field_64871179fc7df'),
(1168, 210, 'vision_1_vision_title', 'MISSION'),
(1169, 210, '_vision_1_vision_title', 'field_64871163fc7de'),
(1170, 210, 'vision_1_vision_description', 'Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Ac magna massa Lorem ipsum dolor sit amet'),
(1171, 210, '_vision_1_vision_description', 'field_64871179fc7df'),
(1172, 210, 'vision', '2'),
(1173, 210, '_vision', 'field_6487114efc7dd'),
(1174, 229, 'about_banner_image', '218'),
(1175, 229, '_about_banner_image', 'field_64870cd7e8530'),
(1176, 229, 'about_title', 'ABOUT'),
(1177, 229, '_about_title', 'field_64870d0d9eb49'),
(1178, 229, 'banner_title', 'Lorem ipsum dolor sit amet consectetur'),
(1179, 229, '_banner_title', 'field_64870f544823e'),
(1180, 229, 'banner_description', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae. Elementum tortor ipsum enim sit adipiscing. Eu eget semper urna velit euismod in amet faucibus id. Blandit pretium odio consequat nunc sed dignissim elit ac. Ipsum eget ornare augue viverra adipiscing quis ullamcorper condimentum. Non vel scelerisque mauris sit arcu tristique Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae. Elementum tortor ipsum enim sit adipiscing. Eu eget semper urna velit euismod in amet faucibus id.'),
(1181, 229, '_banner_description', 'field_64870f5f4823f'),
(1182, 229, 'vision_0_vision_title', 'VISION'),
(1183, 229, '_vision_0_vision_title', 'field_64871163fc7de'),
(1184, 229, 'vision_0_vision_description', 'Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Ac magna massa Lorem ipsum dolor sit amet'),
(1185, 229, '_vision_0_vision_description', 'field_64871179fc7df'),
(1186, 229, 'vision_1_vision_title', 'MISSION'),
(1187, 229, '_vision_1_vision_title', 'field_64871163fc7de'),
(1188, 229, 'vision_1_vision_description', 'Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Ac magna massa Lorem ipsum dolor sit amet'),
(1189, 229, '_vision_1_vision_description', 'field_64871179fc7df'),
(1190, 229, 'vision', '2'),
(1191, 229, '_vision', 'field_6487114efc7dd'),
(1192, 236, 'home', 'HOME'),
(1193, 236, '_home', 'field_6482f9428698b'),
(1194, 236, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(1195, 236, '_homepagelink', 'field_6482f9608698c'),
(1196, 236, 'about', 'ABOUT'),
(1197, 236, '_about', 'field_6482f9df8698d'),
(1198, 236, 'aboutpagelink', 'a:3:{s:5:\"title\";s:5:\"about\";s:3:\"url\";s:27:\"http://localhost/UEN/about/\";s:6:\"target\";s:0:\"\";}'),
(1199, 236, '_aboutpagelink', 'field_6482f9ea8698e'),
(1200, 236, 'categories', 'CATEGORIES'),
(1201, 236, '_categories', 'field_6482fa078698f'),
(1202, 236, 'category_0_categoryname', 'RACKET'),
(1203, 236, '_category_0_categoryname', 'field_6482fabc86991'),
(1204, 236, 'category_0_categorylink', ''),
(1205, 236, '_category_0_categorylink', 'field_6482facf86992'),
(1206, 236, 'category_1_categoryname', 'COMBAT'),
(1207, 236, '_category_1_categoryname', 'field_6482fabc86991'),
(1208, 236, 'category_1_categorylink', ''),
(1209, 236, '_category_1_categorylink', 'field_6482facf86992'),
(1210, 236, 'category_2_categoryname', 'WATER'),
(1211, 236, '_category_2_categoryname', 'field_6482fabc86991'),
(1212, 236, 'category_2_categorylink', ''),
(1213, 236, '_category_2_categorylink', 'field_6482facf86992'),
(1214, 236, 'category_3_categoryname', 'TEAM'),
(1215, 236, '_category_3_categoryname', 'field_6482fabc86991'),
(1216, 236, 'category_3_categorylink', ''),
(1217, 236, '_category_3_categorylink', 'field_6482facf86992'),
(1218, 236, 'category_4_categoryname', 'INDIVIDUAL'),
(1219, 236, '_category_4_categoryname', 'field_6482fabc86991'),
(1220, 236, 'category_4_categorylink', ''),
(1221, 236, '_category_4_categorylink', 'field_6482facf86992'),
(1222, 236, 'category_5_categoryname', 'EVENTS'),
(1223, 236, '_category_5_categoryname', 'field_6482fabc86991'),
(1224, 236, 'category_5_categorylink', ''),
(1225, 236, '_category_5_categorylink', 'field_6482facf86992'),
(1226, 236, 'category_6_categoryname', 'EXTREME'),
(1227, 236, '_category_6_categoryname', 'field_6482fabc86991'),
(1228, 236, 'category_6_categorylink', ''),
(1229, 236, '_category_6_categorylink', 'field_6482facf86992'),
(1230, 236, 'category_7_categoryname', 'MOTOR'),
(1231, 236, '_category_7_categoryname', 'field_6482fabc86991'),
(1232, 236, 'category_7_categorylink', ''),
(1233, 236, '_category_7_categorylink', 'field_6482facf86992'),
(1234, 236, 'category_8_categoryname', 'WINTER'),
(1235, 236, '_category_8_categoryname', 'field_6482fabc86991'),
(1236, 236, 'category_8_categorylink', ''),
(1237, 236, '_category_8_categorylink', 'field_6482facf86992'),
(1238, 236, 'category', '9'),
(1239, 236, '_category', 'field_6482fa3886990'),
(1240, 236, 'blogs', 'BLOGS'),
(1241, 236, '_blogs', 'field_6482faea86993'),
(1242, 236, 'blogspagelink', ''),
(1243, 236, '_blogspagelink', 'field_6482faf886994'),
(1244, 236, 'contact', 'CONTACT'),
(1245, 236, '_contact', 'field_6482fb2186995'),
(1246, 236, 'contact_pagelink', ''),
(1247, 236, '_contact_pagelink', 'field_6482fb3c86996'),
(1248, 236, 'subscribe_button', 'SUBSCRIBE'),
(1249, 236, '_subscribe_button', 'field_6482fb7b86997'),
(1250, 236, 'search', '42'),
(1251, 236, '_search', 'field_6482fbb386998'),
(1252, 236, 'search_white_img', '42'),
(1253, 236, '_search_white_img', 'field_6482fbb386998'),
(1254, 210, 'team_title', ''),
(1255, 210, '_team_title', 'field_6487134287fdf'),
(1256, 210, 'team', ''),
(1257, 210, '_team', 'field_6487136887fe0'),
(1258, 229, 'team_title', ''),
(1259, 229, '_team_title', 'field_6487134287fdf'),
(1260, 229, 'team', ''),
(1261, 229, '_team', 'field_6487136887fe0'),
(1262, 237, '_edit_last', '1'),
(1263, 237, '_edit_lock', '1686578790:1'),
(1264, 237, '_wp_trash_meta_status', 'publish'),
(1265, 237, '_wp_trash_meta_time', '1686578972'),
(1266, 237, '_wp_desired_post_slug', 'category'),
(1267, 241, '_edit_last', '1'),
(1268, 241, '_edit_lock', '1686581528:1'),
(1269, 241, '_wp_page_template', 'archive-category.php'),
(1270, 243, '_edit_last', '1'),
(1271, 243, 'is_acf_component', ''),
(1272, 243, '_edit_lock', '1686581487:1'),
(1273, 241, 'category', ''),
(1274, 241, '_category', 'field_6487299b7fd39'),
(1275, 241, 'category_link', 'a:3:{s:5:\"title\";s:8:\"category\";s:3:\"url\";s:30:\"http://localhost/UEN/category/\";s:6:\"target\";s:0:\"\";}'),
(1276, 241, '_category_link', 'field_648729a77fd3a'),
(1277, 247, 'category', ''),
(1278, 247, '_category', 'field_6487299b7fd39'),
(1279, 247, 'category_link', 'a:3:{s:5:\"title\";s:8:\"category\";s:3:\"url\";s:30:\"http://localhost/UEN/category/\";s:6:\"target\";s:0:\"\";}'),
(1280, 247, '_category_link', 'field_648729a77fd3a'),
(1281, 248, 'home', 'HOME'),
(1282, 248, '_home', 'field_6482f9428698b'),
(1283, 248, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(1284, 248, '_homepagelink', 'field_6482f9608698c'),
(1285, 248, 'about', 'ABOUT'),
(1286, 248, '_about', 'field_6482f9df8698d'),
(1287, 248, 'aboutpagelink', 'a:3:{s:5:\"title\";s:5:\"about\";s:3:\"url\";s:27:\"http://localhost/UEN/about/\";s:6:\"target\";s:0:\"\";}'),
(1288, 248, '_aboutpagelink', 'field_6482f9ea8698e'),
(1289, 248, 'categories', 'CATEGORIES'),
(1290, 248, '_categories', 'field_6482fa078698f'),
(1291, 248, 'category_0_categoryname', 'RACKET'),
(1292, 248, '_category_0_categoryname', 'field_6482fabc86991'),
(1293, 248, 'category_0_categorylink', ''),
(1294, 248, '_category_0_categorylink', 'field_6482facf86992'),
(1295, 248, 'category_1_categoryname', 'COMBAT'),
(1296, 248, '_category_1_categoryname', 'field_6482fabc86991'),
(1297, 248, 'category_1_categorylink', ''),
(1298, 248, '_category_1_categorylink', 'field_6482facf86992'),
(1299, 248, 'category_2_categoryname', 'WATER'),
(1300, 248, '_category_2_categoryname', 'field_6482fabc86991'),
(1301, 248, 'category_2_categorylink', ''),
(1302, 248, '_category_2_categorylink', 'field_6482facf86992'),
(1303, 248, 'category_3_categoryname', 'TEAM'),
(1304, 248, '_category_3_categoryname', 'field_6482fabc86991'),
(1305, 248, 'category_3_categorylink', ''),
(1306, 248, '_category_3_categorylink', 'field_6482facf86992'),
(1307, 248, 'category_4_categoryname', 'INDIVIDUAL'),
(1308, 248, '_category_4_categoryname', 'field_6482fabc86991'),
(1309, 248, 'category_4_categorylink', ''),
(1310, 248, '_category_4_categorylink', 'field_6482facf86992'),
(1311, 248, 'category_5_categoryname', 'EVENTS'),
(1312, 248, '_category_5_categoryname', 'field_6482fabc86991'),
(1313, 248, 'category_5_categorylink', ''),
(1314, 248, '_category_5_categorylink', 'field_6482facf86992'),
(1315, 248, 'category_6_categoryname', 'EXTREME'),
(1316, 248, '_category_6_categoryname', 'field_6482fabc86991'),
(1317, 248, 'category_6_categorylink', ''),
(1318, 248, '_category_6_categorylink', 'field_6482facf86992'),
(1319, 248, 'category_7_categoryname', 'MOTOR'),
(1320, 248, '_category_7_categoryname', 'field_6482fabc86991'),
(1321, 248, 'category_7_categorylink', ''),
(1322, 248, '_category_7_categorylink', 'field_6482facf86992'),
(1323, 248, 'category_8_categoryname', 'WINTER'),
(1324, 248, '_category_8_categoryname', 'field_6482fabc86991'),
(1325, 248, 'category_8_categorylink', ''),
(1326, 248, '_category_8_categorylink', 'field_6482facf86992'),
(1327, 248, 'category', '9'),
(1328, 248, '_category', 'field_6482fa3886990'),
(1329, 248, 'blogs', 'BLOGS'),
(1330, 248, '_blogs', 'field_6482faea86993'),
(1331, 248, 'blogspagelink', ''),
(1332, 248, '_blogspagelink', 'field_6482faf886994'),
(1333, 248, 'contact', 'CONTACT'),
(1334, 248, '_contact', 'field_6482fb2186995'),
(1335, 248, 'contact_pagelink', ''),
(1336, 248, '_contact_pagelink', 'field_6482fb3c86996'),
(1337, 248, 'subscribe_button', 'SUBSCRIBE'),
(1338, 248, '_subscribe_button', 'field_6482fb7b86997'),
(1339, 248, 'search', '42'),
(1340, 248, '_search', 'field_6482fbb386998'),
(1341, 248, 'search_white_img', '42'),
(1342, 248, '_search_white_img', 'field_6482fbb386998'),
(1343, 249, 'category', ''),
(1344, 249, '_category', 'field_6487299b7fd39'),
(1345, 249, 'category_link', 'a:3:{s:5:\"title\";s:8:\"category\";s:3:\"url\";s:30:\"http://localhost/UEN/category/\";s:6:\"target\";s:0:\"\";}'),
(1346, 249, '_category_link', 'field_648729a77fd3a'),
(1347, 250, 'home', 'HOME'),
(1348, 250, '_home', 'field_6482f9428698b'),
(1349, 250, 'homepagelink', 'a:3:{s:5:\"title\";s:9:\"Home page\";s:3:\"url\";s:21:\"http://localhost/UEN/\";s:6:\"target\";s:0:\"\";}'),
(1350, 250, '_homepagelink', 'field_6482f9608698c'),
(1351, 250, 'about', 'ABOUT'),
(1352, 250, '_about', 'field_6482f9df8698d'),
(1353, 250, 'aboutpagelink', 'a:3:{s:5:\"title\";s:5:\"about\";s:3:\"url\";s:27:\"http://localhost/UEN/about/\";s:6:\"target\";s:0:\"\";}'),
(1354, 250, '_aboutpagelink', 'field_6482f9ea8698e'),
(1355, 250, 'categories', 'CATEGORIES'),
(1356, 250, '_categories', 'field_6482fa078698f'),
(1357, 250, 'category_0_categoryname', 'RACKET'),
(1358, 250, '_category_0_categoryname', 'field_6482fabc86991'),
(1359, 250, 'category_0_categorylink', ''),
(1360, 250, '_category_0_categorylink', 'field_6482facf86992'),
(1361, 250, 'category_1_categoryname', 'COMBAT'),
(1362, 250, '_category_1_categoryname', 'field_6482fabc86991'),
(1363, 250, 'category_1_categorylink', ''),
(1364, 250, '_category_1_categorylink', 'field_6482facf86992'),
(1365, 250, 'category_2_categoryname', 'WATER'),
(1366, 250, '_category_2_categoryname', 'field_6482fabc86991'),
(1367, 250, 'category_2_categorylink', ''),
(1368, 250, '_category_2_categorylink', 'field_6482facf86992'),
(1369, 250, 'category_3_categoryname', 'TEAM'),
(1370, 250, '_category_3_categoryname', 'field_6482fabc86991'),
(1371, 250, 'category_3_categorylink', ''),
(1372, 250, '_category_3_categorylink', 'field_6482facf86992'),
(1373, 250, 'category_4_categoryname', 'INDIVIDUAL'),
(1374, 250, '_category_4_categoryname', 'field_6482fabc86991'),
(1375, 250, 'category_4_categorylink', ''),
(1376, 250, '_category_4_categorylink', 'field_6482facf86992'),
(1377, 250, 'category_5_categoryname', 'EVENTS'),
(1378, 250, '_category_5_categoryname', 'field_6482fabc86991'),
(1379, 250, 'category_5_categorylink', ''),
(1380, 250, '_category_5_categorylink', 'field_6482facf86992'),
(1381, 250, 'category_6_categoryname', 'EXTREME'),
(1382, 250, '_category_6_categoryname', 'field_6482fabc86991'),
(1383, 250, 'category_6_categorylink', ''),
(1384, 250, '_category_6_categorylink', 'field_6482facf86992'),
(1385, 250, 'category_7_categoryname', 'MOTOR'),
(1386, 250, '_category_7_categoryname', 'field_6482fabc86991'),
(1387, 250, 'category_7_categorylink', ''),
(1388, 250, '_category_7_categorylink', 'field_6482facf86992'),
(1389, 250, 'category_8_categoryname', 'WINTER'),
(1390, 250, '_category_8_categoryname', 'field_6482fabc86991'),
(1391, 250, 'category_8_categorylink', ''),
(1392, 250, '_category_8_categorylink', 'field_6482facf86992'),
(1393, 250, 'category', '9'),
(1394, 250, '_category', 'field_6482fa3886990'),
(1395, 250, 'blogs', 'BLOGS'),
(1396, 250, '_blogs', 'field_6482faea86993'),
(1397, 250, 'blogspagelink', ''),
(1398, 250, '_blogspagelink', 'field_6482faf886994'),
(1399, 250, 'contact', 'CONTACT'),
(1400, 250, '_contact', 'field_6482fb2186995'),
(1401, 250, 'contact_pagelink', ''),
(1402, 250, '_contact_pagelink', 'field_6482fb3c86996'),
(1403, 250, 'subscribe_button', 'SUBSCRIBE'),
(1404, 250, '_subscribe_button', 'field_6482fb7b86997'),
(1405, 250, 'search', '42'),
(1406, 250, '_search', 'field_6482fbb386998'),
(1407, 250, 'search_white_img', '42'),
(1408, 250, '_search_white_img', 'field_6482fbb386998'),
(1409, 13, 'category_link', 'a:3:{s:5:\"title\";s:8:\"category\";s:3:\"url\";s:30:\"http://localhost/UEN/category/\";s:6:\"target\";s:0:\"\";}'),
(1410, 13, '_category_link', 'field_648731bf505d8'),
(1411, 252, 'banner_video', '20'),
(1412, 252, '_banner_video', 'field_6482beac0459e'),
(1413, 252, 'about_title', 'ABOUT'),
(1414, 252, '_about_title', 'field_648302fa06103'),
(1415, 252, 'about_sub_title1', 'The Norfolk'),
(1416, 252, '_about_sub_title1', 'field_6483031806104'),
(1417, 252, 'about_sub_title2', 'State University baseball'),
(1418, 252, '_about_sub_title2', 'field_6483041806105'),
(1419, 252, 'about_content', 'With Saturday’s win, Coppin State (21-31 overall, 14-16 NEC) moved into a three-way tie for the sixth and final NEC Baseball Tournament spot with Merrimack and Maryland Eastern Shore. However, Maryland Eastern Shore won the tiebreaker, advancing the Hawks to the tournament. Norfolk State finishes the season 9-42 and 6-24 in NEC play. After a scoreless first three innings, Coppin State struck for two runs in the bottom of the fourth as the Eagles grabbed a 2-0 lead.'),
(1420, 252, '_about_content', 'field_6483044306106'),
(1421, 252, 'about_image', '51'),
(1422, 252, '_about_image', 'field_6483047806107'),
(1423, 252, 'scores_section_0_score_number', '0-0'),
(1424, 252, '_scores_section_0_score_number', 'field_648306ea11659'),
(1425, 252, 'scores_section_0_team_logo', '58'),
(1426, 252, '_scores_section_0_team_logo', 'field_648307141165a'),
(1427, 252, 'scores_section_0_team_name', 'pvamu'),
(1428, 252, '_scores_section_0_team_name', 'field_6483072a1165b'),
(1429, 252, 'scores_section_1_score_number', '0-0'),
(1430, 252, '_scores_section_1_score_number', 'field_648306ea11659'),
(1431, 252, 'scores_section_1_team_logo', '59'),
(1432, 252, '_scores_section_1_team_logo', 'field_648307141165a'),
(1433, 252, 'scores_section_1_team_name', 'titans'),
(1434, 252, '_scores_section_1_team_name', 'field_6483072a1165b'),
(1435, 252, 'scores_section_2_score_number', '0-0'),
(1436, 252, '_scores_section_2_score_number', 'field_648306ea11659'),
(1437, 252, 'scores_section_2_team_logo', '58'),
(1438, 252, '_scores_section_2_team_logo', 'field_648307141165a'),
(1439, 252, 'scores_section_2_team_name', 'pvamu'),
(1440, 252, '_scores_section_2_team_name', 'field_6483072a1165b'),
(1441, 252, 'scores_section_3_score_number', '0-0'),
(1442, 252, '_scores_section_3_score_number', 'field_648306ea11659'),
(1443, 252, 'scores_section_3_team_logo', '59'),
(1444, 252, '_scores_section_3_team_logo', 'field_648307141165a'),
(1445, 252, 'scores_section_3_team_name', 'titans'),
(1446, 252, '_scores_section_3_team_name', 'field_6483072a1165b'),
(1447, 252, 'scores_section_4_score_number', '0-0'),
(1448, 252, '_scores_section_4_score_number', 'field_648306ea11659'),
(1449, 252, 'scores_section_4_team_logo', '58'),
(1450, 252, '_scores_section_4_team_logo', 'field_648307141165a'),
(1451, 252, 'scores_section_4_team_name', 'pvamu'),
(1452, 252, '_scores_section_4_team_name', 'field_6483072a1165b'),
(1453, 252, 'scores_section_5_score_number', '0-0'),
(1454, 252, '_scores_section_5_score_number', 'field_648306ea11659'),
(1455, 252, 'scores_section_5_team_logo', '59'),
(1456, 252, '_scores_section_5_team_logo', 'field_648307141165a'),
(1457, 252, 'scores_section_5_team_name', 'titans'),
(1458, 252, '_scores_section_5_team_name', 'field_6483072a1165b'),
(1459, 252, 'scores_section_6_score_number', '0-0'),
(1460, 252, '_scores_section_6_score_number', 'field_648306ea11659'),
(1461, 252, 'scores_section_6_team_logo', '58'),
(1462, 252, '_scores_section_6_team_logo', 'field_648307141165a'),
(1463, 252, 'scores_section_6_team_name', 'pvamu'),
(1464, 252, '_scores_section_6_team_name', 'field_6483072a1165b'),
(1465, 252, 'scores_section_7_score_number', '0-0'),
(1466, 252, '_scores_section_7_score_number', 'field_648306ea11659'),
(1467, 252, 'scores_section_7_team_logo', '59'),
(1468, 252, '_scores_section_7_team_logo', 'field_648307141165a'),
(1469, 252, 'scores_section_7_team_name', 'titans'),
(1470, 252, '_scores_section_7_team_name', 'field_6483072a1165b'),
(1471, 252, 'scores_section', '8'),
(1472, 252, '_scores_section', 'field_6483069211658'),
(1473, 252, 'right_arrow', '63'),
(1474, 252, '_right_arrow', 'field_64830afc32359'),
(1475, 252, 'left_arrow', '63'),
(1476, 252, '_left_arrow', 'field_64830b1e3235a'),
(1477, 252, 'events', 'a:1:{i:0;s:1:\"4\";}'),
(1478, 252, '_events', 'field_6486d665c9336'),
(1479, 252, 'category_title', 'CATEGORIES'),
(1480, 252, '_category_title', 'field_6486f5b3e22f9'),
(1481, 252, 'category_link', 'a:3:{s:5:\"title\";s:8:\"category\";s:3:\"url\";s:30:\"http://localhost/UEN/category/\";s:6:\"target\";s:0:\"\";}'),
(1482, 252, '_category_link', 'field_648731bf505d8');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-08 06:05:46', '2023-06-08 06:05:46', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-06-08 06:05:46', '2023-06-08 06:05:46', '', 0, 'http://localhost/UEN/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-08 06:05:46', '2023-06-08 06:05:46', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/UEN/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-06-09 05:39:26', '2023-06-09 05:39:26', '', 0, 'http://localhost/UEN/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-08 06:05:46', '2023-06-08 06:05:46', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/UEN.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-06-09 05:39:26', '2023-06-09 05:39:26', '', 0, 'http://localhost/UEN/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-06-08 06:06:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-08 06:06:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?p=4', 0, 'post', '', 0),
(5, 1, '2023-06-08 06:37:16', '2023-06-08 06:37:16', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2023-06-08 06:37:16', '2023-06-08 06:37:16', '', 0, 'http://localhost/UEN/?option-tree=media', 0, 'option-tree', '', 0),
(6, 1, '2023-06-08 06:46:30', '2023-06-08 06:46:30', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <tech.db@dollarbirdinc.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <tech.db@dollarbirdinc.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-06-08 06:46:30', '2023-06-08 06:46:30', '', 0, 'http://localhost/UEN/?post_type=wpcf7_contact_form&p=6', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2023-06-09 05:39:26', '2023-06-09 05:39:26', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/UEN.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-06-09 05:39:26', '2023-06-09 05:39:26', '', 3, 'http://localhost/UEN/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-06-09 05:39:26', '2023-06-09 05:39:26', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/UEN/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-09 05:39:26', '2023-06-09 05:39:26', '', 2, 'http://localhost/UEN/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-06-09 05:39:52', '2023-06-09 05:39:52', '', 'Home page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2023-06-12 14:56:07', '2023-06-12 14:56:07', '', 0, 'http://localhost/UEN/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-06-09 05:39:52', '2023-06-09 05:39:52', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-09 05:39:52', '2023-06-09 05:39:52', '', 13, 'http://localhost/UEN/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-06-09 05:42:19', '2023-06-09 05:42:19', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"index.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_6482bb2f66643', '', '', '2023-06-12 14:55:37', '2023-06-12 14:55:37', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2023-06-09 05:55:21', '2023-06-09 05:55:21', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banner Section', 'banner_section', 'publish', 'closed', 'closed', '', 'field_6482be930459d', '', '', '2023-06-09 05:55:21', '2023-06-09 05:55:21', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2023-06-09 05:55:21', '2023-06-09 05:55:21', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'banner video', 'banner_video', 'publish', 'closed', 'closed', '', 'field_6482beac0459e', '', '', '2023-06-09 05:55:21', '2023-06-09 05:55:21', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(20, 1, '2023-06-09 09:53:54', '2023-06-09 09:53:54', '', 'Home-Banner', '', 'inherit', 'open', 'closed', '', 'home-banner', '', '', '2023-06-09 09:53:54', '2023-06-09 09:53:54', '', 13, 'http://localhost/UEN/wp-content/uploads/2023/06/Home-Banner.webm', 0, 'attachment', 'video/webm', 0),
(21, 1, '2023-06-09 09:54:02', '2023-06-09 09:54:02', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-09 09:54:02', '2023-06-09 09:54:02', '', 13, 'http://localhost/UEN/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-06-09 10:01:28', '2023-06-09 10:01:28', '', 'header', '', 'publish', 'open', 'open', '', 'header', '', '', '2023-06-12 14:46:01', '2023-06-12 14:46:01', '', 0, 'http://localhost/UEN/?post_type=header&#038;p=22', 0, 'header', '', 0),
(23, 1, '2023-06-09 10:01:28', '2023-06-09 10:01:28', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-09 10:01:28', '2023-06-09 10:01:28', '', 22, 'http://localhost/UEN/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'header', 'header', 'publish', 'closed', 'closed', '', 'group_6482f8ea3bba3', '', '', '2023-06-09 10:45:11', '2023-06-09 10:45:11', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'nav section', 'nav_section', 'publish', 'closed', 'closed', '', 'field_6482f8f88698a', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'home', 'home', 'publish', 'closed', 'closed', '', 'field_6482f9428698b', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'homepagelink', 'homepagelink', 'publish', 'closed', 'closed', '', 'field_6482f9608698c', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=27', 2, 'acf-field', '', 0),
(28, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about', 'about', 'publish', 'closed', 'closed', '', 'field_6482f9df8698d', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=28', 3, 'acf-field', '', 0),
(29, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'aboutpagelink', 'aboutpagelink', 'publish', 'closed', 'closed', '', 'field_6482f9ea8698e', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=29', 4, 'acf-field', '', 0),
(30, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'categories', 'categories', 'publish', 'closed', 'closed', '', 'field_6482fa078698f', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=30', 5, 'acf-field', '', 0),
(31, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'category', 'category', 'publish', 'closed', 'closed', '', 'field_6482fa3886990', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=31', 6, 'acf-field', '', 0),
(32, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'categoryname', 'categoryname', 'publish', 'closed', 'closed', '', 'field_6482fabc86991', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 31, 'http://localhost/UEN/?post_type=acf-field&p=32', 0, 'acf-field', '', 0),
(33, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'categorylink', 'categorylink', 'publish', 'closed', 'closed', '', 'field_6482facf86992', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 31, 'http://localhost/UEN/?post_type=acf-field&p=33', 1, 'acf-field', '', 0),
(34, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'blogs', 'blogs', 'publish', 'closed', 'closed', '', 'field_6482faea86993', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=34', 7, 'acf-field', '', 0),
(35, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'blogspagelink', 'blogspagelink', 'publish', 'closed', 'closed', '', 'field_6482faf886994', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=35', 8, 'acf-field', '', 0),
(36, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'contact', 'contact', 'publish', 'closed', 'closed', '', 'field_6482fb2186995', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=36', 9, 'acf-field', '', 0),
(37, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'contact pagelink', 'contact_pagelink', 'publish', 'closed', 'closed', '', 'field_6482fb3c86996', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=37', 10, 'acf-field', '', 0),
(38, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subscribe button', 'subscribe_button', 'publish', 'closed', 'closed', '', 'field_6482fb7b86997', '', '', '2023-06-09 10:16:21', '2023-06-09 10:16:21', '', 24, 'http://localhost/UEN/?post_type=acf-field&p=38', 11, 'acf-field', '', 0),
(39, 1, '2023-06-09 10:16:21', '2023-06-09 10:16:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'search white img', 'search_white_img', 'publish', 'closed', 'closed', '', 'field_6482fbb386998', '', '', '2023-06-09 10:43:20', '2023-06-09 10:43:20', '', 24, 'http://localhost/UEN/?post_type=acf-field&#038;p=39', 12, 'acf-field', '', 0),
(40, 1, '2023-06-09 10:22:19', '2023-06-09 10:22:19', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-09 10:22:19', '2023-06-09 10:22:19', '', 22, 'http://localhost/UEN/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-06-09 10:29:10', '2023-06-09 10:29:10', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-06-09 10:29:10', '2023-06-09 10:29:10', '', 5, 'http://localhost/UEN/wp-content/uploads/2023/06/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(42, 1, '2023-06-09 10:40:38', '2023-06-09 10:40:38', '', 'search_icon', '', 'inherit', 'open', 'closed', '', 'search_icon', '', '', '2023-06-09 10:40:38', '2023-06-09 10:40:38', '', 22, 'http://localhost/UEN/wp-content/uploads/2023/06/search_icon.svg', 0, 'attachment', 'image/svg+xml', 0),
(43, 1, '2023-06-09 10:40:46', '2023-06-09 10:40:46', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-09 10:40:46', '2023-06-09 10:40:46', '', 22, 'http://localhost/UEN/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-06-09 10:44:00', '2023-06-09 10:44:00', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-09 10:44:00', '2023-06-09 10:44:00', '', 22, 'http://localhost/UEN/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-06-09 10:53:07', '2023-06-09 10:53:07', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'about section', 'about_section', 'publish', 'closed', 'closed', '', 'field_648302e606102', '', '', '2023-06-09 10:53:07', '2023-06-09 10:53:07', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=45', 2, 'acf-field', '', 0),
(46, 1, '2023-06-09 10:53:07', '2023-06-09 10:53:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about title', 'about_title', 'publish', 'closed', 'closed', '', 'field_648302fa06103', '', '', '2023-06-09 10:53:07', '2023-06-09 10:53:07', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=46', 3, 'acf-field', '', 0),
(47, 1, '2023-06-09 10:53:07', '2023-06-09 10:53:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about sub title1', 'about_sub_title1', 'publish', 'closed', 'closed', '', 'field_6483031806104', '', '', '2023-06-09 10:53:07', '2023-06-09 10:53:07', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=47', 4, 'acf-field', '', 0),
(48, 1, '2023-06-09 10:53:07', '2023-06-09 10:53:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about sub title2', 'about_sub_title2', 'publish', 'closed', 'closed', '', 'field_6483041806105', '', '', '2023-06-09 10:53:07', '2023-06-09 10:53:07', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=48', 5, 'acf-field', '', 0),
(49, 1, '2023-06-09 10:53:07', '2023-06-09 10:53:07', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'about content', 'about_content', 'publish', 'closed', 'closed', '', 'field_6483044306106', '', '', '2023-06-09 10:53:07', '2023-06-09 10:53:07', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=49', 6, 'acf-field', '', 0),
(50, 1, '2023-06-09 10:53:07', '2023-06-09 10:53:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'about image', 'about_image', 'publish', 'closed', 'closed', '', 'field_6483047806107', '', '', '2023-06-09 10:53:07', '2023-06-09 10:53:07', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=50', 7, 'acf-field', '', 0),
(51, 1, '2023-06-09 10:57:34', '2023-06-09 10:57:34', '', 'norfolk_img', '', 'inherit', 'open', 'closed', '', 'norfolk_img', '', '', '2023-06-09 10:57:34', '2023-06-09 10:57:34', '', 13, 'http://localhost/UEN/wp-content/uploads/2023/06/norfolk_img.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2023-06-09 10:57:45', '2023-06-09 10:57:45', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-09 10:57:45', '2023-06-09 10:57:45', '', 13, 'http://localhost/UEN/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-06-09 11:04:41', '2023-06-09 11:04:41', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'swiper scores section', 'scores_section', 'publish', 'closed', 'closed', '', 'field_6483067c11657', '', '', '2023-06-09 11:04:41', '2023-06-09 11:04:41', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=53', 8, 'acf-field', '', 0),
(54, 1, '2023-06-09 11:04:41', '2023-06-09 11:04:41', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'scores section', 'scores_section', 'publish', 'closed', 'closed', '', 'field_6483069211658', '', '', '2023-06-09 11:07:09', '2023-06-09 11:07:09', '', 15, 'http://localhost/UEN/?post_type=acf-field&#038;p=54', 9, 'acf-field', '', 0),
(55, 1, '2023-06-09 11:04:41', '2023-06-09 11:04:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'score number', 'score_number', 'publish', 'closed', 'closed', '', 'field_648306ea11659', '', '', '2023-06-09 11:04:41', '2023-06-09 11:04:41', '', 54, 'http://localhost/UEN/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2023-06-09 11:04:41', '2023-06-09 11:04:41', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'team logo', 'team_logo', 'publish', 'closed', 'closed', '', 'field_648307141165a', '', '', '2023-06-09 11:04:41', '2023-06-09 11:04:41', '', 54, 'http://localhost/UEN/?post_type=acf-field&p=56', 1, 'acf-field', '', 0),
(57, 1, '2023-06-09 11:04:41', '2023-06-09 11:04:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'team name', 'team_name', 'publish', 'closed', 'closed', '', 'field_6483072a1165b', '', '', '2023-06-09 11:04:41', '2023-06-09 11:04:41', '', 54, 'http://localhost/UEN/?post_type=acf-field&p=57', 2, 'acf-field', '', 0),
(58, 1, '2023-06-09 11:08:36', '2023-06-09 11:08:36', '', 'pvamu_img', '', 'inherit', 'open', 'closed', '', 'pvamu_img', '', '', '2023-06-09 11:08:36', '2023-06-09 11:08:36', '', 13, 'http://localhost/UEN/wp-content/uploads/2023/06/pvamu_img.svg', 0, 'attachment', 'image/svg+xml', 0),
(59, 1, '2023-06-09 11:10:08', '2023-06-09 11:10:08', '', 'titans_img', '', 'inherit', 'open', 'closed', '', 'titans_img', '', '', '2023-06-09 11:10:08', '2023-06-09 11:10:08', '', 13, 'http://localhost/UEN/wp-content/uploads/2023/06/titans_img.svg', 0, 'attachment', 'image/svg+xml', 0),
(60, 1, '2023-06-09 11:13:35', '2023-06-09 11:13:35', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-09 11:13:35', '2023-06-09 11:13:35', '', 13, 'http://localhost/UEN/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-06-09 11:21:23', '2023-06-09 11:21:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'right arrow', 'right_arrow', 'publish', 'closed', 'closed', '', 'field_64830afc32359', '', '', '2023-06-09 11:21:23', '2023-06-09 11:21:23', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=61', 10, 'acf-field', '', 0),
(62, 1, '2023-06-09 11:21:23', '2023-06-09 11:21:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'left arrow', 'left_arrow', 'publish', 'closed', 'closed', '', 'field_64830b1e3235a', '', '', '2023-06-09 11:21:23', '2023-06-09 11:21:23', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=62', 11, 'acf-field', '', 0),
(63, 1, '2023-06-09 11:22:45', '2023-06-09 11:22:45', '', 'next_arrow', '', 'inherit', 'open', 'closed', '', 'next_arrow', '', '', '2023-06-09 11:22:45', '2023-06-09 11:22:45', '', 13, 'http://localhost/UEN/wp-content/uploads/2023/06/next_arrow.svg', 0, 'attachment', 'image/svg+xml', 0),
(64, 1, '2023-06-09 11:22:57', '2023-06-09 11:22:57', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-09 11:22:57', '2023-06-09 11:22:57', '', 13, 'http://localhost/UEN/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-06-09 11:27:38', '2023-06-09 11:27:38', '', 'footer', '', 'publish', 'open', 'open', '', 'footer', '', '', '2023-06-09 11:37:41', '2023-06-09 11:37:41', '', 0, 'http://localhost/UEN/?post_type=footer&#038;p=65', 0, 'footer', '', 0),
(66, 1, '2023-06-09 11:27:38', '2023-06-09 11:27:38', '', 'footer', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-06-09 11:27:38', '2023-06-09 11:27:38', '', 65, 'http://localhost/UEN/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-06-09 11:28:58', '2023-06-09 11:28:58', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'footer', 'footer', 'publish', 'closed', 'closed', '', 'group_64830cf03407a', '', '', '2023-06-09 11:37:04', '2023-06-09 11:37:04', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2023-06-09 11:30:59', '2023-06-09 11:30:59', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'newslatter section', 'newslatter_section', 'publish', 'closed', 'closed', '', 'field_64830cfdc23b8', '', '', '2023-06-09 11:30:59', '2023-06-09 11:30:59', '', 67, 'http://localhost/UEN/?post_type=acf-field&p=68', 0, 'acf-field', '', 0),
(69, 1, '2023-06-09 11:30:59', '2023-06-09 11:30:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'newsletter title', 'newsletter_title', 'publish', 'closed', 'closed', '', 'field_64830d12c23b9', '', '', '2023-06-09 11:30:59', '2023-06-09 11:30:59', '', 67, 'http://localhost/UEN/?post_type=acf-field&p=69', 1, 'acf-field', '', 0),
(70, 1, '2023-06-09 11:30:59', '2023-06-09 11:30:59', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'newsletter content', 'newsletter_content', 'publish', 'closed', 'closed', '', 'field_64830d25c23ba', '', '', '2023-06-09 11:30:59', '2023-06-09 11:30:59', '', 67, 'http://localhost/UEN/?post_type=acf-field&p=70', 2, 'acf-field', '', 0),
(71, 1, '2023-06-09 11:33:11', '2023-06-09 11:33:11', '', 'footer', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-06-09 11:33:11', '2023-06-09 11:33:11', '', 65, 'http://localhost/UEN/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-06-09 11:35:17', '2023-06-09 11:35:17', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'footer section', 'footer_section', 'publish', 'closed', 'closed', '', 'field_64830e23ea0cc', '', '', '2023-06-09 11:35:17', '2023-06-09 11:35:17', '', 67, 'http://localhost/UEN/?post_type=acf-field&p=72', 3, 'acf-field', '', 0),
(73, 1, '2023-06-09 11:35:17', '2023-06-09 11:35:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'footer logo', 'footer_logo', 'publish', 'closed', 'closed', '', 'field_64830e4aea0cd', '', '', '2023-06-09 11:35:17', '2023-06-09 11:35:17', '', 67, 'http://localhost/UEN/?post_type=acf-field&p=73', 4, 'acf-field', '', 0),
(74, 1, '2023-06-09 11:35:17', '2023-06-09 11:35:17', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'footer content', 'footer_content', 'publish', 'closed', 'closed', '', 'field_64830e5bea0ce', '', '', '2023-06-09 11:35:17', '2023-06-09 11:35:17', '', 67, 'http://localhost/UEN/?post_type=acf-field&p=74', 5, 'acf-field', '', 0),
(75, 1, '2023-06-09 11:37:41', '2023-06-09 11:37:41', '', 'footer', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2023-06-09 11:37:41', '2023-06-09 11:37:41', '', 65, 'http://localhost/UEN/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-06-09 13:29:04', '2023-06-09 13:29:04', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit', '', '', '2023-06-09 17:09:23', '2023-06-09 17:09:23', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=76', 0, 'events', '', 0),
(77, 1, '2023-06-09 13:28:52', '2023-06-09 13:28:52', '', 'featured1_img', '', 'inherit', 'open', 'closed', '', 'featured1_img', '', '', '2023-06-09 13:28:52', '2023-06-09 13:28:52', '', 76, 'http://localhost/UEN/wp-content/uploads/2023/06/featured1_img.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2023-06-09 13:29:04', '2023-06-09 13:29:04', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2023-06-09 13:29:04', '2023-06-09 13:29:04', '', 76, 'http://localhost/UEN/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-06-09 13:30:46', '2023-06-09 13:30:46', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-2', '', '', '2023-06-09 17:09:37', '2023-06-09 17:09:37', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=79', 0, 'events', '', 0),
(80, 1, '2023-06-09 13:30:36', '2023-06-09 13:30:36', '', 'featured2_img', '', 'inherit', 'open', 'closed', '', 'featured2_img', '', '', '2023-06-09 13:30:36', '2023-06-09 13:30:36', '', 79, 'http://localhost/UEN/wp-content/uploads/2023/06/featured2_img.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2023-06-09 13:30:46', '2023-06-09 13:30:46', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2023-06-09 13:30:46', '2023-06-09 13:30:46', '', 79, 'http://localhost/UEN/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-06-09 13:31:15', '2023-06-09 13:31:15', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-3', '', '', '2023-06-09 17:09:50', '2023-06-09 17:09:50', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=82', 0, 'events', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(83, 1, '2023-06-09 13:31:15', '2023-06-09 13:31:15', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2023-06-09 13:31:15', '2023-06-09 13:31:15', '', 82, 'http://localhost/UEN/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-06-09 13:50:54', '2023-06-09 13:50:54', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-4', '', '', '2023-06-09 17:10:06', '2023-06-09 17:10:06', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=84', 0, 'events', '', 0),
(85, 1, '2023-06-09 13:50:45', '2023-06-09 13:50:45', '', 'featured4_img', '', 'inherit', 'open', 'closed', '', 'featured4_img', '', '', '2023-06-09 13:50:45', '2023-06-09 13:50:45', '', 84, 'http://localhost/UEN/wp-content/uploads/2023/06/featured4_img.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2023-06-09 13:50:54', '2023-06-09 13:50:54', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2023-06-09 13:50:54', '2023-06-09 13:50:54', '', 84, 'http://localhost/UEN/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-06-09 13:52:17', '2023-06-09 13:52:17', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-5', '', '', '2023-06-09 17:10:59', '2023-06-09 17:10:59', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=87', 0, 'events', '', 0),
(88, 1, '2023-06-09 13:52:11', '2023-06-09 13:52:11', '', 'featured5_img', '', 'inherit', 'open', 'closed', '', 'featured5_img', '', '', '2023-06-09 13:52:11', '2023-06-09 13:52:11', '', 87, 'http://localhost/UEN/wp-content/uploads/2023/06/featured5_img.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2023-06-09 13:52:17', '2023-06-09 13:52:17', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2023-06-09 13:52:17', '2023-06-09 13:52:17', '', 87, 'http://localhost/UEN/?p=89', 0, 'revision', '', 0),
(90, 1, '2023-06-09 13:52:53', '2023-06-09 13:52:53', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-6', '', '', '2023-06-09 17:11:26', '2023-06-09 17:11:26', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=90', 0, 'events', '', 0),
(91, 1, '2023-06-09 13:52:47', '2023-06-09 13:52:47', '', 'featured6_img', '', 'inherit', 'open', 'closed', '', 'featured6_img', '', '', '2023-06-09 13:52:47', '2023-06-09 13:52:47', '', 90, 'http://localhost/UEN/wp-content/uploads/2023/06/featured6_img.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2023-06-09 13:52:53', '2023-06-09 13:52:53', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2023-06-09 13:52:53', '2023-06-09 13:52:53', '', 90, 'http://localhost/UEN/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-06-09 13:54:25', '2023-06-09 13:54:25', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-7', '', '', '2023-06-09 17:24:53', '2023-06-09 17:24:53', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=93', 0, 'events', '', 0),
(95, 1, '2023-06-09 13:54:25', '2023-06-09 13:54:25', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2023-06-09 13:54:25', '2023-06-09 13:54:25', '', 93, 'http://localhost/UEN/?p=95', 0, 'revision', '', 0),
(96, 1, '2023-06-09 13:54:52', '2023-06-09 13:54:52', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-8', '', '', '2023-06-09 17:11:40', '2023-06-09 17:11:40', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=96', 0, 'events', '', 0),
(97, 1, '2023-06-09 13:54:52', '2023-06-09 13:54:52', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2023-06-09 13:54:52', '2023-06-09 13:54:52', '', 96, 'http://localhost/UEN/?p=97', 0, 'revision', '', 0),
(98, 1, '2023-06-09 13:55:26', '2023-06-09 13:55:26', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-9', '', '', '2023-06-12 05:22:52', '2023-06-12 05:22:52', '', 0, 'http://localhost/UEN/?post_type=events&#038;p=98', 0, 'events', '', 0),
(99, 1, '2023-06-09 13:55:26', '2023-06-09 13:55:26', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2023-06-09 13:55:26', '2023-06-09 13:55:26', '', 98, 'http://localhost/UEN/?p=99', 0, 'revision', '', 0),
(100, 1, '2023-06-09 14:39:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-09 14:39:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=individual&p=100', 0, 'individual', '', 0),
(101, 1, '2023-06-09 14:39:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-09 14:39:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=individual&p=101', 0, 'individual', '', 0),
(102, 1, '2023-06-09 14:40:13', '2023-06-09 14:40:13', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit', '', '', '2023-06-12 05:29:35', '2023-06-12 05:29:35', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=102', 0, 'individual', '', 0),
(103, 1, '2023-06-09 14:40:13', '2023-06-09 14:40:13', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2023-06-09 14:40:13', '2023-06-09 14:40:13', '', 102, 'http://localhost/UEN/?p=103', 0, 'revision', '', 0),
(104, 1, '2023-06-09 14:40:37', '2023-06-09 14:40:37', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-2', '', '', '2023-06-12 05:29:26', '2023-06-12 05:29:26', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=104', 0, 'individual', '', 0),
(105, 1, '2023-06-09 14:40:37', '2023-06-09 14:40:37', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2023-06-09 14:40:37', '2023-06-09 14:40:37', '', 104, 'http://localhost/UEN/?p=105', 0, 'revision', '', 0),
(106, 1, '2023-06-09 14:41:05', '2023-06-09 14:41:05', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-3', '', '', '2023-06-12 05:29:17', '2023-06-12 05:29:17', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=106', 0, 'individual', '', 0),
(107, 1, '2023-06-09 14:41:05', '2023-06-09 14:41:05', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2023-06-09 14:41:05', '2023-06-09 14:41:05', '', 106, 'http://localhost/UEN/?p=107', 0, 'revision', '', 0),
(108, 1, '2023-06-09 14:41:36', '2023-06-09 14:41:36', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-4', '', '', '2023-06-12 05:29:06', '2023-06-12 05:29:06', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=108', 0, 'individual', '', 0),
(109, 1, '2023-06-09 14:41:36', '2023-06-09 14:41:36', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2023-06-09 14:41:36', '2023-06-09 14:41:36', '', 108, 'http://localhost/UEN/?p=109', 0, 'revision', '', 0),
(110, 1, '2023-06-09 14:42:09', '2023-06-09 14:42:09', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-5', '', '', '2023-06-12 05:28:52', '2023-06-12 05:28:52', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=110', 0, 'individual', '', 0),
(111, 1, '2023-06-09 14:42:09', '2023-06-09 14:42:09', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2023-06-09 14:42:09', '2023-06-09 14:42:09', '', 110, 'http://localhost/UEN/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-06-09 14:42:37', '2023-06-09 14:42:37', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-6', '', '', '2023-06-12 05:28:40', '2023-06-12 05:28:40', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=112', 0, 'individual', '', 0),
(113, 1, '2023-06-09 14:42:37', '2023-06-09 14:42:37', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2023-06-09 14:42:37', '2023-06-09 14:42:37', '', 112, 'http://localhost/UEN/?p=113', 0, 'revision', '', 0),
(114, 1, '2023-06-09 14:43:21', '2023-06-09 14:43:21', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-7', '', '', '2023-06-12 05:28:31', '2023-06-12 05:28:31', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=114', 0, 'individual', '', 0),
(115, 1, '2023-06-09 14:43:21', '2023-06-09 14:43:21', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2023-06-09 14:43:21', '2023-06-09 14:43:21', '', 114, 'http://localhost/UEN/?p=115', 0, 'revision', '', 0),
(116, 1, '2023-06-09 14:43:49', '2023-06-09 14:43:49', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-8', '', '', '2023-06-12 05:28:22', '2023-06-12 05:28:22', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=116', 0, 'individual', '', 0),
(117, 1, '2023-06-09 14:43:49', '2023-06-09 14:43:49', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2023-06-09 14:43:49', '2023-06-09 14:43:49', '', 116, 'http://localhost/UEN/?p=117', 0, 'revision', '', 0),
(118, 1, '2023-06-09 14:44:12', '2023-06-09 14:44:12', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-9', '', '', '2023-06-12 05:34:21', '2023-06-12 05:34:21', '', 0, 'http://localhost/UEN/?post_type=individual&#038;p=118', 0, 'individual', '', 0),
(119, 1, '2023-06-09 14:44:12', '2023-06-09 14:44:12', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2023-06-09 14:44:12', '2023-06-09 14:44:12', '', 118, 'http://localhost/UEN/?p=119', 0, 'revision', '', 0),
(120, 1, '2023-06-09 17:32:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-09 17:32:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2023-06-11 10:58:26', '2023-06-11 10:58:26', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit', '', '', '2023-06-11 10:59:43', '2023-06-11 10:59:43', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=121', 0, 'blogs', '', 0),
(122, 1, '2023-06-11 10:58:26', '2023-06-11 10:58:26', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2023-06-11 10:58:26', '2023-06-11 10:58:26', '', 121, 'http://localhost/UEN/?p=122', 0, 'revision', '', 0),
(123, 1, '2023-06-11 10:59:11', '2023-06-11 10:59:11', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-2', '', '', '2023-06-12 06:10:23', '2023-06-12 06:10:23', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=123', 0, 'blogs', '', 0),
(124, 1, '2023-06-11 10:59:11', '2023-06-11 10:59:11', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2023-06-11 10:59:11', '2023-06-11 10:59:11', '', 123, 'http://localhost/UEN/?p=124', 0, 'revision', '', 0),
(125, 1, '2023-06-11 10:59:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-11 10:59:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=blogs&p=125', 0, 'blogs', '', 0),
(126, 1, '2023-06-11 10:59:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-11 10:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=blogs&p=126', 0, 'blogs', '', 0),
(127, 1, '2023-06-11 11:00:20', '2023-06-11 11:00:20', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-3', '', '', '2023-06-11 11:02:52', '2023-06-11 11:02:52', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=127', 0, 'blogs', '', 0),
(128, 1, '2023-06-11 11:00:20', '2023-06-11 11:00:20', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2023-06-11 11:00:20', '2023-06-11 11:00:20', '', 127, 'http://localhost/UEN/?p=128', 0, 'revision', '', 0),
(129, 1, '2023-06-11 11:00:55', '2023-06-11 11:00:55', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-4', '', '', '2023-06-11 11:03:15', '2023-06-11 11:03:15', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=129', 0, 'blogs', '', 0),
(130, 1, '2023-06-11 11:00:55', '2023-06-11 11:00:55', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2023-06-11 11:00:55', '2023-06-11 11:00:55', '', 129, 'http://localhost/UEN/?p=130', 0, 'revision', '', 0),
(131, 1, '2023-06-11 11:01:29', '2023-06-11 11:01:29', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-5', '', '', '2023-06-11 11:03:33', '2023-06-11 11:03:33', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=131', 0, 'blogs', '', 0),
(132, 1, '2023-06-11 11:01:29', '2023-06-11 11:01:29', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-06-11 11:01:29', '2023-06-11 11:01:29', '', 131, 'http://localhost/UEN/?p=132', 0, 'revision', '', 0),
(133, 1, '2023-06-11 11:02:14', '2023-06-11 11:02:14', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-6', '', '', '2023-06-11 11:02:14', '2023-06-11 11:02:14', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=133', 0, 'blogs', '', 0),
(134, 1, '2023-06-11 11:02:14', '2023-06-11 11:02:14', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-06-11 11:02:14', '2023-06-11 11:02:14', '', 133, 'http://localhost/UEN/?p=134', 0, 'revision', '', 0),
(135, 1, '2023-06-12 05:17:20', '2023-06-12 05:17:20', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'events', 'events', 'trash', 'closed', 'closed', '', 'group_6486aa5121271__trashed', '', '', '2023-06-12 06:56:14', '2023-06-12 06:56:14', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=135', 0, 'acf-field-group', '', 0),
(136, 1, '2023-06-12 05:19:26', '2023-06-12 05:19:26', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'events section', 'events_section', 'trash', 'closed', 'closed', '', 'field_6486aa62a925e__trashed', '', '', '2023-06-12 06:56:14', '2023-06-12 06:56:14', '', 135, 'http://localhost/UEN/?post_type=acf-field&#038;p=136', 0, 'acf-field', '', 0),
(137, 1, '2023-06-12 05:19:26', '2023-06-12 05:19:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'events title', 'events_title', 'trash', 'closed', 'closed', '', 'field_6486aa92a925f__trashed', '', '', '2023-06-12 06:56:15', '2023-06-12 06:56:15', '', 135, 'http://localhost/UEN/?post_type=acf-field&#038;p=137', 1, 'acf-field', '', 0),
(138, 1, '2023-06-12 05:20:32', '2023-06-12 05:20:32', '', 'events', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-06-12 05:20:32', '2023-06-12 05:20:32', '', 0, 'http://localhost/UEN/?page_id=138', 0, 'page', '', 0),
(139, 1, '2023-06-12 05:20:09', '2023-06-12 05:20:09', '', 'events', '', 'trash', 'closed', 'closed', '', 'events__trashed', '', '', '2023-06-12 05:20:48', '2023-06-12 05:20:48', '', 0, 'http://localhost/UEN/?page_id=139', 0, 'page', '', 0),
(140, 1, '2023-06-12 05:20:09', '2023-06-12 05:20:09', '', 'events', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-06-12 05:20:09', '2023-06-12 05:20:09', '', 139, 'http://localhost/UEN/?p=140', 0, 'revision', '', 0),
(141, 1, '2023-06-12 05:20:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-12 05:20:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?page_id=141', 0, 'page', '', 0),
(142, 1, '2023-06-12 05:20:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-12 05:20:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?page_id=142', 0, 'page', '', 0),
(143, 1, '2023-06-12 05:20:32', '2023-06-12 05:20:32', '', 'events', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2023-06-12 05:20:32', '2023-06-12 05:20:32', '', 138, 'http://localhost/UEN/?p=143', 0, 'revision', '', 0),
(144, 1, '2023-06-12 05:21:51', '2023-06-12 05:21:51', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2023-06-12 05:21:51', '2023-06-12 05:21:51', '', 98, 'http://localhost/UEN/?p=144', 0, 'revision', '', 0),
(145, 1, '2023-06-12 05:31:30', '2023-06-12 05:31:30', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"blogs\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'individual', 'individual', 'trash', 'closed', 'closed', '', 'group_6486ada8b947a__trashed', '', '', '2023-06-12 06:56:09', '2023-06-12 06:56:09', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=145', 0, 'acf-field-group', '', 0),
(146, 1, '2023-06-12 05:32:39', '2023-06-12 05:32:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'individual section', 'individual_section', 'trash', 'closed', 'closed', '', 'field_6486adb49ec76__trashed', '', '', '2023-06-12 06:56:09', '2023-06-12 06:56:09', '', 145, 'http://localhost/UEN/?post_type=acf-field&#038;p=146', 0, 'acf-field', '', 0),
(147, 1, '2023-06-12 05:32:39', '2023-06-12 05:32:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'individual title', 'individual_title', 'trash', 'closed', 'closed', '', 'field_6486adc99ec77__trashed', '', '', '2023-06-12 06:56:09', '2023-06-12 06:56:09', '', 145, 'http://localhost/UEN/?post_type=acf-field&#038;p=147', 1, 'acf-field', '', 0),
(148, 1, '2023-06-12 05:33:04', '2023-06-12 05:33:04', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2023-06-12 05:33:04', '2023-06-12 05:33:04', '', 118, 'http://localhost/UEN/?p=148', 0, 'revision', '', 0),
(149, 1, '2023-06-12 05:38:04', '2023-06-12 05:38:04', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-7', '', '', '2023-06-12 05:38:04', '2023-06-12 05:38:04', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=149', 0, 'blogs', '', 0),
(150, 1, '2023-06-12 05:38:04', '2023-06-12 05:38:04', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2023-06-12 05:38:04', '2023-06-12 05:38:04', '', 149, 'http://localhost/UEN/?p=150', 0, 'revision', '', 0),
(151, 1, '2023-06-12 05:38:30', '2023-06-12 05:38:30', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-8', '', '', '2023-06-12 05:38:30', '2023-06-12 05:38:30', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=151', 0, 'blogs', '', 0),
(152, 1, '2023-06-12 05:38:30', '2023-06-12 05:38:30', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2023-06-12 05:38:30', '2023-06-12 05:38:30', '', 151, 'http://localhost/UEN/?p=152', 0, 'revision', '', 0),
(153, 1, '2023-06-12 05:38:56', '2023-06-12 05:38:56', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-9', '', '', '2023-06-12 05:38:56', '2023-06-12 05:38:56', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=153', 0, 'blogs', '', 0),
(154, 1, '2023-06-12 05:38:56', '2023-06-12 05:38:56', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2023-06-12 05:38:56', '2023-06-12 05:38:56', '', 153, 'http://localhost/UEN/?p=154', 0, 'revision', '', 0),
(155, 1, '2023-06-12 05:39:27', '2023-06-12 05:39:27', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-10', '', '', '2023-06-12 05:39:27', '2023-06-12 05:39:27', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=155', 0, 'blogs', '', 0),
(156, 1, '2023-06-12 05:39:27', '2023-06-12 05:39:27', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2023-06-12 05:39:27', '2023-06-12 05:39:27', '', 155, 'http://localhost/UEN/?p=156', 0, 'revision', '', 0),
(157, 1, '2023-06-12 05:39:55', '2023-06-12 05:39:55', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-11', '', '', '2023-06-12 05:39:55', '2023-06-12 05:39:55', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=157', 0, 'blogs', '', 0),
(158, 1, '2023-06-12 05:39:55', '2023-06-12 05:39:55', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2023-06-12 05:39:55', '2023-06-12 05:39:55', '', 157, 'http://localhost/UEN/?p=158', 0, 'revision', '', 0),
(159, 1, '2023-06-12 05:40:21', '2023-06-12 05:40:21', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-12', '', '', '2023-06-12 05:40:27', '2023-06-12 05:40:27', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=159', 0, 'blogs', '', 0),
(160, 1, '2023-06-12 05:40:21', '2023-06-12 05:40:21', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2023-06-12 05:40:21', '2023-06-12 05:40:21', '', 159, 'http://localhost/UEN/?p=160', 0, 'revision', '', 0),
(161, 1, '2023-06-12 05:40:52', '2023-06-12 05:40:52', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-13', '', '', '2023-06-12 05:40:52', '2023-06-12 05:40:52', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=161', 0, 'blogs', '', 0),
(162, 1, '2023-06-12 05:40:52', '2023-06-12 05:40:52', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2023-06-12 05:40:52', '2023-06-12 05:40:52', '', 161, 'http://localhost/UEN/?p=162', 0, 'revision', '', 0),
(163, 1, '2023-06-12 05:41:25', '2023-06-12 05:41:25', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-14', '', '', '2023-06-12 05:41:25', '2023-06-12 05:41:25', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=163', 0, 'blogs', '', 0),
(164, 1, '2023-06-12 05:41:25', '2023-06-12 05:41:25', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2023-06-12 05:41:25', '2023-06-12 05:41:25', '', 163, 'http://localhost/UEN/?p=164', 0, 'revision', '', 0),
(165, 1, '2023-06-12 05:41:54', '2023-06-12 05:41:54', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-15', '', '', '2023-06-12 05:41:54', '2023-06-12 05:41:54', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=165', 0, 'blogs', '', 0),
(166, 1, '2023-06-12 05:41:54', '2023-06-12 05:41:54', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2023-06-12 05:41:54', '2023-06-12 05:41:54', '', 165, 'http://localhost/UEN/?p=166', 0, 'revision', '', 0),
(167, 1, '2023-06-12 05:42:33', '2023-06-12 05:42:33', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-16', '', '', '2023-06-12 05:42:33', '2023-06-12 05:42:33', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=167', 0, 'blogs', '', 0),
(168, 1, '2023-06-12 05:42:33', '2023-06-12 05:42:33', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2023-06-12 05:42:33', '2023-06-12 05:42:33', '', 167, 'http://localhost/UEN/?p=168', 0, 'revision', '', 0),
(169, 1, '2023-06-12 05:43:14', '2023-06-12 05:43:14', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-17', '', '', '2023-06-12 05:43:14', '2023-06-12 05:43:14', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=169', 0, 'blogs', '', 0),
(170, 1, '2023-06-12 05:43:14', '2023-06-12 05:43:14', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2023-06-12 05:43:14', '2023-06-12 05:43:14', '', 169, 'http://localhost/UEN/?p=170', 0, 'revision', '', 0),
(171, 1, '2023-06-12 05:43:38', '2023-06-12 05:43:38', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-18', '', '', '2023-06-12 05:43:38', '2023-06-12 05:43:38', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=171', 0, 'blogs', '', 0),
(172, 1, '2023-06-12 05:43:38', '2023-06-12 05:43:38', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2023-06-12 05:43:38', '2023-06-12 05:43:38', '', 171, 'http://localhost/UEN/?p=172', 0, 'revision', '', 0),
(173, 1, '2023-06-12 05:45:08', '2023-06-12 05:45:08', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-19', '', '', '2023-06-12 07:02:59', '2023-06-12 07:02:59', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=173', 0, 'blogs', '', 0),
(174, 1, '2023-06-12 05:45:08', '2023-06-12 05:45:08', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2023-06-12 05:45:08', '2023-06-12 05:45:08', '', 173, 'http://localhost/UEN/?p=174', 0, 'revision', '', 0),
(175, 1, '2023-06-12 05:45:38', '2023-06-12 05:45:38', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-20', '', '', '2023-06-12 06:20:04', '2023-06-12 06:20:04', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=175', 0, 'blogs', '', 0),
(176, 1, '2023-06-12 05:45:38', '2023-06-12 05:45:38', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-06-12 05:45:38', '2023-06-12 05:45:38', '', 175, 'http://localhost/UEN/?p=176', 0, 'revision', '', 0),
(177, 1, '2023-06-12 05:46:05', '2023-06-12 05:46:05', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-21', '', '', '2023-06-12 07:01:52', '2023-06-12 07:01:52', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=177', 0, 'blogs', '', 0),
(178, 1, '2023-06-12 05:46:05', '2023-06-12 05:46:05', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-06-12 05:46:05', '2023-06-12 05:46:05', '', 177, 'http://localhost/UEN/?p=178', 0, 'revision', '', 0),
(179, 1, '2023-06-12 05:52:06', '2023-06-12 05:52:06', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"blogs\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'blogs', 'blogs', 'publish', 'closed', 'closed', '', 'group_6486b21aa06bc', '', '', '2023-06-12 06:57:34', '2023-06-12 06:57:34', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=179', 0, 'acf-field-group', '', 0),
(180, 1, '2023-06-12 05:52:06', '2023-06-12 05:52:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'events section', 'events_section', 'publish', 'closed', 'closed', '', 'field_6486b22431686', '', '', '2023-06-12 05:52:06', '2023-06-12 05:52:06', '', 179, 'http://localhost/UEN/?post_type=acf-field&p=180', 0, 'acf-field', '', 0),
(181, 1, '2023-06-12 05:52:06', '2023-06-12 05:52:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'events title', 'events_title', 'publish', 'closed', 'closed', '', 'field_6486b23e31687', '', '', '2023-06-12 05:52:06', '2023-06-12 05:52:06', '', 179, 'http://localhost/UEN/?post_type=acf-field&p=181', 1, 'acf-field', '', 0),
(182, 1, '2023-06-12 05:52:06', '2023-06-12 05:52:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'individual section', 'individual_section', 'publish', 'closed', 'closed', '', 'field_6486b25331689', '', '', '2023-06-12 05:52:06', '2023-06-12 05:52:06', '', 179, 'http://localhost/UEN/?post_type=acf-field&p=182', 2, 'acf-field', '', 0),
(183, 1, '2023-06-12 05:52:06', '2023-06-12 05:52:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'individual title', 'individual_title', 'publish', 'closed', 'closed', '', 'field_6486b2653168a', '', '', '2023-06-12 05:52:06', '2023-06-12 05:52:06', '', 179, 'http://localhost/UEN/?post_type=acf-field&p=183', 3, 'acf-field', '', 0),
(184, 1, '2023-06-12 05:52:44', '2023-06-12 05:52:44', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2023-06-12 05:52:44', '2023-06-12 05:52:44', '', 123, 'http://localhost/UEN/?p=184', 0, 'revision', '', 0),
(185, 1, '2023-06-12 05:53:42', '2023-06-12 05:53:42', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-06-12 05:53:42', '2023-06-12 05:53:42', '', 177, 'http://localhost/UEN/?p=185', 0, 'revision', '', 0),
(186, 1, '2023-06-12 06:10:23', '2023-06-12 06:10:23', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2023-06-12 06:10:23', '2023-06-12 06:10:23', '', 123, 'http://localhost/UEN/?p=186', 0, 'revision', '', 0),
(187, 1, '2023-06-12 06:11:39', '2023-06-12 06:11:39', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-06-12 06:11:39', '2023-06-12 06:11:39', '', 177, 'http://localhost/UEN/?p=187', 0, 'revision', '', 0),
(188, 1, '2023-06-12 06:16:48', '2023-06-12 06:16:48', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-06-12 06:16:48', '2023-06-12 06:16:48', '', 177, 'http://localhost/UEN/?p=188', 0, 'revision', '', 0),
(189, 1, '2023-06-12 06:19:48', '2023-06-12 06:19:48', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-06-12 06:19:48', '2023-06-12 06:19:48', '', 177, 'http://localhost/UEN/?p=189', 0, 'revision', '', 0),
(190, 1, '2023-06-12 06:20:04', '2023-06-12 06:20:04', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-06-12 06:20:04', '2023-06-12 06:20:04', '', 175, 'http://localhost/UEN/?p=190', 0, 'revision', '', 0),
(191, 1, '2023-06-12 06:57:34', '2023-06-12 06:57:34', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'featured section', 'featured_section', 'publish', 'closed', 'closed', '', 'field_6486c1a93525e', '', '', '2023-06-12 06:57:34', '2023-06-12 06:57:34', '', 179, 'http://localhost/UEN/?post_type=acf-field&p=191', 4, 'acf-field', '', 0),
(192, 1, '2023-06-12 06:57:34', '2023-06-12 06:57:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'featured title', 'featured_title', 'publish', 'closed', 'closed', '', 'field_6486c1c43525f', '', '', '2023-06-12 06:57:34', '2023-06-12 06:57:34', '', 179, 'http://localhost/UEN/?post_type=acf-field&p=192', 5, 'acf-field', '', 0),
(193, 1, '2023-06-12 06:58:22', '2023-06-12 06:58:22', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-06-12 06:58:22', '2023-06-12 06:58:22', '', 177, 'http://localhost/UEN/?p=193', 0, 'revision', '', 0),
(194, 1, '2023-06-12 07:00:25', '2023-06-12 07:00:25', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-06-12 07:00:25', '2023-06-12 07:00:25', '', 177, 'http://localhost/UEN/?p=194', 0, 'revision', '', 0),
(195, 1, '2023-06-12 07:02:59', '2023-06-12 07:02:59', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2023-06-12 07:02:59', '2023-06-12 07:02:59', '', 173, 'http://localhost/UEN/?p=195', 0, 'revision', '', 0),
(196, 1, '2023-06-12 08:28:51', '2023-06-12 08:28:51', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'events', 'events', 'publish', 'closed', 'closed', '', 'field_6486d62ec9335', '', '', '2023-06-12 08:28:51', '2023-06-12 08:28:51', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=196', 12, 'acf-field', '', 0),
(197, 1, '2023-06-12 08:28:51', '2023-06-12 08:28:51', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:14:\"blogs-category\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'events', 'events', 'publish', 'closed', 'closed', '', 'field_6486d665c9336', '', '', '2023-06-12 08:28:51', '2023-06-12 08:28:51', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=197', 13, 'acf-field', '', 0),
(198, 1, '2023-06-12 08:47:52', '2023-06-12 08:47:52', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-12 08:47:52', '2023-06-12 08:47:52', '', 13, 'http://localhost/UEN/?p=198', 0, 'revision', '', 0),
(199, 1, '2023-06-12 10:16:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-12 10:16:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?page_id=199', 0, 'page', '', 0),
(200, 1, '2023-06-12 10:35:44', '2023-06-12 10:35:44', '', 'water_img', '', 'inherit', 'open', 'closed', '', 'water_img', '', '', '2023-06-12 10:35:44', '2023-06-12 10:35:44', '', 5, 'http://localhost/UEN/wp-content/uploads/2023/06/water_img.png', 0, 'attachment', 'image/png', 0),
(201, 1, '2023-06-12 10:37:49', '2023-06-12 10:37:49', '', 'combat_img', '', 'inherit', 'open', 'closed', '', 'combat_img', '', '', '2023-06-12 10:37:49', '2023-06-12 10:37:49', '', 5, 'http://localhost/UEN/wp-content/uploads/2023/06/combat_img.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2023-06-12 10:39:19', '2023-06-12 10:39:19', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'category section', 'category_section', 'publish', 'closed', 'closed', '', 'field_6486f59fe22f8', '', '', '2023-06-12 10:39:19', '2023-06-12 10:39:19', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=202', 14, 'acf-field', '', 0),
(203, 1, '2023-06-12 10:39:19', '2023-06-12 10:39:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'category title', 'category_title', 'publish', 'closed', 'closed', '', 'field_6486f5b3e22f9', '', '', '2023-06-12 10:39:19', '2023-06-12 10:39:19', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=203', 15, 'acf-field', '', 0),
(204, 1, '2023-06-12 10:39:51', '2023-06-12 10:39:51', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-12 10:39:51', '2023-06-12 10:39:51', '', 13, 'http://localhost/UEN/?p=204', 0, 'revision', '', 0),
(205, 1, '2023-06-12 10:56:50', '2023-06-12 10:56:50', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'trash', 'open', 'open', '', 'lorem-ipsum-dolor-sit-22__trashed', '', '', '2023-06-12 10:57:36', '2023-06-12 10:57:36', '', 0, 'http://localhost/UEN/?post_type=blogs&#038;p=205', 0, 'blogs', '', 0),
(206, 1, '2023-06-12 10:56:50', '2023-06-12 10:56:50', 'Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.', 'Lorem ipsum dolor sit', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2023-06-12 10:56:50', '2023-06-12 10:56:50', '', 205, 'http://localhost/UEN/?p=206', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(207, 1, '2023-06-12 10:57:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-12 10:57:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=blogs&p=207', 0, 'blogs', '', 0),
(208, 1, '2023-06-12 10:58:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-12 10:58:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=blogs&p=208', 0, 'blogs', '', 0),
(209, 1, '2023-06-12 11:16:29', '2023-06-12 11:16:29', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-12 11:16:29', '2023-06-12 11:16:29', '', 13, 'http://localhost/UEN/?p=209', 0, 'revision', '', 0),
(210, 1, '2023-06-12 11:38:25', '2023-06-12 11:38:25', '', 'about', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-06-12 13:33:51', '2023-06-12 13:33:51', '', 0, 'http://localhost/UEN/?page_id=210', 0, 'page', '', 0),
(211, 1, '2023-06-12 11:38:25', '2023-06-12 11:38:25', '', 'about', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2023-06-12 11:38:25', '2023-06-12 11:38:25', '', 210, 'http://localhost/UEN/?p=211', 0, 'revision', '', 0),
(212, 1, '2023-06-12 11:38:55', '2023-06-12 11:38:55', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'about', 'about', 'publish', 'closed', 'closed', '', 'group_648703c020670', '', '', '2023-06-12 12:48:29', '2023-06-12 12:48:29', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=212', 0, 'acf-field-group', '', 0),
(213, 1, '2023-06-12 11:43:04', '2023-06-12 11:43:04', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-12 11:43:04', '2023-06-12 11:43:04', '', 22, 'http://localhost/UEN/?p=213', 0, 'revision', '', 0),
(214, 1, '2023-06-12 11:47:03', '2023-06-12 11:47:03', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-12 11:47:03', '2023-06-12 11:47:03', '', 22, 'http://localhost/UEN/?p=214', 0, 'revision', '', 0),
(215, 1, '2023-06-12 12:18:14', '2023-06-12 12:18:14', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'about section', 'about_section', 'publish', 'closed', 'closed', '', 'field_6487084ee852f', '', '', '2023-06-12 12:18:14', '2023-06-12 12:18:14', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=215', 0, 'acf-field', '', 0),
(216, 1, '2023-06-12 12:18:14', '2023-06-12 12:18:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'about banner image', 'about_banner_image', 'publish', 'closed', 'closed', '', 'field_64870cd7e8530', '', '', '2023-06-12 12:25:18', '2023-06-12 12:25:18', '', 212, 'http://localhost/UEN/?post_type=acf-field&#038;p=216', 2, 'acf-field', '', 0),
(217, 1, '2023-06-12 12:18:44', '2023-06-12 12:18:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'about title', 'about_title', 'publish', 'closed', 'closed', '', 'field_64870d0d9eb49', '', '', '2023-06-12 12:25:18', '2023-06-12 12:25:18', '', 212, 'http://localhost/UEN/?post_type=acf-field&#038;p=217', 1, 'acf-field', '', 0),
(218, 1, '2023-06-12 12:23:54', '2023-06-12 12:23:54', '', 'about_bannerimg', '', 'inherit', 'open', 'closed', '', 'about_bannerimg', '', '', '2023-06-12 12:23:54', '2023-06-12 12:23:54', '', 210, 'http://localhost/UEN/wp-content/uploads/2023/06/about_bannerimg.png', 0, 'attachment', 'image/png', 0),
(219, 1, '2023-06-12 12:24:13', '2023-06-12 12:24:13', '', 'about', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2023-06-12 12:24:13', '2023-06-12 12:24:13', '', 210, 'http://localhost/UEN/?p=219', 0, 'revision', '', 0),
(220, 1, '2023-06-12 12:28:43', '2023-06-12 12:28:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'banner title', 'banner_title', 'publish', 'closed', 'closed', '', 'field_64870f544823e', '', '', '2023-06-12 12:28:43', '2023-06-12 12:28:43', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=220', 3, 'acf-field', '', 0),
(221, 1, '2023-06-12 12:28:43', '2023-06-12 12:28:43', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'banner description', 'banner_description', 'publish', 'closed', 'closed', '', 'field_64870f5f4823f', '', '', '2023-06-12 12:28:43', '2023-06-12 12:28:43', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=221', 4, 'acf-field', '', 0),
(222, 1, '2023-06-12 12:29:05', '2023-06-12 12:29:05', '', 'about', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2023-06-12 12:29:05', '2023-06-12 12:29:05', '', 210, 'http://localhost/UEN/?p=222', 0, 'revision', '', 0),
(223, 1, '2023-06-12 12:34:15', '2023-06-12 12:34:15', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'vision section', 'vision_section', 'publish', 'closed', 'closed', '', 'field_6487108e924f6', '', '', '2023-06-12 12:34:15', '2023-06-12 12:34:15', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=223', 5, 'acf-field', '', 0),
(226, 1, '2023-06-12 12:37:56', '2023-06-12 12:37:56', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'vision', 'vision', 'publish', 'closed', 'closed', '', 'field_6487114efc7dd', '', '', '2023-06-12 12:37:56', '2023-06-12 12:37:56', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=226', 6, 'acf-field', '', 0),
(227, 1, '2023-06-12 12:37:56', '2023-06-12 12:37:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'vision title', 'vision_title', 'publish', 'closed', 'closed', '', 'field_64871163fc7de', '', '', '2023-06-12 12:37:56', '2023-06-12 12:37:56', '', 226, 'http://localhost/UEN/?post_type=acf-field&p=227', 0, 'acf-field', '', 0),
(228, 1, '2023-06-12 12:37:56', '2023-06-12 12:37:56', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'vision description', 'vision_description', 'publish', 'closed', 'closed', '', 'field_64871179fc7df', '', '', '2023-06-12 12:37:56', '2023-06-12 12:37:56', '', 226, 'http://localhost/UEN/?post_type=acf-field&p=228', 1, 'acf-field', '', 0),
(229, 1, '2023-06-12 12:38:54', '2023-06-12 12:38:54', '', 'about', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2023-06-12 12:38:54', '2023-06-12 12:38:54', '', 210, 'http://localhost/UEN/?p=229', 0, 'revision', '', 0),
(230, 1, '2023-06-12 12:48:29', '2023-06-12 12:48:29', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'team section', 'team_section', 'publish', 'closed', 'closed', '', 'field_6487131e87fde', '', '', '2023-06-12 12:48:29', '2023-06-12 12:48:29', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=230', 7, 'acf-field', '', 0),
(231, 1, '2023-06-12 12:48:29', '2023-06-12 12:48:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'team title', 'team_title', 'publish', 'closed', 'closed', '', 'field_6487134287fdf', '', '', '2023-06-12 12:48:29', '2023-06-12 12:48:29', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=231', 8, 'acf-field', '', 0),
(232, 1, '2023-06-12 12:48:29', '2023-06-12 12:48:29', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'team', 'team', 'publish', 'closed', 'closed', '', 'field_6487136887fe0', '', '', '2023-06-12 12:48:29', '2023-06-12 12:48:29', '', 212, 'http://localhost/UEN/?post_type=acf-field&p=232', 9, 'acf-field', '', 0),
(233, 1, '2023-06-12 12:48:29', '2023-06-12 12:48:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'team image', 'team_image', 'publish', 'closed', 'closed', '', 'field_6487137f87fe1', '', '', '2023-06-12 12:48:29', '2023-06-12 12:48:29', '', 232, 'http://localhost/UEN/?post_type=acf-field&p=233', 0, 'acf-field', '', 0),
(234, 1, '2023-06-12 12:48:29', '2023-06-12 12:48:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_648713e487fe2', '', '', '2023-06-12 12:48:29', '2023-06-12 12:48:29', '', 232, 'http://localhost/UEN/?post_type=acf-field&p=234', 1, 'acf-field', '', 0),
(235, 1, '2023-06-12 12:48:29', '2023-06-12 12:48:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'position', 'position', 'publish', 'closed', 'closed', '', 'field_648713f887fe3', '', '', '2023-06-12 12:48:29', '2023-06-12 12:48:29', '', 232, 'http://localhost/UEN/?post_type=acf-field&p=235', 2, 'acf-field', '', 0),
(236, 1, '2023-06-12 13:22:56', '2023-06-12 13:22:56', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-12 13:22:56', '2023-06-12 13:22:56', '', 22, 'http://localhost/UEN/?p=236', 0, 'revision', '', 0),
(237, 1, '2023-06-12 14:08:30', '2023-06-12 14:08:30', '', 'category', '', 'trash', 'open', 'open', '', 'category__trashed', '', '', '2023-06-12 14:09:32', '2023-06-12 14:09:32', '', 0, 'http://localhost/UEN/?post_type=category&#038;p=237', 0, 'category', '', 0),
(238, 1, '2023-06-12 14:08:30', '2023-06-12 14:08:30', '', 'category', '', 'inherit', 'closed', 'closed', '', '237-revision-v1', '', '', '2023-06-12 14:08:30', '2023-06-12 14:08:30', '', 237, 'http://localhost/UEN/?p=238', 0, 'revision', '', 0),
(239, 1, '2023-06-12 14:08:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-12 14:08:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=category&p=239', 0, 'category', '', 0),
(240, 1, '2023-06-12 14:08:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-12 14:08:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/UEN/?post_type=category&p=240', 0, 'category', '', 0),
(241, 1, '2023-06-12 14:10:08', '2023-06-12 14:10:08', '', 'category', '', 'publish', 'closed', 'closed', '', 'category', '', '', '2023-06-12 14:44:36', '2023-06-12 14:44:36', '', 0, 'http://localhost/UEN/?page_id=241', 0, 'page', '', 0),
(242, 1, '2023-06-12 14:10:08', '2023-06-12 14:10:08', '', 'category', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2023-06-12 14:10:08', '2023-06-12 14:10:08', '', 241, 'http://localhost/UEN/?p=242', 0, 'revision', '', 0),
(243, 1, '2023-06-12 14:18:55', '2023-06-12 14:18:55', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"archive-category.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:16:\"is_acf_component\";i:0;s:22:\"acf_component_defaults\";a:6:{s:10:\"repeatable\";s:1:\"0\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:11:\"appearances\";s:0:\"\";}}', 'category', 'category', 'publish', 'closed', 'closed', '', 'group_6487293bcac60', '', '', '2023-06-12 14:21:51', '2023-06-12 14:21:51', '', 0, 'http://localhost/UEN/?post_type=acf-field-group&#038;p=243', 0, 'acf-field-group', '', 0),
(244, 1, '2023-06-12 14:21:01', '2023-06-12 14:21:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'category section', 'category_section', 'publish', 'closed', 'closed', '', 'field_648729857fd38', '', '', '2023-06-12 14:21:01', '2023-06-12 14:21:01', '', 243, 'http://localhost/UEN/?post_type=acf-field&p=244', 0, 'acf-field', '', 0),
(245, 1, '2023-06-12 14:21:01', '2023-06-12 14:21:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'category', 'category', 'publish', 'closed', 'closed', '', 'field_6487299b7fd39', '', '', '2023-06-12 14:21:01', '2023-06-12 14:21:01', '', 243, 'http://localhost/UEN/?post_type=acf-field&p=245', 1, 'acf-field', '', 0),
(246, 1, '2023-06-12 14:21:01', '2023-06-12 14:21:01', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'category link', 'category_link', 'publish', 'closed', 'closed', '', 'field_648729a77fd3a', '', '', '2023-06-12 14:21:01', '2023-06-12 14:21:01', '', 243, 'http://localhost/UEN/?post_type=acf-field&p=246', 2, 'acf-field', '', 0),
(247, 1, '2023-06-12 14:22:11', '2023-06-12 14:22:11', '', 'category', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2023-06-12 14:22:11', '2023-06-12 14:22:11', '', 241, 'http://localhost/UEN/?p=247', 0, 'revision', '', 0),
(248, 1, '2023-06-12 14:30:55', '2023-06-12 14:30:55', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-12 14:30:55', '2023-06-12 14:30:55', '', 22, 'http://localhost/UEN/?p=248', 0, 'revision', '', 0),
(249, 1, '2023-06-12 14:44:36', '2023-06-12 14:44:36', '', 'category', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2023-06-12 14:44:36', '2023-06-12 14:44:36', '', 241, 'http://localhost/UEN/?p=249', 0, 'revision', '', 0),
(250, 1, '2023-06-12 14:46:01', '2023-06-12 14:46:01', '', 'header', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-06-12 14:46:01', '2023-06-12 14:46:01', '', 22, 'http://localhost/UEN/?p=250', 0, 'revision', '', 0),
(251, 1, '2023-06-12 14:55:37', '2023-06-12 14:55:37', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'category link', 'category_link', 'publish', 'closed', 'closed', '', 'field_648731bf505d8', '', '', '2023-06-12 14:55:37', '2023-06-12 14:55:37', '', 15, 'http://localhost/UEN/?post_type=acf-field&p=251', 16, 'acf-field', '', 0),
(252, 1, '2023-06-12 14:56:07', '2023-06-12 14:56:07', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-12 14:56:07', '2023-06-12 14:56:07', '', 13, 'http://localhost/UEN/?p=252', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'events', 'events', 0),
(3, 'individual', 'individual', 0),
(4, 'events', 'events', 0),
(5, 'individual', 'individual', 0),
(6, 'water', 'water', 0),
(7, 'team', 'team', 0),
(8, 'combat', 'combat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(76, 2, 0),
(79, 2, 0),
(82, 2, 0),
(84, 2, 0),
(87, 2, 0),
(90, 2, 0),
(93, 2, 0),
(96, 2, 0),
(98, 2, 0),
(102, 3, 0),
(104, 3, 0),
(106, 3, 0),
(108, 3, 0),
(110, 3, 0),
(112, 3, 0),
(114, 3, 0),
(116, 3, 0),
(118, 3, 0),
(121, 4, 0),
(123, 4, 0),
(127, 4, 0),
(129, 4, 0),
(131, 4, 0),
(133, 4, 0),
(149, 4, 0),
(151, 5, 0),
(153, 5, 0),
(155, 5, 0),
(157, 5, 0),
(159, 5, 0),
(161, 5, 0),
(163, 5, 0),
(165, 5, 0),
(167, 5, 0),
(169, 5, 0),
(171, 5, 0),
(173, 5, 0),
(175, 5, 0),
(177, 5, 0),
(205, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'events-category', '', 0, 9),
(3, 3, 'individual-category', '', 0, 9),
(4, 4, 'blogs-category', '', 0, 7),
(5, 5, 'blogs-category', '', 0, 14),
(6, 6, 'blogs-category', '', 0, 0),
(7, 7, 'blogs-category', '', 0, 0),
(8, 8, 'blogs-category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'dollarbird'),
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
(16, 1, 'session_tokens', 'a:3:{s:64:\"1c311fd4d4d3b491440bb70438112421b1cb2a9eea650ebfeb6cd9eafae8c468\";a:4:{s:10:\"expiration\";i:1686565175;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686392375;}s:64:\"275e90afd312fea5fdb4c7c43eeb43ff1499dbb7ba3966a6ff9a227135806586\";a:4:{s:10:\"expiration\";i:1686653406;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686480606;}s:64:\"95538c18deb1c2e739fd6c2d9f61cbf8ada06424cafc4b5938b56ea23912d79b\";a:4:{s:10:\"expiration\";i:1686719517;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1686546717;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1686306557'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:9:{i:0;s:25:\"add-post-type-es_template\";i:1;s:20:\"add-post-type-header\";i:2;s:20:\"add-post-type-footer\";i:3;s:19:\"add-post-type-blogs\";i:4;s:12:\"add-post_tag\";i:5;s:15:\"add-post_format\";i:6;s:19:\"add-header-category\";i:7;s:19:\"add-footer-category\";i:8;s:18:\"add-blogs-category\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'dollarbird', '$P$BVbjXEuuNsym3VkyW1GgKCNaSVU98i/', 'dollarbird', 'tech.db@dollarbirdinc.com', 'http://localhost/UEN', '2023-06-08 06:05:46', '', 0, 'dollarbird');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

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
-- Indexes for table `wp_ig_actions`
--
ALTER TABLE `wp_ig_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`contact_id`,`message_id`,`campaign_id`,`type`,`link_id`,`list_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_ig_blocked_emails`
--
ALTER TABLE `wp_ig_blocked_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ig_campaigns`
--
ALTER TABLE `wp_ig_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`),
  ADD KEY `base_template_id` (`base_template_id`);

--
-- Indexes for table `wp_ig_contactmeta`
--
ALTER TABLE `wp_ig_contactmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `meta_ley` (`meta_key`);

--
-- Indexes for table `wp_ig_contacts`
--
ALTER TABLE `wp_ig_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_user_id` (`wp_user_id`),
  ADD KEY `email` (`email`),
  ADD KEY `status` (`status`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_ig_contacts_ips`
--
ALTER TABLE `wp_ig_contacts_ips`
  ADD PRIMARY KEY (`created_on`,`ip`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `wp_ig_contact_meta`
--
ALTER TABLE `wp_ig_contact_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `meta_ley` (`meta_key`);

--
-- Indexes for table `wp_ig_custom_fields`
--
ALTER TABLE `wp_ig_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ig_forms`
--
ALTER TABLE `wp_ig_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ig_links`
--
ALTER TABLE `wp_ig_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `link` (`link`(100));

--
-- Indexes for table `wp_ig_lists`
--
ALTER TABLE `wp_ig_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ig_lists_contacts`
--
ALTER TABLE `wp_ig_lists_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `wp_ig_mailing_queue`
--
ALTER TABLE `wp_ig_mailing_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `wp_ig_queue`
--
ALTER TABLE `wp_ig_queue`
  ADD UNIQUE KEY `id` (`contact_id`,`campaign_id`,`requeued`,`options`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `requeued` (`requeued`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `priority` (`priority`),
  ADD KEY `count` (`count`),
  ADD KEY `error` (`error`),
  ADD KEY `ignore_status` (`ignore_status`);

--
-- Indexes for table `wp_ig_sending_queue`
--
ALTER TABLE `wp_ig_sending_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ig_temp_import`
--
ALTER TABLE `wp_ig_temp_import`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_ig_unsubscribe_feedback`
--
ALTER TABLE `wp_ig_unsubscribe_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ig_wc_cart`
--
ALTER TABLE `wp_ig_wc_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `guest_id` (`guest_id`),
  ADD KEY `last_modified` (`last_modified`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `wp_ig_wc_guests`
--
ALTER TABLE `wp_ig_wc_guests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracking_key` (`tracking_key`),
  ADD KEY `email` (`email`(191)),
  ADD KEY `most_recent_order` (`most_recent_order`),
  ADD KEY `version` (`version`);

--
-- Indexes for table `wp_ig_workflows`
--
ALTER TABLE `wp_ig_workflows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ig_workflows_queue`
--
ALTER TABLE `wp_ig_workflows_queue`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1082;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- AUTO_INCREMENT for table `wp_ig_actions`
--
ALTER TABLE `wp_ig_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_ig_blocked_emails`
--
ALTER TABLE `wp_ig_blocked_emails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_campaigns`
--
ALTER TABLE `wp_ig_campaigns`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_ig_contactmeta`
--
ALTER TABLE `wp_ig_contactmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_contacts`
--
ALTER TABLE `wp_ig_contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_ig_contact_meta`
--
ALTER TABLE `wp_ig_contact_meta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_custom_fields`
--
ALTER TABLE `wp_ig_custom_fields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_forms`
--
ALTER TABLE `wp_ig_forms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_ig_links`
--
ALTER TABLE `wp_ig_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_lists`
--
ALTER TABLE `wp_ig_lists`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_ig_lists_contacts`
--
ALTER TABLE `wp_ig_lists_contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_ig_mailing_queue`
--
ALTER TABLE `wp_ig_mailing_queue`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_sending_queue`
--
ALTER TABLE `wp_ig_sending_queue`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_temp_import`
--
ALTER TABLE `wp_ig_temp_import`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_unsubscribe_feedback`
--
ALTER TABLE `wp_ig_unsubscribe_feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_wc_cart`
--
ALTER TABLE `wp_ig_wc_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_wc_guests`
--
ALTER TABLE `wp_ig_wc_guests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ig_workflows`
--
ALTER TABLE `wp_ig_workflows`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_ig_workflows_queue`
--
ALTER TABLE `wp_ig_workflows_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1467;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1483;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
