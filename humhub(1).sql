-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2016 at 09:24 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `humhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT '',
  `object_model` varchar(100) DEFAULT '',
  `object_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(15, 'humhub\\modules\\comment\\activities\\NewComment', 'comment', 'humhub\\modules\\comment\\models\\Comment', 5),
(16, 'humhub\\modules\\polls\\activities\\NewVote', 'polls', 'humhub\\modules\\polls\\models\\Poll', 1),
(17, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 3),
(18, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 4),
(19, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 5),
(20, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 6),
(21, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 7),
(22, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 9),
(23, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 10),
(24, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 11),
(25, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 12),
(26, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 13),
(27, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 14);

-- --------------------------------------------------------

--
-- Table structure for table `calendar_entry`
--

CREATE TABLE `calendar_entry` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `all_day` tinyint(4) NOT NULL,
  `participation_mode` tinyint(4) NOT NULL,
  `recur` tinyint(4) DEFAULT NULL,
  `recur_type` tinyint(4) DEFAULT NULL,
  `recur_interval` tinyint(4) DEFAULT NULL,
  `recur_end` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_entry_participant`
--

CREATE TABLE `calendar_entry_participant` (
  `id` int(11) NOT NULL,
  `calendar_entry_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `participation_state` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cfiles_file`
--

CREATE TABLE `cfiles_file` (
  `id` int(11) NOT NULL,
  `parent_folder_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cfiles_folder`
--

CREATE TABLE `cfiles_folder` (
  `id` int(11) NOT NULL,
  `parent_folder_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `message` text,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `message`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Nike – Just buy it. ;Wink;', 'humhub\\modules\\post\\models\\Post', 2, '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2),
