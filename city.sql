-- --------------------------------------------------------
-- 호스트:                          j10a305.p.ssafy.io
-- 서버 버전:                        11.3.2-MariaDB-1:11.3.2+maria~ubu2204 - mariadb.org binary distribution
-- 서버 OS:                        debian-linux-gnu
-- HeidiSQL 버전:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- travel 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `travel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `travel`;

-- 테이블 travel.city 구조 내보내기
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `city_code` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `FKll21eddgtrjc9f40ueeouyr8f` (`province_id`),
  CONSTRAINT `FKll21eddgtrjc9f40ueeouyr8f` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 travel.city:~229 rows (대략적) 내보내기
INSERT INTO `city` (`city_id`, `created_at`, `updated_at`, `img_url`, `name`, `city_code`, `province_id`) VALUES
	(1, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '강남구', 1, 1),
	(2, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '강동구', 2, 1),
	(3, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '강북구', 3, 1),
	(4, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '강서구', 4, 1),
	(5, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '관악구', 5, 1),
	(6, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '광진구', 6, 1),
	(7, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '구로구', 7, 1),
	(8, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '금천구', 8, 1),
	(9, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '노원구', 9, 1),
	(10, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '도봉구', 10, 1),
	(11, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '동대문구', 11, 1),
	(12, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '동작구', 12, 1),
	(13, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '마포구', 13, 1),
	(14, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '서대문구', 14, 1),
	(15, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '서초구', 15, 1),
	(16, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '성동구', 16, 1),
	(17, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '성북구', 17, 1),
	(18, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '송파구', 18, 1),
	(19, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '양천구', 19, 1),
	(20, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '영등포구', 20, 1),
	(21, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '용산구', 21, 1),
	(22, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '은평구', 22, 1),
	(23, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '종로구', 23, 1),
	(24, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '중구', 24, 1),
	(25, '2024-03-22 00:10:48.000000', '2024-03-22 00:10:48.000000', NULL, '중랑구', 25, 1),
	(26, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '강화군', 1, 2),
	(27, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '계양구', 2, 2),
	(28, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '미추홀구', 3, 2),
	(29, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '남동구', 4, 2),
	(30, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '동구', 5, 2),
	(31, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '부평구', 6, 2),
	(32, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '서구', 7, 2),
	(33, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '연수구', 8, 2),
	(34, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '옹진군', 9, 2),
	(35, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '중구', 10, 2),
	(36, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '대덕구', 1, 3),
	(37, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '동구', 2, 3),
	(38, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '서구', 3, 3),
	(39, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '유성구', 4, 3),
	(40, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '중구', 5, 3),
	(41, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '남구', 1, 4),
	(42, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '달서구', 2, 4),
	(43, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '달성군', 3, 4),
	(44, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '동구', 4, 4),
	(45, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '북구', 5, 4),
	(46, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '서구', 6, 4),
	(47, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '수성구', 7, 4),
	(48, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '중구', 8, 4),
	(49, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '군위군', 9, 4),
	(50, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '광산구', 1, 5),
	(51, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '남구', 2, 5),
	(52, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '동구', 3, 5),
	(53, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '북구', 4, 5),
	(54, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '서구', 5, 5),
	(55, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '강서구', 1, 6),
	(56, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '금정구', 2, 6),
	(57, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '기장군', 3, 6),
	(58, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '남구', 4, 8),
	(59, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '동구', 5, 6),
	(60, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '동래구', 6, 6),
	(61, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '부산진구', 7, 6),
	(62, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '북구', 8, 6),
	(63, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '사상구', 9, 6),
	(64, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '사하구', 10, 6),
	(65, '2024-03-22 00:12:38.000000', '2024-03-22 00:12:38.000000', NULL, '서구', 11, 6),
	(66, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '수영구', 12, 6),
	(67, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '연제구', 13, 6),
	(68, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '영도구', 14, 6),
	(69, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '중구', 15, 6),
	(70, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '해운대구', 16, 6),
	(71, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '중구', 1, 7),
	(72, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '남구', 2, 7),
	(73, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '동구', 3, 7),
	(74, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '북구', 4, 7),
	(75, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '울주군', 5, 7),
	(76, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '세종특별자치시', 1, 8),
	(77, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '가평군', 1, 31),
	(78, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '고양시', 2, 31),
	(79, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '과천시', 3, 31),
	(80, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '광명시', 4, 31),
	(81, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '광주시', 5, 31),
	(82, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '구리시', 6, 31),
	(83, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '군포시', 7, 31),
	(84, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '김포시', 8, 31),
	(85, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '남양주시', 9, 31),
	(86, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '동두천시', 10, 31),
	(87, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '부천시', 11, 31),
	(88, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '성남시', 12, 31),
	(89, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '수원시', 13, 31),
	(90, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '시흥시', 14, 31),
	(91, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '안산시', 15, 31),
	(92, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '안성시', 16, 31),
	(93, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '안양시', 17, 31),
	(94, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '양주시', 18, 31),
	(95, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '양평군', 19, 31),
	(96, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '여주시', 20, 31),
	(97, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '연천군', 21, 31),
	(98, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '오산시', 22, 31),
	(99, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '용인시', 23, 31),
	(100, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '의왕시', 24, 31),
	(101, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '의정부시', 25, 31),
	(102, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '이천시', 26, 31),
	(103, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '파주시', 27, 31),
	(104, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '평택시', 28, 31),
	(105, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '포천시', 29, 31),
	(106, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '하남시', 30, 31),
	(107, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '화성시', 31, 31),
	(108, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '괴산군', 1, 33),
	(109, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '단양군', 2, 33),
	(110, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '보은군', 3, 33),
	(111, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '영동군', 4, 33),
	(112, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '옥천군', 5, 33),
	(113, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '음성군', 6, 33),
	(114, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '제천시', 7, 33),
	(115, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '진천군', 8, 33),
	(116, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '청주시', 10, 33),
	(117, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '충주시', 11, 33),
	(118, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '증평군', 12, 33),
	(119, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '공주시', 1, 34),
	(120, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '금산군', 2, 34),
	(121, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '논산시', 3, 34),
	(122, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '당진시', 4, 34),
	(123, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '보령시', 5, 34),
	(124, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '부여군', 6, 34),
	(125, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '서산시', 7, 34),
	(126, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '서천군', 8, 34),
	(127, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '아산시', 9, 34),
	(128, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '예산군', 11, 34),
	(129, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '천안시', 12, 34),
	(130, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '청양군', 13, 34),
	(131, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '태안군', 14, 34),
	(132, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '홍성군', 15, 34),
	(133, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '계룡시', 16, 34),
	(134, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '경산시', 1, 35),
	(135, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '경주시', 2, 35),
	(136, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '고령군', 3, 35),
	(137, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '구미시', 4, 35),
	(138, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '김천시', 6, 35),
	(139, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '문경시', 7, 35),
	(140, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '봉화군', 8, 35),
	(141, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '상주시', 9, 35),
	(142, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '성주군', 10, 35),
	(143, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '안동시', 11, 35),
	(144, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '영덕군', 12, 35),
	(145, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '영양군', 13, 35),
	(146, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '영주시', 14, 35),
	(147, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '영천시', 15, 35),
	(148, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '예천군', 16, 35),
	(149, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '울릉군', 17, 35),
	(150, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '울진군', 18, 35),
	(151, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '의성군', 19, 35),
	(152, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '청도군', 20, 35),
	(153, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '청송군', 21, 35),
	(154, '2024-03-22 00:14:03.000000', '2024-03-22 00:14:03.000000', NULL, '칠곡군', 22, 35),
	(155, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '포항시', 23, 35),
	(156, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '거제시', 1, 36),
	(157, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '거창군', 2, 36),
	(158, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '고성군', 3, 36),
	(159, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '김해시', 4, 36),
	(160, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '남해군', 5, 36),
	(161, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '밀양시', 7, 36),
	(162, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '사천시', 8, 36),
	(163, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '산청군', 9, 36),
	(164, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '양산시', 10, 36),
	(165, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '의령군', 12, 36),
	(166, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '진주시', 13, 36),
	(167, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '창녕군', 15, 36),
	(168, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '창원시', 16, 36),
	(169, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '통영시', 17, 36),
	(170, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '하동군', 18, 36),
	(171, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '함안군', 19, 36),
	(172, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '함양군', 20, 36),
	(173, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '합천군', 21, 36),
	(174, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '고창군', 1, 37),
	(175, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '군산시', 2, 37),
	(176, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '김제시', 3, 37),
	(177, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '남원시', 4, 37),
	(178, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '무주군', 5, 37),
	(179, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '부안군', 6, 37),
	(180, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '순창군', 7, 37),
	(181, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '완주군', 8, 37),
	(182, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '익산시', 9, 37),
	(183, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '임실군', 10, 37),
	(184, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '장수군', 11, 37),
	(185, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '전주시', 12, 37),
	(186, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '정읍시', 13, 37),
	(187, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '진안군', 14, 37),
	(188, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '강진군', 1, 38),
	(189, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '고흥군', 2, 38),
	(190, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '곡성군', 3, 38),
	(191, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '광양시', 4, 38),
	(192, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '구례군', 5, 38),
	(193, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '나주시', 6, 38),
	(194, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '담양군', 7, 38),
	(195, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '목포시', 8, 38),
	(196, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '무안군', 9, 38),
	(197, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '보성군', 10, 38),
	(198, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '순천시', 11, 38),
	(199, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '신안군', 12, 38),
	(200, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '여수시', 13, 38),
	(201, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '영광군', 16, 38),
	(202, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '영암군', 17, 38),
	(203, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '완도군', 18, 38),
	(204, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '장성군', 19, 38),
	(205, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '장흥군', 20, 38),
	(206, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '진도군', 21, 38),
	(207, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '함평군', 22, 38),
	(208, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '해남군', 23, 38),
	(209, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '화순군', 24, 38),
	(210, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '서귀포시', 3, 39),
	(211, '2024-03-22 00:15:29.000000', '2024-03-22 00:15:29.000000', NULL, '제주시', 4, 39),
	(212, '2024-03-22 09:21:05.520741', '2024-03-22 09:21:05.520741', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/c06e231e-78ac-45df-a8a6-542605b09ab7_강원-강릉.jpg', '강릉시', 1, 32),
	(213, '2024-03-22 09:22:14.135233', '2024-03-22 09:22:14.135233', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/5d91cf78-a5eb-46a4-a86a-1f17f67cf56d_강원-고성.jpg', '고성군', 2, 32),
	(214, '2024-03-22 09:22:26.310223', '2024-03-22 09:22:26.310223', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/e8f5299c-582e-417e-9813-2c0fb8819a44_강원-동해.jpg', '동해시', 3, 32),
	(215, '2024-03-22 09:22:37.187144', '2024-03-22 09:22:37.187144', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/e5f14609-7b0e-4bbc-a60f-31962ca60ba0_강원-삼척.jpg', '삼척시', 4, 32),
	(216, '2024-03-22 09:22:46.466815', '2024-03-22 09:22:46.466815', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/94462d73-ced6-45f3-a9c2-0b7c54ee0bb2_강원-속초.jpg', '속초시', 5, 32),
	(217, '2024-03-22 09:22:57.519399', '2024-03-22 09:22:57.519399', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/8b958bf0-3c0d-40c7-aa6c-184853767dd8_강원-양구.jpg', '양구군', 6, 32),
	(218, '2024-03-22 09:23:07.367394', '2024-03-22 09:23:07.367394', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/addc5383-3797-42c7-8a05-eee90b1f0a2d_강원-양양.jpg', '양양군', 7, 32),
	(219, '2024-03-22 09:27:36.798828', '2024-03-22 09:27:36.798828', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/67b0e7f1-cab7-478e-851c-e6d97064583f_강원-영월.jpg', '영월군', 8, 32),
	(220, '2024-03-22 09:23:33.797916', '2024-03-22 09:23:33.797916', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/5111fec6-35fb-4418-8f4c-08102fc02a62_강원-원주.jpg', '원주시', 9, 32),
	(221, '2024-03-22 09:23:45.291823', '2024-03-22 09:23:45.291823', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/498b0763-6e1c-4979-95f5-51d8f3b835b7_강원-인제.jpg', '인제군', 10, 32),
	(222, '2024-03-22 09:24:02.477804', '2024-03-22 09:24:02.477804', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/beb08d5e-c501-4859-a183-2c649e32f4b2_강원-정선.jpg', '정선군', 11, 32),
	(223, '2024-03-22 09:24:15.179330', '2024-03-22 09:24:15.179330', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/9d4dd64f-ba5a-4350-ba35-b62348e1ccf7_강원-철원.jpg', '철원군', 12, 32),
	(224, '2024-03-22 09:24:26.867479', '2024-03-22 09:24:26.867479', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/f81c03f3-7855-43d8-bc5f-f6f1b05688c5_강원-춘천.jpg', '춘천시', 13, 32),
	(225, '2024-03-22 09:24:35.087548', '2024-03-22 09:24:35.087548', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/d66c4f1c-073f-4184-a620-bdd7776f1762_강원-태백.jpg', '태백시', 14, 32),
	(226, '2024-03-22 09:24:48.349989', '2024-03-22 09:24:48.349989', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/36382fde-c4e1-47c3-96b0-c33679528eac_강원-평창.jpg', '평창군', 15, 32),
	(227, '2024-03-22 09:24:59.621674', '2024-03-22 09:24:59.621674', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/5f5cb350-e7fb-4c97-a8fa-e228297e9251_강원-홍천.jpg', '홍천군', 16, 32),
	(228, '2024-03-22 09:25:18.062230', '2024-03-22 09:25:18.062230', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/9017d71f-ecc4-4cca-8f05-d45ef8b83ae0_강원-화천.jpg', '화천군', 17, 32),
	(229, '2024-03-22 09:25:26.518405', '2024-03-22 09:25:26.518405', 'https://travel-maker.s3.ap-northeast-2.amazonaws.com/d6db6989-75ac-464c-be90-00036e0d8b7a_강원-횡성.jpg', '횡성군', 18, 32);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
