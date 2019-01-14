-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.21-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk beka
CREATE DATABASE IF NOT EXISTS `beka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `beka`;

-- membuang struktur untuk table beka.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` varchar(10) NOT NULL,
  `nama_admin` varchar(50) DEFAULT NULL,
  `hp_admin` varchar(13) DEFAULT NULL,
  `status_admin` varchar(1) DEFAULT NULL,
  `alamat_admin` text,
  `password_admin` varchar(225) DEFAULT NULL,
  `jenkel_admin` varchar(1) DEFAULT NULL,
  `id_akses_admin` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.admin: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id_admin`, `nama_admin`, `hp_admin`, `status_admin`, `alamat_admin`, `password_admin`, `jenkel_admin`, `id_akses_admin`) VALUES
	('AD001', 'Moch Faizal Ansyori', '085735469080', '1', 'Beged', '22ba172fa4e408497c1688f3bb74af23', 'L', 'AD');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- membuang struktur untuk table beka.config
CREATE TABLE IF NOT EXISTS `config` (
  `id` varchar(5) NOT NULL,
  `ns_config` varchar(5) NOT NULL,
  `nama_sistem` varchar(50) DEFAULT NULL,
  `nama_instansi` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `status_config` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.config: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `ns_config`, `nama_sistem`, `nama_instansi`, `author`, `status_config`) VALUES
	('BK1', 'SI BK', 'SI Bimbingan Konseling', 'SMK MAJU MUNDUR', 'Moch Faizal Ansyori', '1');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- membuang struktur untuk table beka.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` varchar(25) NOT NULL,
  `alamat_guru` text,
  `nama_guru` varchar(225) DEFAULT NULL,
  `jenkel_guru` varchar(1) DEFAULT NULL,
  `hp_guru` varchar(12) DEFAULT NULL,
  `pass_guru` varchar(225) DEFAULT NULL,
  `status_guru` varchar(1) DEFAULT NULL,
  `id_akses_guru` varchar(50) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.guru: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` (`id_guru`, `alamat_guru`, `nama_guru`, `jenkel_guru`, `hp_guru`, `pass_guru`, `status_guru`, `id_akses_guru`, `nip`) VALUES
	('GR0002', 'Petak', 'Muhammad Al Kautsar', 'L', '085735469080', 'd786a9ee4595786f0aada39869125f2b', '1', 'GR', '9986973738947'),
	('GR0003', 'Ds. Jampet', 'Siti Badriyah', 'P', '085790909090', '8dc3da3ad1e0cbad3ba4ce9a0e937fe2', '1', 'GR', '');
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;

-- membuang struktur untuk table beka.hak_akses
CREATE TABLE IF NOT EXISTS `hak_akses` (
  `id_hak_akses` varchar(2) NOT NULL,
  `nama_hak_akses` varchar(50) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_hak_akses`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.hak_akses: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `hak_akses` DISABLE KEYS */;
INSERT INTO `hak_akses` (`id_hak_akses`, `nama_hak_akses`, `status`) VALUES
	('AD', 'Administrator', '1'),
	('GR', 'Guru', '1'),
	('OT', 'Orang Tua', '1'),
	('SI', 'Siswa', '1');
/*!40000 ALTER TABLE `hak_akses` ENABLE KEYS */;

-- membuang struktur untuk table beka.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `akronim_jurusan` varchar(50) DEFAULT NULL,
  `status_jurusan` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.jurusan: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `akronim_jurusan`, `status_jurusan`) VALUES
	('JUR0001', 'Rekayasa Perangkat Lunak', 'RPL', '1'),
	('JUR0002', 'Teknik Pemesinan', 'TP', '1'),
	('JUR0003', 'Teknik Kendaraan Ringan', 'TKR', '1'),
	('JUR0004', 'Akuntansi', 'AK', '1'),
	('JUR0005', 'Desain Komunikasi Visual', 'DKV', '1');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;

-- membuang struktur untuk table beka.kategori_pelanggaran
CREATE TABLE IF NOT EXISTS `kategori_pelanggaran` (
  `id_kategori_pelanggaran` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori_kategori_pelanggaran` varchar(225) NOT NULL,
  `status_kategori_pelanggaran` varchar(1) NOT NULL,
  PRIMARY KEY (`id_kategori_pelanggaran`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.kategori_pelanggaran: ~11 rows (lebih kurang)
/*!40000 ALTER TABLE `kategori_pelanggaran` DISABLE KEYS */;
INSERT INTO `kategori_pelanggaran` (`id_kategori_pelanggaran`, `nama_kategori_kategori_pelanggaran`, `status_kategori_pelanggaran`) VALUES
	(1, 'Ketertiban', '1'),
	(2, 'Rokok', '1'),
	(3, 'Buku, Majalah, dan Kaset Terlarang, dan Handphone', '1'),
	(4, 'Senjata', '1'),
	(5, 'Obat atau Minuman Terlarang', '1'),
	(6, 'Perkelahian', '1'),
	(7, 'Keterlambatan', '1'),
	(8, 'Kehadiran', '1'),
	(9, 'Kerapian Pakaian', '1'),
	(10, 'Rambut', '1');
/*!40000 ALTER TABLE `kategori_pelanggaran` ENABLE KEYS */;

-- membuang struktur untuk table beka.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `status_kelas` varchar(1) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `tingkatan_kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.kelas: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`id_kelas`, `status_kelas`, `nama_kelas`, `tingkatan_kelas`) VALUES
	('KLS0001', '1', 'Sepuluh', 'X'),
	('KLS0002', '1', 'Sebelas', 'XI'),
	('KLS0003', '1', 'Duabelas', 'XII');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

