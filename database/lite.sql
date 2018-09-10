/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : lite

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-09-10 12:45:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for block_categories
-- ----------------------------
DROP TABLE IF EXISTS `block_categories`;
CREATE TABLE `block_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `status` enum('show','hide') COLLATE utf8_unicode_ci DEFAULT 'hide',
  `user_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of block_categories
-- ----------------------------
INSERT INTO `block_categories` VALUES ('1', 'Features', 'features', null, null, 'show', 'App\\User', '1', '2016/10/31/163917964', null, '2016-07-20 07:17:48', '2016-11-01 13:08:17');

-- ----------------------------
-- Table structure for blocks
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `published` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8_unicode_ci DEFAULT 'hide',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blocks
-- ----------------------------
INSERT INTO `blocks` VALUES ('1', '1', 'Powered by Laravel 5.3', '', 'ion ion-social-github-outline', '0', 'We have tried to make use of all features of Laravel 5.2 which help you to develop the website with all resources available online.​ ', '{\"folder\":\"2016\\/07\\/21\\/104902202\\/image\",\"file\":\"block03.jpg\",\"caption\":\"Block03\",\"time\":\"2016-07-21 10:50:23\"}', '[{\"caption\":\"Block01\",\"folder\":\"2016\\/07\\/21\\/104902202\\/images\",\"time\":\"2016-07-21 10:50:32\",\"file\":\"block01.jpg\"},{\"caption\":\"Block02\",\"folder\":\"2016\\/07\\/21\\/104902202\\/images\",\"time\":\"2016-07-21 10:50:33\",\"file\":\"block02.jpg\"},{\"caption\":\"Block03\",\"folder\":\"2016\\/07\\/21\\/104902202\\/images\",\"time\":\"2016-07-21 10:50:34\",\"file\":\"block03.jpg\"}]', 'Yes', 'powered-by-laravel-5-3', 'show', '1', 'App\\User', '2016/07/21/104902202', null, '2016-07-20 00:00:00', '2016-11-01 16:07:21');
INSERT INTO `blocks` VALUES ('2', '1', 'Configure to your project', '', 'ion ion-ios-gear-outline', '0', 'Lavalite helps you to configure your Laravel projects easily. It acts as a bootstrapper for your Laravel Content Management System.', '{\"folder\":\"2016\\/07\\/21\\/104854884\\/image\",\"file\":\"block02.jpg\",\"caption\":\"Block02\",\"time\":\"2016-07-21 10:50:02\"}', '[{\"caption\":\"Block01\",\"folder\":\"2016\\/07\\/21\\/104854884\\/images\",\"time\":\"2016-07-21 10:50:10\",\"file\":\"block01.jpg\"},{\"caption\":\"Block02\",\"folder\":\"2016\\/07\\/21\\/104854884\\/images\",\"time\":\"2016-07-21 10:50:11\",\"file\":\"block02.jpg\"},{\"caption\":\"Block03\",\"folder\":\"2016\\/07\\/21\\/104854884\\/images\",\"time\":\"2016-07-21 10:50:11\",\"file\":\"block03.jpg\"}]', 'Yes', 'configure-to-your-project', 'show', '1', 'App\\User', '2016/07/21/104854884', null, '2016-07-20 00:00:00', '2016-11-01 16:08:00');
INSERT INTO `blocks` VALUES ('3', '1', 'Online package builder', '', 'ion ion-ios-checkmark-outline', '0', 'The online package builder helps you to build Lavalite packages easily, The downloaded package with basic required files help you to finish your projects quickly.', '{\"folder\":\"2016\\/07\\/21\\/104846403\\/image\",\"file\":\"block01.jpg\",\"caption\":\"Block01\",\"time\":\"2016-07-21 10:49:32\"}', '[{\"caption\":\"Block02\",\"folder\":\"2016\\/07\\/21\\/104846403\\/images\",\"time\":\"2016-07-21 10:49:43\",\"file\":\"block02.jpg\"},{\"caption\":\"Block03\",\"folder\":\"2016\\/07\\/21\\/104846403\\/images\",\"time\":\"2016-07-21 10:49:44\",\"file\":\"block03.jpg\"},{\"caption\":\"Blog2\",\"folder\":\"2016\\/07\\/21\\/104846403\\/images\",\"time\":\"2016-07-21 10:49:44\",\"file\":\"blog2.jpg\"}]', 'Yes', 'online-package-builder', 'show', '1', 'App\\User', '2016/07/21/104846403', null, '2016-07-20 00:00:00', '2016-11-01 16:08:29');

