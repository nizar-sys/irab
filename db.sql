-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table irsab.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table irsab.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table irsab.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table irsab.migrations: ~5 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_02_07_103645_create_pages_table', 1);

-- Dumping structure for table irsab.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table irsab.pages: ~3 rows (approximately)
DELETE FROM `pages`;
INSERT INTO `pages` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
	(1, 'profile', '<p>The IASCB, provides accreditation to certifying bodies/registrars throughout the world.</p>\r\n\r\n<p>Our services cover accreditations in the following non-regulated sectors:</p>\r\n\r\n<ul>\r\n	<li>Quality (ISO 9000)</li>\r\n	<li>Environmental (ISO 14000)</li>\r\n	<li>Energy (ISO 16000)</li>\r\n	<li>Occupational Health &amp; Safety (OHSAS 18000)</li>\r\n	<li>Food (ISO 22000)</li>\r\n	<li>Information Security (ISO 27000, 27799)</li>\r\n	<li>Contractors &amp; Personnel Safety (SCC/SCP)</li>\r\n	<li>Inspection Activities (Maritime, On- and Offshore, EN 45004)</li>\r\n	<li>Medical Devices (ISO 13485)</li>\r\n	<li>Business Continuity (BS 25999)</li>\r\n	<li>Corporate Responsibility System (CRS - MVO 8000)</li>\r\n	<li>Inspection Bodies (ISO 17020)</li>\r\n</ul>\r\n\r\n<p>The IASCB&nbsp;undertakes to conduct its business activities according to our intrinsic philosophy, values and agreed objectives.</p>\r\n\r\n<p>The IASCB&nbsp;operates a business management system to provide the structure for implementing our philosophy, values and objectives in a systematic and accountable manner.</p>\r\n\r\n<p>The Supervisory Board, Management and Staff of the IASCB&nbsp;are committed to operating and continuously improving their services. Improvement is achieved by monitoring our performance and making changes where necessary in accordance with the principles of WTO and the ISO Standards.</p>\r\n\r\n<p>All personnel undergo training covering the content and implementation of our business management system and are required to understand how it relates to their own work.</p>\r\n\r\n<p>The IASCB&nbsp;undertakes to comply with all applicable international, national and EU legislation and other regulations as these apply to accreditation services.</p>\r\n\r\n<p>Our company policy and the implementation of this policy is regularly reviewed in order to ensure its continuing conformance with the needs of all our stakeholders whether affected directly or indirectly by our actions.</p>', '2023-02-07 03:57:37', '2023-02-07 04:30:19'),
	(2, 'our service', '<p>Accreditation from the IASCB&nbsp;is available to certification bodies that operate in the following areas of activity:</p>\r\n\r\n<table border="2" cellpadding="5">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ISO 9001</strong></td>\r\n			<td>Quality management systems</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 10002</strong></td>\r\n			<td>Customer satisfaction, Guidelines for complaints handling in organizations</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 13485</strong></td>\r\n			<td>Medical devices, Quality management systems</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 14001</strong></td>\r\n			<td>Environmental management systems</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 15189</strong></td>\r\n			<td>Medical laboratories, Particular requirements for quality and competence</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 50001</strong></td>\r\n			<td>Energy Management Sysyem</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO/TS 16949</strong></td>\r\n			<td>Quality Management Systems: Automotive</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 45001</strong></td>\r\n			<td>Occupational Health and Safety Management System</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 20000</strong></td>\r\n			<td>Information Technology Services Management</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 20252</strong></td>\r\n			<td>Market, opinion and social research, Vocabulary and service requirements</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 22000</strong></td>\r\n			<td>Food Safety Management System</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 27000</strong></td>\r\n			<td>Information Security Management System</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO/TS 29001</strong></td>\r\n			<td>QMS for Petroleum, petrochemical and natural gas industries</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 30000</strong></td>\r\n			<td>Ship recycling management systems</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 31000</strong></td>\r\n			<td>Risk Management System</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 17020</strong></td>\r\n			<td>Comformity asessment of bodies performing inspection</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>AS 9100:2016 Rev D</strong></td>\r\n			<td>Aerospace Quality Management Systems</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 37001</strong></td>\r\n			<td>Anti-Bribery Management Systems</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 17025</strong></td>\r\n			<td>General requirements for the competence of testing and calibration laboratorie</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO/IEC 20000-1:2011<br />\r\n			ISO/IEC 20000-1:2018</strong></td>\r\n			<td>Information Technology</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO/IEC 27000:2018</strong></td>\r\n			<td>ISMS</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 55001</strong></td>\r\n			<td>Asset management - Management systems</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>FSSC 22000</strong></td>\r\n			<td>Food Safety System Certification 22000</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ISO 21500</strong></td>\r\n			<td>Project Management</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2023-02-07 03:58:54', '2023-02-07 03:58:54'),
	(3, 'accreditation', '<h3>WHAT IS ACCREDITATION ?</h3>\r\n\r\n<p>Accreditation is the formal endorsement or recognition of an assessment body&#39;s competence, integrity, credibility and independence to undertake certification assessment activities.</p>\r\n\r\n<p>In an ever increasing globalised marketplace, purchasers need reassurance and confidence that a supplier who may be thousands of kilometres away can provide goods and/or services that meet their specific requirements. Certification by a reputable third party can assist in providing this reassurance and confidence.</p>\r\n\r\n<p>In an ever increasing globalised marketplace, purchasers need reassurance and confidence that a supplier who may be thousands of kilometres away can provide goods and/or services that meet their specific requirements. Certification by a reputable third party can assist in providing this reassurance and confidence.</p>\r\n\r\n<p>For certificates to be reputable and recognised worldwide, accreditation of third party certification bodies (although not always mandatory) is the strong preference of many suppliers.</p>\r\n\r\n<p>At the IASCB, we are not only independent but also free from Governmental influence and therefore uniquely placed to provide accreditation services that underpin the reassurance and confidence described.</p>\r\n\r\n<p>ISO&#39;s official definition of accreditation is &quot;third party attestation related to a conformity assessment body conveying formal demonstration of its competence to carry out specific conformity assessment tasks&quot;(ISO/IEC 17000:2004).</p>', '2023-02-07 03:59:26', '2023-02-07 04:29:45');

-- Dumping structure for table irsab.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table irsab.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping structure for table irsab.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table irsab.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table irsab.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table irsab.users: ~2 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `avatar`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@mail.com', NULL, '$2y$10$vH.ywB6gDqJw7zjv/1Tlu.WBs0vhVMIFnSECOkQqBKtJFk8hjVla2', NULL, 'admin', 'avatar.png', NULL, NULL),
	(2, 'user', 'user@mail.com', NULL, '$2y$10$8tKPvnYXxxhYv2gDcBVrduSpT9M3av2/yyoOW7kxviMRh/V5A.b9C', NULL, 'user', 'avatar.png', NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
