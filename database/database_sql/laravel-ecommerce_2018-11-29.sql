# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: laravel-ecommerce
# Generation Time: 2018-11-29 07:00:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,NULL,1,'Category 1','category-1','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(2,NULL,1,'Category 2','category-2','2018-11-29 06:14:59','2018-11-29 06:14:59');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name_unique` (`name`),
  UNIQUE KEY `category_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Laptops','laptops','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(2,'Desktops','desktops','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(3,'Mobile Phones','mobile-phones','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(4,'Tablets','tablets','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(5,'TVs','tvs','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(6,'Digital Cameras','digital-cameras','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(7,'Appliances','appliances','2018-11-29 06:14:59','2018-11-29 06:14:59');

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table category_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category_product`;

CREATE TABLE `category_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  KEY `category_product_category_id_foreign` (`category_id`),
  CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`)
VALUES
	(1,1,1,NULL,NULL),
	(2,2,1,NULL,NULL),
	(3,3,1,NULL,NULL),
	(4,4,1,NULL,NULL),
	(5,5,1,NULL,NULL),
	(6,6,1,NULL,NULL),
	(7,7,1,NULL,NULL),
	(8,8,1,NULL,NULL),
	(9,9,1,NULL,NULL),
	(10,10,1,NULL,NULL),
	(11,11,1,NULL,NULL),
	(12,12,1,NULL,NULL),
	(13,13,1,NULL,NULL),
	(14,14,1,NULL,NULL),
	(15,15,1,NULL,NULL),
	(16,16,1,NULL,NULL),
	(17,17,1,NULL,NULL),
	(18,18,1,NULL,NULL),
	(19,19,1,NULL,NULL),
	(20,20,1,NULL,NULL),
	(21,21,1,NULL,NULL),
	(22,22,1,NULL,NULL),
	(23,23,1,NULL,NULL),
	(24,24,1,NULL,NULL),
	(25,25,1,NULL,NULL),
	(26,26,1,NULL,NULL),
	(27,27,1,NULL,NULL),
	(28,28,1,NULL,NULL),
	(29,29,1,NULL,NULL),
	(30,30,1,NULL,NULL),
	(31,1,2,NULL,NULL),
	(32,31,2,NULL,NULL),
	(33,32,2,NULL,NULL),
	(34,33,2,NULL,NULL),
	(35,34,2,NULL,NULL),
	(36,35,2,NULL,NULL),
	(37,36,2,NULL,NULL),
	(38,37,2,NULL,NULL),
	(39,38,2,NULL,NULL),
	(40,39,2,NULL,NULL),
	(41,40,3,NULL,NULL),
	(42,41,3,NULL,NULL),
	(43,42,3,NULL,NULL),
	(44,43,3,NULL,NULL),
	(45,44,3,NULL,NULL),
	(46,45,3,NULL,NULL),
	(47,46,3,NULL,NULL),
	(48,47,3,NULL,NULL),
	(49,48,3,NULL,NULL),
	(50,49,4,NULL,NULL),
	(51,50,4,NULL,NULL),
	(52,51,4,NULL,NULL),
	(53,52,4,NULL,NULL),
	(54,53,4,NULL,NULL),
	(55,54,4,NULL,NULL),
	(56,55,4,NULL,NULL),
	(57,56,4,NULL,NULL),
	(58,57,4,NULL,NULL),
	(59,58,5,NULL,NULL),
	(60,59,5,NULL,NULL),
	(61,60,5,NULL,NULL),
	(62,61,5,NULL,NULL),
	(63,62,5,NULL,NULL),
	(64,63,5,NULL,NULL),
	(65,64,5,NULL,NULL),
	(66,65,5,NULL,NULL),
	(67,66,5,NULL,NULL),
	(68,67,6,NULL,NULL),
	(69,68,6,NULL,NULL),
	(70,69,6,NULL,NULL),
	(71,70,6,NULL,NULL),
	(72,71,6,NULL,NULL),
	(73,72,6,NULL,NULL),
	(74,73,6,NULL,NULL),
	(75,74,6,NULL,NULL),
	(77,76,7,NULL,NULL),
	(78,77,7,NULL,NULL),
	(79,78,7,NULL,NULL),
	(80,79,7,NULL,NULL),
	(81,80,7,NULL,NULL),
	(82,81,7,NULL,NULL),
	(83,82,7,NULL,NULL),
	(84,83,7,NULL,NULL),
	(85,84,7,NULL,NULL),
	(86,75,6,'2018-11-29 06:49:00','2018-11-29 06:49:00');

