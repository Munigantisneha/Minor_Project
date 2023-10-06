/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.25 : Database - farmie
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`farmie` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `farmie`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varbinary(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `admin` */

insert  into `admin`(`id`,`userid`,`password`) values 
(1,'admin','admin');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `category` */

insert  into `category`(`id`,`title`) values 
(3,'croping'),
(4,'landpreparation'),
(5,'seedselection'),
(6,'irrigation'),
(7,'harvesting'),
(8,'others');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contact` */

insert  into `contact`(`id`,`name`,`email`,`subject`,`message`) values 
(1,'lucky','lucky@gmail.com','selling','i want to sell my product.'),
(2,'vinod','vinod@gmail.com','buy','i want seed.');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`email`,`password`,`mobile`) values 
(1,'s.pavan','pavan@gmail.com','1234',7935174805),
(3,'shashi','shashi@gmail.com','1234',7935174806);

/*Table structure for table `customerorders` */

DROP TABLE IF EXISTS `customerorders`;

CREATE TABLE `customerorders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `productid` int DEFAULT NULL,
  `customeremail` varchar(100) DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `totalcost` float DEFAULT NULL,
  `orderdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleverydate` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customerorders` */

insert  into `customerorders`(`orderid`,`productid`,`customeremail`,`quantity`,`address`,`totalcost`,`orderdate`,`deleverydate`,`status`) values 
(1,1,'pavan@gmail.com',4,'beldona',4000,'2021-08-07 22:23:57','',0),
(2,4,'pavan@gmail.com',20,'obulapuram',72000,'2021-08-08 21:29:14','',0);

/*Table structure for table `former` */

DROP TABLE IF EXISTS `former`;

CREATE TABLE `former` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `former` */

insert  into `former`(`id`,`name`,`email`,`password`,`mobile`) values 
(1,'vinod','vinod@gmail.com','1234',7935174888),
(4,'revanth','revanth@gmail.com','1234',7935174804);

/*Table structure for table `formerproduct` */

DROP TABLE IF EXISTS `formerproduct`;

CREATE TABLE `formerproduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formeremail` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discription` varchar(1000) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `spltag` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `formerproduct` */

insert  into `formerproduct`(`id`,`formeremail`,`title`,`price`,`discription`,`category`,`spltag`,`status`) values 
(1,'vinod@gmail.com','mirchi',1000,'very good product    ','vegitables','hot and spicy',1),
(3,'vinod@gmail.com','potato',36,'fresh and new','vegitables','nice',1),
(4,'revanth@gmail.com','rice',3600,'good quality','vegitables','spetial',1);

/*Table structure for table `formingpractice` */

DROP TABLE IF EXISTS `formingpractice`;

CREATE TABLE `formingpractice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `discription` varchar(1000) DEFAULT NULL,
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `formingpractice` */

insert  into `formingpractice`(`id`,`title`,`category`,`discription`,`postdate`) values 
(1,'forming','seedselection','i want  seeds','2021-08-06 11:53:20'),
(3,'Feald preparation','irrigation','musterd the land.','2021-08-10 12:33:40'),
(4,'organic farming','landpreparation','in organic way ','2021-08-10 16:27:19'),
(5,'Fertilizing','others','for protecting the crop','2021-08-10 18:06:05'),
(6,'plantation','croping','mailtain water and fertilisers','2021-08-11 15:37:54');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `image` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `discription` varchar(5000) DEFAULT NULL,
  `pdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `news` */

insert  into `news`(`id`,`title`,`discription`,`pdate`,`category`) values 
(1,'abc','sucess','2021-08-05 12:40:51','harvesting'),
(2,'problem','cmpleted  ','2021-08-05 12:42:35','irrigation'),
(6,'water maitain','maintain full water\r\n','2021-08-11 15:32:14','others');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `productid` int DEFAULT NULL,
  `formeremail` varchar(100) DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `totalcost` float DEFAULT NULL,
  `orderdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleverydate` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `orders` */

insert  into `orders`(`orderid`,`productid`,`formeremail`,`quantity`,`address`,`totalcost`,`orderdate`,`deleverydate`,`status`) values 
(1,1,'vinod@gmail.com',2,'kphb',100,'2021-08-07 00:01:04','',0),
(2,1,'revanth@gmail.com',10,'lbnagr',500,'2021-08-07 16:48:42','',0);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discription` varchar(1000) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `spltag` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product` */

insert  into `product`(`id`,`title`,`price`,`discription`,`category`,`spltag`,`status`) values 
(1,'tomoto',50,'good product   ','vegitables','fresh',1);

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `review` */

insert  into `review`(`id`,`name`,`email`,`rating`,`comment`) values 
(1,'lucky','lucky@gmail.com',5,'good'),
(2,'pavan','pavan@gmail.com',4,'nice'),
(3,'satheesh','sathesh@gmail.com',3,'average');

/*Table structure for table `subscribers` */

DROP TABLE IF EXISTS `subscribers`;

CREATE TABLE `subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `subscribers` */

insert  into `subscribers`(`id`,`email`) values 
(1,'lucky@gmail.com'),
(2,'vinod@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
