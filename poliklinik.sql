-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.8 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for poliklinik
CREATE DATABASE IF NOT EXISTS `poliklinik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `poliklinik`;


-- Dumping structure for table poliklinik.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(6) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table poliklinik.admin: 6 rows
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT IGNORE INTO `admin` (`id`, `nama`, `user_id`, `password`) VALUES
	('A-0001', 'hakko bio richard', 'hakko', 'romance18'),
	('000001', 'Mardatillah', 'admin', 'admin'),
	('01', 'RIzal', 'rizal', 'hilmi'),
	('02', 'ulfa', 'ulfa', 'ulfa'),
	('03', 'susi', 'susi', 'susi'),
	('ulfa', 'ulfa', 'ulfa', 'ulfa');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table poliklinik.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `kd_barang` varchar(6) NOT NULL,
  `nm_barang` varchar(20) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `stok` varchar(30) NOT NULL,
  PRIMARY KEY (`kd_barang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table poliklinik.barang: 4 rows
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT IGNORE INTO `barang` (`kd_barang`, `nm_barang`, `harga`, `stok`) VALUES
	('B001', 'Sabun Nuvo', '1000', '10'),
	('B002', 'Shampo', '500', '15'),
	('B003', 'Pepsodent', '1500', '25'),
	('B004', 'Gula 1 Kg', '7500', '11');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;


