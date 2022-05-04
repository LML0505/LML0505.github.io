CREATE DATABASE  IF NOT EXISTS `webdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webdb`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: webdb
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'type of dish id',
  `name` varchar(50) DEFAULT NULL COMMENT 'name',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT 'status：1normal 9delete',
  `create_at` datetime DEFAULT NULL COMMENT 'addtime',
  `update_at` datetime DEFAULT NULL COMMENT 'changetime',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'chicken combo',1,'2021-07-25 10:20:30','2021-07-25 10:20:30'),(2,'beef combo',9,'2022-03-25 10:20:30','2022-04-27 06:48:47'),(3,'side dish',1,'2021-02-25 10:20:30','2021-07-25 10:20:30'),(4,'drinks',1,'2021-06-25 10:20:30','2022-04-27 06:31:55'),(5,'hamburger',9,'2021-05-25 10:20:30','2022-04-27 06:48:34'),(6,'Pasta Combo',1,'2022-04-27 06:05:45','2022-04-27 06:30:04'),(7,'pasta',1,'2022-04-29 08:15:33','2022-04-29 08:15:33');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL COMMENT 'email',
  `creditcard` varchar(255) NOT NULL COMMENT 'creditcard',
  `mobile` varchar(50) NOT NULL COMMENT 'phone',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'status:1normal/2baned/9delete',
  `create_at` datetime DEFAULT NULL COMMENT 'add time ',
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (6,'lml123','5123','88944787',1,'2022-05-01 04:13:37','2022-05-01 04:13:37'),(8,'lml123123','5123455','93358349',1,'2022-05-01 04:15:38','2022-05-01 04:15:38'),(10,'zlsawe','6578','12345678',1,'2022-05-01 04:19:23','2022-05-01 04:19:23'),(11,'mayilin123','5667892','936215',1,'2022-05-01 04:21:03','2022-05-01 04:21:03'),(16,'lml44','123425','123452',1,'2022-05-01 07:47:05','2022-05-01 07:47:05');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9ndrs0vr9ctl2mfwlvvsiyqp37el3lzh','.eJzVl9uOmzAQhl8F-aqVUuSzjW_7Ar2vqsjYzq67HCIOXUWrvHuHZEkIm0TcIuWG8GP_H-OZYT7Qv9DE3cHVPiCDFGUSbZD1Zaz6NjTIfKDokSFig4brypaDrLSHWMQKlFV0b5c_4Xpv2_a9bvz21bav8GeuPHdC2lw4wXKnFaU-ZzYjzgcqsJ8-0tqig0cIzbTM4Ebb2a5vkZEb5Jpgu7C1w32KKf2B-Q8qE8wNkYZqEPd7f1ehDGFGaHSERUDwUjeHIrbdAEYudMBxZnCvwBOqxNVlXg_eogcDv88yfl1i-_mYq-H1bffRDb6lIEQomZFUc825TvfVC_qydN43L6FJ3mP3muxiE9rEVh42LE6vr4kOxFSk-MpPHvDrhHAj4Ece8U8Uxz_wBthIzC622uhD4iMEa0YrZrTsKy0lWYZ1yrUmktzS5n3XAaWrm-qKxZdQZQnWhhDDH0Z1ojhuzmblMrM8SzEmmdJ0FpsmtvtD8hmiq2G53DA1NHtu-KQ4hYGPYeAXB76J1Vs7jwGZYfGvWJhnhLFUcZypGRQcqW9taYvi-5WILSFSg18uDGOPiCaKMQR0kVehRCqkkETMQzC4LYOPfTmxuygPTmYENUI8tXtWjHbZIruS0hRODs_UPbuFhVSeuFXL3TLD6fOsZYbg83GR43GRl-1_Wdgm-XmvSqkZmLyTChQTylMlVTZUq7_7MCF7g8WSMtjiykUWheF8yoWh_HkenBQnMDWCqcvu-wFsjqRnSOo-EmS1xFxks1C1we7q2ieXpT-hyHIo6DEPozVRANRxWL_2vevGLjNN9vW2D_DRl7AW8IkRaBUdYmJ8mkfr6BYT89OPlRX0BERHv6vpCzdfR2voDbcFdA1Ff4P06Hg1Nf00ODRjOYerru5ssS3rKhyQge3eQ34zKsmbUakoueC3g1JRFvcmpUB82FGsmRSey1wFIsQucOEoczmXdyYlxjHBdDIpscfEcjjn7FnRAYUyDKJ0_A9ZLvcj:1nkOaV:hhjQP5pCGYwZRUHMZSv_ow67nD7o4IianBYt1PZLFjs','2022-05-13 11:15:03.438334'),('fq006ps30n7cuapk7d081lo8tibpgwja','.eJxti8sOgyAQRX-lmbUmMAooP2NGhkZSH41gG2P89-Km6aLLe865B7z8Gu67W9iDBVNphAKIpzBv0a9gDwgMVqoCrj3TdGUT7WEMcy7n4B5fmPeTYnwvK3cDxSHD3nDtlKZeOVX1rjGI3FfUSsceleDfS6Qx5YvEttFtFjFR2iJYXYBbPSXf0eVRIJaiLlHfRG2lttjkeHvy38JYWVnVwHl-AO7nRac:1nk5tf:4QEp9g8DcP7p9ODpwwv0C43oyxnH6hLAWsssKap5KI4','2022-05-12 15:17:35.958782'),('mcztjnvz203ceaqwq39hgrfpmrp83ayy','eyJ2ZXJpZnljb2RlIjoiMDk0NCJ9:1nk5v7:-_TYWr1-LQTxO8oIgGkf2E3wps1wJIyaUMrnQMtqNHo','2022-05-12 15:19:05.762240'),('nt1xlhr0ecxbopajdbp8icjv3q2fhl43','.eJzVltuO2yAQQH_F4qmVshZgLobX_kDfqyoiwG5ofJOxu4pW-fdCEjtebxL5sZaiSIkG5hwNM_AB_trWvR51bSyQABEOwQZo1dm3uj0WzndAfgAUv5wBEm1ApcoYqfdOH2yV6Lrc1WFJ44wH8tcljNy22F6X6Tok2jZOxyyMIkQ5EyjNSU5InjbVG_iy9a5v32ybvLtun7y61vpEVSYkLFTM1zodgjFN4Qb4TnW9v-Rpbci8VYEbYIjxCyQvOE8QkTR8UFjZN-ZpxOn3aQOywTgbsbwzNjHO7-e2dGabfbXFSAiYpyTPEUOfbXd91wVLXbfVTYsssRIJzCVCkuSPrCYRp80Fli2DJSKFEAme41ltWuebY3It0Q2YLQfGEovnwOeIcxnIUAYyEpjWVQc_rwGaaZGvWpAIlGUpJ1DwmVQ4Ut98qYri-80oW2LEIy-hMsseGU0ihhLgRayU05QyyhCdlyDSlta4vpzgLuqDMwzFktKnuJeIATdbhMswTsPJIYLfwy1UaOUJLV9Om0mCn3dtJhG8HBc2HBc2pv-pQprkx70pxWdi7E4rYIgwSTnjIk6rP42dmB3CZklpVXHzQovKcDnlVGLyvA_OEWcxPojxMXsTxeZK-UyJ31cKXc0goWJWKm_Va12bZNz6KoWWSzGJH1ZrEhGkTnH_2vS6G26ZabOv9_oIHH0Z9gp-dBBaxQ0xAZ_20Tpuiwn89LHy398JE248cK_mfvj0SlrDHfF5kK5h-G9APhCvZrYH6K7uVLEt68oegQwJlCld1Xvbjr0ZRmL8faUr1dEVLk6IKoyK8c_Iqbx_r1uz3avw8g7DkBuiKVM7qmm20znH2OwyJZA2FlNopku8KiIkwiJncUQMmuyBJksgOUs8HJchgkuUSRoe1Kd_r4y3iw:1nlkIe:_iih5wUf88RqIBkB_mnDpW9tSmCLKdvr60VU24JwXOA','2022-05-17 04:38:12.478446');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'orderdetailid',
  `order_id` int unsigned DEFAULT NULL COMMENT 'ordid',
  `product_id` int unsigned DEFAULT NULL COMMENT 'dishid',
  `product_name` varchar(50) DEFAULT NULL COMMENT 'disname',
  `price` double(6,2) unsigned DEFAULT NULL COMMENT 'price',
  `quantity` int unsigned NOT NULL DEFAULT '1' COMMENT 'quantity',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'status:1normal/9delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='orderdeatil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (36,29,4,'chicken burger with fires and cola',25.00,3,1),(37,30,4,'chicken burger with fires and cola',25.00,2,1),(38,30,5,'butter corn',4.00,1,1),(39,30,6,'crispy chicken',6.00,1,1),(40,31,4,'chicken burger with fires and cola',25.00,2,1),(41,31,5,'butter corn',4.00,1,1),(42,31,6,'crispy chicken',6.00,1,1),(43,32,4,'chicken burger with fires and cola',25.00,1,1),(44,32,6,'crispy chicken',6.00,1,1),(45,33,4,'chicken burger with fires and cola',25.00,1,1),(46,33,5,'butter corn',4.00,1,1),(47,33,1,'cola(small)',3.00,1,1),(48,34,4,'chicken burger with fires and cola',25.00,1,1),(49,35,4,'chicken burger with fires and cola',25.00,1,1),(50,36,4,'chicken burger with fires and cola',25.00,1,1),(51,37,4,'chicken burger with fires and cola',25.00,1,1),(52,38,4,'chicken burger with fires and cola',25.00,1,1),(53,39,4,'chicken burger with fires and cola',25.00,1,1),(54,40,4,'chicken burger with fires and cola',25.00,1,1),(55,41,4,'chicken burger with fires and cola',25.00,1,1),(56,42,4,'chicken burger with fires and cola',25.00,1,1),(57,43,4,'chicken burger with fires and cola',25.00,1,1),(58,44,4,'chicken burger with fires and cola',25.00,1,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'order_id',
  `table` int DEFAULT NULL,
  `cus_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL COMMENT 'opeator_id',
  `money` double(8,2) DEFAULT NULL COMMENT 'amount',
  `mobile` varchar(50) DEFAULT NULL COMMENT 'customer email',
  `status` tinyint unsigned DEFAULT NULL COMMENT 'order status:1 processing/2invalid/3finish',
  `promoCode` varchar(45) DEFAULT NULL,
  `payment_status` tinyint unsigned DEFAULT NULL COMMENT 'payment status:1unpaid/2paid/3refund',
  `create_at` datetime DEFAULT NULL COMMENT 'create time ',
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (16,NULL,2,0,43.00,'',2,'newuser',2,'2022-05-01 04:05:37','2022-05-01 04:05:37'),(17,NULL,3,0,43.00,'',2,'newuser',2,'2022-05-01 04:06:48','2022-05-01 04:06:48'),(18,NULL,4,0,43.00,'',2,'newuser',2,'2022-05-01 04:07:38','2022-05-01 04:07:38'),(19,NULL,5,0,43.00,'',2,'newuser',2,'2022-05-01 04:09:10','2022-05-01 04:09:10'),(20,NULL,6,0,43.00,'',2,'newuser',2,'2022-05-01 04:13:37','2022-05-01 04:13:37'),(21,NULL,8,0,43.00,'',2,'newuser',2,'2022-05-01 04:15:38','2022-05-01 04:15:38'),(22,NULL,10,0,11.00,'',2,'newuser',2,'2022-05-01 04:19:23','2022-05-01 04:19:23'),(23,NULL,11,0,26.00,'',2,'happy5',2,'2022-05-01 04:21:03','2022-05-01 04:21:03'),(24,NULL,11,0,26.00,'',2,'happy5',2,'2022-05-01 06:16:04','2022-05-01 06:16:04'),(25,NULL,11,0,55.00,'',2,'newuser',2,'2022-05-01 07:30:43','2022-05-01 07:30:43'),(26,NULL,16,0,70.00,'',2,'happy5',3,'2022-05-01 07:47:05','2022-05-01 07:47:05'),(27,NULL,16,0,70.00,'',2,'happy5',2,'2022-05-01 08:00:57','2022-05-01 08:00:57'),(28,NULL,16,0,70.00,'',2,'happy5',2,'2022-05-01 08:06:11','2022-05-01 08:06:11'),(29,NULL,16,0,70.00,'',3,'happy5',2,'2022-05-01 08:10:49','2022-05-01 08:10:49'),(30,NULL,0,16,60.00,'',3,'',2,'2022-05-01 09:59:51','2022-05-01 09:59:51'),(31,0,0,16,60.00,'',1,'',2,'2022-05-02 15:50:40','2022-05-02 15:50:40'),(32,0,0,16,31.00,'',1,'',2,'2022-05-02 16:08:52','2022-05-02 16:08:52'),(33,0,0,16,32.00,'',1,'',2,'2022-05-02 16:13:30','2022-05-02 16:13:30'),(34,0,0,16,25.00,'',1,'',2,'2022-05-02 16:14:09','2022-05-02 16:14:09'),(35,0,0,16,25.00,'',1,'',2,'2022-05-02 16:16:19','2022-05-02 16:16:19'),(36,NULL,0,16,25.00,'',1,'',2,'2022-05-02 16:20:06','2022-05-02 16:20:06'),(37,NULL,0,16,25.00,'',1,'',2,'2022-05-02 16:22:31','2022-05-02 16:22:31'),(38,NULL,0,16,25.00,'',1,'',2,'2022-05-02 16:24:41','2022-05-02 16:24:41'),(39,NULL,0,16,25.00,'',1,'',2,'2022-05-02 16:26:18','2022-05-02 16:26:18'),(40,NULL,0,16,25.00,'',1,'',2,'2022-05-02 16:34:09','2022-05-02 16:34:09'),(41,NULL,0,16,25.00,'',1,'',2,'2022-05-02 16:44:10','2022-05-02 16:44:10'),(42,1,0,16,25.00,'',1,'',2,'2022-05-02 16:45:29','2022-05-02 16:45:29'),(43,1,0,16,25.00,'',1,'',2,'2022-05-02 16:45:47','2022-05-02 16:45:47'),(44,6,0,16,25.00,'',1,'',2,'2022-05-02 16:48:16','2022-05-02 16:48:16');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'paymentid',
  `order_id` int unsigned DEFAULT NULL COMMENT 'orderid',
  `cus_id` int DEFAULT NULL COMMENT 'customer email',
  `money` double(8,2) unsigned DEFAULT NULL COMMENT 'amount',
  `type` tinyint NOT NULL COMMENT 'creditcard',
  `status` tinyint unsigned NOT NULL COMMENT 'payment status:1nopaid/2paid/3refund',
  `create_at` datetime DEFAULT NULL COMMENT 'addtime',
  `update_at` datetime DEFAULT NULL COMMENT 'changetime',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (14,30,0,60.00,1,2,'2022-05-01 09:59:51','2022-05-01 09:59:51'),(15,31,0,60.00,1,2,'2022-05-02 15:50:40','2022-05-02 15:50:40'),(16,32,0,31.00,1,2,'2022-05-02 16:08:52','2022-05-02 16:08:52'),(17,33,0,32.00,1,2,'2022-05-02 16:13:30','2022-05-02 16:13:30'),(18,34,0,25.00,1,2,'2022-05-02 16:14:09','2022-05-02 16:14:09'),(19,35,0,25.00,1,2,'2022-05-02 16:16:19','2022-05-02 16:16:19'),(20,36,0,25.00,1,2,'2022-05-02 16:20:07','2022-05-02 16:20:07'),(21,37,0,25.00,1,2,'2022-05-02 16:22:31','2022-05-02 16:22:31'),(22,38,0,25.00,1,2,'2022-05-02 16:24:42','2022-05-02 16:24:42'),(23,39,0,25.00,1,2,'2022-05-02 16:26:18','2022-05-02 16:26:18'),(24,40,0,25.00,1,2,'2022-05-02 16:34:09','2022-05-02 16:34:09'),(25,41,0,25.00,1,2,'2022-05-02 16:44:10','2022-05-02 16:44:10'),(26,42,0,25.00,1,2,'2022-05-02 16:45:29','2022-05-02 16:45:29'),(27,43,0,25.00,1,2,'2022-05-02 16:45:47','2022-05-02 16:45:47'),(28,44,0,25.00,1,2,'2022-05-02 16:48:16','2022-05-02 16:48:16');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'dish id',
  `category_id` int DEFAULT NULL COMMENT 'category id',
  `cover_pic` varchar(50) DEFAULT NULL COMMENT 'picture',
  `name` varchar(50) DEFAULT NULL COMMENT 'name',
  `price` double(6,2) DEFAULT NULL COMMENT 'price',
  `status` tinyint DEFAULT NULL COMMENT 'status：1:normal  2:no stock  9:delete',
  `create_at` datetime DEFAULT NULL COMMENT 'add time ',
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,4,'1651049133.74097.png','cola(small)',3.00,1,'2022-04-27 08:45:33','2022-04-27 08:45:33'),(2,4,'1651049575.5656152.png','cola(medium)',5.00,1,'2022-04-27 08:52:55','2022-05-03 10:11:16'),(3,4,'1651049622.1214972.png','cola(large)',7.00,1,'2022-04-27 08:53:42','2022-04-28 14:53:10'),(4,1,'1651157691.848448.png','chicken burger with fires and cola',25.00,1,'2022-04-28 14:54:51','2022-04-28 14:54:51'),(5,3,'1651219908.488161.png','butter corn',4.00,1,'2022-04-29 08:11:48','2022-04-29 08:11:48'),(6,3,'1651219949.0019782.png','crispy chicken',6.00,1,'2022-04-29 08:12:29','2022-04-29 08:12:29'),(7,6,'1651220124.7679691.jpeg','kids meal',15.00,1,'2022-04-29 08:15:24','2022-04-29 08:15:24'),(8,7,'1651220182.604592.png','seafood pasta',11.00,1,'2022-04-29 08:16:22','2022-04-29 08:16:22');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocode`
--

DROP TABLE IF EXISTS `promocode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `discount` int NOT NULL,
  `status` int NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `change_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocode`
--

LOCK TABLES `promocode` WRITE;
/*!40000 ALTER TABLE `promocode` DISABLE KEYS */;
INSERT INTO `promocode` VALUES (1,'newuser',20,1,NULL,NULL),(2,'happy5',5,1,NULL,NULL),(3,'happy2',2,9,NULL,NULL),(4,'abc123456',13,1,'2022-05-03 10:02:58','2022-05-03 15:26:08');
/*!40000 ALTER TABLE `promocode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table` (
  `id` int NOT NULL,
  `table_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
INSERT INTO `table` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'staff account id',
  `username` varchar(50) DEFAULT NULL COMMENT 'accout name ',
  `nickname` varchar(50) DEFAULT NULL COMMENT 'nickname',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'password',
  `password_salt` varchar(50) DEFAULT NULL COMMENT 'passwordwith salt ',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'status:1normal/2banned/9delete',
  `create_at` datetime DEFAULT NULL COMMENT 'create time',
  `update_at` datetime DEFAULT NULL COMMENT 'change time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'zhangsan','zhangsan','1e191d851b3b49a248f4ea62f6b06410','123456',6,'2022-04-08 18:18:18','2020-04-09 08:06:55'),(2,'lisi','lisi','1e191d851b3b49a248f4ea62f6b06410','123456',1,'2021-07-18 08:08:18','2022-07-22 16:21:18'),(3,'xiaoli','little','c8a7ca8b274f29cf2c1147a8e0f685a4','639776',6,'2020-07-07 07:53:57','2022-07-08 20:18:18'),(4,'zhangwuji','wuji','cbb748964d243e38f032b78886db824c','437809',1,'2020-02-18 09:06:54','2022-01-14 03:36:25'),(5,'zhaomin','eric','27c744b428b997675c4383e7eae974c3','486570',2,'2020-02-18 09:07:40','2022-02-18 09:07:40'),(6,'cuihua','suiua','b5a7379148116549de083f5076233bef','810418',2,'2021-02-18 09:08:35','2022-03-08 20:18:09'),(7,'zhangle','ahah','7177bd35ad232f0830fe5c10dcc24b1c','350013',2,'2020-02-19 06:11:16','2021-02-19 12:33:19'),(8,'uu01','little','a0811c52452216c63e52da04337e9216','268818',1,'2020-01-03 10:27:04','2021-01-03 10:27:04'),(9,'uu02','big','56322ead3e2371636ac2395c8399297f','112245',1,'2020-01-03 10:37:37','2020-01-03 10:37:37'),(10,'uu03','small','8e7d0c4077c73ad60c23367625d4346f','238764',1,'2020-01-03 11:24:48','2020-01-03 11:24:48'),(11,'uu04','hh','5eec167b09ea13497843274969460d67','642960',1,'2020-01-03 11:27:00','2020-01-03 11:27:00'),(12,'uu123','bb','5c2e9f69b05413b806dc6951b0f86e51','102905',1,'2020-01-13 23:51:01','2020-01-13 23:51:01'),(13,'uu666','cc','99e89e8245d9f6f0628b5a59299bd9f7','673778',1,'2020-01-13 23:52:13','2020-01-13 23:52:13'),(14,'mm','cc','05775bb481d11f0648b158cd40a7929c','627985',1,'2020-01-14 01:25:57','2022-04-26 04:37:03'),(15,'mayilin','ma','b7d4c56ab5c53bc8722db3a91cde250d','129869',6,'2022-04-26 04:16:28','2022-04-26 07:13:58'),(16,'lm454','lml','be1def208365d46b7e155fe45c23cb46','340102',3,'2022-04-29 06:52:39','2022-04-29 06:57:34');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 14:44:41
