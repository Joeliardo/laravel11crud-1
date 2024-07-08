-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: mysql-1809ee19-lecturna-landingpage.f.aivencloud.com    Database: examplecrud
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'a9f22eab-0c92-11ef-a277-f2e15bd8ab9b:1-3370';

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokter`
--

DROP TABLE IF EXISTS `dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dokter` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialisasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokter`
--

LOCK TABLES `dokter` WRITE;
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
INSERT INTO `dokter` VALUES (1,'Jinawi Bahuwirya Waluyo','Kulit & Kelamin','2024-07-02 02:20:39','2024-07-02 02:20:39'),(2,'Wardaya Dongoran','Gigi','2024-07-02 02:20:40','2024-07-02 02:20:40'),(3,'Ivan Santoso','Bedah','2024-07-02 02:20:40','2024-07-02 02:20:40'),(4,'Ivan Pangestu','Saraf','2024-07-02 02:20:40','2024-07-02 02:20:40'),(5,'Zelda Aryani','Kandungan & Ginekologi','2024-07-02 02:20:40','2024-07-02 02:20:40'),(6,'Amelia Permata M.M.','Saraf','2024-07-02 02:20:55','2024-07-02 02:20:55'),(7,'Salman Harjasa Sitorus','Bedah','2024-07-02 02:20:56','2024-07-02 02:20:56'),(8,'Asirwanda Haryanto','Bedah','2024-07-02 02:20:56','2024-07-02 02:20:56'),(9,'Wahyu Tamba','Mata','2024-07-02 02:20:56','2024-07-02 02:20:56'),(10,'Karimah Fathonah Hartati','Saraf','2024-07-02 02:20:56','2024-07-02 02:20:56'),(11,'Ina Mulyani','Kulit & Kelamin','2024-07-02 02:20:56','2024-07-02 02:20:56'),(12,'Saadat Sihotang','Mata','2024-07-02 02:20:56','2024-07-02 02:20:56'),(13,'Silvia Zulaika','Mata','2024-07-02 02:20:57','2024-07-02 02:20:57'),(14,'Agnes Tira Hassanah S.H.','Gigi','2024-07-02 02:20:57','2024-07-02 02:20:57'),(15,'Lidya Sudiati','Saraf','2024-07-02 02:20:57','2024-07-02 02:20:57');
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_06_01_083621_create_daftarpemeriksaan_table',2),(5,'2024_07_02_020134_create_pasien_table',3),(6,'2024_07_02_020245_create_dokter_table',3),(8,'2024_07_02_020255_create_pemeriksaan_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasien` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggalLahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasien`
--