(2, 'Calvin Klein – Between love and madness lies obsession.', 'humhub\\modules\\post\\models\\Post', 2, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(3, 'Why don''t we go to Bemelmans Bar?', 'humhub\\modules\\polls\\models\\Poll', 1, '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2),
(4, 'Again? ;Weary;', 'humhub\\modules\\polls\\models\\Poll', 1, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(5, 'http://localhost/melody2//watch.php?vid=ef2311d39', 'humhub\\modules\\post\\models\\Post', 2, '2016-08-20 22:16:11', 1, '2016-08-20 22:16:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
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
  `contentcontainer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `guid`, `object_model`, `object_id`, `visibility`, `sticked`, `archived`, `created_at`, `created_by`, `updated_at`, `updated_by`, `contentcontainer_id`) VALUES
(1, 'f8db9fc5-26e5-48c0-b495-fd94fb27c1d5', 'humhub\\modules\\activity\\models\\Activity', 1, 1, 0, '0', '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1, 2),
(2, 'a21e58dd-628c-422e-beb6-ab94924f327f', 'humhub\\modules\\post\\models\\Post', 1, 1, 0, '0', '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1, 2),
(3, '8834f377-c16d-406b-87da-3bac4796564c', 'humhub\\modules\\activity\\models\\Activity', 2, 1, 0, '0', '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1, 2),
(4, 'fc2a8a3d-f526-436a-9443-d310adf88d84', 'humhub\\modules\\activity\\models\\Activity', 3, 0, 0, '0', '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 1, 2),
(5, 'ccfcf22c-5fc7-4d07-8b7c-7fc239ca9956', 'humhub\\modules\\activity\\models\\Activity', 4, 0, 0, '0', '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 1, 2),
(6, '5637ec2c-ae26-4596-a289-4b1801f466a7', 'humhub\\modules\\post\\models\\Post', 2, 0, 0, '0', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1, 2),
(7, '705f787c-6e95-4570-adcb-0331d87a8bb4', 'humhub\\modules\\activity\\models\\Activity', 5, 0, 0, '0', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1, 2),
(8, 'e86f90e5-99bb-4622-8ec8-abec39729e35', 'humhub\\modules\\activity\\models\\Activity', 6, 0, 0, '0', '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2, 2),
(9, 'bf5d4f69-0191-49e7-b20f-afc8b3b1f9e0', 'humhub\\modules\\activity\\models\\Activity', 7, 0, 0, '0', '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3, 2),
(10, '342a8573-da52-4d1e-a863-c527e11c14ac', 'humhub\\modules\\activity\\models\\Activity', 8, 0, 0, '0', '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3, 2),
(11, '46daec84-f34c-4c72-9abd-7cc20588594c', 'humhub\\modules\\activity\\models\\Activity', 9, 0, 0, '0', '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3, 2),
(12, 'b634ec57-f795-435d-ba02-dadd1c12bb7a', 'humhub\\modules\\polls\\models\\Poll', 1, 0, 0, '0', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1, 2),
(13, '6e4b65d8-d25e-4e6f-a71a-cf1783dec188', 'humhub\\modules\\activity\\models\\Activity', 10, 0, 0, '0', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1, 2),
(14, 'fc071b4d-2e76-4307-a788-d8d8bc19f616', 'humhub\\modules\\activity\\models\\Activity', 11, 0, 0, '0', '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2, 2),
(15, '490db1e3-29cf-4513-be98-0b17c772114c', 'humhub\\modules\\activity\\models\\Activity', 12, 0, 0, '0', '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2, 2),
(16, 'a5a26361-a947-43c2-b68f-7a8e11c199fd', 'humhub\\modules\\activity\\models\\Activity', 13, 0, 0, '0', '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3, 2),
(17, 'b0027a4a-7f9e-4720-b15a-9e5f4051b86c', 'humhub\\modules\\activity\\models\\Activity', 14, 0, 0, '0', '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3, 2),
(18, 'a0994898-296e-417e-b910-990a144593e0', 'humhub\\modules\\activity\\models\\Activity', 15, 0, 0, '0', '2016-08-20 22:16:11', 1, '2016-08-20 22:16:11', 1, 2),
(19, 'f4f70057-eb5d-4f52-92a1-803508848b81', 'humhub\\modules\\activity\\models\\Activity', 16, 0, 0, '0', '2016-08-20 22:16:30', 1, '2016-08-20 22:16:30', 1, 2),
(20, '9b77862b-1d95-414c-91d4-fba7b5a6227b', 'humhub\\modules\\post\\models\\Post', 3, 0, 0, '0', '2016-08-20 22:16:48', 1, '2016-08-20 22:16:48', 1, 2),
(21, '95ff85a6-cb1d-46a4-9627-3bc30279b089', 'humhub\\modules\\activity\\models\\Activity', 17, 0, 0, '0', '2016-08-20 22:16:48', 1, '2016-08-20 22:16:48', 1, 2),
(22, '37a72f0d-db07-4b88-8b7d-bcde0fad666a', 'humhub\\modules\\post\\models\\Post', 4, 1, 0, '0', '2016-08-20 22:17:44', 1, '2016-08-20 22:17:44', 1, 1),
(23, '68c04154-c104-4921-8eec-cac30446c280', 'humhub\\modules\\activity\\models\\Activity', 18, 1, 0, '0', '2016-08-20 22:17:44', 1, '2016-08-20 22:17:44', 1, 1),
(24, '1edd2262-19b2-4f68-b0a7-af3d98d515e7', 'humhub\\modules\\post\\models\\Post', 5, 1, 0, '0', '2016-08-20 22:20:18', 1, '2016-08-20 22:20:18', 1, 1),
(25, '14fcab53-675a-4c50-bd27-8884239a8751', 'humhub\\modules\\activity\\models\\Activity', 19, 1, 0, '0', '2016-08-20 22:20:18', 1, '2016-08-20 22:20:18', 1, 1),
(26, '6caf6e99-624d-4470-90a2-824f52db7502', 'humhub\\modules\\post\\models\\Post', 6, 1, 0, '0', '2016-08-20 22:32:20', 1, '2016-08-20 22:32:20', 1, 1),
(27, 'e8488c81-5a03-40b0-95e8-547e7acd75bf', 'humhub\\modules\\activity\\models\\Activity', 20, 1, 0, '0', '2016-08-20 22:32:20', 1, '2016-08-20 22:32:20', 1, 1),
(28, 'af0e1f6f-7ac3-4ce6-a93f-5f9ad95b23f8', 'humhub\\modules\\post\\models\\Post', 7, 1, 0, '0', '2016-08-20 22:48:48', 1, '2016-08-20 22:48:48', 1, 1),
(29, 'b205e881-6cd6-4569-9981-508e39a3940a', 'humhub\\modules\\activity\\models\\Activity', 21, 1, 0, '0', '2016-08-20 22:48:48', 1, '2016-08-20 22:48:48', 1, 1),
(30, '0e562a1f-537c-46f9-8e70-54f03341adbd', 'humhub\\modules\\post\\models\\Post', 9, 1, 0, '0', '2016-08-21 00:07:12', 1, '2016-08-21 00:07:12', 1, 1),
(31, '86068085-45cd-41f0-b9af-fc53ff2da857', 'humhub\\modules\\activity\\models\\Activity', 22, 1, 0, '0', '2016-08-21 00:07:12', 1, '2016-08-21 00:07:12', 1, 1),
(32, 'c03353b6-97ff-4f31-96fd-d61a48f42a4a', 'humhub\\modules\\post\\models\\Post', 10, 1, 0, '0', '2016-08-21 00:07:16', 1, '2016-08-21 00:07:16', 1, 1),
(33, 'b2f04f56-51a5-4f31-b119-ca4a6ac48ec5', 'humhub\\modules\\activity\\models\\Activity', 23, 1, 0, '0', '2016-08-21 00:07:16', 1, '2016-08-21 00:07:16', 1, 1),
(34, '5adb8558-e894-48ed-96cb-01847ac7a058', 'humhub\\modules\\post\\models\\Post', 11, 1, 0, '0', '2016-08-21 00:14:54', 1, '2016-08-21 00:14:54', 1, 1),
(35, '0295bbff-2e8b-49e3-9ea4-675a0d4dda8a', 'humhub\\modules\\activity\\models\\Activity', 24, 1, 0, '0', '2016-08-21 00:14:54', 1, '2016-08-21 00:14:54', 1, 1),
(36, 'd8cb9f27-e653-48d4-8cdb-95f241caff98', 'humhub\\modules\\post\\models\\Post', 12, 1, 0, '0', '2016-08-21 00:15:00', 1, '2016-08-21 00:15:00', 1, 1),
(37, '35a127ab-4ad3-4a7a-9017-d0fd75355440', 'humhub\\modules\\activity\\models\\Activity', 25, 1, 0, '0', '2016-08-21 00:15:00', 1, '2016-08-21 00:15:00', 1, 1),
(38, '82d8b1c6-bd0f-4995-83dd-da66be087107', 'humhub\\modules\\post\\models\\Post', 13, 1, 0, '0', '2016-08-21 00:15:05', 1, '2016-08-21 00:15:05', 1, 1),
(39, '3f9e84ef-d903-42a0-95e2-9bab82cb09de', 'humhub\\modules\\activity\\models\\Activity', 26, 1, 0, '0', '2016-08-21 00:15:05', 1, '2016-08-21 00:15:05', 1, 1),
(40, '6e026a97-a2d5-411d-a4be-4eb8928f2e64', 'humhub\\modules\\post\\models\\Post', 14, 1, 0, '0', '2016-08-21 00:20:14', 1, '2016-08-21 00:20:14', 1, 1),
(41, 'a784365e-a7c8-43bf-a5dc-0035ee648fe6', 'humhub\\modules\\activity\\models\\Activity', 27, 1, 0, '0', '2016-08-21 00:20:14', 1, '2016-08-21 00:20:14', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer`
--

CREATE TABLE `contentcontainer` (
  `id` int(11) NOT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `pk` int(11) DEFAULT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contentcontainer`
--

INSERT INTO `contentcontainer` (`id`, `guid`, `class`, `pk`, `owner_user_id`, `wall_id`) VALUES
(1, 'bded748b-dd2a-4f3c-94fe-484cf28d1904', 'humhub\\modules\\user\\models\\User', 1, 1, 1),
(2, '87e6af3c-8fd6-4f95-ae66-f3fea19ff04f', 'humhub\\modules\\space\\models\\Space', 1, 1, 2),
(3, 'c4de0e33-e647-416e-b963-555507c4daad', 'humhub\\modules\\user\\models\\User', 2, 2, 3),
(4, '26e2432a-5a1e-4ee2-b462-942b727cf49d', 'humhub\\modules\\user\\models\\User', 3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer_permission`
--

CREATE TABLE `contentcontainer_permission` (
  `permission_id` varchar(150) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer_setting`
--

CREATE TABLE `contentcontainer_setting` (
  `id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
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
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `guid`, `object_model`, `object_id`, `file_name`, `title`, `mime_type`, `size`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, '8da23d21-ed37-4d52-96af-0d6898e28375', 'humhub\\modules\\post\\models\\Post', '6', 'countdown.mp4', 'countdown.mp4', 'video/mp4', '263969', '2016-08-20 22:27:56', 1, '2016-08-20 22:32:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
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
  `show_at_directory` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `space_id`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `is_admin_group`, `show_at_registration`, `show_at_directory`) VALUES
(1, NULL, 'Administrator', 'Administrator Group', '2016-08-20 03:01:03', NULL, NULL, NULL, NULL, 1, 0, 0),
(2, NULL, 'Users', 'Example Group by Installer', NULL, NULL, NULL, NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_permission`
--

CREATE TABLE `group_permission` (
  `permission_id` varchar(150) NOT NULL,
  `group_id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_group_manager` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `user_id`, `group_id`, `is_group_manager`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, 0, '2016-08-20 03:03:11', NULL, '2016-08-20 03:03:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `id` int(11) NOT NULL,
  `target_user_id` int(11) DEFAULT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `target_user_id`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'humhub\\modules\\comment\\models\\Comment', 1, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(2, NULL, 'humhub\\modules\\post\\models\\Post', 2, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 1, 'yii\\web\\HttpException:500', 1471758632.786, '[::1][1][uo7mr48o436jjqn10ar45oalu0]', 'exception ''yii\\web\\HttpException'' with message ''Could not determine content container!'' in D:\\xammp\\htdocs\\humhub\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php:89\nStack trace:\n#0 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#1 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#2 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#3 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#4 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#5 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#6 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#7 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#8 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile/home'')\n#9 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile/ho...'')\n#10 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile/ho...'', Array)\n#11 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#12 D:\\xammp\\htdocs\\humhub\\index.php(25): yii\\base\\Application->run()\n#13 {main}'),
(2, 4, 'application', 1471758632.6494, '[::1][1][uo7mr48o436jjqn10ar45oalu0]', '$_GET = [\n    ''r'' => ''user/profile/home''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''D:/xammp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''D:/xammp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; rv:48.0) Gecko/20100101 Firefox/48.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_space-members-panel=expanded; pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; PHPSESSID=uo7mr48o436jjqn10ar45oalu0; _csrf=6d07cfa7cb9ce8f9a82321433c1da6fe70f7ad4e98730136aa59cafbe8343fc7a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22MmKGpUnFASaGzwOJ6wx-7__-wTxjZFmN%22%3B%7D; language=d9bb90b2d8374646ff6e902650186fd1e92aeca631881533df8378ce2aaf96bda%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22en%22%3B%7D; _identity=c5b839d64bf3872eccab9ccdb858ca80c328bdf09b888506ab182432f33b9461a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22bded748b-dd2a-4f3c-94fe-484cf28d1904%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files\\\\Skype\\\\Phone\\\\;D:\\\\xammp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\usama12\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin;C:\\\\Users\\\\usama12\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.15 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.15''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''D:/xammp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/xammp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/xammp/htdocs/humhub/index.php''\n    ''REMOTE_PORT'' => ''57811''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fprofile%2Fhome''\n    ''REQUEST_URI'' => ''/humhub/index.php?r=user%2Fprofile%2Fhome''\n    ''SCRIPT_NAME'' => ''/humhub/index.php''\n    ''PHP_SELF'' => ''/humhub/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471758632.642\n    ''REQUEST_TIME'' => 1471758632\n]'),
(3, 1, 'yii\\base\\ErrorException:8', 1471759686.8326, '[::1][1][uo7mr48o436jjqn10ar45oalu0]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: user'' in D:\\xammp\\htdocs\\humhub\\protected\\humhub\\modules\\user\\views\\profile\\home.php:1\nStack trace:\n#0 D:\\xammp\\htdocs\\humhub\\protected\\humhub\\modules\\user\\views\\profile\\home.php(1): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\xammp\\\\htdocs...'', 1, Array)\n#1 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''D:\\\\xammp\\\\htdocs...'')\n#2 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''D:\\\\xammp\\\\htdocs...'', Array)\n#3 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''D:\\\\xammp\\\\htdocs...'', Array, Object(humhub\\modules\\user\\controllers\\ProfileController))\n#4 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(378): yii\\base\\View->render(''home'', Array, Object(humhub\\modules\\user\\controllers\\ProfileController))\n#5 D:\\xammp\\htdocs\\humhub\\protected\\humhub\\modules\\user\\controllers\\ProfileController.php(71): yii\\base\\Controller->render(''home'')\n#6 [internal function]: humhub\\modules\\user\\controllers\\ProfileController->actionHome()\n#7 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#8 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#9 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''home'', Array)\n#10 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile/ho...'', Array)\n#11 D:\\xammp\\htdocs\\humhub\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#12 D:\\xammp\\htdocs\\humhub\\index.php(25): yii\\base\\Application->run()\n#13 {main}'),
(4, 4, 'application', 1471759686.6833, '[::1][1][uo7mr48o436jjqn10ar45oalu0]', '$_GET = [\n    ''r'' => ''user/profile/home''\n    ''uguid'' => ''bded748b-dd2a-4f3c-94fe-484cf28d1904''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''D:/xammp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''D:/xammp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; rv:48.0) Gecko/20100101 Firefox/48.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_space-members-panel=expanded; pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; PHPSESSID=uo7mr48o436jjqn10ar45oalu0; _csrf=6d07cfa7cb9ce8f9a82321433c1da6fe70f7ad4e98730136aa59cafbe8343fc7a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22MmKGpUnFASaGzwOJ6wx-7__-wTxjZFmN%22%3B%7D; language=d9bb90b2d8374646ff6e902650186fd1e92aeca631881533df8378ce2aaf96bda%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22en%22%3B%7D; _identity=c5b839d64bf3872eccab9ccdb858ca80c328bdf09b888506ab182432f33b9461a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22bded748b-dd2a-4f3c-94fe-484cf28d1904%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files\\\\Skype\\\\Phone\\\\;D:\\\\xammp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\Git\\\\cmd;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\usama12\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin;C:\\\\Users\\\\usama12\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.15 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.15''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''D:/xammp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/xammp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/xammp/htdocs/humhub/index.php''\n    ''REMOTE_PORT'' => ''59823''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fprofile%2Fhome&uguid=bded748b-dd2a-4f3c-94fe-484cf28d1904''\n    ''REQUEST_URI'' => ''/humhub/index.php?r=user%2Fprofile%2Fhome&uguid=bded748b-dd2a-4f3c-94fe-484cf28d1904''\n    ''SCRIPT_NAME'' => ''/humhub/index.php''\n    ''PHP_SELF'' => ''/humhub/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471759686.674\n    ''REQUEST_TIME'' => 1471759686\n]');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_entry`
--

CREATE TABLE `message_entry` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1471676462),
('m131023_164513_initial', 1471676462),
('m131023_165411_initial', 1471676462),
('m131023_165625_initial', 1471676462),
('m131023_165755_initial', 1471676462),
('m131023_165835_initial', 1471676462),
('m131023_170033_initial', 1471676462),
('m131023_170135_initial', 1471676462),
('m131023_170159_initial', 1471676462),
('m131023_170253_initial', 1471676462),
('m131023_170339_initial', 1471676462),
('m131203_110444_oembed', 1471676462),
('m131213_165552_user_optimize', 1471676462),
('m140226_111945_ldap', 1471676462),
('m140303_125031_password', 1471676462),
('m140304_142711_memberautoadd', 1471676462),
('m140321_000917_content', 1471676462),
('m140324_170617_membership', 1471676462),
('m140507_150421_create_settings_table', 1471676462),
('m140507_171527_create_settings_table', 1471676462),
('m140512_141414_i18n_profilefields', 1471676462),
('m140513_180317_createlogging', 1471676462),
('m140701_000611_profile_genderfield', 1471676462),
('m140701_074404_protect_default_profilefields', 1471676462),
('m140702_143912_notify_notification_unify', 1471676462),
('m140703_104527_profile_birthdayfield', 1471676462),
('m140704_080659_installationid', 1471676462),
('m140705_065525_emailing_settings', 1471676462),
('m140706_135210_lastlogin', 1471676462),
('m140829_122906_delete', 1471676462),
('m140830_145504_following', 1471676462),
('m140901_080147_indizies', 1471676462),
('m140901_080432_indices', 1471676462),
('m140901_112246_addState', 1471676462),
('m140901_153403_addState', 1471676462),
('m140901_170329_group_create_space', 1471676462),
('m140902_091234_session_key_length', 1471676462),
('m140907_140822_zip_field_to_text', 1471676462),
('m140930_205511_fix_default', 1471676462),
('m140930_205859_fix_default', 1471676462),
('m140930_210142_fix_default', 1471676462),
('m140930_210635_fix_default', 1471676462),
('m140930_212528_fix_default', 1471676462),
('m141015_173305_follow_notifications', 1471676462),
('m141019_093319_mentioning', 1471676462),
('m141020_162639_fix_default', 1471676462),
('m141020_193920_rm_alsocreated', 1471676462),
('m141020_193931_rm_alsoliked', 1471676462),
('m141021_162639_oembed_setting', 1471676462),
('m141022_094635_addDefaults', 1471676462),
('m141106_185632_log_init', 1471676462),
('m150204_103433_html5_notified', 1471676462),
('m150210_190006_user_invite_lang', 1471676462),
('m150302_114347_add_visibility', 1471676462),
('m150322_194403_remove_type_field', 1471676462),
('m150322_195619_allowedExt2Text', 1471676462),
('m150429_223856_optimize', 1471676462),
('m150510_102900_update', 1471676462),
('m150629_220311_change', 1471676462),
('m150703_012735_typelength', 1471676462),
('m150703_024635_activityTypes', 1471676462),
('m150703_033650_namespace', 1471676462),
('m150703_130157_migrate', 1471676463),
('m150704_005338_namespace', 1471676463),
('m150704_005418_namespace', 1471676463),
('m150704_005434_namespace', 1471676463),
('m150704_005452_namespace', 1471676463),
('m150704_005504_namespace', 1471676463),
('m150713_054441_timezone', 1471676463),
('m150714_093525_activity', 1471676463),
('m150714_100355_cleanup', 1471676463),
('m150831_061628_notifications', 1471676463),
('m150910_223305_fix_user_follow', 1471676463),
('m150924_133344_update_notification_fix', 1471676463),
('m150924_154635_user_invite_add_first_lastname', 1471676463),
('m150927_190830_create_contentcontainer', 1471676463),
('m150928_103711_permissions', 1471676463),
('m150928_134934_groups', 1471676463),
('m150928_140718_setColorVariables', 1471676463),
('m151010_124437_group_permissions', 1471676463),
('m151010_175000_default_visibility', 1471676463),
('m151013_223814_include_dashboard', 1471676463),
('m151022_131128_module_fix', 1471676463),
('m151106_090948_addColor', 1471676463),
('m151223_171310_fix_notifications', 1471676463),
('m151226_164234_authclient', 1471676463),
('m160125_053702_stored_filename', 1471676463),
('m160216_160119_initial', 1471676463),
('m160217_161220_addCanLeaveFlag', 1471676463),
('m160220_013525_contentcontainer_id', 1471676463),
('m160221_222312_public_permission_change', 1471676463),
('m160225_180229_remove_website', 1471676463),
('m160227_073020_birthday_date', 1471676463),
('m160229_162959_multiusergroups', 1471676463),
('m160309_141222_longerUserName', 1471676463),
('m160408_100725_rename_groupadmin_to_manager', 1471676463),
('m160501_220850_activity_pk_int', 1471676463),
('m160507_202611_settings', 1471676463),
('m160508_005740_settings_cleanup', 1471676463),
('m160509_214811_spaceurl', 1471676463),
('m160517_132535_group', 1471676463),
('m160523_105732_profile_searchable', 1471676463),
('m160714_142827_remove_space_id', 1471676463),
('m140729_223509_initial', 1471676530),
('m150706_193118_renamefield', 1471676530),
('m150707_134615_update', 1471676530),
('m150720_174011_initial', 1471676533),
('m131023_165507_initial', 1471676539),
('m150429_190600_indexes', 1471676539),
('m150709_050451_namespace', 1471676539),
('m131023_165921_initial', 1471676545),
('m131030_122743_longer_questions', 1471676545),
('m141002_093710_fix_default', 1471676545),
('m150709_151858_namespace', 1471676545),
('m160218_132531_close_and_anonymous_poll', 1471676545),
('m131023_165214_initial', 1471676548),
('m140812_093445_rename_deadline_column', 1471676548),
('m141002_084750_fix_default', 1471676548),
('m141002_092800_fix_deadline', 1471676548),
('m150710_055123_namespace', 1471676548),
('m151224_162440_fix_module_id_notifications', 1471676548);

-- --------------------------------------------------------

--
-- Table structure for table `module_enabled`
--

CREATE TABLE `module_enabled` (
  `module_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_enabled`
--

INSERT INTO `module_enabled` (`module_id`) VALUES
('birthday'),
('calendar'),
('cfiles'),
('mail'),
('mostactiveusers'),
('polls'),
('tasks');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
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
  `group_key` varchar(75) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `class`, `user_id`, `seen`, `source_class`, `source_pk`, `space_id`, `emailed`, `created_at`, `desktop_notified`, `originator_user_id`, `module`, `group_key`) VALUES
(1, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 1, 1, 0, '2016-08-20 03:03:19', 1, 2, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(2, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 2, 1, 0, '2016-08-20 03:03:19', 1, 3, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(3, 'humhub\\modules\\comment\\notifications\\NewComment', 2, 0, 'humhub\\modules\\comment\\models\\Comment', 2, 1, 0, '2016-08-20 03:03:19', 0, 3, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(4, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 3, 1, 0, '2016-08-20 03:03:19', 1, 2, 'comment', 'humhub\\modules\\polls\\models\\Poll-1'),
(5, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 0, 'humhub\\modules\\comment\\models\\Comment', 4, 1, 0, '2016-08-20 03:03:19', 1, 3, 'comment', 'humhub\\modules\\polls\\models\\Poll-1'),
(6, 'humhub\\modules\\comment\\notifications\\NewComment', 2, 0, 'humhub\\modules\\comment\\models\\Comment', 4, 1, 0, '2016-08-20 03:03:19', 0, 3, 'comment', 'humhub\\modules\\polls\\models\\Poll-1'),
(7, 'humhub\\modules\\comment\\notifications\\NewComment', 2, 0, 'humhub\\modules\\comment\\models\\Comment', 5, 1, 0, '2016-08-20 22:16:11', 0, 1, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(8, 'humhub\\modules\\comment\\notifications\\NewComment', 3, 0, 'humhub\\modules\\comment\\models\\Comment', 5, 1, 0, '2016-08-20 22:16:12', 0, 1, 'comment', 'humhub\\modules\\post\\models\\Post-2');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `allow_multiple` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_random` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `anonymous` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `question`, `allow_multiple`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_random`, `closed`, `anonymous`) VALUES
(1, 'Right now, we are in the planning stages for our next meetup and we would like to know from you, where you would like to go?', 0, '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer`
--

CREATE TABLE `poll_answer` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_answer`
--

INSERT INTO `poll_answer` (`id`, `poll_id`, `answer`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 'To Daniel', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1),
(2, 1, 'Club A Steakhouse', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1),
(3, 1, 'Pisillo Italian Panini', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer_user`
--

CREATE TABLE `poll_answer_user` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `poll_answer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_answer_user`
--

INSERT INTO `poll_answer_user` (`id`, `poll_id`, `poll_answer_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 2, '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2),
(2, 1, 3, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(3, 1, 1, '2016-08-20 22:16:30', 1, '2016-08-20 22:16:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `message_2trash` text,
  `message` text,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `message_2trash`, `message`, `url`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Yay! I''ve just installed HumHub ;Cool;', NULL, '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1),
(2, NULL, 'We''re looking for great slogans of famous brands. Maybe you can come up with some samples?', NULL, '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1),
(3, NULL, 'http://localhost/melody2//watch.php?vid=ef2311d39', '1', '2016-08-20 22:16:48', 1, '2016-08-20 22:16:48', 1),
(4, NULL, 'http://localhost/melody2//watch.php?vid=ef2311d39', '1', '2016-08-20 22:17:44', 1, '2016-08-20 22:17:44', 1),
(5, NULL, '<div>ok</div>', NULL, '2016-08-20 22:20:18', 1, '2016-08-20 22:20:18', 1),
(6, NULL, 'fsfsd', NULL, '2016-08-20 22:32:20', 1, '2016-08-20 22:32:20', 1),
(7, NULL, 'test\r\n\r\n', NULL, '2016-08-20 22:48:48', 1, '2016-08-20 22:48:48', 1),
(8, NULL, 'tictic', NULL, '2016-08-20 22:48:49', 1, '2016-08-20 00:00:00', 1),
(9, NULL, 'test', NULL, '2016-08-21 00:07:12', 1, '2016-08-21 00:07:12', 1),
(10, NULL, 'test', NULL, '2016-08-21 00:07:16', 1, '2016-08-21 00:07:16', 1),
(11, NULL, '1', NULL, '2016-08-21 00:14:54', 1, '2016-08-21 00:14:54', 1),
(12, NULL, 'This is one', NULL, '2016-08-21 00:15:00', 1, '2016-08-21 00:15:00', 1),
(13, NULL, 'This is trwo', NULL, '2016-08-21 00:15:05', 1, '2016-08-21 00:15:05', 1),
(14, NULL, 'This is three', NULL, '2016-08-21 00:20:14', 1, '2016-08-21 00:20:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
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
  `url_twitter` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `title`, `gender`, `street`, `zip`, `city`, `country`, `state`, `birthday_hide_year`, `birthday`, `about`, `phone_private`, `phone_work`, `mobile`, `fax`, `im_skype`, `im_msn`, `im_xmpp`, `url`, `url_facebook`, `url_linkedin`, `url_xing`, `url_youtube`, `url_vimeo`, `url_flickr`, `url_myspace`, `url_googleplus`, `url_twitter`) VALUES
(1, 'Usama', 'Abdullah', 'System Administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'David', 'Roberts', 'Late riser', NULL, '2443 Queens Lane', '24574', 'Allwood', 'Virginia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Sara', 'Schuster', 'Do-gooder', NULL, 'Schmarjestrasse 51', '17095', 'Friedland', 'Niedersachsen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

CREATE TABLE `profile_field` (
  `id` int(11) NOT NULL,
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
  `searchable` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `profile_field_category` (
  `id` int(11) NOT NULL,
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
  `is_system` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `module_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(11, 'baseUrl', 'http://webcoch.com/humhub', 'base'),
(12, 'paginationSize', '10', 'base'),
(13, 'displayNameFormat', '{profile.firstname} {profile.lastname}', 'base'),
(14, 'auth.ldap.refreshUsers', '1', 'user'),
(15, 'auth.needApproval', '0', 'user'),
(16, 'auth.anonymousRegistration', '1', 'user'),
(17, 'auth.internalUsersCanInvite', '1', 'user'),
(18, 'mailer.transportType', 'php', 'base'),
(19, 'mailer.systemEmailAddress', 'contact@boxofficeasia.net', 'base'),
(20, 'mailer.systemEmailName', 'HumHub', 'base'),
(21, 'receive_email_activities', '1', 'activity'),
(22, 'receive_email_notifications', '2', 'notification'),
(23, 'maxFileSize', '5242880', 'file'),
(24, 'maxPreviewImageWidth', '200', 'file'),
(25, 'maxPreviewImageHeight', '200', 'file'),
(26, 'hideImageFileInfo', '0', 'file'),
(27, 'cache.class', 'yii\\caching\\FileCache', 'base'),
(28, 'cache.expireTime', '3600', 'base'),
(29, 'installationId', '2e2b285d7fa7f7a96b84af21cf6ec069', 'admin'),
(30, 'theme', 'HumHub', 'base'),
(31, 'spaceOrder', '0', 'space'),
(32, 'enable', '1', 'tour'),
(33, 'defaultLanguage', 'en-US', 'base'),
(34, 'enable_html5_desktop_notifications', '0', 'notification'),
(35, 'useCase', 'club', 'base'),
(36, 'auth.allowGuestAccess', '0', 'user'),
(37, 'enable', '1', 'friendship'),
(38, 'shownDays', '2', 'birthday'),
(39, 'noUsers', 'mostactiveusers', 'base'),
(40, 'noUsers', '5', 'mostactiveusers'),
(41, 'sampleData', '1', 'installer'),
(42, 'secret', 'dff34bf9-537e-46e6-be29-ce6161b1c811', 'base'),
(43, 'timeZone', 'America/New_York', 'base'),
(44, 'mailer.hostname', '', 'base'),
(45, 'mailer.username', '', 'base'),
(46, 'mailer.password', '', 'base'),
(47, 'mailer.port', '', 'base'),
(48, 'mailer.encryption', '', 'base'),
(49, 'mailer.allowSelfSignedCerts', '0', 'base');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE `space` (
  `id` int(11) NOT NULL,
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
  `url` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `space`
--

INSERT INTO `space` (`id`, `guid`, `wall_id`, `name`, `description`, `join_policy`, `visibility`, `status`, `tags`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `auto_add_new_members`, `contentcontainer_id`, `default_content_visibility`, `color`, `members_can_leave`, `url`) VALUES
(1, '87e6af3c-8fd6-4f95-ae66-f3fea19ff04f', 2, 'Welcome Space', 'Your first sample space to discover the platform.', 2, 2, 1, NULL, '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1, NULL, 1, 2, NULL, '#6fdbe8', 1, 'welcome-space');

-- --------------------------------------------------------

--
-- Table structure for table `space_membership`
--

CREATE TABLE `space_membership` (
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
  `can_cancel_membership` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `space_membership`
--

INSERT INTO `space_membership` (`space_id`, `user_id`, `originator_user_id`, `status`, `request_message`, `last_visit`, `created_at`, `created_by`, `updated_at`, `updated_by`, `group_id`, `show_at_dashboard`, `can_cancel_membership`) VALUES
(1, 1, NULL, 3, NULL, '2016-08-20 22:27:12', NULL, NULL, NULL, NULL, 'admin', 1, 1),
(1, 2, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 3, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `space_module`
--

CREATE TABLE `space_module` (
  `id` int(11) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `space_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `space_module`
--

INSERT INTO `space_module` (`id`, `module_id`, `space_id`, `state`) VALUES
(1, 'calendar', 1, 1),
(2, 'cfiles', 1, 1),
(3, 'polls', 1, 1),
(4, 'tasks', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `max_users` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `percent` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task_user`
--

CREATE TABLE `task_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `url_oembed`
--

CREATE TABLE `url_oembed` (
  `url` varchar(255) NOT NULL,
  `preview` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
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
  `contentcontainer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `guid`, `wall_id`, `status`, `username`, `email`, `auth_mode`, `tags`, `language`, `last_activity_email`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`, `visibility`, `time_zone`, `contentcontainer_id`) VALUES
(1, 'bded748b-dd2a-4f3c-94fe-484cf28d1904', 1, 1, 'usama11', 'usamaabdullah11@hotmail.com', 'local', 'Administration, Support, HumHub', '', '2016-08-20 03:03:11', '2016-08-20 03:03:11', NULL, '2016-08-20 03:03:11', NULL, '2016-08-20 22:47:27', 1, NULL, 1),
(2, 'c4de0e33-e647-416e-b963-555507c4daad', 3, 1, 'david1986', 'david.roberts@example.com', 'local', 'Microsoft Office, Marketing, SEM, Digital Native', '', '2016-08-20 03:03:19', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1, NULL, 1, NULL, 3),
(3, '26e2432a-5a1e-4ee2-b462-942b727cf49d', 4, 1, 'sara1989', 'sara.schuster@example.com', 'local', 'Yoga, Travel, English, German, French', '', '2016-08-20 03:03:19', '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1, NULL, 1, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE `user_auth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

CREATE TABLE `user_follow` (
  `id` int(11) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_notifications` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(8, 'humhub\\modules\\post\\models\\Post', 3, 1, 1),
(9, 'humhub\\modules\\post\\models\\Post', 4, 1, 1),
(10, 'humhub\\modules\\post\\models\\Post', 5, 1, 1),
(11, 'humhub\\modules\\post\\models\\Post', 6, 1, 1),
(12, 'humhub\\modules\\post\\models\\Post', 7, 1, 1),
(13, 'humhub\\modules\\post\\models\\Post', 9, 1, 1),
(14, 'humhub\\modules\\post\\models\\Post', 10, 1, 1),
(15, 'humhub\\modules\\post\\models\\Post', 11, 1, 1),
(16, 'humhub\\modules\\post\\models\\Post', 12, 1, 1),
(17, 'humhub\\modules\\post\\models\\Post', 13, 1, 1),
(18, 'humhub\\modules\\post\\models\\Post', 14, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_friendship`
--

CREATE TABLE `user_friendship` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_http_session`
--

CREATE TABLE `user_http_session` (
  `id` char(255) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_http_session`
--

INSERT INTO `user_http_session` (`id`, `expire`, `user_id`, `data`) VALUES
('hnp287q5ts5bjgo2uprt9og8u3', 1471679887, NULL, 0x5f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a32303a222f68756d6875622f696e6465782e7068703f723d223b),
('uo7mr48o436jjqn10ar45oalu0', 1471761127, 1, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b63757272656e7441757468436c69656e7449647c733a353a226c6f63616c223b),
('25g7b7gvm9863g88mpq7t10v25', 1471765713, 1, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b63757272656e7441757468436c69656e7449647c733a353a226c6f63616c223b);

-- --------------------------------------------------------

--
-- Table structure for table `user_invite`
--

CREATE TABLE `user_invite` (
  `id` int(11) NOT NULL,
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
  `lastname` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_invite`
--

INSERT INTO `user_invite` (`id`, `user_originator_id`, `space_invite_id`, `email`, `source`, `token`, `created_at`, `created_by`, `updated_at`, `updated_by`, `language`, `firstname`, `lastname`) VALUES
(2, NULL, NULL, 'usamaabdullah12@hotmail.com', 'self', 'LF8W-2zxmHw7', NULL, NULL, NULL, NULL, 'en-US', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_mentioning`
--

CREATE TABLE `user_mentioning` (
  `id` int(11) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_message`
--

CREATE TABLE `user_message` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_originator` tinyint(4) DEFAULT NULL,
  `last_viewed` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE `user_module` (
  `id` int(11) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_password`
--

CREATE TABLE `user_password` (
  `id` int(11) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `algorithm` varchar(20) DEFAULT NULL,
  `password` text,
  `salt` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_password`
--

INSERT INTO `user_password` (`id`, `user_id`, `algorithm`, `password`, `salt`, `created_at`) VALUES
(1, 1, 'sha512whirlpool', '892816f9c5c6d889370b0999f6ae8ca18cccf2e0c52330f8288930b765a73a775b85c16f80fa9f15d2bf1b5c96793f3713e1abe38e3e545a34f0c1f69338024d', 'f75fee85-de51-42c3-9360-63f764001d6c', '2016-08-20 03:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `wall`
--

CREATE TABLE `wall` (
  `id` int(11) NOT NULL,
  `object_model` varchar(50) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wall`
--

INSERT INTO `wall` (`id`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'humhub\\modules\\user\\models\\User', 1, NULL, NULL, NULL, NULL),
(2, 'humhub\\modules\\space\\models\\Space', 1, NULL, NULL, NULL, NULL),
(3, 'humhub\\modules\\user\\models\\User', 2, NULL, NULL, NULL, NULL),
(4, 'humhub\\modules\\user\\models\\User', 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wall_entry`
--

CREATE TABLE `wall_entry` (
  `id` int(11) NOT NULL,
  `wall_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wall_entry`
--

INSERT INTO `wall_entry` (`id`, `wall_id`, `content_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 2, 1, '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1),
(2, 2, 3, '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1),
(3, 2, 2, '2016-08-20 03:03:11', 1, '2016-08-20 03:03:11', 1),
(4, 2, 4, '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1),
(5, 2, 5, '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1),
(6, 2, 7, '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1),
(7, 2, 6, '2016-08-20 03:03:19', 1, '2016-08-20 22:16:13', 1),
(8, 2, 8, '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2),
(9, 2, 9, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(10, 2, 10, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(11, 2, 11, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(12, 2, 13, '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 1),
(13, 2, 12, '2016-08-20 03:03:19', 1, '2016-08-20 03:03:19', 3),
(14, 2, 14, '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2),
(15, 2, 15, '2016-08-20 03:03:19', 2, '2016-08-20 03:03:19', 2),
(16, 2, 16, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(17, 2, 17, '2016-08-20 03:03:19', 3, '2016-08-20 03:03:19', 3),
(18, 2, 18, '2016-08-20 22:16:11', 1, '2016-08-20 22:16:11', 1),
(19, 2, 19, '2016-08-20 22:16:30', 1, '2016-08-20 22:16:30', 1),
(20, 2, 21, '2016-08-20 22:16:48', 1, '2016-08-20 22:16:48', 1),
(21, 2, 20, '2016-08-20 22:16:48', 1, '2016-08-20 22:16:48', 1),
(22, 1, 23, '2016-08-20 22:17:44', 1, '2016-08-20 22:17:44', 1),
(23, 1, 22, '2016-08-20 22:17:44', 1, '2016-08-20 22:17:44', 1),
(24, 1, 25, '2016-08-20 22:20:18', 1, '2016-08-20 22:20:18', 1),
(25, 1, 24, '2016-08-20 22:20:19', 1, '2016-08-20 22:20:19', 1),
(26, 1, 27, '2016-08-20 22:32:20', 1, '2016-08-20 22:32:20', 1),
(27, 1, 26, '2016-08-20 22:32:20', 1, '2016-08-20 22:32:20', 1),
(28, 1, 29, '2016-08-20 22:48:48', 1, '2016-08-20 22:48:48', 1),
(29, 1, 28, '2016-08-20 22:48:48', 1, '2016-08-20 22:48:48', 1),
(30, 1, 31, '2016-08-21 00:07:12', 1, '2016-08-21 00:07:12', 1),
(31, 1, 30, '2016-08-21 00:07:13', 1, '2016-08-21 00:07:13', 1),
(32, 1, 33, '2016-08-21 00:07:16', 1, '2016-08-21 00:07:16', 1),
(33, 1, 32, '2016-08-21 00:07:16', 1, '2016-08-21 00:07:16', 1),
(34, 1, 35, '2016-08-21 00:14:54', 1, '2016-08-21 00:14:54', 1),
(35, 1, 34, '2016-08-21 00:14:54', 1, '2016-08-21 00:14:54', 1),
(36, 1, 37, '2016-08-21 00:15:00', 1, '2016-08-21 00:15:00', 1),
(37, 1, 36, '2016-08-21 00:15:00', 1, '2016-08-21 00:15:00', 1),
(38, 1, 39, '2016-08-21 00:15:05', 1, '2016-08-21 00:15:05', 1),
(39, 1, 38, '2016-08-21 00:15:05', 1, '2016-08-21 00:15:05', 1),
(40, 1, 41, '2016-08-21 00:20:14', 1, '2016-08-21 00:20:14', 1),
(41, 1, 40, '2016-08-21 00:20:14', 1, '2016-08-21 00:20:14', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_entry`
--
ALTER TABLE `calendar_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_entry_participant`
--
ALTER TABLE `calendar_entry_participant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_entryuser` (`calendar_entry_id`,`user_id`);

--
-- Indexes for table `cfiles_file`
--
ALTER TABLE `cfiles_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cfiles_folder`
--
ALTER TABLE `cfiles_folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_object_model` (`object_model`,`object_id`),
  ADD UNIQUE KEY `index_guid` (`guid`),
  ADD KEY `fk-contentcontainer` (`contentcontainer_id`),
  ADD KEY `fk-create-user` (`created_by`),
  ADD KEY `fk-update-user` (`updated_by`);

--
-- Indexes for table `contentcontainer`
--
ALTER TABLE `contentcontainer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_target` (`class`,`pk`),
  ADD UNIQUE KEY `unique_guid` (`guid`);

--
-- Indexes for table `contentcontainer_permission`
--
ALTER TABLE `contentcontainer_permission`
  ADD PRIMARY KEY (`permission_id`,`group_id`,`module_id`,`contentcontainer_id`);

--
-- Indexes for table `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings-unique` (`module_id`,`contentcontainer_id`,`name`),
  ADD KEY `fk-contentcontainerx` (`contentcontainer_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_permission`
--
ALTER TABLE `group_permission`
  ADD PRIMARY KEY (`permission_id`,`group_id`,`module_id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx-group_user` (`user_id`,`group_id`),
  ADD KEY `fk-group-group` (`group_id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_log_level` (`level`),
  ADD KEY `idx_log_category` (`category`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_updated` (`updated_at`),
  ADD KEY `index_updated_by` (`updated_by`);

--
-- Indexes for table `message_entry`
--
ALTER TABLE `message_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_id` (`user_id`),
  ADD KEY `index_message_id` (`message_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `module_enabled`
--
ALTER TABLE `module_enabled`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_id` (`user_id`),
  ADD KEY `index_seen` (`seen`),
  ADD KEY `index_desktop_notified` (`desktop_notified`),
  ADD KEY `index_desktop_emailed` (`emailed`),
  ADD KEY `index_groupuser` (`user_id`,`class`,`group_key`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_answer_user`
--
ALTER TABLE `poll_answer_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `profile_field`
--
ALTER TABLE `profile_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_profile_field_category` (`profile_field_category_id`);

--
-- Indexes for table `profile_field_category`
--
ALTER TABLE `profile_field_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unique-setting` (`name`,`module_id`);

--
-- Indexes for table `space`
--
ALTER TABLE `space`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url-unique` (`url`);

--
-- Indexes for table `space_membership`
--
ALTER TABLE `space_membership`
  ADD PRIMARY KEY (`space_id`,`user_id`),
  ADD KEY `index_status` (`status`);

--
-- Indexes for table `space_module`
--
ALTER TABLE `space_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_user`
--
ALTER TABLE `task_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_oembed`
--
ALTER TABLE `url_oembed`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `unique_guid` (`guid`),
  ADD UNIQUE KEY `unique_wall_id` (`wall_id`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `user_follow`
--
ALTER TABLE `user_follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user` (`user_id`),
  ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indexes for table `user_friendship`
--
ALTER TABLE `user_friendship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx-friends` (`user_id`,`friend_user_id`),
  ADD KEY `fk-friend` (`friend_user_id`);

--
-- Indexes for table `user_http_session`
--
ALTER TABLE `user_http_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_invite`
--
ALTER TABLE `user_invite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_token` (`token`);

--
-- Indexes for table `user_mentioning`
--
ALTER TABLE `user_mentioning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_user` (`user_id`),
  ADD KEY `i_object` (`object_model`,`object_id`);

--
-- Indexes for table `user_message`
--
ALTER TABLE `user_message`
  ADD PRIMARY KEY (`message_id`,`user_id`),
  ADD KEY `index_last_viewed` (`last_viewed`);

--
-- Indexes for table `user_module`
--
ALTER TABLE `user_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_user_module` (`user_id`,`module_id`);

--
-- Indexes for table `user_password`
--
ALTER TABLE `user_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `wall`
--
ALTER TABLE `wall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wall_entry`
--
ALTER TABLE `wall_entry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `calendar_entry`
--
ALTER TABLE `calendar_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calendar_entry_participant`
--
ALTER TABLE `calendar_entry_participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cfiles_file`
--
ALTER TABLE `cfiles_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cfiles_folder`
--
ALTER TABLE `cfiles_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `contentcontainer`
--
ALTER TABLE `contentcontainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message_entry`
--
ALTER TABLE `message_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `poll_answer`
--
ALTER TABLE `poll_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `poll_answer_user`
--
ALTER TABLE `poll_answer_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `profile_field`
--
ALTER TABLE `profile_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `profile_field_category`
--
ALTER TABLE `profile_field_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `space`
--
ALTER TABLE `space`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `space_module`
--
ALTER TABLE `space_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `task_user`
--
ALTER TABLE `task_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_follow`
--
ALTER TABLE `user_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_friendship`
--
ALTER TABLE `user_friendship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_invite`
--
ALTER TABLE `user_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_mentioning`
--
ALTER TABLE `user_mentioning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_module`
--
ALTER TABLE `user_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_password`
--
ALTER TABLE `user_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wall`
--
ALTER TABLE `wall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wall_entry`
--
ALTER TABLE `wall_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
