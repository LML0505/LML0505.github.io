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
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
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




