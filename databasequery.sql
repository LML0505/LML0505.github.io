CREATE DATABASE `webdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

use webdb;


DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'type of dish id',
  `name` varchar(50) DEFAULT NULL COMMENT 'name',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'status：1normal 9delete',
  `create_at` datetime DEFAULT NULL COMMENT 'addtime',
  `update_at` datetime DEFAULT NULL COMMENT 'changetime',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'dish id',
  `category_id` int(11) DEFAULT NULL COMMENT 'category id',
  `cover_pic` varchar(50) DEFAULT NULL COMMENT 'picture',
  `name` varchar(50) DEFAULT NULL COMMENT 'name',
  `price` double(6,2) DEFAULT NULL COMMENT 'price',
  `status` tinyint(4) DEFAULT NULL COMMENT 'status：1:normal  2:no stock  9:delete',
  `create_at` datetime DEFAULT NULL COMMENT 'add time ',
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `email` varchar(50) NOT NULL COMMENT 'email',
  `creditcard` varchar(255) NOT NULL COMMENT 'creditcard',
  `mobile` varchar(50) NOT NULL COMMENT 'phone',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'status:1normal/2baned/9delete',
  `create_at` datetime DEFAULT NULL COMMENT 'add time ',
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'staff account id',
  `username` varchar(50) DEFAULT NULL COMMENT 'accout name ',
  `nickname` varchar(50) DEFAULT NULL COMMENT 'nickname',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'password',
  `password_salt` varchar(50) DEFAULT NULL COMMENT 'passwordwith salt ',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'status:1normal/2banned/9delete',
  `create_at` datetime DEFAULT NULL COMMENT 'create time',
  `update_at` datetime DEFAULT NULL COMMENT 'change timeuser',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'orderdetailid',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT 'ordid',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'dishid',
  `product_name` varchar(50) DEFAULT NULL COMMENT 'disname',
  `price` double(6,2) unsigned DEFAULT NULL COMMENT 'price',
  `quantity` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'quantity',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'status:1normal/9delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='orderdeatil';

/*Data for the table `order_detail` */

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'order_id',
  `email` varchar(50) NOT NULL COMMENT 'customer email',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT 'opeator_id',
  `money` double(8,2) DEFAULT NULL COMMENT 'amount',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT 'order status:1 processing/2invalid/3finish',
  `payment_status` tinyint(3) unsigned DEFAULT NULL COMMENT 'payment status:1unpaid/2paid/3refund',
  `create_at` datetime DEFAULT NULL COMMENT 'create time ',
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'paymentid',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT 'orderid',
  `email` varchar(50) NOT NULL COMMENT 'customer email',
  `money` double(8,2) unsigned DEFAULT NULL COMMENT 'amount',
  `creditcard` varchar(255) NOT NULL COMMENT 'creditcard',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT 'payment status:1nopaid/2paid/3refund',
  `create_at` datetime DEFAULT NULL COMMENT 'addtime',
  `update_at` datetime DEFAULT NULL COMMENT 'changetime',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


insert  into `user`(`id`,`username`,`nickname`,`password_hash`,`password_salt`,`status`,`create_at`,`update_at`) values 
(1,'zhangsan','zhangsan','1e191d851b3b49a248f4ea62f6b06410','123456',6,'2022-04-08 18:18:18','2020-04-09 08:06:55'),
(2,'lisi','lisi','1e191d851b3b49a248f4ea62f6b06410','123456',1,'2021-07-18 08:08:18','2022-07-22 16:21:18'),
(3,'xiaoli','little','c8a7ca8b274f29cf2c1147a8e0f685a4','639776',6,'2020-07-07 07:53:57','2022-07-08 20:18:18'),
(4,'zhangwuji','wuji','cbb748964d243e38f032b78886db824c','437809',9,'2020-02-18 09:06:54','2022-01-14 03:36:25'),
(5,'zhaomin','eric','27c744b428b997675c4383e7eae974c3','486570',2,'2020-02-18 09:07:40','2022-02-18 09:07:40'),
(6,'cuihua','suiua','b5a7379148116549de083f5076233bef','810418',2,'2021-02-18 09:08:35','2022-03-08 20:18:09'),
(7,'zhangle','ahah','7177bd35ad232f0830fe5c10dcc24b1c','350013',2,'2020-02-19 06:11:16','2021-02-19 12:33:19'),
(8,'uu01','little','a0811c52452216c63e52da04337e9216','268818',1,'2020-01-03 10:27:04','2021-01-03 10:27:04'),
(9,'uu02','big','56322ead3e2371636ac2395c8399297f','112245',1,'2020-01-03 10:37:37','2020-01-03 10:37:37'),
(10,'uu03','small','8e7d0c4077c73ad60c23367625d4346f','238764',1,'2020-01-03 11:24:48','2020-01-03 11:24:48'),
(11,'uu04','hh','5eec167b09ea13497843274969460d67','642960',1,'2020-01-03 11:27:00','2020-01-03 11:27:00'),
(12,'uu123','bb','5c2e9f69b05413b806dc6951b0f86e51','102905',1,'2020-01-13 23:51:01','2020-01-13 23:51:01'),
(13,'uu666','cc','99e89e8245d9f6f0628b5a59299bd9f7','673778',1,'2020-01-13 23:52:13','2020-01-13 23:52:13'),
(14,'mm','cc','05775bb481d11f0648b158cd40a7929c','627985',1,'2020-01-14 01:25:57','2020-01-14 01:25:57');



insert  into `category`(`id`,`name`,`status`,`create_at`,`update_at`) values 
(1,'chicken combo',1,'2021-07-25 10:20:30','2021-07-25 10:20:30'),
(2,'beef combo',1,'2022-03-25 10:20:30','2022-03-29 10:20:30'),
(3,'side dish',1,'2021-02-25 10:20:30','2021-07-25 10:20:30'),
(4,'drinks',1,'2021-06-25 10:20:30','2021-07-25 10:20:30'),
(5,'hamburger',1,'2021-05-25 10:20:30','2021-07-25 10:20:30')