-- Dumping structure for table poliklinik.daftar
CREATE TABLE IF NOT EXISTS `daftar` (
  `no_daftar` varchar(6) NOT NULL,
  `tanggal` varchar(14) DEFAULT NULL,
  `jam` varchar(8) DEFAULT NULL,
  `no_rm` varchar(6) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `periksa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no_daftar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table poliklinik.daftar: 2 rows
/*!40000 ALTER TABLE `daftar` DISABLE KEYS */;
INSERT IGNORE INTO `daftar` (`no_daftar`, `tanggal`, `jam`, `no_rm`, `nama`, `periksa`) VALUES
	('000001', '30/06/2013', '22:59:28', '011212', 'hakko bio richard', 'PEMERIKSAAN ANAK'),
	('000002', '18/07/2013', '04:57:07', '011214', 'ujang', 'PEMERIKSAAN ANAK');
/*!40000 ALTER TABLE `daftar` ENABLE KEYS */;


-- Dumping structure for table poliklinik.dokter
CREATE TABLE IF NOT EXISTS `dokter` (
  `nip` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `no_telp` varchar(14) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table poliklinik.dokter: 10 rows
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
INSERT IGNORE INTO `dokter` (`nip`, `nama`, `alamat`, `no_telp`) VALUES
	('P-0001', 'hakko bio richard', 'kp.sempu no.118 rt.03/03', '085694984803'),
	('P-0002', 'erni suherni', 'kp.wangkal', '089876567892'),
	('P-0003', 'Susilawati', 'kp.cigeundel', '089765432167'),
	('P-0004', 'Rizki fauzan', 'kp.cisalak', '081342567898'),
	('P-0005', 'Thareq kemal', 'kp. salatri', '089767543290'),
	('P-0006', 'Siti Saidah', 'kp.merangin', '081254738908'),
	('P-0007', 'Siti Desire', 'kp.bayongbong', '081356478930'),
	('P-0008', 'Shahira', 'kp.cimbeuleuit', '081274652389'),
	('P-0009', 'Khodijah', 'kp.leuwimending', '081364573902'),
	('P-0010', 'Rita Anjani', 'kp.bantengsari', '081345789025');
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;


-- Dumping structure for table poliklinik.login
CREATE TABLE IF NOT EXISTS `login` (
  `level` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table poliklinik.login: ~2 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT IGNORE INTO `login` (`level`, `username`, `password`) VALUES
	('Admin', 'admin', 'admin'),
	('Karyawan', 'romi', 'romi');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


-- Dumping structure for table poliklinik.obat
CREATE TABLE IF NOT EXISTS `obat` (
  `kode` varchar(6) NOT NULL,
  `nama_obat` varchar(30) DEFAULT NULL,
  `jenis` varchar(10) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `harga` varchar(8) DEFAULT NULL,
  `stok` varchar(6) DEFAULT NULL,
  `stokmin` varchar(3) DEFAULT NULL,
  `suplier` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table poliklinik.obat: 7 rows
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
INSERT IGNORE INTO `obat` (`kode`, `nama_obat`, `jenis`, `satuan`, `harga`, `stok`, `stokmin`, `suplier`) VALUES
	('O-0001', 'amoxillin', 'Kapsul', 'strip', '9000', '8.0', '5', 'pt.kalbe farma'),
	('O-0002', 'Rhinos Junior', 'Syrup', 'Botol', '55000', '7.0', '2', 'pt.rhinos farma'),
	('O-0003', 'Rhinos Neo', 'Syrup', 'Botol', '30000', '40', '5', 'pt rhinos farma'),
	('O-0004', 'termorex', 'Syrup', 'Botol', '25000', '100', '5', 'pt cikarang jaya'),
	('O-0005', 'Tempra', 'Syrup', 'Botol', '30000', '2.0', '2', 'pt cikarang jaya'),
	('O-0006', 'fc troches', 'Tablet', 'Strip', '10000', '50', '2', 'pt. meiji'),
	('O-0007', 'diafarm', 'Tablet', 'strip', '30000', '20', '3', 'pt.kimiafarma');
/*!40000 ALTER TABLE `obat` ENABLE KEYS */;


-- Dumping structure for table poliklinik.pasien
CREATE TABLE IF NOT EXISTS `pasien` (
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

-- Dumping data for table poliklinik.pasien: 5 rows
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT IGNORE INTO `pasien` (`no_rm`, `nama`, `usia`, `jenis_kel`, `status`, `pekerjaan`, `alamat`, `no_tlp`) VALUES
	('011212', 'hakko bio richard', '22 tahun', 'LAKI-LAKI', 'MENIKAH', 'wiraswasta', 'kp.sempu no.118', '085694984803'),
	('011213', 'erni suherni', '22 tahun', 'PEREMPUAN', 'MENIKAH', 'Bidan', 'kp.wngkal rt.03/03 ', '085694102337'),
	('011214', 'ujang', '21 tahun', 'LAKI-LAKI', 'BELUM MENIKAH', 'wiraswasta', 'kp.pilar timur', '098765755990'),
	('011215', 'dedeh', '21 tahun', 'PEREMPUAN', 'MENIKAH', 'wiraswasta', 'kp.wangkal', '09876456789'),
	('02', 'Hendri', '20', 'LAKI-LAKI', 'BELUM MENIKAH', 'Mahasiswa', 'Cibiru', '087820565662');
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;


-- Dumping structure for table poliklinik.pelanggan
CREATE TABLE IF NOT EXISTS `pelanggan` (
  `kd_pelanggan` varchar(6) NOT NULL,
  `nm_pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `notlp` varchar(13) NOT NULL,
  PRIMARY KEY (`kd_pelanggan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table poliklinik.pelanggan: 4 rows
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT IGNORE INTO `pelanggan` (`kd_pelanggan`, `nm_pelanggan`, `alamat`, `notlp`) VALUES
	('P001', 'Fahruddin', 'Bangil', '083837288399'),
	('P002', 'Iklima N', 'Bangil', '0827636377'),
	('P003', 'Novi Santoso', 'Pasuruan', '08374747748'),
	('P004', 'Mahros', 'Pasuruan', '083833117951');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;


-- Dumping structure for table poliklinik.pembayaran
CREATE TABLE IF NOT EXISTS `pembayaran` (
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

-- Dumping data for table poliklinik.pembayaran: 2 rows
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT IGNORE INTO `pembayaran` (`no_trans`, `no_per`, `tanggal`, `jam`, `no_rm`, `nama`, `kd_tin`, `kode`, `id`, `tot_bayar`, `bayar`, `kembalian`) VALUES
	('000002', '000007', '21/07/2013', '12:01:18', '011212', 'hakko bio richard', 'T-0001', 'O-0001', 'A-0001', '133000.0', '200000', '67000.0'),
	('000001', '000002', '18/07/2013', '19:45:16', '011212', 'hakko bio richard', 'T-0007', 'O-0002', 'A-0001', '800000.0', '100000', '-700000.0');
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;


-- Dumping structure for table poliklinik.pembelian
CREATE TABLE IF NOT EXISTS `pembelian` (
  `no_transaksi` varchar(30) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `kd_supplier` varchar(30) NOT NULL,
  `kd_barang` varchar(30) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `totalharga` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table poliklinik.pembelian: 3 rows
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT IGNORE INTO `pembelian` (`no_transaksi`, `tgl_transaksi`, `kd_supplier`, `kd_barang`, `harga`, `jumlah`, `totalharga`) VALUES
	('001', '2013-06-11 00:00:00', 'S002', 'B003', '1500', '23', '34500'),
	('3', '2016-11-05 00:00:00', 'S001', 'B002', '500', '5', '2500'),
	('5', '2016-11-24 00:00:00', 'S001', 'B003', '1500', '6', '9000');
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;


-- Dumping structure for table poliklinik.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `no_transaksi` varchar(30) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `nm_barang` varchar(50) NOT NULL,
  `kd_barang` varchar(30) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `totalharga` varchar(20) NOT NULL,
  `bayar` float NOT NULL,
  `kembalian` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table poliklinik.penjualan: 1 rows
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT IGNORE INTO `penjualan` (`no_transaksi`, `tgl_transaksi`, `nm_barang`, `kd_barang`, `harga`, `jumlah`, `totalharga`, `bayar`, `kembalian`) VALUES
	('1', '2016-11-02 00:00:00', 'sabun nuvo', 'B001', '1000', '2', '2000', 5000, 3000);
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;


-- Dumping structure for table poliklinik.periksa
CREATE TABLE IF NOT EXISTS `periksa` (
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

-- Dumping data for table poliklinik.periksa: 6 rows
/*!40000 ALTER TABLE `periksa` DISABLE KEYS */;
INSERT IGNORE INTO `periksa` (`no_per`, `no_daftar`, `tanggal`, `jam`, `no_rm`, `nama`, `kd_tin`, `ruang_bersalin`, `harga_ruang`, `keadaan_bayi`, `jenkel_bayi`, `nip`, `diagnosa`, `no_resep`, `kode`, `total_biaya`) VALUES
	('000005', '000001', '18/07/2013', '19:44:23', '011212', 'hakko bio richard', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0002', ''),
	('000004', '000001', '18/07/2013', '19:41:55', '011212', 'hakko bio richard', 'T-0002', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0001', ''),
	('000001', '000001', '18/07/2013', '06:26:19', '011212', 'hakko bio richard', 'T-0007', 'RUANG MARWAH', '100000', 'baik', 'laki-laki', 'P-0001', 'aaa', '000003', 'O-0002', '800000.0'),
	('000007', '000001', '21/07/2013', '12:00:49', '011212', 'hakko bio richard', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0001', '133000.0'),
	('000009', '000001', '28/07/2013', '07:24:19', '011212', 'hakko bio richard', 'T-0007', '= PILIH RUANGAN =', '', '', '', 'P-0001', 'tidak ada', '000004', 'O-0001', '49000.0'),
	('000010', '000001', '28/07/2013', '07:26:25', '011212', 'hakko bio richard', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0001', '34000.0');
/*!40000 ALTER TABLE `periksa` ENABLE KEYS */;


-- Dumping structure for table poliklinik.resep
CREATE TABLE IF NOT EXISTS `resep` (
  `no_resep` varchar(6) NOT NULL,
  `tgl_resep` varchar(15) NOT NULL,
  `rincian_obat` varchar(60) NOT NULL,
  PRIMARY KEY (`no_resep`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table poliklinik.resep: 4 rows
/*!40000 ALTER TABLE `resep` DISABLE KEYS */;
INSERT IGNORE INTO `resep` (`no_resep`, `tgl_resep`, `rincian_obat`) VALUES
	('000001', '30/06/2013', 'amoxicillin, rhinos junior,'),
	('000002', '14/07/2013', ''),
	('000003', '18/07/2013', '12324'),
	('000004', '28/07/2013', 'amoxcillin');
/*!40000 ALTER TABLE `resep` ENABLE KEYS */;


-- Dumping structure for table poliklinik.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `kd_supplier` varchar(6) NOT NULL,
  `nm_supplier` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `notlp` varchar(13) NOT NULL,
  PRIMARY KEY (`kd_supplier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table poliklinik.supplier: 3 rows
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT IGNORE INTO `supplier` (`kd_supplier`, `nm_supplier`, `alamat`, `notlp`) VALUES
	('S001', 'Toko Barokah', 'Pasuruan', '0847373447343'),
	('S002', 'Toko Indah', 'Surabaya', '031-789453'),
	('S003', 'Supermart', 'Bangil', '08323245556');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;


-- Dumping structure for table poliklinik.tindakan
CREATE TABLE IF NOT EXISTS `tindakan` (
  `kd_tin` varchar(6) NOT NULL,
  `nama_tin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kd_tin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table poliklinik.tindakan: 10 rows
/*!40000 ALTER TABLE `tindakan` DISABLE KEYS */;
INSERT IGNORE INTO `tindakan` (`kd_tin`, `nama_tin`) VALUES
	('T-0001', 'Periksa Tes Kesehata'),
	('T-0002', 'Pemberian Obat Flu'),
	('T-0003', 'Pemberian Obat Alerg'),
	('T-0004', 'Pemberian Obat Antib'),
	('T-0005', 'Pemberian Obat Vitam'),
	('T-0006', 'Pemberian Obat Zalf'),
	('T-0007', 'Pemberian Obat Luka'),
	('T-0008', 'Pemberian Obat Lambu'),
	('T-0009', 'Pemberian Obat Mata'),
	('T-0010', 'Pemberian Obat Kesei');
/*!40000 ALTER TABLE `tindakan` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
