/*
SQLyog  v12.2.6 (64 bit)
MySQL - 8.0.15 : Database - countpeople
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`countpeople` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `countpeople`;

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL,
  `captured_time` datetime DEFAULT NULL,
  `captured_spot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `video` */

insert  into `video`(`id`,`path`,`threshold`,`captured_time`,`captured_spot`) values 
('20190604125700','video/video01',10,'2019-06-04 12:57:00','01'),
('20190604235757','video/video02',10,'2019-06-04 23:57:57','02'),
('20191004125841','video/video03',10,'2019-10-04 12:58:41','03');

/*Table structure for table `warning_info` */

DROP TABLE IF EXISTS `warning_info`;

CREATE TABLE `warning_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(255) DEFAULT NULL,
  `warning_start` varchar(255) DEFAULT NULL,
  `warning_end` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warning_info_video_id_fk` (`video_id`),
  CONSTRAINT `warning_info_video_id_fk` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `warning_info` */

insert  into `warning_info`(`id`,`video_id`,`warning_start`,`warning_end`) values 
(1,'20190604125700','',NULL),
(2,'20190604235757',NULL,NULL),
(3,'20191004125841',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
