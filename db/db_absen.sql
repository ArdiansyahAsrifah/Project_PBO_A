-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.28-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk db_absen
CREATE DATABASE IF NOT EXISTS `db_absen` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `db_absen`;

-- membuang struktur untuk table db_absen.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `Nama` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Membuang data untuk tabel db_absen.admin: ~2 rows (lebih kurang)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`, `Nama`) VALUES
	(1, 'admin', '123', 'Administrator'),
	(2, 'ardi', 'ardi123', 'ardiansyah');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- membuang struktur untuk table db_absen.mahasiswa
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `NIM` char(11) NOT NULL,
  `NamaMahasiswa` varchar(80) NOT NULL,
  `JK` enum('L','P') NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Membuang data untuk tabel db_absen.mahasiswa: ~14 rows (lebih kurang)
DELETE FROM `mahasiswa`;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` (`NIM`, `NamaMahasiswa`, `JK`, `Kelas`, `Alamat`) VALUES
	('H071221062', 'Fauzan', 'L', 'PBO A', 'Sunu'),
	('H071221063', 'Aditiya', 'L', 'PBO A', 'Tamalanrea'),
	('H071221064', 'Afif', 'L', 'PBO A', 'BTP'),
	('H071221065', 'Izzata', 'P', 'PBO A', 'PK 7'),
	('H071221066', 'Zabryna', 'P', 'PBO A', 'Tanjung Bunga'),
	('H071221067', 'Jonathan', 'L', 'PBO A', 'Jl.Damai'),
	('H071221070', 'Zefanya', 'L', 'PBO A', 'Tamalate'),
	('H071221073', 'Ori', 'L', 'PBO A', 'BTP'),
	('H071221071', 'Rama', 'L', 'PBO A', 'BTP'),
	('H071221072', 'Ara', 'P', 'PBO A', 'Antang'),
	('H071221075', 'Mario', 'L', 'PBO A', 'Jl. Daeng Tata'),
	('H071221049', 'Syifa', 'P', 'PBO A', 'PK 7'),
	('H071221068', 'Ardiansyah', 'L', 'PBO A', 'Sudiang Raya'),
	('H071221082', 'Mahen', 'L', 'PBO A', 'BTP'),
	('H071221002', 'Muthi', 'P', 'PBO A', 'Jl. Damai');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;

-- membuang struktur untuk table db_absen.presensi
DROP TABLE IF EXISTS `presensi`;
CREATE TABLE IF NOT EXISTS `presensi` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `idAdmin` int(3) NOT NULL,
  `NIM` char(11) NOT NULL,
  `kehadiran` char(10) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ket` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Membuang data untuk tabel db_absen.presensi: ~12 rows (lebih kurang)
DELETE FROM `presensi`;
/*!40000 ALTER TABLE `presensi` DISABLE KEYS */;
INSERT INTO `presensi` (`id`, `idAdmin`, `NIM`, `kehadiran`, `tgl`, `ket`) VALUES
	(6, 1, 'H071221062', 'Hadir', '2023-06-16 00:31:42', '-'),
	(7, 1, 'H071221063', 'Sakit', '2023-06-16 00:32:11', 'Medical CheckUp'),
	(8, 1, 'H071221064', 'Hadir', '2023-06-16 00:32:27', '-'),
	(9, 1, 'H071221065', 'Hadir', '2023-06-16 00:32:36', '-'),
	(10, 1, 'H071221066', 'Izin', '2023-06-16 00:32:49', 'Lomba'),
	(11, 1, 'H071221067', 'Hadir', '2023-06-16 00:33:19', '-'),
	(12, 1, 'H071221070', 'Izin', '2023-06-16 00:34:04', 'Acara keluarga'),
	(13, 1, 'H071221073', 'Hadir', '2023-06-16 00:34:21', '-'),
	(14, 1, 'H071221071', 'Sakit', '2023-06-16 00:34:36', 'Demam'),
	(15, 1, 'H071221072', 'Alfa', '2023-06-16 00:34:51', ''),
	(16, 1, 'H071221075', 'Izin', '2023-06-16 00:35:04', 'Lomba'),
	(17, 1, 'H071221049', 'Hadir', '2023-06-16 00:35:14', '-'),
	(18, 1, 'H071221068', 'Hadir', '2023-06-16 00:35:28', '-'),
	(19, 1, 'H0712221058', 'Hadir', '2023-06-16 00:35:38', '-'),
	(20, 1, 'H071221082', 'Hadir', '2023-06-16 07:51:27', '-'),
	(21, 1, 'H071221002', 'Hadir', '2023-06-16 08:11:29', '-');
/*!40000 ALTER TABLE `presensi` ENABLE KEYS */;

-- membuang struktur untuk view db_absen.vpresensi
DROP VIEW IF EXISTS `vpresensi`;
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `vpresensi` (
	`id` INT(3) NOT NULL,
	`NIM` CHAR(11) NOT NULL COLLATE 'latin1_swedish_ci',
	`NamaMahasiswa` VARCHAR(80) NOT NULL COLLATE 'latin1_swedish_ci',
	`StatusKehadiran` CHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`tgl` TIMESTAMP NOT NULL,
	`ket` VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	`Penginput` VARCHAR(45) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- membuang struktur untuk view db_absen.vpresensi
DROP VIEW IF EXISTS `vpresensi`;
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `vpresensi`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vpresensi` AS select `presensi`.`id` AS `id`,`mahasiswa`.`NIM` AS `NIM`,`mahasiswa`.`NamaMahasiswa` AS `NamaMahasiswa`,`presensi`.`kehadiran` AS `StatusKehadiran`,`presensi`.`tgl` AS `tgl`,`presensi`.`ket` AS `ket`,`admin`.`Nama` AS `Penginput` from `presensi` join `mahasiswa` on`presensi`.`NIM` = `mahasiswa`.`NIM` join `admin` on`presensi`.`idAdmin` = `admin`.`id` ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