-- ----------------------------
-- Table structure for blog_categories
-- ----------------------------
DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Show','Hide') COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_categories
-- ----------------------------

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `viewcount` int(11) DEFAULT NULL,
  `status` enum('Show','Hide') COLLATE utf8_unicode_ci DEFAULT NULL,
  `posted_on` timestamp NULL DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for calendars
-- ----------------------------
DROP TABLE IF EXISTS `calendars`;
CREATE TABLE `calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Draft','Calendar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Draft',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assignee_id` int(11) DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of calendars
-- ----------------------------
INSERT INTO `calendars` VALUES ('1', 'Board Meeting', 'Calendar', '2016-07-19 00:00:00', '2016-07-19 01:00:00', null, 'rgb(60, 141, 188)', null, null, null, 'board-meeting', '1', 'App\\User', null, null, '2016-07-20 08:35:17', '2016-07-20 08:38:08');
INSERT INTO `calendars` VALUES ('2', 'ALEXUS bday', 'Calendar', '2016-07-29 00:00:00', '2016-07-29 01:00:00', null, 'rgb(255, 0, 128)', null, null, null, 'alexus-bday', '1', 'App\\User', null, null, '2016-07-20 08:36:42', '2016-07-20 08:38:30');
INSERT INTO `calendars` VALUES ('3', 'Conference', 'Calendar', '2016-07-20 00:00:00', '2016-07-20 01:00:00', null, 'rgb(255, 133, 27)', null, null, null, 'conference', '1', 'App\\User', null, null, '2016-07-20 08:37:12', '2016-07-20 08:37:37');
INSERT INTO `calendars` VALUES ('4', 'Company meeting', 'Calendar', '2016-07-08 00:00:00', '2016-07-08 01:00:00', null, 'rgb(57, 204, 204)', null, null, null, 'company-meeting', '1', 'App\\User', null, null, '2016-07-20 08:37:28', '2016-07-20 08:37:33');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('draft','complete','verify','approve','publish','unpublish','archive') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reporting_to` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` enum('','male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci,
  `status` enum('draft','complete','verify','approve','publish','unpublish','archive') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_email_unique` (`email`),
  UNIQUE KEY `clients_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('1', '0', 'Super User', 'superuser@superuser.com', '$2y$10$bKwW6PzSa1GDOeUTqtTaLOVMutZ12ObeslBfEXPx2pJAL/2B8aB06', 'uc707fQ38YR1oLjl1HXf65sFo6LQnPxkf0f48tpgTHC1bnUugoimt9RIWb9m', null, 'male', '2014-05-15', 'Super User', null, null, null, null, null, null, null, null, null, 'http://litepie.org', null, '', null, null, null, null, '2015-09-15 00:00:00', null);
INSERT INTO `clients` VALUES ('2', '0', 'Admin', 'admin@admin.com', '$2y$10$T9DqgU3OlGOHHBKRL/tS4.CXyx6VZ.HhlT.otvMWk55zQ3EZB8Sze', '3yEVBOFs93bAMxc0CJUIyCrmORvSTyBFacL5T82zqdrpljD1yXZRJDBx8oe7', null, 'male', '2020-05-15', 'Admin', null, null, null, null, null, null, null, null, null, 'http://litepie.org', null, '', null, null, null, null, '2015-09-15 00:00:00', null);
INSERT INTO `clients` VALUES ('3', '0', 'User', 'user@user.com', '$2y$10$WgdW0SZkx3wlT52nroRGquai2P3l0MSU3vozQLrWgfFpJVxS4R6ky', 'a3eX2md0q75Xn4Y2xRnFuEvNJE9GqfDqI4q92GM95INR4SAHtdrzr1yjb5XJ', null, 'male', '2014-05-15', 'User', null, null, null, null, null, null, null, null, null, 'http://litepie.org', null, '', null, null, null, null, '2015-09-15 00:00:00', null);

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','hidden','suspended','spam') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `user_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'Renfos Technologies Pvt. Ltd.', '+91 484 4011 609', '+91 484 4011 609', 'india@renfos.com', 'http://www.renfos.com', 'INFOPARK TBC \n JNI Stadium Complex \n Kochi, Kerala \n India - 682017', 'renfos-technologies', '', 'App\\User', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `target` enum('_blank','_self') COLLATE utf8_unicode_ci DEFAULT '_self',
  `order` int(11) DEFAULT NULL,
  `uload_folder` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', '0', 'admin', '/admin', null, null, null, 'Admin', null, null, '1', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('2', '0', 'user', '/home', null, null, null, 'User', null, null, '1', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('3', '0', 'client', '/client', null, null, null, 'User', null, null, '1', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('4', '0', 'main', '', null, null, null, 'Main Menu', 'Website main menu', null, '2', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('5', '0', 'footer', '', null, null, null, 'Footer', 'Footer menu', null, '3', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('6', '0', 'social', '', null, null, null, 'Social', 'Social media menu', null, '3', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('7', '1', null, 'admin/menu/menu', 'fa fa-bars', null, null, 'Menu', null, null, '6', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('8', '1', null, 'admin', 'fa fa-dashboard', null, null, 'Dashboard', null, null, '1', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('9', '5', null, 'https://twitter.com/lavalitecms', null, null, null, 'Twitter', null, '_blank', '11', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('10', '5', null, 'https://github.com/LavaLite', null, null, null, 'GitHub', null, '_blank', '12', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('11', '5', null, 'https://www.facebook.com/lavalite/', null, null, null, 'Facebook', null, '_blank', '13', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('18', '3', null, 'client', 'pe-7s-graph', null, null, 'Dashborad', null, null, null, null, '1', null, null, null);
INSERT INTO `menus` VALUES ('19', '1', null, 'admin/calendar/calendar', 'fa fa-calendar', null, null, 'Calendars', null, null, '120', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('20', '2', null, 'user/calendar/calendar', 'pe-7s-date', null, null, 'Calendars', null, null, '120', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('21', '3', null, 'client/calendar/calendar', 'pe-7s-date', null, null, 'Calendars', null, null, '120', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('22', '1', null, 'admin/contact/contact', 'fa fa-phone-square', null, null, 'Contact Us', null, null, '140', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('23', '4', null, 'contact.htm', null, null, null, 'Contact Us', null, null, '140', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('24', '1', null, 'admin/message/message', 'fa fa-envelope-o', null, null, 'Message', null, null, '180', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('25', '2', null, 'user/message/message', 'pe-7s-mail', null, null, 'Message', null, null, '180', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('26', '3', null, 'client/message/message', 'pe-7s-mail', null, null, 'Message', null, null, '180', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('27', '1', null, 'admin/page/page', 'fa fa-book', null, null, 'Pages', null, null, '5', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('28', '4', null, 'about-us.html', null, null, null, 'About Us', null, null, '8', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('29', '1', null, 'admin/task/task', 'fa fa-flag-o', null, null, 'Tasks', null, null, '220', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('30', '2', null, 'user/task/task', 'pe-7s-id', null, null, 'Tasks', null, null, '220', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('31', '3', null, 'client/task/task', 'pe-7s-id', null, null, 'Task', null, null, '220', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('32', '1', null, 'admin/block', 'fa fa-square', null, null, 'Blocks', null, null, '100', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('33', '32', null, 'admin/block/block', 'fa fa-square', null, null, 'Blocks', null, null, '101', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('34', '32', null, 'admin/block/category', 'fa fa-bars', null, null, 'Categories', null, null, '102', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('35', '1', null, 'admin/news/news', 'fa fa-newspaper-o', null, null, 'News', null, null, '190', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('36', '2', null, 'user/news/news', 'pe-7s-news-paper', null, null, 'News', null, null, '190', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('37', '23', null, 'user/news/news', 'pe-7s-news-paper', null, null, 'News', null, null, '190', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('38', '4', null, 'news', null, null, null, 'News', null, null, '190', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('39', '2', null, 'home', 'pe-7s-graph', null, null, 'Dashborad', null, null, null, null, '1', null, null, null);
INSERT INTO `menus` VALUES ('40', '1', null, 'admin/user/user', 'fa fa-users', null, null, 'User', null, null, '190', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('41', '40', null, 'admin/user/user', 'fa fa-user', null, null, 'Users', null, null, '1200', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('42', '40', null, 'admin/user/role', 'fa fa-thumbs-up', null, null, 'Roles', null, null, '1201', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('43', '40', null, 'admin/user/permission', 'fa fa-check-circle-o', null, null, 'Permissions', null, null, '1202', null, '1', null, null, null);
INSERT INTO `menus` VALUES ('44', '40', null, 'admin/user/team', 'fa fa-users', null, null, 'Team', null, null, '1202', null, '1', null, null, null);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('Draft','Inbox','Sent','Trash','Junk','Important','Promosions','Social') COLLATE utf8_unicode_ci DEFAULT NULL,
  `star` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT NULL,
  `important` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `read` tinyint(4) DEFAULT NULL,
  `type` enum('System','Admin','User') COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '0000_00_00_000000_create_shoppingcart_table', '1');
INSERT INTO `migrations` VALUES ('2', '2015_01_05_100001_create_clients_table', '1');
INSERT INTO `migrations` VALUES ('3', '2015_01_05_100001_create_users_table', '1');
INSERT INTO `migrations` VALUES ('4', '2015_01_05_100010_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('5', '2015_02_23_161101_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('6', '2015_02_23_161102_create_permissions_table', '1');
INSERT INTO `migrations` VALUES ('7', '2015_08_05_100011_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('8', '2015_08_05_100012_create_menus_table', '1');
INSERT INTO `migrations` VALUES ('9', '2016_01_01_000017_create_revisions_table', '1');
INSERT INTO `migrations` VALUES ('10', '2016_07_07_100001_create_tasks_table', '1');
INSERT INTO `migrations` VALUES ('11', '2016_07_08_100001_create_messages_table', '1');
INSERT INTO `migrations` VALUES ('12', '2016_07_14_100001_create_blocks_table', '1');
INSERT INTO `migrations` VALUES ('13', '2016_07_15_100001_create_contacts_table', '1');
INSERT INTO `migrations` VALUES ('14', '2016_07_18_100001_create_calendars_table', '1');
INSERT INTO `migrations` VALUES ('15', '2016_10_13_100001_create_news_table', '1');
INSERT INTO `migrations` VALUES ('16', '2016_10_14_100001_create_teams_table', '1');
INSERT INTO `migrations` VALUES ('17', '2016_11_29_100001_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('20', '2017_01_16_100001_create_products_table', '2');
INSERT INTO `migrations` VALUES ('21', '2016_12_30_100001_create_blogs_table', '3');
INSERT INTO `migrations` VALUES ('22', '2016_12_30_100001_create_categories_table', '3');
INSERT INTO `migrations` VALUES ('23', '2017_01_11_100001_create_categories_table', '4');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('draft','complete','verify','approve','publish','unpublish','archive') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', ' UT PERSPICIATIS UNDE OMNIS ISTE', '<p>Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. </p><p>Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper. Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. Ut eu diam at pede suscipit sodales. I am not a great cook, </p><p>I am not a great artist, but I love art, and I love food, so I am the perfect traveller. - Michael Palin</p>', '[{\"folder\":\"2016\\/07\\/21\\/105031622\\/images\",\"file\":\"blog3.jpg\",\"caption\":\"Blog3\",\"time\":\"2016-07-21 10:50:38\"},{\"folder\":\"2016\\/07\\/21\\/105031622\\/images\",\"file\":\"blog2.jpg\",\"caption\":\"Blog2\",\"time\":\"2016-07-21 10:50:41\"},{\"folder\":\"2016\\/07\\/21\\/105031622\\/images\",\"file\":\"blog1.jpg\",\"caption\":\"Blog1\",\"time\":\"2016-07-21 10:50:43\"}]', 'sed-ut-perspiciatis-unde-omnis-iste', 'publish', '1', 'App\\User', '2016/07/21/105031622', null, '2016-07-21 16:21:14', '2016-07-21 10:50:44');
INSERT INTO `news` VALUES ('2', 'SED UT PERSPICIATIS UNDE OMNIS ISTE', '<p>Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. </p><p>Morbi in dui quis est pulvinar ullamcorper.Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. Ut eu diam at pede suscipit sodales.</p><p>I am not a great cook, I am not a great artist, but I love art, and I love food, so I am the perfect traveller.- Michael Palin</p>', '[{\"folder\":\"2016\\/07\\/21\\/105018827\\/images\",\"file\":\"blog5.jpg\",\"caption\":\"Blog5\",\"time\":\"2016-07-21 10:50:24\"},{\"folder\":\"2016\\/07\\/21\\/105018827\\/images\",\"file\":\"blog4.jpg\",\"caption\":\"Blog4\",\"time\":\"2016-07-21 10:50:26\"},{\"folder\":\"2016\\/07\\/21\\/105018827\\/images\",\"file\":\"blog3.jpg\",\"caption\":\"Blog3\",\"time\":\"2016-07-21 10:50:28\"}]', 'sed-ut-perspiciatis-unde-omnis-iste-2', 'publish', '1', 'App\\User', '2016/07/21/105018827', null, '2016-07-21 16:21:17', '2016-07-21 10:50:29');
INSERT INTO `news` VALUES ('3', ' PERSPICIATIS UNDE OMNIS ISTE', '<p>Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. \'</p><p>Morbi in dui quis est pulvinar ullamcorper. &nbsp;Nulla facilisi. Integer lacinia sollicitudin massa. Cras metus. Sed aliquet risus a tortor. Integer id quam. Morbi mi. Quisque nisl felis, venenatis tristique, dignissim in, ultrices sit amet, augue. Proin sodales libero eget ante. Nulla quam. Aenean laoreet. Vestibulum nisi lectus, commodo ac, facilisis ac, ultricies eu, pede. Ut orci risus, accumsan porttitor, cursus quis, aliquet eget, justo. Sed pretium blandit orci. Ut eu diam at pede suscipit sodales. </p><p>&nbsp;I am not a great cook, I am not a great artist, but I love art, and I love food, so I am the perfect traveller. &nbsp;- Michael Palin</p>', '[{\"folder\":\"2016\\/07\\/21\\/104859517\\/images\",\"file\":\"bg-1.jpg\",\"caption\":\"Bg 1\",\"time\":\"2016-07-21 10:49:38\"},{\"folder\":\"2016\\/07\\/21\\/104945843\\/images\",\"file\":\"blog1.jpg\",\"caption\":\"Blog1\",\"time\":\"2016-07-21 10:50:06\"},{\"folder\":\"2016\\/07\\/21\\/104945843\\/images\",\"file\":\"blog2.jpg\",\"caption\":\"Blog2\",\"time\":\"2016-07-21 10:50:09\"},{\"folder\":\"2016\\/07\\/21\\/104945843\\/images\",\"file\":\"blog3.jpg\",\"caption\":\"Blog3\",\"time\":\"2016-07-21 10:50:13\"}]', 'perspiciatis-unde-omnis-iste', 'publish', '1', 'App\\User', '2016/07/21/104945843', null, '2016-07-21 16:21:20', '2016-07-21 10:50:15');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `heading` text COLLATE utf8_unicode_ci,
  `sub_heading` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `banner` mediumtext COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `compiler` enum('php','blade','none') COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','hidden','suspended','spam') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Home', 'Home', 'Home', null, null, 'Home Page', null, null, null, null, null, null, 'page', '0', 'home', 'draft', null, null, null, null, null);
INSERT INTO `pages` VALUES ('2', 'About Us', 'About Us', 'About Us', null, null, '<div class=\"col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2\">\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius praesentium recusandae illo eaque architecto error, repellendus iusto reprehenderit, doloribus, minus sunt. Numquam at quae voluptatum in officia voluptas voluptatibus, minus! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum molestiae debitis nobis, quod sapiente qui voluptatum, placeat magni repudiandae accusantium fugit quas labore non rerum possimus, corrupti enim modi! Et.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum molestiae debitis nobis, quod sapiente qui voluptatum, placeat magni repudiandae accusantium fugit quas labore non rerum possimus, corrupti enim modi! Et.</p>\n<p><span style=\"font-size: 24px;\">Stay in Touch</span></p>\n<p>Lorem ipsum dolor sit amet, has facer euismod hendrerit cu. Ei zril aliquid iudicabit has, et duo tollit oportere. Ex eos admodum accumsan prodesset, vel ex accusam accusamus. Zril integre voluptua vis ea, labore conclusionemque te vim. Ei suas vivendum neglegentur vel, ipsum aliquam has ne.</p>\n<p>Nulla facilisi. Phasellus auctor tortor in libero fermentum, at fringilla lectus porta. In hac habitasse platea dictumst. Aenean tristique ante a enim aliquam eleifend.</p>\n<p><span style=\"font-size: 24px;\">Mission&nbsp;</span></p>\n<p>Lorem ipsum dolor sit amet, has facer euismod hendrerit cu. Ei zril aliquid iudicabit has, et duo tollit oportere. Ex eos admodum accumsan prodesset, vel ex accusam accusamus. Zril integre voluptua vis ea, labore conclusionemque te vim. Ei suas vivendum neglegentur vel, ipsum aliquam has ne.</p>\n<p><span style=\"font-size: 24px;\">Vision</span></p>\n<p>Nulla facilisi. Phasellus auctor tortor in libero fermentum, at fringilla lectus porta. In hac habitasse platea dictumst. Aenean tristique ante a enim aliquam eleifend.</p>\n</div>', null, null, null, null, null, null, 'page', '0', 'about-us', 'draft', null, null, null, null, null);
INSERT INTO `pages` VALUES ('3', 'Contact Us', 'Contact Us', 'Contact Us', null, null, '<p><br></p>', null, null, null, null, null, null, 'page', '0', 'contact', 'draft', null, null, null, null, null);
INSERT INTO `pages` VALUES ('4', 'Page Not found', 'Page Not found', 'Page Not found', null, null, '<p><br></p>', null, null, null, null, null, null, 'page', '0', '404', 'draft', null, null, null, null, null);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'menu.menu.view', 'View Menu', null, null);
INSERT INTO `permissions` VALUES ('2', 'menu.menu.create', 'Create Menu', null, null);
INSERT INTO `permissions` VALUES ('3', 'menu.menu.edit', 'Update Menu', null, null);
INSERT INTO `permissions` VALUES ('4', 'menu.menu.delete', 'Delete Menu', null, null);
INSERT INTO `permissions` VALUES ('5', 'user.user.view', 'View user', null, null);
INSERT INTO `permissions` VALUES ('6', 'user.user.create', 'Create user', null, null);
INSERT INTO `permissions` VALUES ('7', 'user.user.edit', 'Update user', null, null);
INSERT INTO `permissions` VALUES ('8', 'user.user.delete', 'Delete user', null, null);
INSERT INTO `permissions` VALUES ('9', 'calendar.calendar.view', 'View Calendar', null, null);
INSERT INTO `permissions` VALUES ('10', 'calendar.calendar.create', 'Create Calendar', null, null);
INSERT INTO `permissions` VALUES ('11', 'calendar.calendar.edit', 'Update Calendar', null, null);
INSERT INTO `permissions` VALUES ('12', 'calendar.calendar.delete', 'Delete Calendar', null, null);
INSERT INTO `permissions` VALUES ('13', 'contact.contact.view', 'View Contact', null, null);
INSERT INTO `permissions` VALUES ('14', 'contact.contact.create', 'Create Contact', null, null);
INSERT INTO `permissions` VALUES ('15', 'contact.contact.edit', 'Update Contact', null, null);
INSERT INTO `permissions` VALUES ('16', 'contact.contact.delete', 'Delete Contact', null, null);
INSERT INTO `permissions` VALUES ('17', 'message.message.view', 'View Message', null, null);
INSERT INTO `permissions` VALUES ('18', 'message.message.create', 'Create Message', null, null);
INSERT INTO `permissions` VALUES ('19', 'message.message.edit', 'Update Message', null, null);
INSERT INTO `permissions` VALUES ('20', 'message.message.delete', 'Delete Message', null, null);
INSERT INTO `permissions` VALUES ('21', 'page.page.view', 'View Page', null, null);
INSERT INTO `permissions` VALUES ('22', 'page.page.create', 'Create Page', null, null);
INSERT INTO `permissions` VALUES ('23', 'page.page.edit', 'Update Page', null, null);
INSERT INTO `permissions` VALUES ('24', 'page.page.delete', 'Delete Page', null, null);
INSERT INTO `permissions` VALUES ('25', 'settings.setting.view', 'View Setting', null, null);
INSERT INTO `permissions` VALUES ('26', 'settings.setting.create', 'Create Setting', null, null);
INSERT INTO `permissions` VALUES ('27', 'settings.setting.edit', 'Update Setting', null, null);
INSERT INTO `permissions` VALUES ('28', 'settings.setting.delete', 'Delete Setting', null, null);
INSERT INTO `permissions` VALUES ('29', 'task.task.view', 'View Task', null, null);
INSERT INTO `permissions` VALUES ('30', 'task.task.create', 'Create Task', null, null);
INSERT INTO `permissions` VALUES ('31', 'task.task.edit', 'Update Task', null, null);
INSERT INTO `permissions` VALUES ('32', 'task.task.delete', 'Delete Task', null, null);
INSERT INTO `permissions` VALUES ('33', 'block.block.view', 'View Block', null, null);
INSERT INTO `permissions` VALUES ('34', 'block.block.create', 'Create Block', null, null);
INSERT INTO `permissions` VALUES ('35', 'block.block.edit', 'Update Block', null, null);
INSERT INTO `permissions` VALUES ('36', 'block.block.delete', 'Delete Block', null, null);
INSERT INTO `permissions` VALUES ('37', 'block.category.view', 'View Category', null, null);
INSERT INTO `permissions` VALUES ('38', 'block.category.create', 'Create Category', null, null);
INSERT INTO `permissions` VALUES ('39', 'block.category.edit', 'Update Category', null, null);
INSERT INTO `permissions` VALUES ('40', 'block.category.delete', 'Delete Category', null, null);
INSERT INTO `permissions` VALUES ('41', 'user.team.view', 'View Team', null, null);
INSERT INTO `permissions` VALUES ('42', 'user.team.create', 'Create Team', null, null);
INSERT INTO `permissions` VALUES ('43', 'user.team.edit', 'Update Team', null, null);
INSERT INTO `permissions` VALUES ('44', 'user.team.delete', 'Delete Team', null, null);
INSERT INTO `permissions` VALUES ('45', 'news.news.view', 'View News', null, null);
INSERT INTO `permissions` VALUES ('46', 'news.news.create', 'Create News', null, null);
INSERT INTO `permissions` VALUES ('47', 'news.news.edit', 'Update News', null, null);
INSERT INTO `permissions` VALUES ('48', 'news.news.delete', 'Delete News', null, null);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` text COLLATE utf8_unicode_ci,
  `download` text COLLATE utf8_unicode_ci,
  `related_products` longtext COLLATE utf8_unicode_ci,
  `name` longtext COLLATE utf8_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `return_policy` longtext COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `tags` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `sku` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ean` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jan` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpn` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_class` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `premium` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `substract_stock` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT NULL,
  `outofstock_status` enum('in stock','out of stock','pre-order') COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `dimensions` text COLLATE utf8_unicode_ci,
  `weight_class` enum('kilogram','gram','pound','ounce') COLLATE utf8_unicode_ci DEFAULT NULL,
  `length_class` enum('centimeter','millimeter','inch') COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_available` datetime DEFAULT NULL,
  `manufacturer` text COLLATE utf8_unicode_ci,
  `attributes` text COLLATE utf8_unicode_ci,
  `discounts` text COLLATE utf8_unicode_ci,
  `special` text COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('draft','complete','verify','approve','publish','unpublish','archive') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'draft', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for revisions
-- ----------------------------
DROP TABLE IF EXISTS `revisions`;
CREATE TABLE `revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `revision_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revision_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revision_id_revision_type_index` (`revision_id`,`revision_type`),
  KEY `revisions_user_id_index` (`user_id`),
  KEY `revisions_field_index` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of revisions
-- ----------------------------

-- ----------------------------
-- Table structure for roleables
-- ----------------------------
DROP TABLE IF EXISTS `roleables`;
CREATE TABLE `roleables` (
  `role_id` int(10) unsigned NOT NULL,
  `roleable_id` int(10) unsigned NOT NULL,
  `roleable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `roleables_role_id_index` (`role_id`),
  KEY `roleables_roleable_id_index` (`roleable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roleables
-- ----------------------------
INSERT INTO `roleables` VALUES ('1', '1', 'App\\User');
INSERT INTO `roleables` VALUES ('2', '1', 'App\\User');
INSERT INTO `roleables` VALUES ('2', '2', 'App\\User');
INSERT INTO `roleables` VALUES ('3', '3', 'App\\User');
INSERT INTO `roleables` VALUES ('1', '1', 'App\\Client');
INSERT INTO `roleables` VALUES ('2', '1', 'App\\Client');
INSERT INTO `roleables` VALUES ('2', '2', 'App\\Client');
INSERT INTO `roleables` VALUES ('3', '3', 'App\\Client');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'superuser', 'superuser', null, null, null);
INSERT INTO `roles` VALUES ('2', 'admin', 'admin', null, null, null);
INSERT INTO `roles` VALUES ('3', 'user', 'user', null, null, null);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('System','Default','User') COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('draft','complete','verify','approve','publish','unpublish','archive') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `task` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_required` time DEFAULT NULL,
  `time_taken` time DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tasks
-- ----------------------------
INSERT INTO `tasks` VALUES ('1', null, null, null, null, 'testing', null, null, null, 'completed', null, 'testing', null, '1', 'App\\User', null, null, '2016-07-19 11:43:26', '2016-07-19 11:43:58');
INSERT INTO `tasks` VALUES ('2', null, null, null, null, 'developing', null, null, null, 'to_do', null, 'developing', null, '1', 'App\\User', null, null, '2016-07-19 11:43:38', '2016-07-19 11:43:38');
INSERT INTO `tasks` VALUES ('3', null, null, null, null, 'designing', null, null, null, 'in_progress', null, 'designing', null, '1', 'App\\User', null, null, '2016-07-19 11:43:53', '2016-07-19 11:43:56');

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('draft','complete','verify','approve','publish','unpublish','archive') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES ('1', 'Default', null, null, 'default', 'draft', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reporting_to` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` enum('','male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci,
  `status` enum('New','Active','Suspended') COLLATE utf8_unicode_ci DEFAULT 'New',
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_folder` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '0', 'Super User', 'superuser@superuser.com', '$2y$10$bKwW6PzSa1GDOeUTqtTaLOVMutZ12ObeslBfEXPx2pJAL/2B8aB06', 'nVMZnsoU4DgbeIw7c6u0ZZYVgifoq3K2KLXRVPKm8zIl8HE36UFNUTAmxf7M', null, 'male', '2014-05-15', 'Super User', null, null, null, null, null, null, null, null, null, 'http://litepie.org', null, 'Active', null, null, null, null, '2015-09-15 00:00:00', null);
INSERT INTO `users` VALUES ('2', '0', 'Admin', 'admin@admin.com', '$2y$10$T9DqgU3OlGOHHBKRL/tS4.CXyx6VZ.HhlT.otvMWk55zQ3EZB8Sze', 'JgBGUsQlFOzGpMyfN8TxrPH3CGp9595jmzYtHn5Qo6XakRgv85dDN3Hze8Y2', null, 'male', '2020-05-15', 'Admin', null, null, null, null, null, null, null, null, null, 'http://litepie.org', null, 'Active', null, null, null, null, '2015-09-15 00:00:00', null);
INSERT INTO `users` VALUES ('3', '0', 'User', 'user@user.com', '$2y$10$WgdW0SZkx3wlT52nroRGquai2P3l0MSU3vozQLrWgfFpJVxS4R6ky', 'pZXGEgNLy61PNrAm47WNscAMPjsWAJG2rop8Y5sornZva5o391FhgG5gTJd4', null, 'male', '2014-05-15', 'User', null, null, null, null, null, null, null, null, null, 'http://litepie.org', null, 'Active', null, null, null, null, '2015-09-15 00:00:00', null);
