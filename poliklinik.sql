/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.16-MariaDB : Database - poliklinik
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`poliklinik` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `poliklinik`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(6) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`nama`,`user_id`,`password`) values ('A-0001','hakko bio richard','hakko','romance18'),('A-0002','Husenudin Nurdiansyah','admin','admin'),('A-0003','Rizal','rizal','louist'),('120596','ulfa mardatillah','ulfamd','ulfamd');

/*Table structure for table `bidan` */

DROP TABLE IF EXISTS `bidan`;

CREATE TABLE `bidan` (
  `nip` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `no_telp` varchar(14) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `bidan` */

insert  into `bidan`(`nip`,`nama`,`alamat`,`no_telp`) values ('P-0001','hakko bio richard','kp.sempu no.118 rt.03/03','085694984803'),('P-0002','erni suherni','kp.wangkal','09876567892'),('01','Hendrik','Cibiru','083818765432');

/*Table structure for table `daftar` */

DROP TABLE IF EXISTS `daftar`;

CREATE TABLE `daftar` (
  `no_daftar` varchar(6) NOT NULL,
  `tanggal` varchar(14) DEFAULT NULL,
  `jam` varchar(8) DEFAULT NULL,
  `no_rm` varchar(6) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `periksa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no_daftar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `daftar` */

insert  into `daftar`(`no_daftar`,`tanggal`,`jam`,`no_rm`,`nama`,`periksa`) values ('000001','30/06/2013','22:59:28','011212','hakko bio richard','PEMERIKSAAN ANAK'),('000002','18/07/2013','04:57:07','011214','ujang','PEMERIKSAAN ANAK'),('','17/11/2016','16:31:55','','','== :::: PILIH TINDAKAN ::::==');

/*Table structure for table `obat` */

DROP TABLE IF EXISTS `obat`;

CREATE TABLE `obat` (
  `kode` varchar(6) NOT NULL,
  `nama_obat` varchar(30) DEFAULT NULL,
  `jenis` varchar(10) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `stok` varchar(6) DEFAULT NULL,
  `stokmin` varchar(3) DEFAULT NULL,
  `suplier` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `obat` */

insert  into `obat`(`kode`,`nama_obat`,`jenis`,`satuan`,`stok`,`stokmin`,`suplier`) values ('O-0001','antasida','tablet','strip','8.0','5','pt.kalbe farma'),('O-0002','amoxilin','tablet','Botol','7.0','2','pt.rhinos farma'),('O-0003','paracetamol','tablet','Botol','40','5','pt rhinos farma'),('O-0004','aleron','tablet','Botol','100','5','pt cikarang jaya'),('O-0005','flutamol','tablet','Botol','2.0','2','pt cikarang jaya'),('p33','kspdjd','Tablet','Strip','2','1','pt.ulfamd');

/*Table structure for table `pasien` */

DROP TABLE IF EXISTS `pasien`;

CREATE TABLE `pasien` (
  `no_rm` varchar(6) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `usia` varchar(8) DEFAULT NULL,
  `jenis_kel` varchar(10) DEFAULT NULL,
  `status` varchar(14) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_tlp` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`no_rm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `pasien` */

insert  into `pasien`(`no_rm`,`nama`,`usia`,`jenis_kel`,`status`,`pekerjaan`,`alamat`,`no_tlp`) values ('011212','hakko bio richard','22 tahun','LAKI-LAKI','MENIKAH','wiraswasta','kp.sempu no.118','085694984803'),('011213','erni suherni','22 tahun','PEREMPUAN','MENIKAH','Bidan','kp.wngkal rt.03/03 ','085694102337'),('011214','ujang','21 tahun','LAKI-LAKI','BELUM MENIKAH','wiraswasta','kp.pilar timur','098765755990'),('011215','dedeh','21 tahun','PEREMPUAN','MENIKAH','wiraswasta','kp.wangkal','09876456789'),('02','Hendri','20','LAKI-LAKI','BELUM MENIKAH','Mahasiswa','Cibiru','087820565662');

/*Table structure for table `pembayaran` */

DROP TABLE IF EXISTS `pembayaran`;

CREATE TABLE `pembayaran` (
  `no_trans` varchar(6) NOT NULL,
  `no_per` varchar(6) NOT NULL,
  `tanggal` varchar(10) DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `no_rm` varchar(6) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kd_tin` varchar(6) DEFAULT NULL,
  `kode` varchar(6) DEFAULT NULL,
  `id` varchar(6) DEFAULT NULL,
  `tot_bayar` varchar(10) DEFAULT NULL,
  `bayar` varchar(10) DEFAULT NULL,
  `kembalian` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`no_per`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `pembayaran` */

insert  into `pembayaran`(`no_trans`,`no_per`,`tanggal`,`jam`,`no_rm`,`nama`,`kd_tin`,`kode`,`id`,`tot_bayar`,`bayar`,`kembalian`) values ('000002','000007','21/07/2013','12:01:18','011212','hakko bio richard','T-0001','O-0001','A-0001','133000.0','200000','67000.0'),('000001','000002','18/07/2013','19:45:16','011212','hakko bio richard','T-0007','O-0002','A-0001','800000.0','100000','-700000.0');

/*Table structure for table `periksa` */

DROP TABLE IF EXISTS `periksa`;

CREATE TABLE `periksa` (
  `no_per` varchar(6) NOT NULL,
  `no_daftar` varchar(6) DEFAULT NULL,
  `tanggal` varchar(14) DEFAULT NULL,
  `jam` varchar(8) DEFAULT NULL,
  `no_rm` varchar(6) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kd_tin` varchar(6) DEFAULT NULL,
  `ruang_bersalin` varchar(25) DEFAULT NULL,
  `harga_ruang` varchar(10) DEFAULT NULL,
  `keadaan_bayi` varchar(30) DEFAULT NULL,
  `jenkel_bayi` varchar(10) DEFAULT NULL,
  `nip` varchar(6) DEFAULT NULL,
  `diagnosa` varchar(30) DEFAULT NULL,
  `no_resep` varchar(6) DEFAULT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `total_biaya` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`no_per`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `periksa` */

insert  into `periksa`(`no_per`,`no_daftar`,`tanggal`,`jam`,`no_rm`,`nama`,`kd_tin`,`ruang_bersalin`,`harga_ruang`,`keadaan_bayi`,`jenkel_bayi`,`nip`,`diagnosa`,`no_resep`,`kode`,`total_biaya`) values ('000005','000001','18/07/2013','19:44:23','011212','hakko bio richard','T-0001','= PILIH RUANGAN =','','','','P-0001','','','O-0002',''),('000004','000001','18/07/2013','19:41:55','011212','hakko bio richard','T-0002','= PILIH RUANGAN =','','','','P-0001','','','O-0001',''),('000003','','18/07/2013','19:38:11','','','T-0001','= PILIH RUANGAN =','','','','P-0001','','','O-0002',''),('000002','','18/07/2013','19:33:38','','','T-0001','= PILIH RUANGAN =','','','','P-0002','','','O-0001',''),('000001','000001','18/07/2013','06:26:19','011212','hakko bio richard','T-0007','RUANG MARWAH','100000','baik','laki-laki','P-0001','aaa','000003','O-0002','800000.0'),('000006','','19/07/2013','06:39:40','','','T-0001','= PILIH RUANGAN =','','','','P-0001','','','O-0001',''),('000007','000001','21/07/2013','12:00:49','011212','hakko bio richard','T-0001','= PILIH RUANGAN =','','','','P-0001','','','O-0001','133000.0'),('000008','','22/07/2013','00:06:32','','','T-0002','= PILIH RUANGAN =','','','','P-0001','','','O-0002','85000.0'),('000009','000001','28/07/2013','07:24:19','011212','hakko bio richard','T-0007','= PILIH RUANGAN =','','','','P-0001','tidak ada','000004','O-0001','49000.0'),('000010','000001','28/07/2013','07:26:25','011212','hakko bio richard','T-0001','= PILIH RUANGAN =','','','','P-0001','','','O-0001','34000.0');

/*Table structure for table `resep` */

DROP TABLE IF EXISTS `resep`;

CREATE TABLE `resep` (
  `no_resep` varchar(6) NOT NULL,
  `tgl_resep` varchar(15) NOT NULL,
  `rincian_obat` varchar(60) NOT NULL,
  PRIMARY KEY (`no_resep`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `resep` */

insert  into `resep`(`no_resep`,`tgl_resep`,`rincian_obat`) values ('000001','30/06/2013','amoxicillin, rhinos junior,'),('000002','14/07/2013',''),('000003','18/07/2013','12324'),('000004','28/07/2013','amoxcillin');

/*Table structure for table `tindakan` */

DROP TABLE IF EXISTS `tindakan`;

CREATE TABLE `tindakan` (
  `kd_tin` varchar(6) NOT NULL,
  `nama_tin` varchar(20) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kd_tin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tindakan` */

insert  into `tindakan`(`kd_tin`,`nama_tin`,`harga`) values ('T-0001','suntik KB 1 bulan','25000'),('T-0002','Suntik KB 3 bulan','30000'),('T-0003','Imunisasi DPT','65000'),('T-0004','Imunisasi Polio','15000'),('T-0005','Imunisasi BCG','30000'),('T-0006','Periksa Kehamilan','40000'),('T-0007','Pengobatan Anak','40000'),('T-0008','Persalinan','1200000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
