-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2024 at 02:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xuongg`
--

-- --------------------------------------------------------

--
-- Table structure for table `bai_viets`
--

CREATE TABLE `bai_viets` (
  `id` bigint UNSIGNED NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci,
  `ngay_nhap` date NOT NULL,
  `san_pham_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` bigint UNSIGNED NOT NULL,
  `san_pham_id` bigint UNSIGNED NOT NULL,
  `nguoi_dung_id` bigint UNSIGNED NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `danh_gia` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `san_pham_id`, `nguoi_dung_id`, `noi_dung`, `danh_gia`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'hhhhe', 5, '2024-08-01 11:57:23', '2024-08-01 11:57:23'),
(3, 2, 1, 'Hefefsd', 5, '2024-08-01 12:31:14', '2024-08-01 12:31:14'),
(4, 1, 1, 'Quan cho', 4, '2024-08-01 22:39:52', '2024-08-01 22:39:52'),
(5, 1, 1, 'Helo', 2, '2024-08-01 23:20:19', '2024-08-01 23:20:19'),
(6, 3, 1, 'Hẻlo', 5, '2024-08-04 12:47:36', '2024-08-04 12:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` bigint UNSIGNED NOT NULL,
  `don_hang_id` bigint UNSIGNED NOT NULL,
  `san_pham_id` bigint UNSIGNED NOT NULL,
  `don_gia` double NOT NULL,
  `so_luong` int UNSIGNED NOT NULL,
  `thanh_tien` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_don_hangs`
--

INSERT INTO `chi_tiet_don_hangs` (`id`, `don_hang_id`, `san_pham_id`, `don_gia`, `so_luong`, `thanh_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 2, 54777, 1, 54777, '2024-08-01 22:41:12', '2024-08-01 22:41:12', NULL),
(3, 3, 2, 54777, 1, 54777, '2024-08-01 22:44:48', '2024-08-01 22:44:48', NULL),
(4, 3, 1, 4455, 1, 4455, '2024-08-01 22:44:48', '2024-08-01 22:44:48', NULL),
(5, 4, 1, 4455, 1, 4455, '2024-08-04 12:06:31', '2024-08-04 12:06:31', NULL),
(6, 5, 1, 4455, 1, 4455, '2024-08-04 12:11:31', '2024-08-04 12:11:31', NULL),
(8, 7, 3, 35555, 1, 35555, '2024-08-04 12:29:24', '2024-08-04 12:29:24', NULL),
(9, 8, 3, 35555, 1, 35555, '2024-08-04 12:29:32', '2024-08-04 12:29:32', NULL),
(10, 9, 3, 35555, 2, 71110, '2024-08-04 12:34:20', '2024-08-04 12:34:20', NULL),
(11, 10, 3, 35555, 1, 35555, '2024-08-04 12:38:04', '2024-08-04 12:38:04', NULL),
(12, 11, 3, 35555, 1, 35555, '2024-08-04 12:40:54', '2024-08-04 12:40:54', NULL),
(13, 12, 3, 35555, 1, 35555, '2024-08-04 13:07:15', '2024-08-04 13:07:15', NULL),
(14, 13, 3, 35555, 1, 35555, '2024-08-04 13:15:09', '2024-08-04 13:15:09', NULL),
(15, 14, 3, 35555, 2, 71110, '2024-08-05 08:19:18', '2024-08-05 08:19:18', NULL),
(16, 15, 3, 35555, 1, 35555, '2024-08-05 08:40:06', '2024-08-05 08:40:06', NULL),
(17, 16, 3, 35555, 1, 35555, '2024-08-05 08:49:09', '2024-08-05 08:49:09', NULL),
(18, 17, 3, 35555, 1, 35555, '2024-08-05 20:15:20', '2024-08-05 20:15:20', NULL),
(19, 18, 3, 35555, 1, 35555, '2024-08-05 21:36:08', '2024-08-05 21:36:08', NULL),
(20, 19, 3, 35555, 2, 71110, '2024-08-06 08:34:30', '2024-08-06 08:34:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'HIEP', '10000.00', '2024-08-07 18:00:00', NULL, '2024-08-06 09:00:34'),
(2, 'H', '4000.00', NULL, NULL, NULL),
(3, 'A', '100000.00', '2024-08-07 04:07:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danh_mucs`
--

CREATE TABLE `danh_mucs` (
  `id` bigint UNSIGNED NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_danh_muc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_mucs`
--

INSERT INTO `danh_mucs` (`id`, `hinh_anh`, `ten_danh_muc`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 'uploads/danhmucs/GvRX07clNjIShyN2z4145y8Wtkxal2Hvfvc64F3Y.jpg', 'iphone', 1, '2024-08-01 10:09:27', '2024-08-01 10:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `don_hangs`
--

CREATE TABLE `don_hangs` (
  `id` bigint UNSIGNED NOT NULL,
  `ma_don_hang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ten_nguoi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_nguoi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_dien_thoai_nguoi_nhan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_nguoi_nhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gi_chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cho_xac_nhan',
  `trang_thai_thanh_toan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chua_thanh_toan',
  `tien_hang` double NOT NULL,
  `tien_ship` double NOT NULL,
  `tong_tien` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `don_hangs`
--

INSERT INTO `don_hangs` (`id`, `ma_don_hang`, `user_id`, `ten_nguoi_nhan`, `email_nguoi_nhan`, `so_dien_thoai_nguoi_nhan`, `dia_chi_nguoi_nhan`, `gi_chu`, `trang_thai_don_hang`, `trang_thai_thanh_toan`, `tien_hang`, `tien_ship`, `tong_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'ORD-1-1722577272', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'hi', 'huy_don_hang', 'chua_thanh_toan', 54777, 3000, 57777, '2024-08-01 22:41:12', '2024-08-01 22:41:12', NULL),
(3, 'ORD-1-1722577488', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'hfd', 'huy_don_hang', 'chua_thanh_toan', 59232, 3000, 62232, '2024-08-01 22:44:48', '2024-08-05 08:05:59', NULL),
(4, 'ORD-1-1722798391', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'dfghf', 'huy_don_hang', 'chua_thanh_toan', 4455, 3000, 7455, '2024-08-04 12:06:31', '2024-08-04 12:07:05', NULL),
(5, 'ORD-1-1722798691', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'sàdasdf', 'huy_don_hang', 'chua_thanh_toan', 4455, 3000, 7455, '2024-08-04 12:11:31', '2024-08-05 08:06:02', NULL),
(7, 'ORD-1-1722799764', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'ertyrty', 'huy_don_hang', 'chua_thanh_toan', 35555, 3000, 38555, '2024-08-04 12:29:24', '2024-08-05 08:06:17', NULL),
(8, 'ORD-1-1722799772', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'rtghrtdh', 'huy_don_hang', 'chua_thanh_toan', 35555, 3000, 38555, '2024-08-04 12:29:32', '2024-08-05 08:06:19', NULL),
(9, 'ORD-1-1722800059', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'sdgfdsfg', 'huy_don_hang', 'chua_thanh_toan', 71110, 3000, 74110, '2024-08-04 12:34:19', '2024-08-05 08:06:21', NULL),
(10, 'ORD-1-1722800284', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'sedfgdg', 'huy_don_hang', 'chua_thanh_toan', 35555, 3000, 38555, '2024-08-04 12:38:04', '2024-08-05 08:06:23', NULL),
(11, 'ORD-1-1722800454', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'êtrygfgh', 'huy_don_hang', 'chua_thanh_toan', 35555, 3000, 38555, '2024-08-04 12:40:54', '2024-08-05 08:06:26', NULL),
(12, 'ORD-1-1722802035', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'sdfgdfg', 'huy_don_hang', 'chua_thanh_toan', 35555, 3000, 38555, '2024-08-04 13:07:15', '2024-08-05 08:06:28', NULL),
(13, 'ORD-1-1722802509', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'dfgdfgh', 'huy_don_hang', 'chua_thanh_toan', 35555, 3000, 38555, '2024-08-04 13:15:09', '2024-08-05 08:06:30', NULL),
(14, 'ORD-1-b02c6b54', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'ádfasdf', 'àgdsgdfg', 'cho_xac_nhan', 'chua_thanh_toan', 71110, 3000, -25890, '2024-08-05 08:19:18', '2024-08-05 08:19:18', NULL),
(15, 'ORD-8-1722872406', 8, 'Chipdz', 'hiepooo98@gmail.com', '0888425100', 'Haf Nooij', 'ahsdjkhj', 'cho_xac_nhan', 'chua_thanh_toan', 35555, 3000, -61445, '2024-08-05 08:40:06', '2024-08-05 08:40:06', NULL),
(16, 'ORD-8-1722872949', 8, 'Chipdz', 'hiepooo98@gmail.com', '0888425100', 'Haf Nooij', NULL, 'cho_xac_nhan', 'chua_thanh_toan', 35555, 3000, 28555, '2024-08-05 08:49:09', '2024-08-05 08:49:09', NULL),
(17, 'ORD-1-1722914120', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'zfsfbdf', 'cho_xac_nhan', 'chua_thanh_toan', 35555, 3000, 28555, '2024-08-05 20:15:20', '2024-08-05 20:15:20', NULL),
(18, 'ORD-1-1722918968', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'sfgdsrg', 'shdghf', 'cho_xac_nhan', 'chua_thanh_toan', 35555, 3000, 3000, '2024-08-05 21:36:08', '2024-08-05 21:36:08', NULL),
(19, 'ORD-1-1722958470', 1, 'Chipdz', 'hiepooo94@gmail.com', '0888425100', 'Haf Nooij', 'ooo', 'cho_xac_nhan', 'chua_thanh_toan', 71110, 3000, 74110, '2024-08-06 08:34:30', '2024-08-06 08:34:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_san_phams`
--

CREATE TABLE `hinh_anh_san_phams` (
  `id` bigint UNSIGNED NOT NULL,
  `san_pham_id` bigint UNSIGNED NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinh_anh_san_phams`
--

INSERT INTO `hinh_anh_san_phams` (`id`, `san_pham_id`, `hinh_anh`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/hinhanhsanpham/id_1/tI3xXgqDczsdIDSsoE2TIxlv7bBxMKljgEFgj9af.jpg', '2024-08-01 10:10:06', '2024-08-01 10:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lien_hes`
--

CREATE TABLE `lien_hes` (
  `id` bigint UNSIGNED NOT NULL,
  `ho_va_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chu_de` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_07_25_161825_create_danh_mucs_table', 1),
(7, '2024_07_25_161945_create_san_phams_table', 1),
(8, '2024_07_25_161954_create_hinh_anh_san_phams_table', 1),
(9, '2024_07_25_182923_update_users_table', 1),
(10, '2024_07_28_011926_create_bai_viets_table', 1),
(11, '2024_07_30_103953_create_lien_hes_table', 1),
(12, '2024_07_30_140103_create_don_hangs_table', 1),
(13, '2024_07_30_140157_create_chi_tiet_don_hangs_table', 1),
(14, '2024_07_30_140355_update_users_table', 1),
(15, '2024_07_30_143851_create_banners_table', 1),
(16, '2024_07_30_162742_create_jobs_table', 1),
(17, '2024_08_01_164247_update_users_table', 1),
(18, '2024_08_01_171258_add_deleted_at_to_don_hangs_table', 2),
(19, '2024_08_01_174309_add_deleted_at_to_users_table', 3),
(21, '2024_08_01_182450_create_binh_luans_table', 4),
(22, '2024_08_02_053237_add_deleted_at_to_san_phams_table', 5),
(23, '2024_08_01_103701_update_chi_tiet_don_hangs_table', 6),
(24, '2024_08_05_144742_create_coupons_table', 7),
(25, '2024_08_06_031919_create_user_coupons_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `san_phams`
--

CREATE TABLE `san_phams` (
  `id` bigint UNSIGNED NOT NULL,
  `ma_san_pham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_san_pham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gia_san_pham` double NOT NULL,
  `gia_khuyen_mai` double DEFAULT NULL,
  `mo_ta_ngan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci,
  `so_luong` int UNSIGNED NOT NULL,
  `luot_xem` bigint UNSIGNED NOT NULL DEFAULT '0',
  `ngay_nhap` date NOT NULL,
  `danh_muc_id` bigint UNSIGNED NOT NULL,
  `is_type` tinyint(1) NOT NULL DEFAULT '1',
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot_deal` tinyint(1) NOT NULL DEFAULT '1',
  `is_show_home` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `san_phams`
--

INSERT INTO `san_phams` (`id`, `ma_san_pham`, `ten_san_pham`, `hinh_anh`, `gia_san_pham`, `gia_khuyen_mai`, `mo_ta_ngan`, `noi_dung`, `so_luong`, `luot_xem`, `ngay_nhap`, `danh_muc_id`, `is_type`, `is_new`, `is_hot`, `is_hot_deal`, `is_show_home`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HH213', 'Áo gì gì đấy', 'uploads/sanpham/j91jossLkdSSdikl8m2nc9D35EjT2FbrfdCK11Xm.jpg', 4555, 4455, 'Hi', '<p>hi</p>', 0, 0, '2024-07-30', 1, 1, 1, 1, 1, 1, '2024-08-01 10:10:06', '2024-08-04 12:11:31', NULL),
(2, 'SP001', 'Iphone17prm', 'uploads/sanpham/5XoHl1GgKUcBECRE7O0JezRol6RBu8WUL0UYiINO.jpg', 55775, 54777, 'Hehehe', '<p>Huuhuhu</p>', 3, 0, '2024-07-30', 1, 0, 1, 1, 1, 1, '2024-08-01 12:30:46', '2024-08-01 22:44:48', NULL),
(3, 'HH213r', 'Iphone16prm', 'uploads/sanpham/vwSrZg1cIQKgLZE12H04ttEe9niq5B09GXPC583E.jpg', 45555, 35555, 'sdfyh', '<p>sdfhfgh</p>', 440, 0, '2024-07-30', 1, 0, 1, 1, 1, 1, '2024-08-04 12:28:33', '2024-08-06 08:34:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` enum('Nam','Nữ','Khác') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Nam',
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` enum('Hoạt động','Không hoạt động') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hoạt động',
  `ngay_sinh` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','User') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `hinh_anh`, `gioi_tinh`, `phone`, `trang_thai`, `ngay_sinh`, `email`, `address`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chipdz', 'avatars/kBnPKMFCyh0yrWhScSxWcrPdZp5rY6IjZwS3rSpS.jpg', 'Nam', NULL, 'Hoạt động', NULL, 'hiepooo94@gmail.com', NULL, NULL, '$2y$10$4C0xLrYjWSjEqtEOK7w0Le8hovDbEpKxkKwoifqlR3NzPbFNZ1Uia', 'Admin', NULL, '2024-08-01 09:54:22', '2024-08-01 12:10:09', NULL),
(7, 'Chipdz', NULL, 'Nữ', NULL, 'Hoạt động', '2024-07-30', 'hiepooo96@gmail.com', NULL, NULL, '$2y$10$eOlNgM9Q.Tmz7qDJA2.f1eYx2ayQMEXBmBD8q02cPOsqAIhU6RbVy', 'User', NULL, '2024-08-01 23:22:24', '2024-08-01 23:24:10', NULL),
(8, 'Chipdz', NULL, 'Nam', NULL, 'Hoạt động', NULL, 'hiepooo98@gmail.com', NULL, NULL, '$2y$10$KHzo0bu6e43VFgWaVx6tJe/Pv9ouk7gKyplT7mn9/9w25bWNjzda2', 'User', NULL, '2024-08-05 08:25:14', '2024-08-05 08:25:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_coupons`
--

INSERT INTO `user_coupons` (`id`, `user_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2024-08-05 20:32:12', '2024-08-05 20:32:12'),
(19, 1, 3, '2024-08-05 21:35:14', '2024-08-05 21:35:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bai_viets`
--
ALTER TABLE `bai_viets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bai_viets_san_pham_id_foreign` (`san_pham_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binh_luans_san_pham_id_foreign` (`san_pham_id`),
  ADD KEY `binh_luans_nguoi_dung_id_foreign` (`nguoi_dung_id`);

--
-- Indexes for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_don_hangs_don_hang_id_foreign` (`don_hang_id`),
  ADD KEY `chi_tiet_don_hangs_san_pham_id_foreign` (`san_pham_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `don_hangs_ma_don_hang_unique` (`ma_don_hang`),
  ADD KEY `don_hangs_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hinh_anh_san_phams_san_pham_id_foreign` (`san_pham_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `lien_hes`
--
ALTER TABLE `lien_hes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `san_phams_ma_san_pham_unique` (`ma_san_pham`),
  ADD KEY `san_phams_danh_muc_id_foreign` (`danh_muc_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_coupons_user_id_foreign` (`user_id`),
  ADD KEY `user_coupons_coupon_id_foreign` (`coupon_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bai_viets`
--
ALTER TABLE `bai_viets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `don_hangs`
--
ALTER TABLE `don_hangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lien_hes`
--
ALTER TABLE `lien_hes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bai_viets`
--
ALTER TABLE `bai_viets`
  ADD CONSTRAINT `bai_viets_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`);

--
-- Constraints for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD CONSTRAINT `binh_luans_nguoi_dung_id_foreign` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luans_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD CONSTRAINT `chi_tiet_don_hangs_don_hang_id_foreign` FOREIGN KEY (`don_hang_id`) REFERENCES `don_hangs` (`id`),
  ADD CONSTRAINT `chi_tiet_don_hangs_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`);

--
-- Constraints for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD CONSTRAINT `don_hangs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD CONSTRAINT `hinh_anh_san_phams_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`);

--
-- Constraints for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD CONSTRAINT `san_phams_danh_muc_id_foreign` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_mucs` (`id`);

--
-- Constraints for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD CONSTRAINT `user_coupons_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_coupons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
