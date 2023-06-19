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
CREATE DATABASE IF NOT EXISTS `absen` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `absen`;

-- membuang struktur untuk table db_absen.absensi
DROP TABLE IF EXISTS `absensi`;
CREATE TABLE IF NOT EXISTS `absensi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NIM` varchar(50) NOT NULL,
  `NAMA` varchar(300) NOT NULL,
  `JURUSAN` varchar(50) NOT NULL,
  `TANGGAL` varchar(50) DEFAULT NULL,
  `ABSENSI` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Membuang data untuk tabel db_absen.absensi: ~0 rows (lebih kurang)
DELETE FROM `absensi`;
/*!40000 ALTER TABLE `absensi` DISABLE KEYS */;
INSERT INTO `absensi` (`ID`, `NIM`, `NAMA`, `JURUSAN`, `TANGGAL`, `ABSENSI`) VALUES
	(1, 'H071221068', 'Ardi', 'Sistem Informasi', '03 Juni 2023', 'Hadir'),
	(2, 'H071221069', 'Jonathan', 'Sistem Informasi', '03 Juni 2023', 'Hadir'),
	(3, 'H071221070', 'Zefanya Farrel', 'Sistem Informasi', '03 Juni 2023', 'Hadir');
/*!40000 ALTER TABLE `absensi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
