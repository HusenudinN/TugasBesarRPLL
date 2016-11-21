-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Nov 2016 pada 04.05
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poliklinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` varchar(6) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `user_id`, `password`) VALUES
('A-0001', 'hakko bio richard', 'hakko', 'romance18'),
('000001', 'Husenudin Nurdiansyah', 'admin', 'admin'),
('01', 'RIzal', 'rizal', 'hilmi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidan`
--

CREATE TABLE `bidan` (
  `nip` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `no_telp` varchar(14) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidan`
--

INSERT INTO `bidan` (`nip`, `nama`, `alamat`, `no_telp`) VALUES
('P-0001', 'hakko bio richard', 'kp.sempu no.118 rt.03/03', '085694984803'),
('P-0002', 'erni suherni', 'kp.wangkal', '09876567892'),
('01', 'Hendrik', 'Cibiru', '083818765432');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `no_daftar` varchar(6) NOT NULL,
  `tanggal` varchar(14) DEFAULT NULL,
  `jam` varchar(8) DEFAULT NULL,
  `no_rm` varchar(6) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `periksa` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`no_daftar`, `tanggal`, `jam`, `no_rm`, `nama`, `periksa`) VALUES
('000001', '30/06/2013', '22:59:28', '011212', 'hakko bio richard', 'PEMERIKSAAN ANAK'),
('000002', '18/07/2013', '04:57:07', '011214', 'ujang', 'PEMERIKSAAN ANAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kode` varchar(6) NOT NULL,
  `nama_obat` varchar(30) DEFAULT NULL,
  `jenis` varchar(10) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `harga` varchar(8) DEFAULT NULL,
  `stok` varchar(6) DEFAULT NULL,
  `stokmin` varchar(3) DEFAULT NULL,
  `suplier` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`kode`, `nama_obat`, `jenis`, `satuan`, `harga`, `stok`, `stokmin`, `suplier`) VALUES
('O-0001', 'amoxillin', 'Kapsul', 'strip', '9000', '8.0', '5', 'pt.kalbe farma'),
('O-0002', 'Rhinos Junior', 'Syrup', 'Botol', '55000', '7.0', '2', 'pt.rhinos farma'),
('O-0003', 'Rhinos Neo', 'Syrup', 'Botol', '30000', '40', '5', 'pt rhinos farma'),
('O-0004', 'termorex', 'Syrup', 'Botol', '25000', '100', '5', 'pt cikarang jaya'),
('O-0005', 'Tempra', 'Syrup', 'Botol', '30000', '2.0', '2', 'pt cikarang jaya'),
('O-0006', 'fc troches', 'Tablet', 'Strip', '10000', '50', '2', 'pt. meiji');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `no_rm` varchar(6) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `usia` varchar(8) DEFAULT NULL,
  `jenis_kel` varchar(10) DEFAULT NULL,
  `status` varchar(14) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_tlp` varchar(14) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`no_rm`, `nama`, `usia`, `jenis_kel`, `status`, `pekerjaan`, `alamat`, `no_tlp`) VALUES
('011212', 'hakko bio richard', '22 tahun', 'LAKI-LAKI', 'MENIKAH', 'wiraswasta', 'kp.sempu no.118', '085694984803'),
('011213', 'erni suherni', '22 tahun', 'PEREMPUAN', 'MENIKAH', 'Bidan', 'kp.wngkal rt.03/03 ', '085694102337'),
('011214', 'ujang', '21 tahun', 'LAKI-LAKI', 'BELUM MENIKAH', 'wiraswasta', 'kp.pilar timur', '098765755990'),
('011215', 'dedeh', '21 tahun', 'PEREMPUAN', 'MENIKAH', 'wiraswasta', 'kp.wangkal', '09876456789'),
('02', 'Hendri', '20', 'LAKI-LAKI', 'BELUM MENIKAH', 'Mahasiswa', 'Cibiru', '087820565662');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

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
  `kembalian` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no_trans`, `no_per`, `tanggal`, `jam`, `no_rm`, `nama`, `kd_tin`, `kode`, `id`, `tot_bayar`, `bayar`, `kembalian`) VALUES