/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table coupons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'\"\"',1),
	(2,1,'author_id','text','Author',1,0,1,1,0,1,'\"\"',2),
	(3,1,'category_id','text','Category',1,0,1,1,1,0,'\"\"',3),
	(4,1,'title','text','Title',1,1,1,1,1,1,'\"\"',4),
	(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'\"\"',5),
	(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'\"\"',6),
	(7,1,'image','image','Post Image',0,1,1,1,1,1,'\"{\\\"resize\\\":{\\\"width\\\":\\\"1000\\\",\\\"height\\\":\\\"null\\\"},\\\"quality\\\":\\\"70%\\\",\\\"upsize\\\":true,\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"',7),
	(8,1,'slug','text','slug',1,0,1,1,1,1,'\"{\\\"slugify\\\":{\\\"origin\\\":\\\"title\\\",\\\"forceUpdate\\\":true}}\"',8),
	(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'\"\"',9),
	(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'\"\"',10),
	(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'\"{\\\"default\\\":\\\"DRAFT\\\",\\\"options\\\":{\\\"PUBLISHED\\\":\\\"published\\\",\\\"DRAFT\\\":\\\"draft\\\",\\\"PENDING\\\":\\\"pending\\\"}}\"',11),
	(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'\"\"',12),
	(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'\"\"',13),
	(14,2,'id','number','id',1,0,0,0,0,0,'\"\"',1),
	(15,2,'author_id','text','author_id',1,0,0,0,0,0,'\"\"',2),
	(16,2,'title','text','title',1,1,1,1,1,1,'\"\"',3),
	(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'\"\"',4),
	(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'\"\"',5),
	(19,2,'slug','text','slug',1,0,1,1,1,1,'\"{\\\"slugify\\\":{\\\"origin\\\":\\\"title\\\"}}\"',6),
	(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'\"\"',7),
	(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'\"\"',8),
	(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'\"{\\\"default\\\":\\\"INACTIVE\\\",\\\"options\\\":{\\\"INACTIVE\\\":\\\"INACTIVE\\\",\\\"ACTIVE\\\":\\\"ACTIVE\\\"}}\"',9),
	(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'\"\"',10),
	(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'\"\"',11),
	(25,2,'image','image','image',0,1,1,1,1,1,'\"\"',12),
	(26,3,'id','number','id',1,0,0,0,0,0,'\"\"',1),
	(27,3,'name','text','name',1,1,1,1,1,1,'\"\"',2),
	(28,3,'email','text','email',1,1,1,1,1,1,'\"\"',3),
	(29,3,'password','password','password',0,0,0,1,1,0,'\"\"',4),
	(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'\"{\\\"model\\\":\\\"TCG\\\\\\\\Voyager\\\\\\\\Models\\\\\\\\Role\\\",\\\"table\\\":\\\"roles\\\",\\\"type\\\":\\\"belongsTo\\\",\\\"column\\\":\\\"role_id\\\",\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"name\\\",\\\"pivot_table\\\":\\\"roles\\\",\\\"pivot\\\":\\\"0\\\"}\"',10),
	(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'\"\"',5),
	(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'\"\"',6),
	(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'\"\"',7),
	(34,3,'avatar','image','avatar',0,1,1,1,1,1,'\"\"',8),
	(35,5,'id','number','id',1,0,0,0,0,0,'\"\"',1),
	(36,5,'name','text','name',1,1,1,1,1,1,'\"\"',2),
	(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'\"\"',3),
	(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'\"\"',4),
	(39,4,'id','number','id',1,0,0,0,0,0,'\"\"',1),
	(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'\"{\\\"default\\\":\\\"\\\",\\\"null\\\":\\\"\\\",\\\"options\\\":{\\\"\\\":\\\"-- None --\\\"},\\\"relationship\\\":{\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"name\\\"}}\"',2),
	(41,4,'order','text','order',1,1,1,1,1,1,'\"{\\\"default\\\":1}\"',3),
	(42,4,'name','text','name',1,1,1,1,1,1,'\"\"',4),
	(43,4,'slug','text','slug',1,1,1,1,1,1,'\"{\\\"slugify\\\":{\\\"origin\\\":\\\"name\\\"}}\"',5),
	(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'\"\"',6),
	(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'\"\"',7),
	(46,6,'id','number','id',1,0,0,0,0,0,'\"\"',1),
	(47,6,'name','text','Name',1,1,1,1,1,1,'\"\"',2),
	(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'\"\"',3),
	(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'\"\"',4),
	(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'\"\"',5),
	(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'\"\"',14),
	(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'\"\"',15),
	(53,3,'role_id','text','role_id',1,1,1,1,1,1,'\"\"',9),
	(54,3,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'\"{\\\"model\\\":\\\"TCG\\\\\\\\Voyager\\\\\\\\Models\\\\\\\\Role\\\",\\\"table\\\":\\\"roles\\\",\\\"type\\\":\\\"belongsToMany\\\",\\\"column\\\":\\\"id\\\",\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"display_name\\\",\\\"pivot_table\\\":\\\"user_roles\\\",\\\"pivot\\\":\\\"1\\\",\\\"taggable\\\":\\\"0\\\"}\"',11),
	(55,7,'id','hidden','Id',1,1,1,1,1,0,'\"\"',1),
	(56,7,'name','text','name',1,1,1,1,1,1,'\"{\\\"validation\\\":{\\\"rule\\\":\\\"max:100\\\"}}\"',2),
	(57,7,'slug','text','slug',1,1,1,1,1,1,'\"\"',3),
	(58,7,'details','text','Details',1,1,1,1,1,1,'\"\"',4),
	(59,7,'price','number','price',1,1,1,1,1,1,'\"{\\\"validation\\\":{\\\"rule\\\":\\\"required|regex:\\/^\\\\\\\\d*(\\\\\\\\.\\\\\\\\d{1,2})?$\\/\\\"}}\"',5),
	(60,7,'description','rich_text_box','Description',1,1,1,1,1,1,'\"\"',6),
	(61,7,'featured','checkbox','Featured',1,1,1,1,1,1,'\"{\\\"on\\\":\\\"Yes\\\",\\\"off\\\":\\\"No\\\"}\"',7),
	(62,7,'image','image','Image',1,1,1,1,1,1,'\"{\\\"quality\\\":\\\"70%\\\",\\\"thumbnails\\\":[{\\\"name\\\":\\\"medium\\\",\\\"scale\\\":\\\"50%\\\"},{\\\"name\\\":\\\"small\\\",\\\"scale\\\":\\\"25%\\\"},{\\\"name\\\":\\\"cropped\\\",\\\"crop\\\":{\\\"width\\\":\\\"300\\\",\\\"height\\\":\\\"250\\\"}}]}\"',8),
	(63,7,'images','multiple_images','Images',1,1,1,1,1,1,'\"\"',9),
	(64,7,'created_at','timestamp','Created At',1,1,1,1,1,1,'\"\"',10),
	(65,7,'updated_at','timestamp','Updated At',1,1,1,1,1,1,'\"\"',11),
	(66,7,'quantity','number','Quantity',1,1,1,1,1,1,'\"\"',8),
	(67,8,'id','hidden','Id',1,1,1,0,0,0,'\"\"',1),
	(68,8,'code','text','code',1,1,1,1,1,1,'\"\"',2),
	(69,8,'type','select_dropdown','Type',1,1,1,1,1,1,'\"{\\\"default\\\":\\\"fixed\\\",\\\"options\\\":{\\\"fixed\\\":\\\"Fixed Value\\\",\\\"percent\\\":\\\"Percent Off\\\"}}\"',3),
	(70,8,'value','number','Value',0,1,1,1,1,1,'\"{\\\"null\\\":\\\"\\\"}\"',4),
	(71,8,'percent_off','number','Percent Off',0,1,1,1,1,1,'\"{\\\"null\\\":\\\"\\\"}\"',5),
	(72,8,'created_at','timestamp','Created At',0,0,1,0,0,0,'\"\"',6),
	(73,8,'updated_at','timestamp','Updated At',0,0,1,0,0,0,'\"\"',7),
	(74,9,'id','hidden','Id',1,1,1,0,0,0,'\"\"',1),
	(75,9,'name','text','Name',1,1,1,1,1,1,'\"\"',2),
	(76,9,'slug','text','Slug',1,1,1,1,1,1,'\"\"',3),
	(77,9,'created_at','timestamp','Created At',0,0,0,0,0,0,'\"\"',4),
	(78,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'\"\"',5),
	(79,10,'id','hidden','Id',1,0,0,0,0,0,'\"\"',1),
	(80,10,'product_id','number','Product Id',1,1,1,1,1,1,'\"\"',2),
	(81,10,'category_id','number','Category Id',1,1,1,1,1,1,'\"\"',3),
	(82,10,'created_at','timestamp','Created At',0,0,0,0,0,0,'\"\"',4),
	(83,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'\"\"',5),
	(84,11,'id','hidden','Id',1,1,1,0,0,0,'\"\"',1),
	(85,11,'user_id','number','User Id',1,1,1,0,0,0,'\"\"',2),
	(86,11,'billing_email','text','Billing Email',1,1,1,1,1,0,'\"\"',3),
	(87,11,'billing_name','text','Billing Name',1,1,1,1,1,0,'\"\"',4),
	(88,11,'billing_address','text','Billing Address',1,1,1,1,1,0,'\"\"',5),
	(89,11,'billing_city','text','Billing City',1,1,1,1,1,0,'\"\"',6),
	(90,11,'billing_province','text','Billing Province',1,0,1,1,1,0,'\"\"',7),
	(91,11,'billing_postalcode','text','Billing Postalcode',1,0,1,1,1,0,'\"\"',8),
	(92,11,'billing_phone','text','Billing Phone',1,0,1,1,1,0,'\"\"',9),
	(93,11,'billing_name_on_card','text','Billing Name On Card',1,1,1,1,1,0,'\"\"',10),
	(94,11,'billing_discount','number','Discount',1,1,1,0,0,0,'\"\"',11),
	(95,11,'billing_discount_code','text','Discount Code',0,0,1,0,0,0,'\"\"',12),
	(96,11,'billing_subtotal','number','Subtotal',1,1,1,0,0,0,'\"\"',13),
	(97,11,'billing_tax','number','Tax',1,1,1,0,0,0,'\"\"',14),
	(98,11,'billing_total','number','Total',1,1,1,0,0,0,'\"\"',15),
	(99,11,'payment_gateway','text','Payment Gateway',1,0,1,0,0,0,'\"\"',16),
	(100,11,'shipped','checkbox','Shipped',1,1,1,1,0,0,'\"{\\\"on\\\":\\\"Yes\\\",\\\"off\\\":\\\"No\\\"}\"',17),
	(101,11,'error','text','Error',0,1,1,0,0,0,'\"\"',18),
	(102,11,'created_at','timestamp','Created At',0,0,0,0,0,0,'\"\"',19),
	(103,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'\"\"',20);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','\\App\\Http\\Controllers\\Voyager\\UsersController','',1,0,NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(7,'products','products','Product','Products','voyager-bag','App\\Product',NULL,'\\App\\Http\\Controllers\\Voyager\\ProductsController','',1,1,NULL,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(8,'coupons','coupons','Coupon','Coupons','voyager-dollar','App\\Coupon',NULL,'','',1,0,NULL,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(9,'category','category','Category','Categories','voyager-tag','App\\Category',NULL,'','',1,0,NULL,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(10,'category-product','category-product','Category Product','Category Products','voyager-categories','App\\CategoryProduct',NULL,'','',1,0,NULL,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(11,'orders','orders','Order','Orders','voyager-documentation','App\\Order',NULL,'\\App\\Http\\Controllers\\Voyager\\OrdersController','',1,0,NULL,'2018-11-29 06:15:00','2018-11-29 06:15:00');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-11-29 06:14:59','2018-11-29 06:14:59','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,9,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.media.index',NULL),
	(3,1,'Posts','','_self','voyager-news',NULL,NULL,10,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.posts.index',NULL),
	(4,1,'Users','','_self','voyager-person',NULL,NULL,8,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.users.index',NULL),
	(5,1,'Categories','','_self','voyager-categories',NULL,NULL,14,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.categories.index',NULL),
	(6,1,'Pages','','_self','voyager-file-text',NULL,NULL,11,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.pages.index',NULL),
	(7,1,'Roles','','_self','voyager-lock',NULL,NULL,7,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.roles.index',NULL),
	(8,1,'Tools','','_self','voyager-tools',NULL,NULL,12,'2018-11-29 06:14:59','2018-11-29 06:15:00',NULL,NULL),
	(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.menus.index',NULL),
	(10,1,'Database','','_self','voyager-data',NULL,8,2,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.database.index',NULL),
	(11,1,'Compass','','_self','voyager-compass',NULL,8,3,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.compass.index',NULL),
	(12,1,'Settings','','_self','voyager-settings',NULL,NULL,13,'2018-11-29 06:14:59','2018-11-29 06:15:00','voyager.settings.index',NULL),
	(13,1,'Orders','/admin/orders','_self','voyager-documentation',NULL,NULL,2,'2018-11-29 06:15:00','2018-11-29 06:15:00',NULL,NULL),
	(14,1,'Products','/admin/products','_self','voyager-bag',NULL,NULL,3,'2018-11-29 06:15:00','2018-11-29 06:15:00',NULL,NULL),
	(15,1,'Categories','/admin/category','_self','voyager-tag',NULL,NULL,4,'2018-11-29 06:15:00','2018-11-29 06:15:00',NULL,NULL),
	(16,1,'Coupons','/admin/coupons','_self','voyager-dollar',NULL,NULL,5,'2018-11-29 06:15:00','2018-11-29 06:15:00',NULL,NULL),
	(17,1,'Category Products','/admin/category-product','_self','voyager-categories',NULL,NULL,6,'2018-11-29 06:15:00','2018-11-29 06:15:00',NULL,NULL),
	(18,2,'Shop','','_self',NULL,NULL,NULL,1,'2018-11-29 06:15:00','2018-11-29 06:15:00','shop.index',NULL),
	(24,3,'fa-facebook','http://facebook.com/irekasoft','_self',NULL,NULL,NULL,2,'2018-11-29 06:15:00','2018-11-29 06:56:30',NULL,''),
	(25,3,'fa-twitter','http://twitter.com/irekasoft','_self',NULL,NULL,NULL,2,'2018-11-29 06:15:00','2018-11-29 06:56:13',NULL,'');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(2,'main','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(3,'footer','2018-11-29 06:15:00','2018-11-29 06:15:00');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_01_01_000000_create_pages_table',1),
	(6,'2016_01_01_000000_create_posts_table',1),
	(7,'2016_02_15_204651_create_categories_table',1),
	(8,'2016_05_19_173453_create_menu_table',1),
	(9,'2016_10_21_190000_create_roles_table',1),
	(10,'2016_10_21_190000_create_settings_table',1),
	(11,'2016_11_30_135954_create_permission_table',1),
	(12,'2016_11_30_141208_create_permission_role_table',1),
	(13,'2016_12_26_201236_data_types__add__server_side',1),
	(14,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(15,'2017_01_14_005015_create_translations_table',1),
	(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),
	(17,'2017_01_15_000000_create_permission_groups_table',1),
	(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(19,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(20,'2017_04_11_000000_alter_post_nullable_fields_table',1),
	(21,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(22,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(23,'2017_08_05_000000_add_group_to_settings_table',1),
	(24,'2017_11_26_013050_add_user_role_relationship',1),
	(25,'2017_11_26_015000_create_user_roles_table',1),
	(26,'2017_12_11_054653_create_products_table',1),
	(27,'2018_01_11_060124_create_category_table',1),
	(28,'2018_01_11_060548_create_category_product_table',1),
	(29,'2018_01_14_215535_create_coupons_table',1),
	(30,'2018_02_08_021546_add_image_to_products_table',1),
	(31,'2018_02_08_032544_add_images_to_products_table',1),
	(32,'2018_02_25_005243_create_orders_table',1),
	(33,'2018_02_25_010522_create_order_product_table',1),
	(34,'2018_03_11_000000_add_user_settings',1),
	(35,'2018_03_14_000000_add_details_to_data_types_table',1),
	(36,'2018_03_16_000000_make_settings_value_nullable',1),
	(37,'2018_04_23_011947_add_user_role_relationship_fix',1),
	(38,'2018_04_23_012009_create_user_roles_table_fix',1),
	(39,'2018_06_29_032914_add_quantity_to_products_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_product`;

CREATE TABLE `order_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_product_order_id_foreign` (`order_id`),
  KEY `order_product_product_id_foreign` (`product_id`),
  CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`)
VALUES
	(1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-11-29 06:15:00','2018-11-29 06:15:00');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_groups`;

CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(1,3),
	(2,1),
	(2,3),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(6,3),
	(7,1),
	(7,3),
	(8,1),
	(8,3),
	(9,1),
	(9,3),
	(10,1),
	(11,1),
	(11,3),
	(12,1),
	(12,3),
	(13,1),
	(13,3),
	(14,1),
	(14,3),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(22,3),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(26,3),
	(27,1),
	(27,3),
	(28,1),
	(28,3),
	(29,1),
	(29,3),
	(30,1),
	(31,1),
	(31,3),
	(32,1),
	(32,3),
	(33,1),
	(33,3),
	(34,1),
	(34,3),
	(35,1),
	(36,1),
	(36,3),
	(37,1),
	(37,3),
	(38,1),
	(38,3),
	(39,1),
	(39,3),
	(40,1),
	(41,1),
	(41,3),
	(42,1),
	(42,3),
	(43,1),
	(43,3),
	(44,1),
	(44,3),
	(45,1),
	(46,1),
	(46,3),
	(47,1),
	(47,3),
	(48,1),
	(48,3),
	(49,1),
	(49,3),
	(50,1),
	(51,1),
	(51,3),
	(52,1),
	(52,3),
	(53,1),
	(53,3),
	(54,1),
	(54,3),
	(55,1),
	(56,1),
	(56,3),
	(57,1),
	(57,3),
	(58,1),
	(58,3),
	(59,1),
	(59,3),
	(60,1),
	(61,1),
	(61,3),
	(62,1),
	(62,3),
	(63,1),
	(63,3),
	(64,1),
	(64,3),
	(65,1),
	(65,3);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`)
VALUES
	(1,'browse_admin',NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(2,'browse_bread',NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(3,'browse_database',NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(4,'browse_media',NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(5,'browse_compass',NULL,'2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(6,'browse_menus','menus','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(7,'read_menus','menus','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(8,'edit_menus','menus','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(9,'add_menus','menus','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(10,'delete_menus','menus','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(11,'browse_pages','pages','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(12,'read_pages','pages','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(13,'edit_pages','pages','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(14,'add_pages','pages','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(15,'delete_pages','pages','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(16,'browse_roles','roles','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(17,'read_roles','roles','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(18,'edit_roles','roles','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(19,'add_roles','roles','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(20,'delete_roles','roles','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(21,'browse_users','users','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(22,'read_users','users','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(23,'edit_users','users','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(24,'add_users','users','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(25,'delete_users','users','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(26,'browse_posts','posts','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(27,'read_posts','posts','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(28,'edit_posts','posts','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(29,'add_posts','posts','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(30,'delete_posts','posts','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(31,'browse_categories','categories','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(32,'read_categories','categories','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(33,'edit_categories','categories','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(34,'add_categories','categories','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(35,'delete_categories','categories','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(36,'browse_settings','settings','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(37,'read_settings','settings','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(38,'edit_settings','settings','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(39,'add_settings','settings','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(40,'delete_settings','settings','2018-11-29 06:14:59','2018-11-29 06:14:59',NULL),
	(41,'browse_products','products','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(42,'read_products','products','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(43,'edit_products','products','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(44,'add_products','products','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(45,'delete_products','products','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(46,'browse_coupons','coupons','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(47,'read_coupons','coupons','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(48,'edit_coupons','coupons','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(49,'add_coupons','coupons','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(50,'delete_coupons','coupons','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(51,'browse_category','category','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(52,'read_category','category','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(53,'edit_category','category','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(54,'add_category','category','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(55,'delete_category','category','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(56,'browse_category-product','category-product','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(57,'read_category-product','category-product','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(58,'edit_category-product','category-product','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(59,'add_category-product','category-product','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(60,'delete_category-product','category-product','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(61,'browse_orders','orders','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(62,'read_orders','orders','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(63,'edit_orders','orders','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(64,'add_orders','orders','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL),
	(65,'delete_orders','orders','2018-11-29 06:15:00','2018-11-29 06:15:00',NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`)
VALUES
	(1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-11-29 06:15:00','2018-11-29 06:15:00');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) unsigned NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `image`, `images`, `created_at`, `updated_at`)
VALUES
	(1,'Laptop 1','laptop-1','15 inch, 1 TB SSD, 32GB RAM',226494,'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/laptop-1.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:31','2018-11-29 06:39:34'),
	(2,'Laptop 2','laptop-2','15 inch, 1 TB SSD, 32GB RAM',218569,'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-2.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:31','2018-11-29 06:39:31'),
	(3,'Laptop 3','laptop-3','14 inch, 1 TB SSD, 32GB RAM',186448,'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-3.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:31','2018-11-29 06:39:31'),
	(4,'Laptop 4','laptop-4','14 inch, 2 TB SSD, 32GB RAM',206300,'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-4.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:31','2018-11-29 06:39:31'),
	(5,'Laptop 5','laptop-5','14 inch, 1 TB SSD, 32GB RAM',228080,'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-5.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:31','2018-11-29 06:39:31'),
	(6,'Laptop 6','laptop-6','15 inch, 2 TB SSD, 32GB RAM',207784,'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-6.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:31','2018-11-29 06:39:31'),
	(7,'Laptop 7','laptop-7','15 inch, 2 TB SSD, 32GB RAM',179523,'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-7.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(8,'Laptop 8','laptop-8','15 inch, 2 TB SSD, 32GB RAM',174276,'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-8.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(9,'Laptop 9','laptop-9','14 inch, 3 TB SSD, 32GB RAM',240140,'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-9.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(10,'Laptop 10','laptop-10','15 inch, 2 TB SSD, 32GB RAM',161139,'Lorem 10 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-10.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(11,'Laptop 11','laptop-11','14 inch, 1 TB SSD, 32GB RAM',186162,'Lorem 11 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-11.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(12,'Laptop 12','laptop-12','13 inch, 3 TB SSD, 32GB RAM',186915,'Lorem 12 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/laptop-12.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:34'),
	(13,'Laptop 13','laptop-13','15 inch, 1 TB SSD, 32GB RAM',231221,'Lorem 13 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-13.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(14,'Laptop 14','laptop-14','14 inch, 2 TB SSD, 32GB RAM',241525,'Lorem 14 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-14.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(15,'Laptop 15','laptop-15','13 inch, 2 TB SSD, 32GB RAM',156904,'Lorem 15 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-15.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(16,'Laptop 16','laptop-16','13 inch, 2 TB SSD, 32GB RAM',246570,'Lorem 16 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-16.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(17,'Laptop 17','laptop-17','14 inch, 2 TB SSD, 32GB RAM',201694,'Lorem 17 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-17.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(18,'Laptop 18','laptop-18','13 inch, 2 TB SSD, 32GB RAM',155058,'Lorem 18 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-18.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(19,'Laptop 19','laptop-19','14 inch, 1 TB SSD, 32GB RAM',198549,'Lorem 19 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-19.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(20,'Laptop 20','laptop-20','13 inch, 3 TB SSD, 32GB RAM',172407,'Lorem 20 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-20.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(21,'Laptop 21','laptop-21','13 inch, 1 TB SSD, 32GB RAM',166004,'Lorem 21 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-21.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(22,'Laptop 22','laptop-22','13 inch, 1 TB SSD, 32GB RAM',222375,'Lorem 22 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/laptop-22.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:34'),
	(23,'Laptop 23','laptop-23','15 inch, 3 TB SSD, 32GB RAM',206031,'Lorem 23 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-23.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(24,'Laptop 24','laptop-24','13 inch, 1 TB SSD, 32GB RAM',182877,'Lorem 24 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-24.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(25,'Laptop 25','laptop-25','14 inch, 1 TB SSD, 32GB RAM',231193,'Lorem 25 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-25.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(26,'Laptop 26','laptop-26','14 inch, 2 TB SSD, 32GB RAM',164980,'Lorem 26 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-26.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(27,'Laptop 27','laptop-27','14 inch, 1 TB SSD, 32GB RAM',240415,'Lorem 27 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-27.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(28,'Laptop 28','laptop-28','15 inch, 3 TB SSD, 32GB RAM',170717,'Lorem 28 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-28.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(29,'Laptop 29','laptop-29','13 inch, 1 TB SSD, 32GB RAM',237391,'Lorem 29 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-29.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(30,'Laptop 30','laptop-30','14 inch, 3 TB SSD, 32GB RAM',173842,'Lorem 30 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/laptop-30.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(31,'Desktop 1','desktop-1','27 inch, 2 TB SSD, 32GB RAM',422458,'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/desktop-1.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:34'),
	(32,'Desktop 2','desktop-2','27 inch, 3 TB SSD, 32GB RAM',321630,'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-2.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(33,'Desktop 3','desktop-3','25 inch, 3 TB SSD, 32GB RAM',443847,'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-3.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(34,'Desktop 4','desktop-4','24 inch, 3 TB SSD, 32GB RAM',402751,'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-4.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(35,'Desktop 5','desktop-5','27 inch, 1 TB SSD, 32GB RAM',416203,'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-5.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(36,'Desktop 6','desktop-6','24 inch, 1 TB SSD, 32GB RAM',258040,'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-6.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(37,'Desktop 7','desktop-7','24 inch, 2 TB SSD, 32GB RAM',406364,'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-7.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(38,'Desktop 8','desktop-8','27 inch, 2 TB SSD, 32GB RAM',353071,'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-8.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(39,'Desktop 9','desktop-9','25 inch, 1 TB SSD, 32GB RAM',288518,'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/desktop-9.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(40,'Phone 1','phone-1','32GB, 5.7 inch screen, 4GHz Quad Core',108529,'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/phone-1.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(41,'Phone 2','phone-2','64GB, 5.7 inch screen, 4GHz Quad Core',129149,'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/phone-2.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:34'),
	(42,'Phone 3','phone-3','16GB, 5.8 inch screen, 4GHz Quad Core',125801,'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/phone-3.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:32','2018-11-29 06:39:32'),
	(43,'Phone 4','phone-4','16GB, 5.8 inch screen, 4GHz Quad Core',100732,'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/phone-4.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:34'),
	(44,'Phone 5','phone-5','64GB, 5.7 inch screen, 4GHz Quad Core',129590,'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/phone-5.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(45,'Phone 6','phone-6','32GB, 5.7 inch screen, 4GHz Quad Core',98759,'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/phone-6.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(46,'Phone 7','phone-7','16GB, 5.8 inch screen, 4GHz Quad Core',133050,'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/phone-7.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(47,'Phone 8','phone-8','32GB, 5.9 inch screen, 4GHz Quad Core',98757,'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/phone-8.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:34'),
	(48,'Phone 9','phone-9','32GB, 5.8 inch screen, 4GHz Quad Core',145610,'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/phone-9.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(49,'Tablet 1','tablet-1','64GB, 5.10 inch screen, 4GHz Quad Core',145945,'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tablet-1.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(50,'Tablet 2','tablet-2','32GB, 5.11 inch screen, 4GHz Quad Core',98501,'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tablet-2.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(51,'Tablet 3','tablet-3','64GB, 5.10 inch screen, 4GHz Quad Core',123952,'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/tablet-3.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:34'),
	(52,'Tablet 4','tablet-4','64GB, 5.12 inch screen, 4GHz Quad Core',51087,'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tablet-4.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(53,'Tablet 5','tablet-5','64GB, 5.10 inch screen, 4GHz Quad Core',95393,'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/tablet-5.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:34'),
	(54,'Tablet 6','tablet-6','32GB, 5.11 inch screen, 4GHz Quad Core',89909,'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tablet-6.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(55,'Tablet 7','tablet-7','32GB, 5.11 inch screen, 4GHz Quad Core',57208,'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tablet-7.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(56,'Tablet 8','tablet-8','16GB, 5.11 inch screen, 4GHz Quad Core',66208,'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tablet-8.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(57,'Tablet 9','tablet-9','32GB, 5.11 inch screen, 4GHz Quad Core',78771,'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tablet-9.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(58,'TV 1','tv-1','46 inch screen, Smart TV, 4K',107200,'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-1.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(59,'TV 2','tv-2','60 inch screen, Smart TV, 4K',97163,'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-2.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(60,'TV 3','tv-3','60 inch screen, Smart TV, 4K',99676,'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-3.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(61,'TV 4','tv-4','60 inch screen, Smart TV, 4K',101202,'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/tv-4.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:34'),
	(62,'TV 5','tv-5','60 inch screen, Smart TV, 4K',88577,'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-5.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(63,'TV 6','tv-6','46 inch screen, Smart TV, 4K',145627,'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-6.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(64,'TV 7','tv-7','46 inch screen, Smart TV, 4K',86135,'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-7.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(65,'TV 8','tv-8','60 inch screen, Smart TV, 4K',119906,'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-8.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(66,'TV 9','tv-9','60 inch screen, Smart TV, 4K',88735,'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/tv-9.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(67,'Camera 1','camera-1','Full Frame DSLR, with 18-55mm kit lens.',241372,'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/camera-1.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(68,'Camera 2','camera-2','Full Frame DSLR, with 18-55mm kit lens.',82824,'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/camera-2.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(69,'Camera 3','camera-3','Full Frame DSLR, with 18-55mm kit lens.',93434,'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/camera-3.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:34'),
	(70,'Camera 4','camera-4','Full Frame DSLR, with 18-55mm kit lens.',193058,'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/camera-4.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(71,'Camera 5','camera-5','Full Frame DSLR, with 18-55mm kit lens.',126218,'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/camera-5.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(72,'Camera 6','camera-6','Full Frame DSLR, with 18-55mm kit lens.',167336,'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/camera-6.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(73,'Camera 7','camera-7','Full Frame DSLR, with 18-55mm kit lens.',216913,'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/camera-7.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:34'),
	(74,'Camera 8','camera-8','Full Frame DSLR, with 18-55mm kit lens.',154556,'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/camera-8.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:33','2018-11-29 06:39:33'),
	(75,'Camera 9','camera-9','Full Frame DSLR, with 18-55mm kit lens.',15704300,'<p>Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>',0,1,'products/dummy/camera-9.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\",\"products\\/November2018\\/e794xk31w8XiaqPiv0Za.jpg\"]','2018-11-29 06:39:00','2018-11-29 06:39:00'),
	(76,'Appliance 1','appliance-1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',115366,'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-1.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(77,'Appliance 2','appliance-2','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',112779,'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-2.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(78,'Appliance 3','appliance-3','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',132035,'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-3.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(79,'Appliance 4','appliance-4','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',148932,'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-4.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(80,'Appliance 5','appliance-5','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',123311,'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',1,10,'products/dummy/appliance-5.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(81,'Appliance 6','appliance-6','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',80154,'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-6.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(82,'Appliance 7','appliance-7','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',137377,'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-7.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(83,'Appliance 8','appliance-8','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',121535,'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-8.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34'),
	(84,'Appliance 9','appliance-9','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis, dolorum!',120848,'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',0,10,'products/dummy/appliance-9.jpg','[\"products\\/dummy\\/laptop-2.jpg\",\"products\\/dummy\\/laptop-3.jpg\",\"products\\/dummy\\/laptop-4.jpg\"]','2018-11-29 06:39:34','2018-11-29 06:39:34');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(2,'user','Normal User','2018-11-29 06:14:59','2018-11-29 06:14:59'),
	(3,'adminweb','Admin Web','2018-11-29 06:15:00','2018-11-29 06:15:00');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin'),
	(11,'site.stock_threshold','Stock Threshold','5','','text',6,'Site');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`)
VALUES
	(1,'data_types','display_name_singular',1,'pt','Post','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(2,'data_types','display_name_singular',2,'pt','Página','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(3,'data_types','display_name_singular',3,'pt','Utilizador','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(4,'data_types','display_name_singular',4,'pt','Categoria','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(5,'data_types','display_name_singular',5,'pt','Menu','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(6,'data_types','display_name_singular',6,'pt','Função','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(7,'data_types','display_name_plural',1,'pt','Posts','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(8,'data_types','display_name_plural',2,'pt','Páginas','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(9,'data_types','display_name_plural',3,'pt','Utilizadores','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(10,'data_types','display_name_plural',4,'pt','Categorias','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(11,'data_types','display_name_plural',5,'pt','Menus','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(12,'data_types','display_name_plural',6,'pt','Funções','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(13,'categories','slug',1,'pt','categoria-1','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(14,'categories','name',1,'pt','Categoria 1','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(15,'categories','slug',2,'pt','categoria-2','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(16,'categories','name',2,'pt','Categoria 2','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(17,'pages','title',1,'pt','Olá Mundo','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(18,'pages','slug',1,'pt','ola-mundo','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(20,'menu_items','title',1,'pt','Painel de Controle','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(21,'menu_items','title',2,'pt','Media','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(22,'menu_items','title',3,'pt','Publicações','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(23,'menu_items','title',4,'pt','Utilizadores','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(24,'menu_items','title',5,'pt','Categorias','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(25,'menu_items','title',6,'pt','Páginas','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(26,'menu_items','title',7,'pt','Funções','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(27,'menu_items','title',8,'pt','Ferramentas','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(28,'menu_items','title',9,'pt','Menus','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(29,'menu_items','title',10,'pt','Base de dados','2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(30,'menu_items','title',12,'pt','Configurações','2018-11-29 06:15:00','2018-11-29 06:15:00');

/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,1,'Admin','admin@admin.com','users/default.png','$2y$10$Kbhby58sK94YNnh8j8sqHeUqAzG51FU9iv5kR0tV6SSMNpOWPNS86','PrvwPllREWYwqGbEnhdf4xpAlyEasRgVR0iZ8pXGtnHuHbK4w89jROwMBNAA',NULL,'2018-11-29 06:15:00','2018-11-29 06:15:00'),
	(2,3,'Admin Web','adminweb@adminweb.com','users/default.png','$2y$10$EMZwZYVhuNzrUCT6ziOLLut685HKFxoSk9MC4CYM2PDkGVwK8LS4O','FdHtf0tliuKdTRt2yP6q4hQobW1Y1vMyINEW4M3Nt5JmavDN9OW0OsWkAE84',NULL,'2018-11-29 06:15:00','2018-11-29 06:15:00');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
