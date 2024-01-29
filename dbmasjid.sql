/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.4.28-MariaDB : Database - db_masjid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_masjid` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_masjid`;

/*Table structure for table `agenda` */

DROP TABLE IF EXISTS `agenda`;

CREATE TABLE `agenda` (
  `idagenda` char(7) NOT NULL,
  `namakegiatan` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  PRIMARY KEY (`idagenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `agenda` */

/*Table structure for table `kasmasjid` */

DROP TABLE IF EXISTS `kasmasjid`;

CREATE TABLE `kasmasjid` (
  `idkasmasjid` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `ket` varchar(225) DEFAULT NULL,
  `kasmasuk` double DEFAULT NULL,
  `kaskeluar` double DEFAULT NULL,
  `jeniskas` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idkasmasjid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `kasmasjid` */

insert  into `kasmasjid`(`idkasmasjid`,`tanggal`,`ket`,`kasmasuk`,`kaskeluar`,`jeniskas`,`status`) values (1,'2024-01-04','sumbangan jumat',100000,0,'Masjid','masuk'),(2,'2024-01-04','sumbangan jumat',NULL,0,'Masjid','masuk'),(3,'2024-01-05','sumbangan jumat',NULL,0,'Masjid','masuk'),(5,'2024-01-08','sumbangan jumat',0,NULL,'Masjid','keluar'),(6,'2024-01-09','sumbangan jumat',0,NULL,'TPQ','keluar'),(7,'2024-01-08','sumbangan jumat',0,50000,'Sosial','keluar');

/*Table structure for table `pengurus` */

DROP TABLE IF EXISTS `pengurus`;

CREATE TABLE `pengurus` (
  `idpengurus` char(11) NOT NULL,
  `namapengurus` varchar(35) DEFAULT NULL,
  `jabatan` varchar(30) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idpengurus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pengurus` */

insert  into `pengurus`(`idpengurus`,`namapengurus`,`jabatan`,`alamat`,`nohp`) values ('P001','CINTA','MARBOT','JL.BANDES','083186097632'),('P002','RYAN','PENGURUS MASJID','JL.DAMAR','081268069959'),('P003','HABIL','MARBOT','JL.BANDES','083186097632');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `namauser` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user` */

insert  into `user`(`iduser`,`namauser`,`email`,`password`,`level`) values (7,'eline','eline@gmail.com','$2y$10$6/23xBRaVnTviS64oNf8tOO7/7HU8SZe2jriuAG6CgxTW0y1uVcVq',3),(8,'eline','eline@gmail.com','$2y$10$DvaeV5Kags5oR4RNII55jO7SLR.tZxgKTyY3iimwXYZo.I4kO6xJu',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