('000002', '000007', '21/07/2013', '12:01:18', '011212', 'hakko bio richard', 'T-0001', 'O-0001', 'A-0001', '133000.0', '200000', '67000.0'),
('000001', '000002', '18/07/2013', '19:45:16', '011212', 'hakko bio richard', 'T-0007', 'O-0002', 'A-0001', '800000.0', '100000', '-700000.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periksa`
--

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
  `total_biaya` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periksa`
--

INSERT INTO `periksa` (`no_per`, `no_daftar`, `tanggal`, `jam`, `no_rm`, `nama`, `kd_tin`, `ruang_bersalin`, `harga_ruang`, `keadaan_bayi`, `jenkel_bayi`, `nip`, `diagnosa`, `no_resep`, `kode`, `total_biaya`) VALUES
('000005', '000001', '18/07/2013', '19:44:23', '011212', 'hakko bio richard', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0002', ''),
('000004', '000001', '18/07/2013', '19:41:55', '011212', 'hakko bio richard', 'T-0002', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0001', ''),
('000003', '', '18/07/2013', '19:38:11', '', '', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0002', ''),
('000002', '', '18/07/2013', '19:33:38', '', '', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0002', '', '', 'O-0001', ''),
('000001', '000001', '18/07/2013', '06:26:19', '011212', 'hakko bio richard', 'T-0007', 'RUANG MARWAH', '100000', 'baik', 'laki-laki', 'P-0001', 'aaa', '000003', 'O-0002', '800000.0'),
('000006', '', '19/07/2013', '06:39:40', '', '', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0001', ''),
('000007', '000001', '21/07/2013', '12:00:49', '011212', 'hakko bio richard', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0001', '133000.0'),
('000008', '', '22/07/2013', '00:06:32', '', '', 'T-0002', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0002', '85000.0'),
('000009', '000001', '28/07/2013', '07:24:19', '011212', 'hakko bio richard', 'T-0007', '= PILIH RUANGAN =', '', '', '', 'P-0001', 'tidak ada', '000004', 'O-0001', '49000.0'),
('000010', '000001', '28/07/2013', '07:26:25', '011212', 'hakko bio richard', 'T-0001', '= PILIH RUANGAN =', '', '', '', 'P-0001', '', '', 'O-0001', '34000.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep`
--

CREATE TABLE `resep` (
  `no_resep` varchar(6) NOT NULL,
  `tgl_resep` varchar(15) NOT NULL,
  `rincian_obat` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `resep`
--

INSERT INTO `resep` (`no_resep`, `tgl_resep`, `rincian_obat`) VALUES
('000001', '30/06/2013', 'amoxicillin, rhinos junior,'),
('000002', '14/07/2013', ''),
('000003', '18/07/2013', '12324'),
('000004', '28/07/2013', 'amoxcillin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindakan`
--

CREATE TABLE `tindakan` (
  `kd_tin` varchar(6) NOT NULL,
  `nama_tin` varchar(20) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tindakan`
--

INSERT INTO `tindakan` (`kd_tin`, `nama_tin`, `harga`) VALUES
('T-0001', 'suntik KB 1 bulan', '25000'),
('T-0002', 'Suntik KB 3 bulan', '30000'),
('T-0003', 'Imunisasi DPT', '65000'),
('T-0004', 'Imunisasi Polio', '15000'),
('T-0005', 'Imunisasi BCG', '30000'),
('T-0006', 'Periksa Kehamilan', '40000'),
('T-0007', 'Pengobatan Anak', '40000'),
('T-0008', 'Persalinan', '1200000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidan`
--
ALTER TABLE `bidan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`no_daftar`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`no_rm`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no_per`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`no_per`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`no_resep`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`kd_tin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
