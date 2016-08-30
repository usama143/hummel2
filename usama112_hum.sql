-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2016 at 02:56 AM
-- Server version: 10.1.13-MariaDB-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `usama112_hum`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT '',
  `object_model` varchar(100) DEFAULT '',
  `object_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `class`, `module`, `object_model`, `object_id`) VALUES
(1, 'humhub\\modules\\space\\activities\\Created', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(2, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 1),
(3, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(4, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(5, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 2),
(6, 'humhub\\modules\\comment\\activities\\NewComment', 'comment', 'humhub\\modules\\comment\\models\\Comment', 1),
(7, 'humhub\\modules\\comment\\activities\\NewComment', 'comment', 'humhub\\modules\\comment\\models\\Comment', 2),
(8, 'humhub\\modules\\like\\activities\\Liked', 'like', 'humhub\\modules\\like\\models\\Like', 1),
(9, 'humhub\\modules\\like\\activities\\Liked', 'like', 'humhub\\modules\\like\\models\\Like', 2),
(10, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\polls\\models\\Poll', 1),
(11, 'humhub\\modules\\polls\\activities\\NewVote', 'polls', 'humhub\\modules\\polls\\models\\Poll', 1),
(12, 'humhub\\modules\\comment\\activities\\NewComment', 'comment', 'humhub\\modules\\comment\\models\\Comment', 3),
(13, 'humhub\\modules\\polls\\activities\\NewVote', 'polls', 'humhub\\modules\\polls\\models\\Poll', 1),
(14, 'humhub\\modules\\comment\\activities\\NewComment', 'comment', 'humhub\\modules\\comment\\models\\Comment', 4),
(15, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(16, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 3);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `message`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Nike – Just buy it. ;Wink;', 'humhub\\modules\\post\\models\\Post', 2, '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2),
(2, 'Calvin Klein – Between love and madness lies obsession.', 'humhub\\modules\\post\\models\\Post', 2, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3),
(3, 'Why don''t we go to Bemelmans Bar?', 'humhub\\modules\\polls\\models\\Poll', 1, '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2),
(4, 'Again? ;Weary;', 'humhub\\modules\\polls\\models\\Poll', 1, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `sticked` tinyint(4) DEFAULT NULL,
  `archived` tinytext,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_object_model` (`object_model`,`object_id`),
  UNIQUE KEY `index_guid` (`guid`),
  KEY `fk-contentcontainer` (`contentcontainer_id`),
  KEY `fk-create-user` (`created_by`),
  KEY `fk-update-user` (`updated_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `guid`, `object_model`, `object_id`, `visibility`, `sticked`, `archived`, `created_at`, `created_by`, `updated_at`, `updated_by`, `contentcontainer_id`) VALUES
(1, 'ce1b5954-71fe-4d70-ab28-4ffadb49afab', 'humhub\\modules\\activity\\models\\Activity', 1, 1, 0, '0', '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1, 2),
(2, '3935f703-fe57-4ade-81cc-c1ebfa18208c', 'humhub\\modules\\post\\models\\Post', 1, 1, 0, '0', '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1, 2),
(3, '86e032b6-a94f-4fd1-b512-1e449e816452', 'humhub\\modules\\activity\\models\\Activity', 2, 1, 0, '0', '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1, 2),
(4, 'e8a63f4d-4002-4876-930d-6277d9688fca', 'humhub\\modules\\activity\\models\\Activity', 3, 0, 0, '0', '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 1, 2),
(5, 'a85b0096-4195-412c-adbf-2db95c721f1f', 'humhub\\modules\\activity\\models\\Activity', 4, 0, 0, '0', '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 1, 2),
(6, 'bf00182c-7e67-4280-8eb3-82c551c9bb6d', 'humhub\\modules\\post\\models\\Post', 2, 0, 0, '0', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1, 2),
(7, 'dc986534-4242-4eaf-a23c-dcaba63c2701', 'humhub\\modules\\activity\\models\\Activity', 5, 0, 0, '0', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1, 2),
(8, 'b84fce88-dd43-497d-bc25-2b835cee2628', 'humhub\\modules\\activity\\models\\Activity', 6, 0, 0, '0', '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2, 2),
(9, '941f4f1e-cc9f-4be7-be92-f6e4fc179ade', 'humhub\\modules\\activity\\models\\Activity', 7, 0, 0, '0', '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3, 2),
(10, 'cb4fe174-12b1-4c28-9b15-700a65e88798', 'humhub\\modules\\activity\\models\\Activity', 8, 0, 0, '0', '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3, 2),
(11, 'e13effea-ba20-433c-bba6-bb1bea897149', 'humhub\\modules\\activity\\models\\Activity', 9, 0, 0, '0', '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3, 2),
(12, '34f4741b-8d2a-4e38-8c31-8be3044133ab', 'humhub\\modules\\polls\\models\\Poll', 1, 0, 0, '0', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1, 2),
(13, '2aacd67b-2d6b-4d71-9164-57c5e8acd3d5', 'humhub\\modules\\activity\\models\\Activity', 10, 0, 0, '0', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1, 2),
(14, '9b81e275-63ec-43b1-bd0d-297f653b72d5', 'humhub\\modules\\activity\\models\\Activity', 11, 0, 0, '0', '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2, 2),
(15, '83d2bc23-b1ad-417e-9638-6a127786ef07', 'humhub\\modules\\activity\\models\\Activity', 12, 0, 0, '0', '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2, 2),
(16, '855eba4a-6eac-480d-8e40-066de670c1bd', 'humhub\\modules\\activity\\models\\Activity', 13, 0, 0, '0', '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3, 2),
(17, 'f819ba6d-e0a5-43e9-8d7a-b36d18b4a4d1', 'humhub\\modules\\activity\\models\\Activity', 14, 0, 0, '0', '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3, 2),
(18, '7e101e17-84f7-49fd-a678-52a62e7a65cf', 'humhub\\modules\\activity\\models\\Activity', 15, 0, 0, '0', '2016-08-27 10:39:47', 4, '2016-08-27 10:39:47', NULL, 2),
(19, '03abf578-23f1-4d59-8fdf-8f7fe2ad36af', 'humhub\\modules\\post\\models\\Post', 3, 1, 0, '0', '2016-08-30 02:55:36', 4, '2016-08-30 02:55:36', 4, 5),
(20, '364ee701-dc66-4c0c-a3bf-f7d92ac84d03', 'humhub\\modules\\activity\\models\\Activity', 16, 1, 0, '0', '2016-08-30 02:55:36', 4, '2016-08-30 02:55:36', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer`
--

CREATE TABLE IF NOT EXISTS `contentcontainer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `pk` int(11) DEFAULT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_target` (`class`,`pk`),
  UNIQUE KEY `unique_guid` (`guid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contentcontainer`
--

INSERT INTO `contentcontainer` (`id`, `guid`, `class`, `pk`, `owner_user_id`, `wall_id`) VALUES
(1, 'a94b0e0d-f5e1-402f-a597-5d440e318a56', 'humhub\\modules\\user\\models\\User', 1, 1, 1),
(2, 'de84f4e3-2c91-46f7-80b4-77a8a0aa4950', 'humhub\\modules\\space\\models\\Space', 1, 1, 2),
(3, 'b4acf66e-e1fc-4c08-a940-cb9e51c0b3fd', 'humhub\\modules\\user\\models\\User', 2, 2, 3),
(4, '7f466e6c-60e4-4631-8309-b7351d80dbbd', 'humhub\\modules\\user\\models\\User', 3, 3, 4),
(5, 'a35019ee-76a4-466b-92b2-3238a9e7d1ee', 'humhub\\modules\\user\\models\\User', 4, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer_permission`
--

CREATE TABLE IF NOT EXISTS `contentcontainer_permission` (
  `permission_id` varchar(150) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`group_id`,`module_id`,`contentcontainer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer_setting`
--

CREATE TABLE IF NOT EXISTS `contentcontainer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(50) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings-unique` (`module_id`,`contentcontainer_id`,`name`),
  KEY `fk-contentcontainerx` (`contentcontainer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `object_model` varchar(100) DEFAULT '',
  `object_id` varchar(100) DEFAULT '',
  `file_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mime_type` varchar(150) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `space_id` int(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `is_admin_group` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_registration` tinyint(1) NOT NULL DEFAULT '1',
  `show_at_directory` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `space_id`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `is_admin_group`, `show_at_registration`, `show_at_directory`) VALUES
(1, NULL, 'Administrator', 'Administrator Group', '2016-08-27 10:00:26', NULL, NULL, NULL, NULL, 1, 0, 0),
(2, NULL, 'Users', 'Example Group by Installer', NULL, NULL, NULL, NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_permission`
--

CREATE TABLE IF NOT EXISTS `group_permission` (
  `permission_id` varchar(150) NOT NULL,
  `group_id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE IF NOT EXISTS `group_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_group_manager` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx-group_user` (`user_id`,`group_id`),
  KEY `fk-group-group` (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `user_id`, `group_id`, `is_group_manager`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, 0, '2016-08-27 10:02:17', NULL, '2016-08-27 10:02:17', NULL),
(2, 4, 2, 0, '2016-08-27 10:39:47', NULL, '2016-08-27 10:39:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE IF NOT EXISTS `like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_user_id` int(11) DEFAULT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `target_user_id`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'humhub\\modules\\comment\\models\\Comment', 1, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3),
(2, NULL, 'humhub\\modules\\post\\models\\Post', 2, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_log_level` (`level`),
  KEY `idx_log_category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_updated` (`updated_at`),
  KEY `index_updated_by` (`updated_by`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_entry`
--

CREATE TABLE IF NOT EXISTS `message_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1472306426),
('m131023_164513_initial', 1472306426),
('m131023_165411_initial', 1472306426),
('m131023_165625_initial', 1472306426),
('m131023_165755_initial', 1472306426),
('m131023_165835_initial', 1472306426),
('m131023_170033_initial', 1472306426),
('m131023_170135_initial', 1472306426),
('m131023_170159_initial', 1472306426),
('m131023_170253_initial', 1472306426),
('m131023_170339_initial', 1472306426),
('m131203_110444_oembed', 1472306426),
('m131213_165552_user_optimize', 1472306426),
('m140226_111945_ldap', 1472306426),
('m140303_125031_password', 1472306426),
('m140304_142711_memberautoadd', 1472306426),
('m140321_000917_content', 1472306426),
('m140324_170617_membership', 1472306426),
('m140507_150421_create_settings_table', 1472306426),
('m140507_171527_create_settings_table', 1472306426),
('m140512_141414_i18n_profilefields', 1472306426),
('m140513_180317_createlogging', 1472306426),
('m140701_000611_profile_genderfield', 1472306426),
('m140701_074404_protect_default_profilefields', 1472306426),
('m140702_143912_notify_notification_unify', 1472306426),
('m140703_104527_profile_birthdayfield', 1472306426),
('m140704_080659_installationid', 1472306426),
('m140705_065525_emailing_settings', 1472306426),
('m140706_135210_lastlogin', 1472306426),
('m140829_122906_delete', 1472306426),
('m140830_145504_following', 1472306426),
('m140901_080147_indizies', 1472306426),
('m140901_080432_indices', 1472306426),
('m140901_112246_addState', 1472306426),
('m140901_153403_addState', 1472306426),
('m140901_170329_group_create_space', 1472306426),
('m140902_091234_session_key_length', 1472306426),
('m140907_140822_zip_field_to_text', 1472306426),
('m140930_205511_fix_default', 1472306426),
('m140930_205859_fix_default', 1472306426),
('m140930_210142_fix_default', 1472306426),
('m140930_210635_fix_default', 1472306426),
('m140930_212528_fix_default', 1472306426),
('m141015_173305_follow_notifications', 1472306426),
('m141019_093319_mentioning', 1472306426),
('m141020_162639_fix_default', 1472306426),
('m141020_193920_rm_alsocreated', 1472306426),
('m141020_193931_rm_alsoliked', 1472306426),
('m141021_162639_oembed_setting', 1472306426),
('m141022_094635_addDefaults', 1472306426),
('m141106_185632_log_init', 1472306426),
('m150204_103433_html5_notified', 1472306426),
('m150210_190006_user_invite_lang', 1472306426),
('m150302_114347_add_visibility', 1472306426),
('m150322_194403_remove_type_field', 1472306426),
('m150322_195619_allowedExt2Text', 1472306426),
('m150429_223856_optimize', 1472306426),
('m150510_102900_update', 1472306426),
('m150629_220311_change', 1472306426),
('m150703_012735_typelength', 1472306426),
('m150703_024635_activityTypes', 1472306426),
('m150703_033650_namespace', 1472306426),
('m150703_130157_migrate', 1472306426),
('m150704_005338_namespace', 1472306426),
('m150704_005418_namespace', 1472306426),
('m150704_005434_namespace', 1472306426),
('m150704_005452_namespace', 1472306426),
('m150704_005504_namespace', 1472306426),
('m150713_054441_timezone', 1472306426),
('m150714_093525_activity', 1472306426),
('m150714_100355_cleanup', 1472306426),
('m150831_061628_notifications', 1472306426),
('m150910_223305_fix_user_follow', 1472306426),
('m150924_133344_update_notification_fix', 1472306426),
('m150924_154635_user_invite_add_first_lastname', 1472306426),
('m150927_190830_create_contentcontainer', 1472306426),
('m150928_103711_permissions', 1472306426),
('m150928_134934_groups', 1472306426),
('m150928_140718_setColorVariables', 1472306426),
('m151010_124437_group_permissions', 1472306426),
('m151010_175000_default_visibility', 1472306426),
('m151013_223814_include_dashboard', 1472306426),
('m151022_131128_module_fix', 1472306426),
('m151106_090948_addColor', 1472306426),
('m151223_171310_fix_notifications', 1472306426),
('m151226_164234_authclient', 1472306426),
('m160125_053702_stored_filename', 1472306426),
('m160216_160119_initial', 1472306426),
('m160217_161220_addCanLeaveFlag', 1472306426),
('m160220_013525_contentcontainer_id', 1472306426),
('m160221_222312_public_permission_change', 1472306426),
('m160225_180229_remove_website', 1472306426),
('m160227_073020_birthday_date', 1472306426),
('m160229_162959_multiusergroups', 1472306426),
('m160309_141222_longerUserName', 1472306426),
('m160408_100725_rename_groupadmin_to_manager', 1472306426),
('m160501_220850_activity_pk_int', 1472306426),
('m160507_202611_settings', 1472306426),
('m160508_005740_settings_cleanup', 1472306427),
('m160509_214811_spaceurl', 1472306427),
('m160517_132535_group', 1472306427),
('m160523_105732_profile_searchable', 1472306427),
('m160714_142827_remove_space_id', 1472306427),
('m131023_165507_initial', 1472306504),
('m150429_190600_indexes', 1472306504),
('m150709_050451_namespace', 1472306504),
('m131023_165921_initial', 1472306511),
('m131030_122743_longer_questions', 1472306512),
('m141002_093710_fix_default', 1472306512),
('m150709_151858_namespace', 1472306512),
('m160218_132531_close_and_anonymous_poll', 1472306512);

-- --------------------------------------------------------

--
-- Table structure for table `module_enabled`
--

CREATE TABLE IF NOT EXISTS `module_enabled` (
  `module_id` varchar(100) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_enabled`
--

INSERT INTO `module_enabled` (`module_id`) VALUES
('birthday'),
('mail'),
('mostactiveusers'),
('polls');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `source_class` varchar(100) DEFAULT NULL,
  `source_pk` int(11) DEFAULT NULL,
  `space_id` int(11) DEFAULT NULL,
  `emailed` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `desktop_notified` tinyint(1) DEFAULT '0',
  `originator_user_id` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT '',
  `group_key` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_seen` (`seen`),
  KEY `index_desktop_notified` (`desktop_notified`),
  KEY `index_desktop_emailed` (`emailed`),
  KEY `index_groupuser` (`user_id`,`class`,`group_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `class`, `user_id`, `seen`, `source_class`, `source_pk`, `space_id`, `emailed`, `created_at`, `desktop_notified`, `originator_user_id`, `module`, `group_key`) VALUES
(1, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 1, 1, 0, '2016-08-27 10:02:22', 0, 2, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(2, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 2, 1, 0, '2016-08-27 10:02:22', 0, 3, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(3, 'humhub\\modules\\comment\\notifications\\NewComment', 2, 0, 'humhub\\modules\\comment\\models\\Comment', 2, 1, 0, '2016-08-27 10:02:22', 0, 3, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(4, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 3, 1, 0, '2016-08-27 10:02:22', 0, 2, 'comment', 'humhub\\modules\\polls\\models\\Poll-1'),
(5, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 4, 1, 0, '2016-08-27 10:02:23', 0, 3, 'comment', 'humhub\\modules\\polls\\models\\Poll-1'),
(6, 'humhub\\modules\\comment\\notifications\\NewComment', 2, 0, 'humhub\\modules\\comment\\models\\Comment', 4, 1, 0, '2016-08-27 10:02:23', 0, 3, 'comment', 'humhub\\modules\\polls\\models\\Poll-1');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `allow_multiple` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_random` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `anonymous` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `question`, `allow_multiple`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_random`, `closed`, `anonymous`) VALUES
(1, 'Right now, we are in the planning stages for our next meetup and we would like to know from you, where you would like to go?', 0, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer`
--

CREATE TABLE IF NOT EXISTS `poll_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `poll_answer`
--

INSERT INTO `poll_answer` (`id`, `poll_id`, `answer`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 'To Daniel', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1),
(2, 1, 'Club A Steakhouse', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1),
(3, 1, 'Pisillo Italian Panini', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer_user`
--

CREATE TABLE IF NOT EXISTS `poll_answer_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `poll_answer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `poll_answer_user`
--

INSERT INTO `poll_answer_user` (`id`, `poll_id`, `poll_answer_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 2, '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2),
(2, 1, 3, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_2trash` text,
  `message` text,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `message_2trash`, `message`, `url`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Yay! I''ve just installed HumHub ;Cool;', NULL, '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1),
(2, NULL, 'We''re looking for great slogans of famous brands. Maybe you can come up with some samples?', NULL, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1),
(3, NULL, 'This is me and posting this for testing purpose\r\n', NULL, '2016-08-30 02:55:36', 4, '2016-08-30 02:55:36', 4);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `birthday_hide_year` int(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `about` text,
  `phone_private` varchar(255) DEFAULT NULL,
  `phone_work` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `im_skype` varchar(255) DEFAULT NULL,
  `im_msn` varchar(255) DEFAULT NULL,
  `im_xmpp` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_facebook` varchar(255) DEFAULT NULL,
  `url_linkedin` varchar(255) DEFAULT NULL,
  `url_xing` varchar(255) DEFAULT NULL,
  `url_youtube` varchar(255) DEFAULT NULL,
  `url_vimeo` varchar(255) DEFAULT NULL,
  `url_flickr` varchar(255) DEFAULT NULL,
  `url_myspace` varchar(255) DEFAULT NULL,
  `url_googleplus` varchar(255) DEFAULT NULL,
  `url_twitter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `title`, `gender`, `street`, `zip`, `city`, `country`, `state`, `birthday_hide_year`, `birthday`, `about`, `phone_private`, `phone_work`, `mobile`, `fax`, `im_skype`, `im_msn`, `im_xmpp`, `url`, `url_facebook`, `url_linkedin`, `url_xing`, `url_youtube`, `url_vimeo`, `url_flickr`, `url_myspace`, `url_googleplus`, `url_twitter`) VALUES
(1, 'Admin', 'Admin', 'System Administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'David', 'Roberts', 'Late riser', NULL, '2443 Queens Lane', '24574', 'Allwood', 'Virginia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Sara', 'Schuster', 'Do-gooder', NULL, 'Schmarjestrasse 51', '17095', 'Friedland', 'Niedersachsen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Usama', 'Abdullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

CREATE TABLE IF NOT EXISTS `profile_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_field_category_id` int(11) NOT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `field_type_class` varchar(255) NOT NULL,
  `field_type_config` text,
  `internal_name` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `required` tinyint(4) DEFAULT NULL,
  `show_at_registration` tinyint(4) DEFAULT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT '1',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_attribute` varchar(255) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_profile_field_category` (`profile_field_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `profile_field`
--

INSERT INTO `profile_field` (`id`, `profile_field_category_id`, `module_id`, `field_type_class`, `field_type_config`, `internal_name`, `title`, `description`, `sort_order`, `required`, `show_at_registration`, `editable`, `visible`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_attribute`, `translation_category`, `is_system`, `searchable`) VALUES
(1, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":20,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'firstname', 'First name', NULL, 100, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 'givenName', NULL, 1, 1),
(2, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":30,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'lastname', 'Last name', NULL, 200, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 'sn', NULL, 1, 1),
(3, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":50,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'title', 'Title', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'title', NULL, 1, 1),
(4, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Select', '{"options":"male=>Male\\nfemale=>Female\\ncustom=>Custom","fieldTypes":[]}', 'gender', 'Gender', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(5, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":150,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'street', 'Street', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(6, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":10,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'zip', 'Zip', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(7, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'city', 'City', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(8, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\CountrySelect', '{"options":null,"fieldTypes":[]}', 'country', 'Country', NULL, 700, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(9, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'state', 'State', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(10, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Birthday', '{"defaultHideAge":false,"fieldTypes":[]}', 'birthday', 'Birthday', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(11, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\TextArea', '{"fieldTypes":[]}', 'about', 'About', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(12, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'phone_private', 'Phone Private', NULL, 100, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(13, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'phone_work', 'Phone Work', NULL, 200, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(14, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'mobile', 'Mobile', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(15, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'fax', 'Fax', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(16, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_skype', 'Skype Nickname', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(17, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_msn', 'MSN', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(18, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"email","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_xmpp', 'XMPP Jabber Address', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(19, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url', 'Url', NULL, 100, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(20, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_facebook', 'Facebook URL', NULL, 200, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(21, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_linkedin', 'LinkedIn URL', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(22, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_xing', 'Xing URL', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(23, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_youtube', 'Youtube URL', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(24, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_vimeo', 'Vimeo URL', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(25, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_flickr', 'Flickr URL', NULL, 700, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(26, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_myspace', 'MySpace URL', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(27, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_googleplus', 'Google+ URL', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(28, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_twitter', 'Twitter URL', NULL, 1000, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_field_category`
--

CREATE TABLE IF NOT EXISTS `profile_field_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `module_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `profile_field_category`
--

INSERT INTO `profile_field_category` (`id`, `title`, `description`, `sort_order`, `module_id`, `visibility`, `created_at`, `created_by`, `updated_at`, `updated_by`, `translation_category`, `is_system`) VALUES
(1, 'General', '', 100, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Communication', '', 200, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Social bookmarks', '', 300, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  `module_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unique-setting` (`name`,`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`, `module_id`) VALUES
(1, 'oembedProviders', '{"vimeo.com":"http:\\/\\/vimeo.com\\/api\\/oembed.json?scheme=https&url=%url%&format=json&maxwidth=450","youtube.com":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","youtu.be":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","soundcloud.com":"https:\\/\\/soundcloud.com\\/oembed?url=%url%&format=json&maxwidth=450","slideshare.net":"https:\\/\\/www.slideshare.net\\/api\\/oembed\\/2?url=%url%&format=json&maxwidth=450"}', 'base'),
(2, 'defaultVisibility', '1', 'space'),
(3, 'defaultJoinPolicy', '1', 'space'),
(4, 'colorDefault', '#ededed', 'base'),
(5, 'colorPrimary', '#708fa0', 'base'),
(6, 'colorInfo', '#6fdbe8', 'base'),
(7, 'colorSuccess', '#97d271', 'base'),
(8, 'colorWarning', '#fdd198', 'base'),
(9, 'colorDanger', '#ff8989', 'base'),
(10, 'name', 'HumHub', 'base'),
(11, 'baseUrl', 'http://webcoch.com/hum', 'base'),
(12, 'paginationSize', '10', 'base'),
(13, 'displayNameFormat', '{profile.firstname} {profile.lastname}', 'base'),
(14, 'auth.ldap.refreshUsers', '1', 'user'),
(15, 'auth.needApproval', '0', 'user'),
(16, 'auth.anonymousRegistration', '1', 'user'),
(17, 'auth.internalUsersCanInvite', '1', 'user'),
(18, 'mailer.transportType', 'php', 'base'),
(19, 'mailer.systemEmailAddress', 'social@example.com', 'base'),
(20, 'mailer.systemEmailName', 'HumHub', 'base'),
(21, 'receive_email_activities', '1', 'activity'),
(22, 'receive_email_notifications', '2', 'notification'),
(23, 'maxFileSize', '5242880', 'file'),
(24, 'maxPreviewImageWidth', '200', 'file'),
(25, 'maxPreviewImageHeight', '200', 'file'),
(26, 'hideImageFileInfo', '0', 'file'),
(27, 'cache.class', 'yii\\caching\\FileCache', 'base'),
(28, 'cache.expireTime', '3600', 'base'),
(29, 'installationId', '5ed7c2f87de3ca2e983609af109ff6a6', 'admin'),
(30, 'theme', 'HumHub', 'base'),
(31, 'spaceOrder', '0', 'space'),
(32, 'enable', '1', 'tour'),
(33, 'defaultLanguage', 'en-US', 'base'),
(34, 'enable_html5_desktop_notifications', '0', 'notification'),
(35, 'useCase', 'community', 'base'),
(36, 'auth.allowGuestAccess', '1', 'user'),
(37, 'enable', '0', 'friendship'),
(38, 'shownDays', '2', 'birthday'),
(39, 'noUsers', 'mostactiveusers', 'base'),
(40, 'noUsers', '5', 'mostactiveusers'),
(41, 'sampleData', '1', 'installer'),
(42, 'secret', 'a128974c-81d7-4ba9-aef4-ddc7aae3736b', 'base'),
(43, 'timeZone', 'America/New_York', 'base');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE IF NOT EXISTS `space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `join_policy` tinyint(4) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `tags` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `auto_add_new_members` int(4) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  `default_content_visibility` tinyint(1) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `members_can_leave` int(11) DEFAULT '1',
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url-unique` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `space`
--

INSERT INTO `space` (`id`, `guid`, `wall_id`, `name`, `description`, `join_policy`, `visibility`, `status`, `tags`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `auto_add_new_members`, `contentcontainer_id`, `default_content_visibility`, `color`, `members_can_leave`, `url`) VALUES
(1, 'de84f4e3-2c91-46f7-80b4-77a8a0aa4950', 2, 'Welcome Space', 'Your first sample space to discover the platform.', 2, 2, 1, NULL, '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1, NULL, 1, 2, NULL, '#6fdbe8', 1, 'welcome-space');

-- --------------------------------------------------------

--
-- Table structure for table `space_membership`
--

CREATE TABLE IF NOT EXISTS `space_membership` (
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `originator_user_id` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `request_message` text,
  `last_visit` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT 'member',
  `show_at_dashboard` tinyint(1) DEFAULT '1',
  `can_cancel_membership` int(11) DEFAULT '1',
  PRIMARY KEY (`space_id`,`user_id`),
  KEY `index_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `space_membership`
--

INSERT INTO `space_membership` (`space_id`, `user_id`, `originator_user_id`, `status`, `request_message`, `last_visit`, `created_at`, `created_by`, `updated_at`, `updated_by`, `group_id`, `show_at_dashboard`, `can_cancel_membership`) VALUES
(1, 1, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 1, 1),
(1, 2, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 3, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `space_module`
--

CREATE TABLE IF NOT EXISTS `space_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL,
  `space_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `space_module`
--

INSERT INTO `space_module` (`id`, `module_id`, `space_id`, `state`) VALUES
(1, 'polls', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `url_oembed`
--

CREATE TABLE IF NOT EXISTS `url_oembed` (
  `url` varchar(255) NOT NULL,
  `preview` text NOT NULL,
  PRIMARY KEY (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `auth_mode` varchar(10) NOT NULL,
  `tags` text,
  `language` varchar(5) DEFAULT NULL,
  `last_activity_email` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `visibility` int(1) DEFAULT '1',
  `time_zone` varchar(100) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_username` (`username`),
  UNIQUE KEY `unique_guid` (`guid`),
  UNIQUE KEY `unique_wall_id` (`wall_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `guid`, `wall_id`, `status`, `username`, `email`, `auth_mode`, `tags`, `language`, `last_activity_email`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`, `visibility`, `time_zone`, `contentcontainer_id`) VALUES
(1, 'a94b0e0d-f5e1-402f-a597-5d440e318a56', 1, 1, 'Admin', 'admin@admin.com', 'local', 'Administration, Support, HumHub', '', '2016-08-27 10:02:17', '2016-08-27 10:02:17', NULL, '2016-08-27 10:02:17', NULL, NULL, 1, NULL, 1),
(2, 'b4acf66e-e1fc-4c08-a940-cb9e51c0b3fd', 3, 1, 'david1986', 'david.roberts@example.com', 'local', 'Microsoft Office, Marketing, SEM, Digital Native', '', '2016-08-27 10:02:22', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1, NULL, 1, NULL, 3),
(3, '7f466e6c-60e4-4631-8309-b7351d80dbbd', 4, 1, 'sara1989', 'sara.schuster@example.com', 'local', 'Yoga, Travel, English, German, French', '', '2016-08-27 10:02:22', '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1, NULL, 1, NULL, 4),
(4, 'a35019ee-76a4-466b-92b2-3238a9e7d1ee', 5, 1, 'usama11', 'usamaabdullah11@hotmail.com', 'local', NULL, 'en-US', '2016-08-27 10:39:47', '2016-08-27 10:39:47', NULL, '2016-08-27 10:39:47', NULL, '2016-08-30 02:55:10', 1, 'America/New_York', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE IF NOT EXISTS `user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

CREATE TABLE IF NOT EXISTS `user_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_notifications` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_user` (`user_id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_follow`
--

INSERT INTO `user_follow` (`id`, `object_model`, `object_id`, `user_id`, `send_notifications`) VALUES
(1, 'humhub\\modules\\post\\models\\Post', 1, 1, 1),
(2, 'humhub\\modules\\post\\models\\Post', 2, 1, 1),
(3, 'humhub\\modules\\post\\models\\Post', 2, 2, 1),
(4, 'humhub\\modules\\post\\models\\Post', 2, 3, 1),
(5, 'humhub\\modules\\polls\\models\\Poll', 1, 1, 1),
(6, 'humhub\\modules\\polls\\models\\Poll', 1, 2, 1),
(7, 'humhub\\modules\\polls\\models\\Poll', 1, 3, 1),
(8, 'humhub\\modules\\post\\models\\Post', 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_friendship`
--

CREATE TABLE IF NOT EXISTS `user_friendship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx-friends` (`user_id`,`friend_user_id`),
  KEY `fk-friend` (`friend_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_http_session`
--

CREATE TABLE IF NOT EXISTS `user_http_session` (
  `id` char(255) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_http_session`
--

INSERT INTO `user_http_session` (`id`, `expire`, `user_id`, `data`) VALUES
('qnolaabcoe9c8muednbihkh9t2', 1472317224, NULL, 0x5f5f666c6173687c613a303a7b7d),
('bghkahf9r4hdldba71li358dc2', 1472310639, NULL, 0x5f5f666c6173687c613a303a7b7d),
('tu65jpkja34p9s1q6djfene9h0', 1472541623, 4, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a343b63757272656e7441757468436c69656e7449647c733a353a226c6f63616c223b),
('ofmqveft6jj0k6pi5vs12fvi50', 1472313583, NULL, 0x5f5f666c6173687c613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `user_invite`
--

CREATE TABLE IF NOT EXISTS `user_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_originator_id` int(11) DEFAULT NULL,
  `space_invite_id` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_invite`
--

INSERT INTO `user_invite` (`id`, `user_originator_id`, `space_invite_id`, `email`, `source`, `token`, `created_at`, `created_by`, `updated_at`, `updated_by`, `language`, `firstname`, `lastname`) VALUES
(2, NULL, NULL, 'himanshu@zotohost.com', 'self', 'qw84zWGurDK3', NULL, NULL, NULL, NULL, 'en-US', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_mentioning`
--

CREATE TABLE IF NOT EXISTS `user_mentioning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i_user` (`user_id`),
  KEY `i_object` (`object_model`,`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_message`
--

CREATE TABLE IF NOT EXISTS `user_message` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_originator` tinyint(4) DEFAULT NULL,
  `last_viewed` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`,`user_id`),
  KEY `index_last_viewed` (`last_viewed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE IF NOT EXISTS `user_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_module` (`user_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_password`
--

CREATE TABLE IF NOT EXISTS `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `algorithm` varchar(20) DEFAULT NULL,
  `password` text,
  `salt` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_password`
--

INSERT INTO `user_password` (`id`, `user_id`, `algorithm`, `password`, `salt`, `created_at`) VALUES
(1, 1, 'sha512whirlpool', 'b01425534a2903c675d06113f9e4f76f6eb80fffa922a7c09f21fa55022cba3ae17f5c84f03cd6e7b2246d0ec55905004fd63b8a5dc843d6888c9a8d6b7ec544', '86814622-488e-45d8-894d-c29d888c7108', '2016-08-27 10:02:17'),
(2, 4, 'sha512whirlpool', '576db7fb32bb632efed92533ebe5fc3bd63f16f3b3e5e33563deb4314bd426101036f39f134ad2a44ddeef4e85f48b877154841f6c7bd54b6fb9913e42d96c3a', '1120a9bc-5ec8-46b7-b224-150b369d2fc9', '2016-08-27 10:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `wall`
--

CREATE TABLE IF NOT EXISTS `wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(50) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wall`
--

INSERT INTO `wall` (`id`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'humhub\\modules\\user\\models\\User', 1, NULL, NULL, NULL, NULL),
(2, 'humhub\\modules\\space\\models\\Space', 1, NULL, NULL, NULL, NULL),
(3, 'humhub\\modules\\user\\models\\User', 2, NULL, NULL, NULL, NULL),
(4, 'humhub\\modules\\user\\models\\User', 3, NULL, NULL, NULL, NULL),
(5, 'humhub\\modules\\user\\models\\User', 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wall_entry`
--

CREATE TABLE IF NOT EXISTS `wall_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wall_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wall_entry`
--

INSERT INTO `wall_entry` (`id`, `wall_id`, `content_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 2, 1, '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1),
(2, 2, 3, '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1),
(3, 2, 2, '2016-08-27 10:02:17', 1, '2016-08-27 10:02:17', 1),
(4, 2, 4, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1),
(5, 2, 5, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1),
(6, 2, 7, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1),
(7, 2, 6, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 3),
(8, 2, 8, '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2),
(9, 2, 9, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3),
(10, 2, 10, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3),
(11, 2, 11, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3),
(12, 2, 13, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:22', 1),
(13, 2, 12, '2016-08-27 10:02:22', 1, '2016-08-27 10:02:23', 3),
(14, 2, 14, '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2),
(15, 2, 15, '2016-08-27 10:02:22', 2, '2016-08-27 10:02:22', 2),
(16, 2, 16, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3),
(17, 2, 17, '2016-08-27 10:02:22', 3, '2016-08-27 10:02:22', 3),
(18, 2, 18, '2016-08-27 10:39:47', NULL, '2016-08-27 10:39:47', NULL),
(19, 5, 20, '2016-08-30 02:55:36', 4, '2016-08-30 02:55:36', 4),
(20, 5, 19, '2016-08-30 02:55:36', 4, '2016-08-30 02:55:36', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
