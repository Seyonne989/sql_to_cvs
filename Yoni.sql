-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table test.table1
CREATE TABLE IF NOT EXISTS `table1` (
  `PhoneNumber` char(50) DEFAULT NULL,
  `FirstName` char(50) DEFAULT NULL,
  `Family` char(50) DEFAULT NULL,
  `Address` char(50) DEFAULT NULL,
  `Zip` char(50) DEFAULT NULL,
  `Age` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.table1: ~2 rows (approximately)
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
INSERT INTO `table1` (`PhoneNumber`, `FirstName`, `Family`, `Address`, `Zip`, `Age`) VALUES
	('054-624-7176', 'Ghiora', 'Drori', 'Haznhanim 22', '76212', NULL),
	('054-942-6377', 'Yoni', 'Drori', 'Haznhanim 22', '76212', NULL);
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