LOCK TABLES `pasien` WRITE;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT INTO `pasien` VALUES (1,'Dadi Maryadi S.E.I','Kpg. Nanas No. 172, Administrasi Jakarta Timur 37775, DIY','2022-11-22','2024-07-02 02:17:06','2024-07-02 02:17:06'),(2,'Darsirah Nainggolan','Gg. Cikutra Timur No. 688, Bitung 57315, Sulbar','1992-04-06','2024-07-02 02:17:07','2024-07-02 02:17:07'),(3,'Darsirah Saragih S.T.','Dk. Banceng Pondok No. 702, Bekasi 35218, Sulut','1988-09-25','2024-07-02 02:17:07','2024-07-02 02:17:07'),(4,'Latika Yuniar','Psr. R.E. Martadinata No. 720, Pontianak 22225, Kepri','1983-01-01','2024-07-02 02:17:07','2024-07-02 02:17:07'),(5,'Cayadi Pradana','Kpg. Baranang Siang Indah No. 222, Gunungsitoli 72498, Sulteng','1979-06-23','2024-07-02 02:17:07','2024-07-02 02:17:07'),(6,'Mustofa Salahudin','Ds. Baya Kali Bungur No. 941, Batu 97332, NTB','1989-10-09','2024-07-02 02:17:08','2024-07-02 02:17:08'),(7,'Darmana Ardianto','Gg. Kyai Gede No. 921, Tarakan 24678, Jambi','1974-09-12','2024-07-02 02:17:08','2024-07-02 02:17:08'),(8,'Fitriani Susanti','Ki. Bakaru No. 309, Subulussalam 79196, Sulsel','2020-08-21','2024-07-02 02:17:08','2024-07-02 02:17:08'),(9,'Febi Astuti','Kpg. Thamrin No. 875, Yogyakarta 18973, Banten','1975-05-12','2024-07-02 02:17:08','2024-07-02 02:17:08'),(10,'Edison Wijaya','Jr. Hayam Wuruk No. 166, Kediri 12963, Maluku','1982-04-20','2024-07-02 02:17:08','2024-07-02 02:17:08'),(11,'Hesti Yolanda S.H.','Psr. Rajawali No. 801, Balikpapan 26036, Sumsel','1981-05-17','2024-07-02 02:17:08','2024-07-02 02:17:08'),(12,'Oman Situmorang S.I.Kom','Jr. Dewi Sartika No. 376, Sabang 56437, Sumsel','2021-01-31','2024-07-02 02:17:08','2024-07-02 02:17:08'),(13,'Paulin Wahyuni S.E.I','Jln. Rumah Sakit No. 78, Kediri 76829, Kaltara','1975-10-14','2024-07-02 02:17:08','2024-07-02 02:17:08'),(14,'Ibrahim Bagiya Maryadi','Jr. Cikapayang No. 866, Blitar 92179, Sumut','2016-11-01','2024-07-02 02:17:09','2024-07-02 02:17:09'),(15,'Karman Nababan','Kpg. B.Agam 1 No. 483, Malang 30632, Bali','2011-04-25','2024-07-02 02:17:09','2024-07-02 02:17:09'),(16,'Nrima Ardianto','Jln. Radio No. 643, Administrasi Jakarta Utara 51518, Kalbar','2013-03-14','2024-07-02 02:17:09','2024-07-02 02:17:09'),(17,'Dian Sadina Puspita','Jln. Fajar No. 308, Bukittinggi 39432, Sumbar','1980-06-07','2024-07-02 02:17:09','2024-07-02 02:17:09'),(18,'Banara Budiyanto S.Pt','Psr. Hasanuddin No. 653, Cimahi 52586, Malut','1990-07-12','2024-07-02 02:17:09','2024-07-02 02:17:09'),(19,'Genta Usada','Ds. Veteran No. 756, Administrasi Jakarta Utara 87920, Sulsel','2007-03-21','2024-07-02 02:17:09','2024-07-02 02:17:09'),(20,'Paiman Prakasa','Psr. Baranang Siang No. 557, Balikpapan 75455, NTB','1979-04-01','2024-07-02 02:17:09','2024-07-02 02:17:09'),(21,'Malika Kusmawati M.Ak','Jr. Jend. Sudirman No. 989, Palembang 33606, Sumut','2008-09-08','2024-07-02 02:17:09','2024-07-02 02:17:09'),(22,'Kezia Dian Hartati','Jr. Pasir Koja No. 843, Palembang 68221, Papua','1973-06-15','2024-07-02 02:17:10','2024-07-02 02:17:10'),(23,'Endra Sitompul S.I.Kom','Ds. Panjaitan No. 602, Kupang 71864, Papua','2001-03-16','2024-07-02 02:17:10','2024-07-02 02:17:10'),(24,'Prayitna Raditya Maheswara S.Pd','Dk. Abdul No. 690, Balikpapan 83713, Kalsel','1986-08-29','2024-07-02 02:17:10','2024-07-02 02:17:10'),(25,'Lalita Wahyuni','Ki. Baiduri No. 359, Ambon 21196, Kepri','1995-10-22','2024-07-02 02:17:10','2024-07-02 02:17:10'),(26,'Sakura Violet Laksmiwati S.H.','Dk. Ketandan No. 300, Langsa 81835, Sultra','2017-06-18','2024-07-02 02:17:10','2024-07-02 02:17:10'),(27,'Limar Jasmani Januar M.TI.','Jr. Asia Afrika No. 96, Jambi 15460, Papua','1973-11-14','2024-07-02 02:17:10','2024-07-02 02:17:10'),(28,'Novi Yuni Yolanda','Psr. Aceh No. 459, Probolinggo 27071, Kaltim','1977-11-20','2024-07-02 02:17:10','2024-07-02 02:17:10'),(29,'Balamantri Habibi','Jr. Cemara No. 875, Kediri 97382, DIY','2004-10-29','2024-07-02 02:17:10','2024-07-02 02:17:10'),(30,'Banawa Damanik','Jr. Bata Putih No. 743, Palembang 55997, Sulut','1994-10-08','2024-07-02 02:17:11','2024-07-02 02:17:11'),(31,'Arta Vino Rajata','Kpg. Kalimalang No. 205, Banjarmasin 96503, Kaltim','1992-06-15','2024-07-02 02:17:11','2024-07-02 02:17:11'),(32,'Sari Vanesa Pratiwi','Dk. Basuki Rahmat  No. 933, Tasikmalaya 61373, Sulbar','1989-10-31','2024-07-02 02:17:11','2024-07-02 02:17:11'),(33,'Gawati Yolanda','Dk. Flora No. 926, Subulussalam 58578, Jabar','2008-02-28','2024-07-02 02:17:11','2024-07-02 02:17:11'),(34,'Diana Sari Riyanti','Psr. Jaksa No. 626, Samarinda 78261, Sulbar','1998-06-23','2024-07-02 02:17:11','2024-07-02 02:17:11'),(35,'Ganda Luwes Simbolon M.Pd','Jln. BKR No. 649, Gunungsitoli 43989, Malut','1977-06-30','2024-07-02 02:17:11','2024-07-02 02:17:11'),(36,'Dariati Baktiono Pradana','Ds. Achmad Yani No. 332, Denpasar 71747, Jateng','2020-09-28','2024-07-02 02:17:11','2024-07-02 02:17:11'),(37,'Niyaga Halim','Jr. Eka No. 488, Bengkulu 29048, Banten','2008-11-24','2024-07-02 02:17:11','2024-07-02 02:17:11'),(38,'Empluk Dabukke S.Kom','Kpg. Mahakam No. 367, Denpasar 96231, DKI','2017-03-16','2024-07-02 02:17:11','2024-07-02 02:17:11'),(39,'Paramita Widiastuti','Kpg. Sudirman No. 959, Banda Aceh 75795, Sulteng','1993-06-02','2024-07-02 02:17:12','2024-07-02 02:17:12'),(40,'Bala Sinaga','Dk. Kartini No. 620, Singkawang 24202, Bengkulu','1995-02-09','2024-07-02 02:17:12','2024-07-02 02:17:12'),(41,'Danuja Prabowo','Jln. Ekonomi No. 799, Banjarmasin 92708, Aceh','2015-11-23','2024-07-02 02:17:12','2024-07-02 02:17:12'),(42,'Yance Susanti S.Gz','Psr. Mulyadi No. 146, Bontang 95327, Sumut','2024-06-13','2024-07-02 02:17:12','2024-07-02 02:17:12'),(43,'Johan Kawaya Siregar M.Ak','Kpg. Padma No. 77, Pontianak 84811, Sultra','2011-12-27','2024-07-02 02:17:12','2024-07-02 02:17:12'),(44,'Siti Yulianti S.IP','Gg. B.Agam 1 No. 583, Magelang 11217, Maluku','2024-05-10','2024-07-02 02:17:12','2024-07-02 02:17:12'),(45,'Raina Hasna Palastri S.E.I','Gg. K.H. Wahid Hasyim (Kopo) No. 967, Salatiga 70916, Maluku','2004-08-02','2024-07-02 02:17:12','2024-07-02 02:17:12'),(46,'Najwa Nurdiyanti','Kpg. Yap Tjwan Bing No. 115, Palangka Raya 83617, Lampung','1988-07-01','2024-07-02 02:17:12','2024-07-02 02:17:12'),(47,'Panji Prayoga','Psr. Salam No. 580, Dumai 98370, Kalbar','2019-03-17','2024-07-02 02:17:13','2024-07-02 02:17:13'),(48,'Rusman Sinaga','Kpg. Veteran No. 501, Padangpanjang 29372, Kaltim','1970-04-24','2024-07-02 02:17:13','2024-07-02 02:17:13'),(49,'Harimurti Siregar S.Pd','Jr. Gatot Subroto No. 33, Salatiga 63603, Babel','1976-02-24','2024-07-02 02:17:13','2024-07-02 02:17:13'),(50,'Aditya Karma Mandala','Gg. Uluwatu No. 92, Pekanbaru 51024, Kalbar','2023-12-06','2024-07-02 02:17:13','2024-07-02 02:17:13');
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemeriksaan`
--

DROP TABLE IF EXISTS `pemeriksaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemeriksaan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `no_transaksi_pemeriksaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idDokter` bigint unsigned NOT NULL,
  `idPasien` bigint unsigned NOT NULL,
  `tanggalPeriksa` date NOT NULL,
  `fileLampiran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pemeriksaan_no_transaksi_pemeriksaan_unique` (`no_transaksi_pemeriksaan`),
  KEY `pemeriksaan_iddokter_foreign` (`idDokter`),
  KEY `pemeriksaan_idpasien_foreign` (`idPasien`),
  CONSTRAINT `pemeriksaan_iddokter_foreign` FOREIGN KEY (`idDokter`) REFERENCES `dokter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pemeriksaan_idpasien_foreign` FOREIGN KEY (`idPasien`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemeriksaan`
--

LOCK TABLES `pemeriksaan` WRITE;
/*!40000 ALTER TABLE `pemeriksaan` DISABLE KEYS */;
INSERT INTO `pemeriksaan` VALUES (1,'REG-20240702-GPD19D',2,2,'2024-08-01','1719889557.png','ffffffffffffffff','2024-07-02 03:05:57','2024-07-02 03:05:57'),(2,'REG-20240702-YHKVR9',12,46,'2024-07-30','1720429692.PNG','sakit aja banget parah','2024-07-02 04:32:04','2024-07-08 09:08:12');
/*!40000 ALTER TABLE `pemeriksaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('iHFE5OYwVBsSGH2hvtzc0x7h0ZE9S2ckMcmaufdH',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmVhOFV3T2F1TkZYaDcyRk85SGpvVzVJemhnMXVNM0dQV3U4SkVweSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9wZW1lcmlrc2FhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1720429789);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Reinert Yosua','reinertyosua24@gmail.com',NULL,'$2y$12$7laUum/cV3tQGEY7rVT9OO8JfHAbGE478lM/vJhp6m6qhffDZMjGS',NULL,'2024-05-09 03:13:18','2024-07-02 01:56:13'),(2,'Sylvia Angela','sylviaangela@gmail.com',NULL,'$2y$12$z.NNj9zh87gdqrZ0vvI5h.yCKn59Xz5IA59bhgGoMLs/bGb.Pj3GO',NULL,'2024-05-09 03:24:14','2024-05-09 03:24:14'),(3,'Bagus','bagus@gmail.com',NULL,'$2y$12$tZYuTMG5Kf37dchDzH18KekvtYzpBUm4jSC.0Emitn10zNuk3m1di',NULL,'2024-05-09 03:24:56','2024-05-09 03:24:56'),(4,'dasda','asd@ffsdf.fhdf',NULL,'$2y$12$PF7FmsnoE4dqLiMWSGOEXeZqUjZN0rjr1sFbdzsCfiCYfOhBFzdda',NULL,'2024-05-09 03:29:40','2024-05-09 03:29:40'),(5,'fsfd','sdfsfd@fsdf.dgsg',NULL,'$2y$12$boBmdD180VObMGouuK0nbucTgWQghnGr7XAnFNuhO3alWuVm6ilxC',NULL,'2024-05-09 03:33:03','2024-05-09 03:33:03'),(6,'Agung Wiranata','awiranata@lms.com',NULL,'$2y$12$WoVmsNEW2dRvIA6EZjzfkOBKHhaBhcQAZIUEJP0bZqsnzaCTMhKkS',NULL,'2024-05-09 04:16:26','2024-05-09 04:16:26'),(9,'Agam','agam@gmail.com',NULL,'$2y$12$9hACBROryRyqrFF8Lt2.LOg5ZHWvNRMilScU1ME1R5espM.ZX.AP.',NULL,'2024-06-01 09:49:06','2024-06-01 09:49:06'),(10,'lalala','lala@gmail.com',NULL,'$2y$12$LsZVDEIh0V9auHUuIYnHFOW68KMufWZBGtBTBbF0KfouCeOwnqFzG',NULL,'2024-06-01 09:53:57','2024-06-01 09:53:57'),(11,'Yosua','yosua@gmail.com',NULL,'$2y$12$eEUn.B0jlKY9f7rEwxnR/OxLuywVdKoWwPHWooZw.TmRySyrtNycq',NULL,'2024-06-01 09:55:49','2024-06-01 09:55:49'),(13,'Lecturna','lecturna.id@gmail.com',NULL,'$2y$12$i2we5W.9X.fa3wdKhR.GGedXEOSbcIBRY33SXg0s9ddY3ztBKab5q',NULL,'2024-06-01 11:13:50','2024-06-01 11:13:50'),(14,'Agus Wibawa','aguswibawa@gmail.com',NULL,'$2y$12$lX/WZlhLfignJIJfyMxXweDv7IEQ.KEjBvnh0Wy1xEObvWiiLydVa',NULL,'2024-07-02 01:36:03','2024-07-02 01:36:03'),(15,'Bunda Corla','bundacorla@gmail.com',NULL,'$2y$12$Dwg4xvReZ5Ha50GKnU2rbOxNur9J6DozzFwac2Fny2xgXdITkPP3S',NULL,'2024-07-02 01:49:03','2024-07-02 01:49:03'),(16,'Bagas Sutejo','bagassutejo@gmail.com',NULL,'$2y$12$EGG3zqFAdaeaOKpqggRJZO9ySFkk20sydHVJjzHG7AeyI1ZIMBy.G',NULL,'2024-07-02 01:54:54','2024-07-02 01:54:54'),(17,'Andri','andri@gmail.com',NULL,'$2y$12$1fEuKHK2hDSK9PWGgkKm/.3.Gg4cyhNB9mwJUIVeaQ6GUrs5rH8Fy',NULL,'2024-07-02 01:55:41','2024-07-02 01:55:41'),(18,'tes1','tes1@gmail.com',NULL,'$2y$12$fh6/tDhpxJwnf6UAB0410u.5t/kIZ6sYLD0RYB7PN8YCTxW3KK5zu',NULL,'2024-07-08 08:13:13','2024-07-08 08:13:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 16:23:58