-- membuang struktur untuk table beka.kelasjurusan
CREATE TABLE IF NOT EXISTS `kelasjurusan` (
  `id_kelasjurusan` varchar(50) NOT NULL,
  `id_kelas_kelasjurusan` varchar(50) DEFAULT NULL,
  `id_jurusan_kelasjurusan` varchar(50) DEFAULT NULL,
  `daya_tampung_kelasjurusan` int(3) DEFAULT NULL,
  `status_kelasjurusan` varchar(1) DEFAULT NULL,
  `urutan_kelasjurusan` varchar(5) DEFAULT NULL,
  `id_walikelas_kelasjurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kelasjurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.kelasjurusan: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `kelasjurusan` DISABLE KEYS */;
INSERT INTO `kelasjurusan` (`id_kelasjurusan`, `id_kelas_kelasjurusan`, `id_jurusan_kelasjurusan`, `daya_tampung_kelasjurusan`, `status_kelasjurusan`, `urutan_kelasjurusan`, `id_walikelas_kelasjurusan`) VALUES
	('KLJ0001', 'KLS0003', 'JUR0005', 32, '1', 'A', 'GR0002'),
	('KLJ0002', 'KLS0001', 'JUR0001', 32, '1', 'A', 'GR0003'),
	('KLJ0003', 'KLS0001', 'JUR0001', 32, '1', 'B', NULL),
	('KLJ0004', 'KLS0001', 'JUR0001', 32, '1', 'C', NULL),
	('KLJ0005', 'KLS0002', 'JUR0001', 32, '1', 'A', NULL),
	('KLJ0006', 'KLS0002', 'JUR0001', 32, '1', 'B', NULL),
	('KLJ0007', 'KLS0002', 'JUR0001', 32, '1', 'C', NULL);
/*!40000 ALTER TABLE `kelasjurusan` ENABLE KEYS */;

-- membuang struktur untuk view beka.kelastetap
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `kelastetap` (
	`id_kelasjurusan` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_kelas_kelasjurusan` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`id_jurusan_kelasjurusan` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`daya_tampung_kelasjurusan` INT(3) NULL,
	`status_kelasjurusan` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`urutan_kelasjurusan` VARCHAR(5) NULL COLLATE 'latin1_swedish_ci',
	`id_walikelas_kelasjurusan` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`id_kelas` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`status_kelas` VARCHAR(1) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_kelas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`tingkatan_kelas` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`id_jurusan` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jurusan` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`akronim_jurusan` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`status_jurusan` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk table beka.log
CREATE TABLE IF NOT EXISTS `log` (
  `waktu_log` datetime NOT NULL,
  `id_log` int(10) NOT NULL AUTO_INCREMENT,
  `pelaku_log` varchar(8) NOT NULL,
  `dikenai_log` varchar(8) NOT NULL,
  `menu_log` varchar(225) NOT NULL,
  `kegiatan_log` varchar(225) NOT NULL,
  `data_lama_log` text NOT NULL,
  `data_baru_log` text NOT NULL,
  `riwayat_log` varchar(24) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.log: ~138 rows (lebih kurang)
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`waktu_log`, `id_log`, `pelaku_log`, `dikenai_log`, `menu_log`, `kegiatan_log`, `data_lama_log`, `data_baru_log`, `riwayat_log`) VALUES
	('2017-06-13 08:23:41', 1, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'XXX', ''),
	('2017-06-13 08:26:43', 2, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'x', ''),
	('2017-06-13 15:13:16', 3, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '14'),
	('2017-06-13 15:13:33', 4, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menambah Data', '', 'XXX', ''),
	('2017-06-13 15:14:02', 5, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '15'),
	('2017-06-13 15:21:38', 6, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '14'),
	('2017-06-13 15:21:58', 7, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '15'),
	('2017-06-13 15:57:16', 8, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
	('2017-06-13 15:57:31', 9, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
	('2017-06-13 15:58:27', 10, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Rambut', 'Hair', '10'),
	('2017-06-13 15:58:39', 11, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Mengedit Data', 'Hair', 'Rambut', '10'),
	('2017-06-13 21:36:09', 12, 'tes', '', 'SI BK &raquo; Pelanggaran', 'Menambah Data', '', 'Tambah <br> 1<br> 100', ''),
	('2017-06-13 21:48:06', 13, 'tes', '', 'SI BK &raquo; Kategori Pelanggaran', 'Menghapus Data', '', '', '1'),
	('2017-06-17 05:17:56', 14, 'tes', 'AD001', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-17 05:21:21', 15, 'AD001', '', 'SI BK &raquo; Logout', 'Logout from : Administrator', '', '', ''),
	('2017-06-17 05:22:04', 16, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-17 05:33:03', 17, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
	('2017-06-18 06:02:41', 18, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-18 06:39:06', 19, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
	('2017-06-18 06:51:50', 20, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
	('2017-06-18 06:56:04', 21, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XII', ''),
	('2017-06-18 07:05:17', 22, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga Belas<br>XII', 'Tiga BelasI<br>XIII', 'KLS0004'),
	('2017-06-18 07:05:28', 23, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga BelasI<br>XIII', 'Tiga Belas<br>XIII', 'KLS0004'),
	('2017-06-18 07:06:38', 24, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Tiga Belas<br>XIII', 'Empat Belas<br>XIV', 'KLS0004'),
	('2017-06-18 12:00:57', 25, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-18 12:01:19', 26, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Empat Belas<br>XIV', ''),
	('2017-06-18 18:01:17', 27, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-18 20:35:00', 28, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-18 20:35:25', 29, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Rekayasa Perangkat Lunak<br>', ''),
	('2017-06-18 20:36:47', 30, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
	('2017-06-18 20:40:49', 31, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0002<br>Teknik Komputer dan Jaringan', ''),
	('2017-06-18 20:42:13', 32, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>XXXXXXXXX', ''),
	('2017-06-18 20:49:49', 33, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menghapus Data', '', '', 'JUR0003'),
	('2017-06-18 20:55:22', 34, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>Tata Boga', ''),
	('2017-06-18 21:03:37', 35, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Tata Boga<br>TB', 'Komputer Akuntansi<br>', 'JUR0003'),
	('2017-06-18 21:04:11', 36, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Komputer Akuntansi<br>', 'Komputer Akuntansi<br>KA', 'JUR0003'),
	('2017-06-18 21:04:40', 37, 'AD001', '', 'SI BK &raquo; Jurusan', 'Mengedit Data', 'Komputer Akuntansi<br>KA', 'Komputer Akuntansi<br>KA', 'JUR0003'),
	('2017-06-18 21:10:43', 38, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0004<br>Desain Komunikasi Visual', ''),
	('2017-06-19 14:22:18', 39, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-19 14:36:22', 40, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
	('2017-06-19 14:36:32', 41, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-19 14:36:46', 42, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
	('2017-06-19 14:36:55', 43, 'GR001', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
	('2017-06-19 14:37:02', 44, 'GR001', '', 'SI BK &raquo; Logout', 'Logout From Guru', '', '', ''),
	('2017-06-19 14:37:27', 45, '99828084', '', 'SI BK &raquo; Login', 'Login As Siswa', '', '', ''),
	('2017-06-19 14:46:16', 46, '99828084', '', 'SI BK &raquo; Logout', 'Logout From Siswa', '', '', ''),
	('2017-06-19 14:46:32', 47, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-19 14:49:17', 48, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
	('2017-06-19 14:49:39', 49, 'GR001', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
	('2017-06-29 09:21:53', 50, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-29 13:53:32', 51, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-29 13:56:25', 52, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'Tiga Belas<br>XIII', ''),
	('2017-06-29 13:57:09', 53, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'Duabelas<br>XI', 'Duabelas<br>XII', 'KLS0003'),
	('2017-06-29 13:58:45', 54, 'AD001', '', 'SI BK &raquo; Kelas', 'Menghapus Data', '', '', 'KLS0004'),
	('2017-06-29 14:51:26', 55, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br><br>B', ''),
	('2017-06-29 14:51:54', 56, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0001<br>32<br><br>A', ''),
	('2017-06-29 14:53:24', 57, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0002<br>32<br><br>A', ''),
	('2017-06-29 15:02:00', 58, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>C', ''),
	('2017-06-29 16:42:09', 59, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', '<br>', '<br>', 'ada'),
	('2017-06-29 17:08:50', 60, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000432C', 'KLJ0001'),
	('2017-06-29 17:10:33', 61, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0001<br>Rekayasa Perangkat Lunak', ''),
	('2017-06-29 17:10:57', 62, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0002<br>Teknik Pemesinan', ''),
	('2017-06-29 17:11:16', 63, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0003<br>Teknik Kendaraan Ringan', ''),
	('2017-06-29 17:11:32', 64, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0004<br>Akuntansi', ''),
	('2017-06-29 17:11:49', 65, 'AD001', '', 'SI BK &raquo; Jurusan', 'Menambah Data', '', 'JUR0005<br>Desain Komunikasi Visual', ''),
	('2017-06-29 17:12:07', 66, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>A', ''),
	('2017-06-29 17:12:29', 67, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000532B', 'KLJ0001'),
	('2017-06-29 17:12:54', 68, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0003<br>JUR0005<br>32<br>B', 'KLS0001<br>JUR000132A', 'KLJ0001'),
	('2017-06-29 17:13:36', 69, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0003<br>JUR0005<br>32<br>A', ''),
	('2017-06-29 17:17:41', 70, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Mengedit Data', 'KLS0001<br>JUR0001<br>32<br>A', 'KLS0003<br>JUR000532C', 'KLJ0001'),
	('2017-06-29 17:30:44', 71, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0001'),
	('2017-06-29 17:30:45', 72, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menghapus Data', '', '', 'KLJ0001'),
	('2017-06-29 19:55:35', 73, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-29 20:11:48', 74, 'AD001', '', 'SI BK &raquo; Kelas', 'Menambah Data', '', 'djhfkd<br>v', ''),
	('2017-06-29 20:11:55', 75, 'AD001', '', 'SI BK &raquo; Kelas', 'Mengedit Data', 'djhfkd<br>v', 'sfsdf<br>v', 'KLS0004'),
	('2017-06-29 20:12:02', 76, 'AD001', '', 'SI BK &raquo; Kelas', 'Menghapus Data', '', '', 'KLS0004'),
	('2017-06-29 20:16:13', 77, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-29 20:45:54', 78, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
	('2017-06-30 13:17:30', 79, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-30 14:25:40', 80, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-06-30 14:26:49', 81, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '<br>Asma<br>Petak<br>085735469090<br>P<br>GR', ''),
	('2017-06-30 14:27:47', 82, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '9986973738947<br>Muhammad Al Kautsar<br>Petak<br>085735469080<br>L<br>GR', ''),
	('2017-06-30 14:59:11', 83, 'AD001', '', 'SI BK &raquo; Guru', 'Mengedit Data', '<br>Asma<br>Petak<br>085735469090<br>P', '<br>Asma Binuril Qolbi<br>Surabaya<br>085735469091<br>P', 'GR0001'),
	('2017-06-30 15:09:41', 84, 'AD001', '', 'SI BK &raquo; Guru', 'Menghapus Data', '', '', 'GR0001'),
	('2017-07-02 12:35:28', 85, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-02 15:03:39', 86, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
	('2017-07-02 15:04:10', 87, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : KLJ0002', '', 'KLJ0002'),
	('2017-07-02 15:05:09', 88, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
	('2017-07-02 15:05:16', 89, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : KLJ0002', '', 'GR0002'),
	('2017-07-02 15:06:12', 90, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
	('2017-07-02 15:06:19', 91, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Remove Wali Kelas', 'ID Wali Kelas : GR0002', '', 'KLJ0002'),
	('2017-07-04 19:42:42', 92, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-04 19:44:23', 93, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0002', 'KLJ0002'),
	('2017-07-04 21:12:34', 94, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>A', ''),
	('2017-07-05 06:50:10', 95, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-05 16:00:24', 96, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-05 18:14:18', 97, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-05 18:28:09', 98, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '<br>Ali Jaber<br>Indonesia<br>035390879090<br>L<br>SI', ''),
	('2017-07-05 18:44:31', 99, 'AD001', '', 'SI BK &raquo; Siswa', 'Mengedit Data', '99869090123<br>Ali Jaber<br>Indonesia<br>035390879090<br>L', '99869090121<br>Yon AHy<br>Bojonegoro<br>035390879091<br>P', '99869090123'),
	('2017-07-05 18:48:16', 100, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99869090121'),
	('2017-07-05 18:48:16', 101, 'AD001', '', 'SI BK &raquo; Siswa', 'Menghapus Data', '', '', '99869090121'),
	('2017-07-06 09:39:40', 102, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-06 10:29:15', 103, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '70011897673<br>Cahyono Islami<br>Ds Gg Gandi<br>03538080121<br>L<br>SI', ''),
	('2017-07-06 10:30:36', 104, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '8989899898<br>Putri Titian<br>Mojodelik<br>08564342432<br>P<br>SI', ''),
	('2017-07-06 18:31:20', 105, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-07 13:53:41', 106, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-07 14:35:51', 107, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-07 18:35:09', 108, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-07 21:58:44', 109, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-08 04:58:50', 110, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-08 05:25:44', 111, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-08 06:12:54', 112, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976732520170708061254<br>70011897673<br>25<br>AD001<br>20170708061254<br>2017-07-06<br>Belakang Sekolah<br>Dikarenakan cewek', ''),
	('2017-07-08 06:14:12', 113, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '70011897673220170708061412<br>70011897673<br>2<br>AD001<br>20170708061412<br>2017-07-01<br>Belakang Sekolah<br>-', ''),
	('2017-07-08 08:19:20', 114, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731220170708081920<br>70011897673<br>12<br>AD001<br>20170708081920<br>2017-07-03<br>Kelas<br>Merokok di kelas saat jam istirahat', ''),
	('2017-07-08 08:23:05', 115, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '70011897673320170708082305<br>70011897673<br>3<br>AD001<br>20170708082305<br>2017-07-15<br>Belakang Sekolah<br>Melompati pagar', ''),
	('2017-07-08 08:25:33', 116, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731320170708082533<br>70011897673<br>13<br>AD001<br>20170708082533<br>2017-07-12<br>Di depan warung<br>Merokok saat seusai pulang sekolah dengan memakai seragam', ''),
	('2017-07-08 09:21:50', 117, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731320170708092150<br>70011897673<br>13<br>AD001<br>2017-07-01<br>20170708092150<br>Ruang Kelas<br>Merokok saat jam istirahat', ''),
	('2017-07-08 09:22:57', 118, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976734420170708092257<br>70011897673<br>44<br>AD001<br>2017-07-01<br>20170708092257<br>Ruang Kelas<br>Tidak memakai hasduk saat hari sabtu di kelas', ''),
	('2017-07-08 09:38:30', 119, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '99828084991520170708093829<br>9982808499<br>15<br>AD001<br>2017-07-04<br>20170708093829<br>Di kelas<br>-', ''),
	('2017-07-08 14:43:31', 120, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-08 14:45:27', 121, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731520170708144527<br>70011897673<br>15<br>AD001<br>2017-07-03<br>20170708144527<br>Di kelas<br>Menyebarkan kaset porno', ''),
	('2017-07-08 14:49:48', 122, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976731820170708144948<br>70011897673<br>18<br>AD001<br>2017-07-06<br>20170708144948<br>Di kelas<br>Melukai karena cemburu', ''),
	('2017-07-08 14:50:41', 123, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '700118976732320170708145041<br>70011897673<br>23<br>AD001<br>2017-07-14<br>20170708145041<br>Didepan gerbang<br>', ''),
	('2017-07-09 13:26:50', 124, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-09 19:10:50', 125, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-09 19:15:58', 126, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>B', ''),
	('2017-07-09 19:51:44', 127, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195144<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195144<br>f<br>f', ''),
	('2017-07-09 19:52:08', 128, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195208<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195208<br>f<br>f', ''),
	('2017-07-09 19:53:06', 129, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195306<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195306<br>f<br>f', ''),
	('2017-07-09 19:53:32', 130, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '8989899898120170709195332<br>8989899898<br>1<br>AD001<br>2017-07-01<br>20170709195332<br>f<br>f', ''),
	('2017-07-09 19:57:26', 131, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709195726<br>8989899898<br>12<br>AD001<br>2017-07-02<br>20170709195726<br>F<br>f', ''),
	('2017-07-09 19:59:47', 132, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709195946<br>8989899898<br>12<br>AD001<br>2017-07-01<br>20170709195946<br>f<br>f', ''),
	('2017-07-09 20:00:37', 133, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '89898998981220170709200037<br>8989899898<br>12<br>AD001<br>2017-07-01<br>20170709200037<br>f<br>f', ''),
	('2017-07-09 20:59:01', 134, 'AD001', '', 'SI BK &raquo; Guru', 'Menambah Data', '', '<br>Siti Badriyah<br>Ds. Jampet<br>085790909090<br>P<br>GR', ''),
	('2017-07-09 21:00:09', 135, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Set Wali Kelas', '', 'GR0003', 'KLJ0002'),
	('2017-07-09 21:00:48', 136, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0001<br>JUR0001<br>32<br>C', ''),
	('2017-07-09 21:01:35', 137, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>A', ''),
	('2017-07-09 21:01:59', 138, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>B', ''),
	('2017-07-09 21:02:25', 139, 'AD001', '', 'SI BK &raquo; Kelas Jurusan', 'Menambah Data', '', 'KLS0002<br>JUR0001<br>32<br>C', ''),
	('2017-07-09 21:03:55', 140, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '99864348933<br>Muhammad El Sharawi<br>Ds Kedung Adem<br>085743431212<br>L<br>SI', ''),
	('2017-07-09 21:04:48', 141, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '380483298393489<br>Mashuri<br>Ds Bakung<br>085734342122<br>L<br>SI', ''),
	('2017-07-09 21:05:35', 142, 'AD001', '', 'SI BK &raquo; Siswa', 'Menambah Data', '', '54354354523<br>Marshanda<br>Ds Jakarta<br>098574343412<br>P<br>SI', ''),
	('2017-07-09 21:07:09', 143, 'AD001', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '3804832983931220170709210709<br>380483298393<br>12<br>AD001<br>2017-07-01<br>20170709210709<br>F<br>', ''),
	('2017-07-09 21:35:56', 144, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
	('2017-07-09 21:36:25', 145, 'AD001', '', 'SI BK &raquo; Login', 'Login As Administrator', '', '', ''),
	('2017-07-09 21:38:46', 146, 'AD001', '', 'SI BK &raquo; Logout', 'Logout From Administrator', '', '', ''),
	('2017-07-09 21:39:04', 147, 'GR0002', '', 'SI BK &raquo; Login', 'Login As Guru', '', '', ''),
	('2017-07-09 21:57:57', 148, 'GR0002', '', 'SI BK &raquo; Pelanggaran Siswa', 'Menambah Pelanggaran', '', '998643489331220170709215757<br>99864348933<br>12<br>GR0002<br>2017-07-02<br>20170709215757<br>Di Kantin<br>', '');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- membuang struktur untuk table beka.ortu
CREATE TABLE IF NOT EXISTS `ortu` (
  `id_ortu` varchar(10) NOT NULL,
  `alamat_ortu` varchar(50) DEFAULT NULL,
  `nama_ortu` varchar(100) DEFAULT NULL,
  `jenkel_ortu` text,
  `pekerjaan_ortu` varchar(50) DEFAULT NULL,
  `hp_ortu` varchar(50) DEFAULT NULL,
  `status_ortu` varchar(1) DEFAULT NULL,
  `id_akses_ortu` varchar(2) DEFAULT NULL,
  `pass_ortu` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_ortu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.ortu: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `ortu` DISABLE KEYS */;
INSERT INTO `ortu` (`id_ortu`, `alamat_ortu`, `nama_ortu`, `jenkel_ortu`, `pekerjaan_ortu`, `hp_ortu`, `status_ortu`, `id_akses_ortu`, `pass_ortu`) VALUES
	('OT001', 'Sendang rejo', 'Muhammad Iqbal', 'L', 'Tentara', '085768903489', '1', 'OT', '1b74530ff1c8fdbb50405347962aeab3');
/*!40000 ALTER TABLE `ortu` ENABLE KEYS */;

-- membuang struktur untuk table beka.pelanggaran
CREATE TABLE IF NOT EXISTS `pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggaran` varchar(225) NOT NULL,
  `id_kategori_pelanggaran` varchar(10) NOT NULL,
  `point_pelanggaran` int(11) NOT NULL,
  `status_pelanggaran` varchar(1) NOT NULL,
  PRIMARY KEY (`id_pelanggaran`),
  KEY `id_kategori` (`id_kategori_pelanggaran`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.pelanggaran: ~59 rows (lebih kurang)
/*!40000 ALTER TABLE `pelanggaran` DISABLE KEYS */;
INSERT INTO `pelanggaran` (`id_pelanggaran`, `nama_pelanggaran`, `id_kategori_pelanggaran`, `point_pelanggaran`, `status_pelanggaran`) VALUES
	(1, 'Membuat keributan/ kegaduhan dalam kelas saat berlangsung pelajaran', '1', 10, '1'),
	(2, 'Masuk lingkungan sekolah dengan loncat pagar', '1', 5, '1'),
	(3, 'Keluar dari lingkungan sekolah tanpa izin', '1', 10, '1'),
	(4, 'Mengotori (mencoret-coret) benda milik sekolah, guru, pegawai dan teman', '1', 15, '1'),
	(5, 'Merusak/ menghilangkan barang milik sekolah, guru, pegawai dan teman', '1', 15, '1'),
	(6, 'Mengambil (mencuri) barang milik sekolah, guru, pegawai dan teman', '1', 25, '1'),
	(7, 'Makan dan minum didalam kelas saat berlangsung pelajaran', '1', 5, '1'),
	(8, 'Membawa benda yang tidak ada kaitannya dengan proses belajar', '1', 10, '1'),
	(9, 'Bertengkar/ bertentangan dengan teman dilingkungan sekolah', '1', 10, '1'),
	(10, 'Malakukan tindakan asusila (maksiat) didalam maupun diluar lingkungan sekolah', '1', 90, '1'),
	(11, 'Melakukan perbuatan yang berakibat mencemarkan nama baik sekolah', '1', 40, '1'),
	(12, 'Membawa rokok', '2', 25, '1'),
	(13, 'Merokok/ menghisap roko disekolah atau ditempat lain', '2', 50, '1'),
	(14, 'Membawa buku, majalah, atau kaset (terlarang) dan HP', '3', 25, '1'),
	(15, 'Menjual buku, Majalah atau kaset (terlarang) dan HP', '3', 25, '1'),
	(16, 'Membawa senjata tajam tanpa izin', '4', 30, '1'),
	(17, 'Memperjual belikan senjata tajam', '4', 50, '1'),
	(18, 'Menggunakan senjata tajam untuk mengancam', '4', 75, '1'),
	(19, 'Menggunakan senjata tajam untuk melukai', '4', 100, '1'),
	(20, 'Membawa obat/ minuman terlarang', '5', 50, '1'),
	(21, 'Menggunakan obat/ minuman terlarang', '5', 75, '1'),
	(22, 'Memperjual belikan obat/ minuman terlarang', '5', 75, '1'),
	(23, 'Disebabkan oleh siswa dalam sekolah (Intern)', '6', 15, '1'),
	(24, 'Disebabkan oleh siswa sekolah lain', '6', 25, '1'),
	(25, 'Antar siswa', '6', 50, '1'),
	(26, 'Satu kali', '7', 5, '1'),
	(27, 'Dua kali', '7', 10, '1'),
	(28, 'Tiga kali', '7', 10, '1'),
	(29, 'Terlambat masuk karena izin', '7', 5, '1'),
	(30, 'Terlambat masuk karena diberi tugas guru', '7', 5, '1'),
	(31, 'Terlambat masuk karena alasan dibuat-buat 5 poin', '7', 25, '1'),
	(32, 'Izin keluar saat proses belajar berlangsung tidak kembali', '7', 25, '1'),
	(33, 'Pulang tanpa izin', '7', 25, '1'),
	(34, 'Sakit tanpa keterangan (surat)', '8', 5, '1'),
	(35, 'Izin tanpa keterangan', '8', 10, '1'),
	(36, 'Alfa', '8', 10, '1'),
	(37, 'Tidak mengikuti kegiatan belajar (bolos)', '8', 20, '1'),
	(38, 'Tidak masuk sekolah dengan membuat surat keterangan palsu', '8', 15, '1'),
	(39, 'Keluar kelas saat proses belajar mengajar berlangsung', '8', 15, '1'),
	(40, 'Tidak mengikuti shalat dzuhur berjama’ah', '8', 10, '1'),
	(41, 'Tidak menghadiri kegiatan ekstrakurikuler', '8', 5, '1'),
	(42, 'Memakai seragam tidak rapi/ tidak dimasukkan (laki-laki)', '9', 3, '1'),
	(43, 'Memakai seragam yang ketat', '9', 3, '1'),
	(44, 'Tidak berpakaian seragam lengkap beserta atribut (sesuai ketentuan)', '9', 5, '1'),
	(45, 'Tidak memakai ikat pinggang hitam polos', '9', 5, '1'),
	(46, 'Tidak memakai sepatu hitam bertali', '9', 5, '1'),
	(47, 'Tidak memakai kaos kaki (sesuai ketentuan)', '9', 5, '1'),
	(48, 'Tidak memakai kaos dalam (sesuai ketentuan)', '9', 5, '1'),
	(49, 'Memakai peci bagi putra dan jilbab bagi putri (sesuai ketentuan)', '9', 5, '1'),
	(50, 'Siswa putri memakai perhiasan berlebihan', '9', 10, '1'),
	(51, 'Siswa putra memakai perhiasan atau assesoris (kalung, gelang, dll)', '9', 5, '1'),
	(52, 'Memakai pin assesoris yang tidak berkaitan dengan sekolah', '9', 5, '1'),
	(53, 'Memakai jaket/ Switer kedalam kelas', '9', 5, '1'),
	(54, 'Memanjangkan kuku/ mencatnya', '9', 5, '1'),
	(55, 'Mencoret-coret pakaian sekolah dengan sengaja', '9', 20, '1'),
	(56, 'Mencoret-coret pakaian sekolah dengan sengaja (setelah berakhirnya UN)', '9', 50, '1'),
	(57, 'Panjang melalui batas ketentuan (telinga, alis, dan krah baju)', '10', 5, '1'),
	(58, 'Pendek/ dicukur tidak rapi untuk siswa putra', '10', 10, '1'),
	(59, 'Dicat/ warna-warnai (putra/putri)', '10', 10, '1'),
	(60, 'Tambah', '1', 100, '1');
/*!40000 ALTER TABLE `pelanggaran` ENABLE KEYS */;

-- membuang struktur untuk table beka.pelanggaran_siswa
CREATE TABLE IF NOT EXISTS `pelanggaran_siswa` (
  `id_pelanggaran_siswa` varchar(50) NOT NULL,
  `nis_pelanggaran_siswa` varchar(12) NOT NULL,
  `id_pelanggaran_pelanggaran_siswa` varchar(10) NOT NULL,
  `id_guru_pelanggaran_siswa` varchar(25) NOT NULL,
  `waktu_melanggar_pelanggaran_siswa` date NOT NULL,
  `waktu_input_pelanggaran_siswa` datetime NOT NULL,
  `tempat_pelanggaran_siswa` varchar(225) NOT NULL,
  `keterangan_pelanggaran_siswa` text NOT NULL,
  `status_pelanggaran_siswa` varchar(1) NOT NULL,
  PRIMARY KEY (`id_pelanggaran_siswa`),
  KEY `nis` (`nis_pelanggaran_siswa`),
  KEY `id_pelanggaran` (`id_pelanggaran_pelanggaran_siswa`),
  KEY `id_guru` (`id_guru_pelanggaran_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.pelanggaran_siswa: ~14 rows (lebih kurang)
/*!40000 ALTER TABLE `pelanggaran_siswa` DISABLE KEYS */;
INSERT INTO `pelanggaran_siswa` (`id_pelanggaran_siswa`, `nis_pelanggaran_siswa`, `id_pelanggaran_pelanggaran_siswa`, `id_guru_pelanggaran_siswa`, `waktu_melanggar_pelanggaran_siswa`, `waktu_input_pelanggaran_siswa`, `tempat_pelanggaran_siswa`, `keterangan_pelanggaran_siswa`, `status_pelanggaran_siswa`) VALUES
	('3804832983931220170709210709', '380483298393', '12', 'AD001', '2017-07-01', '2017-07-09 21:07:09', 'F', '', '1'),
	('700118976731320170708092150', '70011897673', '13', 'GR0002', '2017-07-01', '2017-07-08 09:24:44', 'Ruang Kelas', 'Merokok saat jam istirahat', '1'),
	('700118976731520170708144527', '70011897673', '15', 'AD001', '2017-07-03', '2017-07-08 14:45:27', 'Di kelas', 'Menyebarkan kaset porno', '1'),
	('700118976731820170708144948', '70011897673', '18', 'AD001', '2017-07-06', '2017-07-08 14:49:48', 'Di kelas', 'Melukai karena cemburu', '1'),
	('700118976732320170708145041', '70011897673', '23', 'AD001', '2017-07-14', '2017-07-08 14:50:41', 'Didepan gerbang', '', '1'),
	('700118976734420170708092257', '70011897673', '44', 'GR0002', '2017-07-01', '2017-07-08 09:21:22', 'Ruang Kelas', 'Tidak memakai hasduk saat hari sabtu di kelas', '1'),
	('8989899898120170709195144', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:51:44', 'f', 'f', '1'),
	('8989899898120170709195208', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:52:08', 'f', 'f', '1'),
	('8989899898120170709195306', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:53:06', 'f', 'f', '1'),
	('8989899898120170709195332', '8989899898', '1', 'AD001', '2017-07-01', '2017-07-09 19:53:32', 'f', 'f', '1'),
	('89898998981220170709195726', '8989899898', '12', 'AD001', '2017-07-02', '2017-07-09 19:57:26', 'F', 'f', '1'),
	('89898998981220170709195946', '8989899898', '12', 'AD001', '2017-07-01', '2017-07-09 19:59:46', 'f', 'f', '1'),
	('89898998981220170709200037', '8989899898', '12', 'AD001', '2017-07-01', '2017-07-09 20:00:37', 'f', 'f', '1'),
	('99828084991520170708093829', '9982808499', '15', 'AD001', '2017-07-04', '2017-07-08 09:38:29', 'Di kelas', '-', '1'),
	('998643489331220170709215757', '99864348933', '12', 'GR0002', '2017-07-02', '2017-07-09 21:57:57', 'Di Kantin', '', '1');
/*!40000 ALTER TABLE `pelanggaran_siswa` ENABLE KEYS */;

-- membuang struktur untuk table beka.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `nis_siswa` varchar(12) NOT NULL,
  `nama_siswa` varchar(225) NOT NULL,
  `jenkel_siswa` varchar(1) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `hp_siswa` varchar(12) NOT NULL,
  `id_ayah_siswa` varchar(10) NOT NULL,
  `id_ibu_siswa` varchar(10) NOT NULL,
  `id_wali_siswa` varchar(12) NOT NULL,
  `id_kelas_siswa` varchar(225) NOT NULL,
  `id_akses_siswa` varchar(2) NOT NULL,
  `pass_siswa` varchar(225) NOT NULL,
  `status_siswa` varchar(1) NOT NULL,
  PRIMARY KEY (`nis_siswa`),
  KEY `id_kelas_siswa` (`id_kelas_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel beka.siswa: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` (`nis_siswa`, `nama_siswa`, `jenkel_siswa`, `alamat_siswa`, `hp_siswa`, `id_ayah_siswa`, `id_ibu_siswa`, `id_wali_siswa`, `id_kelas_siswa`, `id_akses_siswa`, `pass_siswa`, `status_siswa`) VALUES
	('380483298393', 'Mashuri', 'L', 'Ds Bakung', '085734342122', '', '', '', 'KLJ0004', 'SI', 'da622cf530cb64f548b81e074f6ecd97', '1'),
	('54354354523', 'Marshanda', 'P', 'Ds Jakarta', '098574343412', '', '', '', 'KLJ0005', 'SI', '617372e6ad484575d4a92734a7171f56', '1'),
	('70011897673', 'Cahyono Islami', 'L', 'Ds Gg Gandi', '03538080121', '', '', 'OT001', 'KLJ0001', 'SI', '7eccf5df0e785ff2fc19cd1612c28165', '1'),
	('8989899898', 'Putri Titian', 'P', 'Mojodelik', '08564342432', '', '', '', 'KLJ0001', 'SI', '70959f1b968d71b446bfa1455cc8d26f', '1'),
	('9982808499', 'Moch Faizal Ansyori', 'L', 'Petak Beged', '085735469080', 'OT001', '', 'OT001', 'KLJ0002', 'SI', '685a76df4b1bc7f783a2284c00926cb8', '1'),
	('99864348933', 'Muhammad El Sharawi', 'L', 'Ds Kedung Adem', '085743431212', '', '', '', 'KLJ0003', 'SI', '8ccd99038fd6364391d8c1f786fab5ae', '1');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

-- membuang struktur untuk view beka.kelastetap
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `kelastetap`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `kelastetap` AS select * from kelasjurusan
inner join kelas
on kelasjurusan.id_kelas_kelasjurusan = kelas.id_kelas
inner join jurusan
on kelasjurusan.id_jurusan_kelasjurusan = jurusan.id_jurusan
where 
(
(kelasjurusan.status_kelasjurusan = '1')
and (kelas.status_kelas = '1')
and (jurusan.status_jurusan = '1')
) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
