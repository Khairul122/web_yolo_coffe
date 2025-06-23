-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2025 at 04:59 AM
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
-- Database: `db_svm`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_split`
--

CREATE TABLE `data_split` (
  `id_split` int NOT NULL,
  `id_gambar_asli` int NOT NULL,
  `nama_file` varchar(255) COLLATE utf8mb3_swedish_ci NOT NULL,
  `path_file` varchar(500) COLLATE utf8mb3_swedish_ci NOT NULL,
  `tipe_split` enum('training','test') COLLATE utf8mb3_swedish_ci NOT NULL,
  `id_kategori` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `data_split`
--

INSERT INTO `data_split` (`id_split`, `id_gambar_asli`, `nama_file`, `path_file`, `tipe_split`, `id_kategori`, `created_at`) VALUES
(101, 461, 'Matang_train_1.jpg', 'static/uploads/training/Matang/Matang_train_1.jpg', 'training', 1, '2025-05-30 05:49:23'),
(102, 458, 'Matang_train_2.jpg', 'static/uploads/training/Matang/Matang_train_2.jpg', 'training', 1, '2025-05-30 05:49:23'),
(103, 464, 'Matang_train_3.jpg', 'static/uploads/training/Matang/Matang_train_3.jpg', 'training', 1, '2025-05-30 05:49:23'),
(104, 483, 'Matang_train_4.jpg', 'static/uploads/training/Matang/Matang_train_4.jpg', 'training', 1, '2025-05-30 05:49:23'),
(105, 447, 'Matang_train_5.jpg', 'static/uploads/training/Matang/Matang_train_5.jpg', 'training', 1, '2025-05-30 05:49:23'),
(106, 494, 'Matang_train_6.jpg', 'static/uploads/training/Matang/Matang_train_6.jpg', 'training', 1, '2025-05-30 05:49:23'),
(107, 481, 'Matang_train_7.jpg', 'static/uploads/training/Matang/Matang_train_7.jpg', 'training', 1, '2025-05-30 05:49:23'),
(108, 472, 'Matang_train_8.jpg', 'static/uploads/training/Matang/Matang_train_8.jpg', 'training', 1, '2025-05-30 05:49:23'),
(109, 485, 'Matang_train_9.jpg', 'static/uploads/training/Matang/Matang_train_9.jpg', 'training', 1, '2025-05-30 05:49:23'),
(110, 465, 'Matang_train_10.jpg', 'static/uploads/training/Matang/Matang_train_10.jpg', 'training', 1, '2025-05-30 05:49:23'),
(111, 477, 'Matang_train_11.jpg', 'static/uploads/training/Matang/Matang_train_11.jpg', 'training', 1, '2025-05-30 05:49:23'),
(112, 479, 'Matang_train_12.jpg', 'static/uploads/training/Matang/Matang_train_12.jpg', 'training', 1, '2025-05-30 05:49:23'),
(113, 482, 'Matang_train_13.jpg', 'static/uploads/training/Matang/Matang_train_13.jpg', 'training', 1, '2025-05-30 05:49:23'),
(114, 471, 'Matang_train_14.jpg', 'static/uploads/training/Matang/Matang_train_14.jpg', 'training', 1, '2025-05-30 05:49:23'),
(115, 466, 'Matang_train_15.jpg', 'static/uploads/training/Matang/Matang_train_15.jpg', 'training', 1, '2025-05-30 05:49:23'),
(116, 488, 'Matang_train_16.jpg', 'static/uploads/training/Matang/Matang_train_16.jpg', 'training', 1, '2025-05-30 05:49:23'),
(117, 470, 'Matang_train_17.jpg', 'static/uploads/training/Matang/Matang_train_17.jpg', 'training', 1, '2025-05-30 05:49:23'),
(118, 490, 'Matang_train_18.jpg', 'static/uploads/training/Matang/Matang_train_18.jpg', 'training', 1, '2025-05-30 05:49:23'),
(119, 493, 'Matang_train_19.jpg', 'static/uploads/training/Matang/Matang_train_19.jpg', 'training', 1, '2025-05-30 05:49:23'),
(120, 463, 'Matang_train_20.jpg', 'static/uploads/training/Matang/Matang_train_20.jpg', 'training', 1, '2025-05-30 05:49:23'),
(121, 460, 'Matang_train_21.jpg', 'static/uploads/training/Matang/Matang_train_21.jpg', 'training', 1, '2025-05-30 05:49:23'),
(122, 452, 'Matang_train_22.jpg', 'static/uploads/training/Matang/Matang_train_22.jpg', 'training', 1, '2025-05-30 05:49:23'),
(123, 469, 'Matang_train_23.jpg', 'static/uploads/training/Matang/Matang_train_23.jpg', 'training', 1, '2025-05-30 05:49:23'),
(124, 476, 'Matang_train_24.jpg', 'static/uploads/training/Matang/Matang_train_24.jpg', 'training', 1, '2025-05-30 05:49:23'),
(125, 474, 'Matang_train_25.jpg', 'static/uploads/training/Matang/Matang_train_25.jpg', 'training', 1, '2025-05-30 05:49:23'),
(126, 491, 'Matang_train_26.jpg', 'static/uploads/training/Matang/Matang_train_26.jpg', 'training', 1, '2025-05-30 05:49:23'),
(127, 492, 'Matang_train_27.jpg', 'static/uploads/training/Matang/Matang_train_27.jpg', 'training', 1, '2025-05-30 05:49:23'),
(128, 480, 'Matang_train_28.jpg', 'static/uploads/training/Matang/Matang_train_28.jpg', 'training', 1, '2025-05-30 05:49:23'),
(129, 445, 'Matang_train_29.jpg', 'static/uploads/training/Matang/Matang_train_29.jpg', 'training', 1, '2025-05-30 05:49:23'),
(130, 451, 'Matang_train_30.jpg', 'static/uploads/training/Matang/Matang_train_30.jpg', 'training', 1, '2025-05-30 05:49:23'),
(131, 449, 'Matang_train_31.jpg', 'static/uploads/training/Matang/Matang_train_31.jpg', 'training', 1, '2025-05-30 05:49:23'),
(132, 462, 'Matang_train_32.jpg', 'static/uploads/training/Matang/Matang_train_32.jpg', 'training', 1, '2025-05-30 05:49:23'),
(133, 456, 'Matang_train_33.jpg', 'static/uploads/training/Matang/Matang_train_33.jpg', 'training', 1, '2025-05-30 05:49:23'),
(134, 446, 'Matang_train_34.jpg', 'static/uploads/training/Matang/Matang_train_34.jpg', 'training', 1, '2025-05-30 05:49:23'),
(135, 473, 'Matang_train_35.jpg', 'static/uploads/training/Matang/Matang_train_35.jpg', 'training', 1, '2025-05-30 05:49:23'),
(136, 467, 'Matang_train_36.jpg', 'static/uploads/training/Matang/Matang_train_36.jpg', 'training', 1, '2025-05-30 05:49:23'),
(137, 453, 'Matang_train_37.jpg', 'static/uploads/training/Matang/Matang_train_37.jpg', 'training', 1, '2025-05-30 05:49:23'),
(138, 489, 'Matang_train_38.jpg', 'static/uploads/training/Matang/Matang_train_38.jpg', 'training', 1, '2025-05-30 05:49:23'),
(139, 486, 'Matang_train_39.jpg', 'static/uploads/training/Matang/Matang_train_39.jpg', 'training', 1, '2025-05-30 05:49:23'),
(140, 475, 'Matang_train_40.jpg', 'static/uploads/training/Matang/Matang_train_40.jpg', 'training', 1, '2025-05-30 05:49:23'),
(141, 454, 'Matang_test_1.jpg', 'static/uploads/test/Matang/Matang_test_1.jpg', 'test', 1, '2025-05-30 05:49:23'),
(142, 487, 'Matang_test_2.jpg', 'static/uploads/test/Matang/Matang_test_2.jpg', 'test', 1, '2025-05-30 05:49:23'),
(143, 457, 'Matang_test_3.jpg', 'static/uploads/test/Matang/Matang_test_3.jpg', 'test', 1, '2025-05-30 05:49:23'),
(144, 478, 'Matang_test_4.jpg', 'static/uploads/test/Matang/Matang_test_4.jpg', 'test', 1, '2025-05-30 05:49:23'),
(145, 455, 'Matang_test_5.jpg', 'static/uploads/test/Matang/Matang_test_5.jpg', 'test', 1, '2025-05-30 05:49:23'),
(146, 468, 'Matang_test_6.jpg', 'static/uploads/test/Matang/Matang_test_6.jpg', 'test', 1, '2025-05-30 05:49:23'),
(147, 450, 'Matang_test_7.jpg', 'static/uploads/test/Matang/Matang_test_7.jpg', 'test', 1, '2025-05-30 05:49:23'),
(148, 448, 'Matang_test_8.jpg', 'static/uploads/test/Matang/Matang_test_8.jpg', 'test', 1, '2025-05-30 05:49:23'),
(149, 484, 'Matang_test_9.jpg', 'static/uploads/test/Matang/Matang_test_9.jpg', 'test', 1, '2025-05-30 05:49:23'),
(150, 459, 'Matang_test_10.jpg', 'static/uploads/test/Matang/Matang_test_10.jpg', 'test', 1, '2025-05-30 05:49:23'),
(151, 427, 'Tidak Matang_train_1.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_1.jpg', 'training', 2, '2025-05-30 05:49:23'),
(152, 422, 'Tidak Matang_train_2.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_2.jpg', 'training', 2, '2025-05-30 05:49:23'),
(153, 429, 'Tidak Matang_train_3.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_3.jpg', 'training', 2, '2025-05-30 05:49:23'),
(154, 401, 'Tidak Matang_train_4.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_4.jpg', 'training', 2, '2025-05-30 05:49:23'),
(155, 413, 'Tidak Matang_train_5.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_5.jpg', 'training', 2, '2025-05-30 05:49:23'),
(156, 405, 'Tidak Matang_train_6.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_6.jpg', 'training', 2, '2025-05-30 05:49:23'),
(157, 442, 'Tidak Matang_train_7.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_7.jpg', 'training', 2, '2025-05-30 05:49:23'),
(158, 415, 'Tidak Matang_train_8.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_8.jpg', 'training', 2, '2025-05-30 05:49:23'),
(159, 430, 'Tidak Matang_train_9.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_9.jpg', 'training', 2, '2025-05-30 05:49:23'),
(160, 421, 'Tidak Matang_train_10.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_10.jpg', 'training', 2, '2025-05-30 05:49:23'),
(161, 439, 'Tidak Matang_train_11.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_11.jpg', 'training', 2, '2025-05-30 05:49:23'),
(162, 412, 'Tidak Matang_train_12.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_12.jpg', 'training', 2, '2025-05-30 05:49:23'),
(163, 437, 'Tidak Matang_train_13.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_13.jpg', 'training', 2, '2025-05-30 05:49:23'),
(164, 409, 'Tidak Matang_train_14.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_14.jpg', 'training', 2, '2025-05-30 05:49:23'),
(165, 432, 'Tidak Matang_train_15.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_15.jpg', 'training', 2, '2025-05-30 05:49:23'),
(166, 441, 'Tidak Matang_train_16.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_16.jpg', 'training', 2, '2025-05-30 05:49:23'),
(167, 436, 'Tidak Matang_train_17.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_17.jpg', 'training', 2, '2025-05-30 05:49:23'),
(168, 419, 'Tidak Matang_train_18.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_18.jpg', 'training', 2, '2025-05-30 05:49:23'),
(169, 443, 'Tidak Matang_train_19.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_19.jpg', 'training', 2, '2025-05-30 05:49:23'),
(170, 400, 'Tidak Matang_train_20.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_20.jpg', 'training', 2, '2025-05-30 05:49:23'),
(171, 417, 'Tidak Matang_train_21.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_21.jpg', 'training', 2, '2025-05-30 05:49:23'),
(172, 428, 'Tidak Matang_train_22.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_22.jpg', 'training', 2, '2025-05-30 05:49:23'),
(173, 411, 'Tidak Matang_train_23.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_23.jpg', 'training', 2, '2025-05-30 05:49:23'),
(174, 398, 'Tidak Matang_train_24.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_24.jpg', 'training', 2, '2025-05-30 05:49:23'),
(175, 435, 'Tidak Matang_train_25.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_25.jpg', 'training', 2, '2025-05-30 05:49:23'),
(176, 402, 'Tidak Matang_train_26.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_26.jpg', 'training', 2, '2025-05-30 05:49:23'),
(177, 424, 'Tidak Matang_train_27.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_27.jpg', 'training', 2, '2025-05-30 05:49:23'),
(178, 408, 'Tidak Matang_train_28.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_28.jpg', 'training', 2, '2025-05-30 05:49:23'),
(179, 396, 'Tidak Matang_train_29.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_29.jpg', 'training', 2, '2025-05-30 05:49:23'),
(180, 418, 'Tidak Matang_train_30.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_30.jpg', 'training', 2, '2025-05-30 05:49:23'),
(181, 440, 'Tidak Matang_train_31.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_31.jpg', 'training', 2, '2025-05-30 05:49:23'),
(182, 431, 'Tidak Matang_train_32.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_32.jpg', 'training', 2, '2025-05-30 05:49:23'),
(183, 403, 'Tidak Matang_train_33.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_33.jpg', 'training', 2, '2025-05-30 05:49:23'),
(184, 406, 'Tidak Matang_train_34.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_34.jpg', 'training', 2, '2025-05-30 05:49:23'),
(185, 414, 'Tidak Matang_train_35.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_35.jpg', 'training', 2, '2025-05-30 05:49:23'),
(186, 425, 'Tidak Matang_train_36.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_36.jpg', 'training', 2, '2025-05-30 05:49:23'),
(187, 395, 'Tidak Matang_train_37.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_37.jpg', 'training', 2, '2025-05-30 05:49:23'),
(188, 416, 'Tidak Matang_train_38.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_38.jpg', 'training', 2, '2025-05-30 05:49:23'),
(189, 423, 'Tidak Matang_train_39.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_39.jpg', 'training', 2, '2025-05-30 05:49:23'),
(190, 399, 'Tidak Matang_train_40.jpg', 'static/uploads/training/Tidak Matang/Tidak Matang_train_40.jpg', 'training', 2, '2025-05-30 05:49:23'),
(191, 397, 'Tidak Matang_test_1.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_1.jpg', 'test', 2, '2025-05-30 05:49:23'),
(192, 433, 'Tidak Matang_test_2.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_2.jpg', 'test', 2, '2025-05-30 05:49:23'),
(193, 420, 'Tidak Matang_test_3.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_3.jpg', 'test', 2, '2025-05-30 05:49:23'),
(194, 407, 'Tidak Matang_test_4.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_4.jpg', 'test', 2, '2025-05-30 05:49:23'),
(195, 404, 'Tidak Matang_test_5.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_5.jpg', 'test', 2, '2025-05-30 05:49:23'),
(196, 444, 'Tidak Matang_test_6.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_6.jpg', 'test', 2, '2025-05-30 05:49:23'),
(197, 434, 'Tidak Matang_test_7.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_7.jpg', 'test', 2, '2025-05-30 05:49:23'),
(198, 410, 'Tidak Matang_test_8.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_8.jpg', 'test', 2, '2025-05-30 05:49:23'),
(199, 438, 'Tidak Matang_test_9.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_9.jpg', 'test', 2, '2025-05-30 05:49:23'),
(200, 426, 'Tidak Matang_test_10.jpg', 'static/uploads/test/Tidak Matang/Tidak Matang_test_10.jpg', 'test', 2, '2025-05-30 05:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_sawit`
--

CREATE TABLE `gambar_sawit` (
  `id_gambar` int NOT NULL,
  `nama_file` varchar(255) COLLATE utf8mb3_swedish_ci NOT NULL,
  `path_file` varchar(500) COLLATE utf8mb3_swedish_ci NOT NULL,
  `waktu_upload` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_kategori` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `gambar_sawit`
--

INSERT INTO `gambar_sawit` (`id_gambar`, `nama_file`, `path_file`, `waktu_upload`, `id_kategori`) VALUES
(395, 'Tidak Matang_1.jpg', 'static/uploads/Tidak Matang/Tidak Matang_1.jpg', '2025-05-30 12:05:14', 2),
(396, 'Tidak Matang_2.jpg', 'static/uploads/Tidak Matang/Tidak Matang_2.jpg', '2025-05-30 12:05:14', 2),
(397, 'Tidak Matang_3.jpg', 'static/uploads/Tidak Matang/Tidak Matang_3.jpg', '2025-05-30 12:05:14', 2),
(398, 'Tidak Matang_4.jpg', 'static/uploads/Tidak Matang/Tidak Matang_4.jpg', '2025-05-30 12:05:14', 2),
(399, 'Tidak Matang_5.jpg', 'static/uploads/Tidak Matang/Tidak Matang_5.jpg', '2025-05-30 12:05:14', 2),
(400, 'Tidak Matang_6.jpg', 'static/uploads/Tidak Matang/Tidak Matang_6.jpg', '2025-05-30 12:05:14', 2),
(401, 'Tidak Matang_7.jpg', 'static/uploads/Tidak Matang/Tidak Matang_7.jpg', '2025-05-30 12:05:14', 2),
(402, 'Tidak Matang_8.jpg', 'static/uploads/Tidak Matang/Tidak Matang_8.jpg', '2025-05-30 12:05:14', 2),
(403, 'Tidak Matang_9.jpg', 'static/uploads/Tidak Matang/Tidak Matang_9.jpg', '2025-05-30 12:05:14', 2),
(404, 'Tidak Matang_10.jpg', 'static/uploads/Tidak Matang/Tidak Matang_10.jpg', '2025-05-30 12:05:14', 2),
(405, 'Tidak Matang_11.jpg', 'static/uploads/Tidak Matang/Tidak Matang_11.jpg', '2025-05-30 12:05:14', 2),
(406, 'Tidak Matang_12.jpg', 'static/uploads/Tidak Matang/Tidak Matang_12.jpg', '2025-05-30 12:05:14', 2),
(407, 'Tidak Matang_13.jpg', 'static/uploads/Tidak Matang/Tidak Matang_13.jpg', '2025-05-30 12:05:14', 2),
(408, 'Tidak Matang_14.jpg', 'static/uploads/Tidak Matang/Tidak Matang_14.jpg', '2025-05-30 12:05:14', 2),
(409, 'Tidak Matang_15.jpg', 'static/uploads/Tidak Matang/Tidak Matang_15.jpg', '2025-05-30 12:05:14', 2),
(410, 'Tidak Matang_16.jpg', 'static/uploads/Tidak Matang/Tidak Matang_16.jpg', '2025-05-30 12:05:14', 2),
(411, 'Tidak Matang_17.jpg', 'static/uploads/Tidak Matang/Tidak Matang_17.jpg', '2025-05-30 12:05:14', 2),
(412, 'Tidak Matang_18.jpg', 'static/uploads/Tidak Matang/Tidak Matang_18.jpg', '2025-05-30 12:05:14', 2),
(413, 'Tidak Matang_19.jpg', 'static/uploads/Tidak Matang/Tidak Matang_19.jpg', '2025-05-30 12:05:14', 2),
(414, 'Tidak Matang_20.jpg', 'static/uploads/Tidak Matang/Tidak Matang_20.jpg', '2025-05-30 12:05:14', 2),
(415, 'Tidak Matang_21.jpg', 'static/uploads/Tidak Matang/Tidak Matang_21.jpg', '2025-05-30 12:05:14', 2),
(416, 'Tidak Matang_22.jpg', 'static/uploads/Tidak Matang/Tidak Matang_22.jpg', '2025-05-30 12:05:14', 2),
(417, 'Tidak Matang_23.jpg', 'static/uploads/Tidak Matang/Tidak Matang_23.jpg', '2025-05-30 12:05:14', 2),
(418, 'Tidak Matang_24.jpg', 'static/uploads/Tidak Matang/Tidak Matang_24.jpg', '2025-05-30 12:05:14', 2),
(419, 'Tidak Matang_25.jpg', 'static/uploads/Tidak Matang/Tidak Matang_25.jpg', '2025-05-30 12:05:14', 2),
(420, 'Tidak Matang_26.jpg', 'static/uploads/Tidak Matang/Tidak Matang_26.jpg', '2025-05-30 12:05:14', 2),
(421, 'Tidak Matang_27.jpg', 'static/uploads/Tidak Matang/Tidak Matang_27.jpg', '2025-05-30 12:05:14', 2),
(422, 'Tidak Matang_28.jpg', 'static/uploads/Tidak Matang/Tidak Matang_28.jpg', '2025-05-30 12:05:14', 2),
(423, 'Tidak Matang_29.jpg', 'static/uploads/Tidak Matang/Tidak Matang_29.jpg', '2025-05-30 12:05:14', 2),
(424, 'Tidak Matang_30.jpg', 'static/uploads/Tidak Matang/Tidak Matang_30.jpg', '2025-05-30 12:05:14', 2),
(425, 'Tidak Matang_31.jpg', 'static/uploads/Tidak Matang/Tidak Matang_31.jpg', '2025-05-30 12:05:14', 2),
(426, 'Tidak Matang_32.jpg', 'static/uploads/Tidak Matang/Tidak Matang_32.jpg', '2025-05-30 12:05:14', 2),
(427, 'Tidak Matang_33.jpg', 'static/uploads/Tidak Matang/Tidak Matang_33.jpg', '2025-05-30 12:05:14', 2),
(428, 'Tidak Matang_34.jpg', 'static/uploads/Tidak Matang/Tidak Matang_34.jpg', '2025-05-30 12:05:14', 2),
(429, 'Tidak Matang_35.jpg', 'static/uploads/Tidak Matang/Tidak Matang_35.jpg', '2025-05-30 12:05:14', 2),
(430, 'Tidak Matang_36.jpg', 'static/uploads/Tidak Matang/Tidak Matang_36.jpg', '2025-05-30 12:05:14', 2),
(431, 'Tidak Matang_37.jpg', 'static/uploads/Tidak Matang/Tidak Matang_37.jpg', '2025-05-30 12:05:14', 2),
(432, 'Tidak Matang_38.jpg', 'static/uploads/Tidak Matang/Tidak Matang_38.jpg', '2025-05-30 12:05:14', 2),
(433, 'Tidak Matang_39.jpg', 'static/uploads/Tidak Matang/Tidak Matang_39.jpg', '2025-05-30 12:05:14', 2),
(434, 'Tidak Matang_40.jpg', 'static/uploads/Tidak Matang/Tidak Matang_40.jpg', '2025-05-30 12:05:14', 2),
(435, 'Tidak Matang_41.jpg', 'static/uploads/Tidak Matang/Tidak Matang_41.jpg', '2025-05-30 12:05:14', 2),
(436, 'Tidak Matang_42.jpg', 'static/uploads/Tidak Matang/Tidak Matang_42.jpg', '2025-05-30 12:05:14', 2),
(437, 'Tidak Matang_43.jpg', 'static/uploads/Tidak Matang/Tidak Matang_43.jpg', '2025-05-30 12:05:14', 2),
(438, 'Tidak Matang_44.jpg', 'static/uploads/Tidak Matang/Tidak Matang_44.jpg', '2025-05-30 12:05:14', 2),
(439, 'Tidak Matang_45.jpg', 'static/uploads/Tidak Matang/Tidak Matang_45.jpg', '2025-05-30 12:05:14', 2),
(440, 'Tidak Matang_46.jpg', 'static/uploads/Tidak Matang/Tidak Matang_46.jpg', '2025-05-30 12:05:14', 2),
(441, 'Tidak Matang_47.jpg', 'static/uploads/Tidak Matang/Tidak Matang_47.jpg', '2025-05-30 12:05:14', 2),
(442, 'Tidak Matang_48.jpg', 'static/uploads/Tidak Matang/Tidak Matang_48.jpg', '2025-05-30 12:05:14', 2),
(443, 'Tidak Matang_49.jpg', 'static/uploads/Tidak Matang/Tidak Matang_49.jpg', '2025-05-30 12:05:14', 2),
(444, 'Tidak Matang_50.jpg', 'static/uploads/Tidak Matang/Tidak Matang_50.jpg', '2025-05-30 12:05:14', 2),
(445, 'Matang_1.jpg', 'static/uploads/Matang/Matang_1.jpg', '2025-05-30 12:05:31', 1),
(446, 'Matang_2.jpg', 'static/uploads/Matang/Matang_2.jpg', '2025-05-30 12:05:31', 1),
(447, 'Matang_3.jpg', 'static/uploads/Matang/Matang_3.jpg', '2025-05-30 12:05:31', 1),
(448, 'Matang_4.jpg', 'static/uploads/Matang/Matang_4.jpg', '2025-05-30 12:05:31', 1),
(449, 'Matang_5.jpg', 'static/uploads/Matang/Matang_5.jpg', '2025-05-30 12:05:31', 1),
(450, 'Matang_6.jpg', 'static/uploads/Matang/Matang_6.jpg', '2025-05-30 12:05:31', 1),
(451, 'Matang_7.jpg', 'static/uploads/Matang/Matang_7.jpg', '2025-05-30 12:05:31', 1),
(452, 'Matang_8.jpg', 'static/uploads/Matang/Matang_8.jpg', '2025-05-30 12:05:31', 1),
(453, 'Matang_9.jpg', 'static/uploads/Matang/Matang_9.jpg', '2025-05-30 12:05:31', 1),
(454, 'Matang_10.jpg', 'static/uploads/Matang/Matang_10.jpg', '2025-05-30 12:05:31', 1),
(455, 'Matang_11.jpg', 'static/uploads/Matang/Matang_11.jpg', '2025-05-30 12:05:31', 1),
(456, 'Matang_12.jpg', 'static/uploads/Matang/Matang_12.jpg', '2025-05-30 12:05:31', 1),
(457, 'Matang_13.jpg', 'static/uploads/Matang/Matang_13.jpg', '2025-05-30 12:05:31', 1),
(458, 'Matang_14.jpg', 'static/uploads/Matang/Matang_14.jpg', '2025-05-30 12:05:31', 1),
(459, 'Matang_15.jpg', 'static/uploads/Matang/Matang_15.jpg', '2025-05-30 12:05:31', 1),
(460, 'Matang_16.jpg', 'static/uploads/Matang/Matang_16.jpg', '2025-05-30 12:05:31', 1),
(461, 'Matang_17.jpg', 'static/uploads/Matang/Matang_17.jpg', '2025-05-30 12:05:31', 1),
(462, 'Matang_18.jpg', 'static/uploads/Matang/Matang_18.jpg', '2025-05-30 12:05:31', 1),
(463, 'Matang_19.jpg', 'static/uploads/Matang/Matang_19.jpg', '2025-05-30 12:05:31', 1),
(464, 'Matang_20.jpg', 'static/uploads/Matang/Matang_20.jpg', '2025-05-30 12:05:31', 1),
(465, 'Matang_21.jpg', 'static/uploads/Matang/Matang_21.jpg', '2025-05-30 12:05:31', 1),
(466, 'Matang_22.jpg', 'static/uploads/Matang/Matang_22.jpg', '2025-05-30 12:05:31', 1),
(467, 'Matang_23.jpg', 'static/uploads/Matang/Matang_23.jpg', '2025-05-30 12:05:31', 1),
(468, 'Matang_24.jpg', 'static/uploads/Matang/Matang_24.jpg', '2025-05-30 12:05:31', 1),
(469, 'Matang_25.jpg', 'static/uploads/Matang/Matang_25.jpg', '2025-05-30 12:05:31', 1),
(470, 'Matang_26.jpg', 'static/uploads/Matang/Matang_26.jpg', '2025-05-30 12:05:31', 1),
(471, 'Matang_27.jpg', 'static/uploads/Matang/Matang_27.jpg', '2025-05-30 12:05:31', 1),
(472, 'Matang_28.jpg', 'static/uploads/Matang/Matang_28.jpg', '2025-05-30 12:05:31', 1),
(473, 'Matang_29.jpg', 'static/uploads/Matang/Matang_29.jpg', '2025-05-30 12:05:31', 1),
(474, 'Matang_30.jpg', 'static/uploads/Matang/Matang_30.jpg', '2025-05-30 12:05:31', 1),
(475, 'Matang_31.jpg', 'static/uploads/Matang/Matang_31.jpg', '2025-05-30 12:05:31', 1),
(476, 'Matang_32.jpg', 'static/uploads/Matang/Matang_32.jpg', '2025-05-30 12:05:31', 1),
(477, 'Matang_33.jpg', 'static/uploads/Matang/Matang_33.jpg', '2025-05-30 12:05:31', 1),
(478, 'Matang_34.jpg', 'static/uploads/Matang/Matang_34.jpg', '2025-05-30 12:05:31', 1),
(479, 'Matang_35.jpg', 'static/uploads/Matang/Matang_35.jpg', '2025-05-30 12:05:31', 1),
(480, 'Matang_36.jpg', 'static/uploads/Matang/Matang_36.jpg', '2025-05-30 12:05:31', 1),
(481, 'Matang_37.jpg', 'static/uploads/Matang/Matang_37.jpg', '2025-05-30 12:05:31', 1),
(482, 'Matang_38.jpg', 'static/uploads/Matang/Matang_38.jpg', '2025-05-30 12:05:31', 1),
(483, 'Matang_39.jpg', 'static/uploads/Matang/Matang_39.jpg', '2025-05-30 12:05:31', 1),
(484, 'Matang_40.jpg', 'static/uploads/Matang/Matang_40.jpg', '2025-05-30 12:05:31', 1),
(485, 'Matang_41.jpg', 'static/uploads/Matang/Matang_41.jpg', '2025-05-30 12:05:31', 1),
(486, 'Matang_42.jpg', 'static/uploads/Matang/Matang_42.jpg', '2025-05-30 12:05:31', 1),
(487, 'Matang_43.jpg', 'static/uploads/Matang/Matang_43.jpg', '2025-05-30 12:05:31', 1),
(488, 'Matang_44.jpg', 'static/uploads/Matang/Matang_44.jpg', '2025-05-30 12:05:31', 1),
(489, 'Matang_45.jpg', 'static/uploads/Matang/Matang_45.jpg', '2025-05-30 12:05:31', 1),
(490, 'Matang_46.jpg', 'static/uploads/Matang/Matang_46.jpg', '2025-05-30 12:05:31', 1),
(491, 'Matang_47.jpg', 'static/uploads/Matang/Matang_47.jpg', '2025-05-30 12:05:31', 1),
(492, 'Matang_48.jpg', 'static/uploads/Matang/Matang_48.jpg', '2025-05-30 12:05:31', 1),
(493, 'Matang_49.jpg', 'static/uploads/Matang/Matang_49.jpg', '2025-05-30 12:05:31', 1),
(494, 'Matang_50.jpg', 'static/uploads/Matang/Matang_50.jpg', '2025-05-30 12:05:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_deteksi`
--

CREATE TABLE `hasil_deteksi` (
  `id_deteksi` int NOT NULL,
  `nama_file` varchar(255) COLLATE utf8mb3_swedish_ci NOT NULL,
  `path_file` varchar(500) COLLATE utf8mb3_swedish_ci NOT NULL,
  `label_prediksi` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  `confidence_score` float NOT NULL,
  `id_kategori_prediksi` int NOT NULL,
  `waktu_deteksi` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sumber_deteksi` enum('upload','realtime') COLLATE utf8mb3_swedish_ci DEFAULT 'upload',
  `model_used` varchar(255) COLLATE utf8mb3_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `hasil_deteksi`
--

INSERT INTO `hasil_deteksi` (`id_deteksi`, `nama_file`, `path_file`, `label_prediksi`, `confidence_score`, `id_kategori_prediksi`, `waktu_deteksi`, `sumber_deteksi`, `model_used`) VALUES
(1865, 'realtime_20250531_111546_629940.jpg', 'realtime_detection', 'tidak_matang', 1, 2, '2025-05-31 04:15:46', 'realtime', 'Real-time Detection'),
(1866, 'realtime_20250531_111546_635521.jpg', 'realtime_detection', 'tidak_matang', 1, 2, '2025-05-31 04:15:46', 'realtime', 'Real-time Detection'),
(1867, 'realtime_20250531_111547_180160.jpg', 'realtime_detection', 'tidak_matang', 1, 2, '2025-05-31 04:15:47', 'realtime', 'Real-time Detection'),
(1868, 'realtime_20250531_111547_183908.jpg', 'realtime_detection', 'tidak_matang', 1, 2, '2025-05-31 04:15:47', 'realtime', 'Real-time Detection'),
(1869, 'realtime_20250531_111548_400202.jpg', 'realtime_detection', 'matang', 1, 1, '2025-05-31 04:15:48', 'realtime', 'Real-time Detection'),
(1870, 'realtime_20250531_111548_406805.jpg', 'realtime_detection', 'matang', 1, 1, '2025-05-31 04:15:48', 'realtime', 'Real-time Detection'),
(1871, 'realtime_20250531_111549_000883.jpg', 'realtime_detection', 'matang', 1, 1, '2025-05-31 04:15:49', 'realtime', 'Real-time Detection'),
(1872, 'realtime_20250531_111549_005534.jpg', 'realtime_detection', 'matang', 1, 1, '2025-05-31 04:15:49', 'realtime', 'Real-time Detection'),
(1873, 'realtime_20250531_111549_619882.jpg', 'realtime_detection', 'matang', 1, 1, '2025-05-31 04:15:49', 'realtime', 'Real-time Detection'),
(1874, 'realtime_20250531_111549_624336.jpg', 'realtime_detection', 'matang', 1, 1, '2025-05-31 04:15:49', 'realtime', 'Real-time Detection');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_training`
--

CREATE TABLE `hasil_training` (
  `id_training` int NOT NULL,
  `akurasi` float NOT NULL,
  `precision_score` float NOT NULL,
  `recall_score` float NOT NULL,
  `f1_score` float NOT NULL,
  `confusion_matrix` text COLLATE utf8mb3_swedish_ci NOT NULL,
  `classification_report` text COLLATE utf8mb3_swedish_ci NOT NULL,
  `model_path` varchar(500) COLLATE utf8mb3_swedish_ci NOT NULL,
  `training_time` float NOT NULL,
  `total_training_data` int NOT NULL,
  `total_test_data` int NOT NULL,
  `kernel_type` varchar(50) COLLATE utf8mb3_swedish_ci DEFAULT 'rbf',
  `c_parameter` float DEFAULT '1',
  `gamma_parameter` varchar(50) COLLATE utf8mb3_swedish_ci DEFAULT 'scale',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `hasil_training`
--

INSERT INTO `hasil_training` (`id_training`, `akurasi`, `precision_score`, `recall_score`, `f1_score`, `confusion_matrix`, `classification_report`, `model_path`, `training_time`, `total_training_data`, `total_test_data`, `kernel_type`, `c_parameter`, `gamma_parameter`, `created_at`) VALUES
(2, 0.9, 0.9, 0.9, 0.9, '[[9, 1], [1, 9]]', '              precision    recall  f1-score   support\n\n      Matang       0.90      0.90      0.90        10\nTidak Matang       0.90      0.90      0.90        10\n\n    accuracy                           0.90        20\n   macro avg       0.90      0.90      0.90        20\nweighted avg       0.90      0.90      0.90        20\n', 'model\\svm_model.pkl', 96.0832, 80, 20, 'rbf', 1, 'scale', '2025-05-30 05:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_sawit`
--

CREATE TABLE `kategori_sawit` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `kategori_sawit`
--

INSERT INTO `kategori_sawit` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Matang'),
(2, 'Tidak Matang');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  `matapelajaran` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  `nilai` float NOT NULL,
  `waktu_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prediksi_hasil`
--

CREATE TABLE `prediksi_hasil` (
  `id_prediksi` int NOT NULL,
  `id_training` int NOT NULL,
  `id_gambar_test` int NOT NULL,
  `label_asli` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  `label_prediksi` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  `confidence_score` float DEFAULT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `prediksi_hasil`
--

INSERT INTO `prediksi_hasil` (`id_prediksi`, `id_training`, `id_gambar_test`, `label_asli`, `label_prediksi`, `confidence_score`, `is_correct`, `created_at`) VALUES
(21, 2, 141, 'Matang', 'Matang', 0.912941, 1, '2025-05-30 05:56:47'),
(22, 2, 141, 'Matang', 'Matang', 0.951486, 1, '2025-05-30 05:56:47'),
(23, 2, 141, 'Matang', 'Matang', 0.936462, 1, '2025-05-30 05:56:47'),
(24, 2, 141, 'Matang', 'Matang', 0.888331, 1, '2025-05-30 05:56:47'),
(25, 2, 141, 'Matang', 'Matang', 0.944118, 1, '2025-05-30 05:56:47'),
(26, 2, 141, 'Matang', 'Tidak Matang', 0.674391, 0, '2025-05-30 05:56:47'),
(27, 2, 141, 'Matang', 'Matang', 0.783836, 1, '2025-05-30 05:56:47'),
(28, 2, 141, 'Matang', 'Matang', 0.927804, 1, '2025-05-30 05:56:47'),
(29, 2, 141, 'Matang', 'Matang', 0.672154, 1, '2025-05-30 05:56:47'),
(30, 2, 141, 'Matang', 'Matang', 0.90953, 1, '2025-05-30 05:56:47'),
(31, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.974617, 1, '2025-05-30 05:56:47'),
(32, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.975341, 1, '2025-05-30 05:56:47'),
(33, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.919947, 1, '2025-05-30 05:56:47'),
(34, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.981498, 1, '2025-05-30 05:56:47'),
(35, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.981321, 1, '2025-05-30 05:56:47'),
(36, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.814984, 1, '2025-05-30 05:56:47'),
(37, 2, 191, 'Tidak Matang', 'Matang', 0.818032, 0, '2025-05-30 05:56:47'),
(38, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.833862, 1, '2025-05-30 05:56:47'),
(39, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.99243, 1, '2025-05-30 05:56:47'),
(40, 2, 191, 'Tidak Matang', 'Tidak Matang', 0.966077, 1, '2025-05-30 05:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb3_swedish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_swedish_ci NOT NULL,
  `role` enum('admin','operator') COLLATE utf8mb3_swedish_ci DEFAULT 'operator',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin', '2025-05-29 03:55:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_split`
--
ALTER TABLE `data_split`
  ADD PRIMARY KEY (`id_split`),
  ADD KEY `idx_tipe_split` (`tipe_split`),
  ADD KEY `idx_kategori` (`id_kategori`),
  ADD KEY `idx_gambar_asli` (`id_gambar_asli`);

--
-- Indexes for table `gambar_sawit`
--
ALTER TABLE `gambar_sawit`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `fk_gambar_kategori` (`id_kategori`);

--
-- Indexes for table `hasil_deteksi`
--
ALTER TABLE `hasil_deteksi`
  ADD PRIMARY KEY (`id_deteksi`),
  ADD KEY `id_kategori_prediksi` (`id_kategori_prediksi`),
  ADD KEY `idx_waktu_deteksi` (`waktu_deteksi`),
  ADD KEY `idx_label_prediksi` (`label_prediksi`),
  ADD KEY `idx_sumber_deteksi` (`sumber_deteksi`);

--
-- Indexes for table `hasil_training`
--
ALTER TABLE `hasil_training`
  ADD PRIMARY KEY (`id_training`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_akurasi` (`akurasi`);

--
-- Indexes for table `kategori_sawit`
--
ALTER TABLE `kategori_sawit`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prediksi_hasil`
--
ALTER TABLE `prediksi_hasil`
  ADD PRIMARY KEY (`id_prediksi`),
  ADD KEY `id_gambar_test` (`id_gambar_test`),
  ADD KEY `idx_training` (`id_training`),
  ADD KEY `idx_is_correct` (`is_correct`),
  ADD KEY `idx_label_asli` (`label_asli`),
  ADD KEY `idx_label_prediksi` (`label_prediksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_split`
--
ALTER TABLE `data_split`
  MODIFY `id_split` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `gambar_sawit`
--
ALTER TABLE `gambar_sawit`
  MODIFY `id_gambar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `hasil_deteksi`
--
ALTER TABLE `hasil_deteksi`
  MODIFY `id_deteksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1875;

--
-- AUTO_INCREMENT for table `hasil_training`
--
ALTER TABLE `hasil_training`
  MODIFY `id_training` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_sawit`
--
ALTER TABLE `kategori_sawit`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prediksi_hasil`
--
ALTER TABLE `prediksi_hasil`
  MODIFY `id_prediksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_split`
--
ALTER TABLE `data_split`
  ADD CONSTRAINT `data_split_ibfk_1` FOREIGN KEY (`id_gambar_asli`) REFERENCES `gambar_sawit` (`id_gambar`) ON DELETE CASCADE,
  ADD CONSTRAINT `data_split_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_sawit` (`id_kategori`) ON DELETE CASCADE;

--
-- Constraints for table `gambar_sawit`
--
ALTER TABLE `gambar_sawit`
  ADD CONSTRAINT `fk_gambar_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_sawit` (`id_kategori`) ON DELETE CASCADE;

--
-- Constraints for table `hasil_deteksi`
--
ALTER TABLE `hasil_deteksi`
  ADD CONSTRAINT `hasil_deteksi_ibfk_1` FOREIGN KEY (`id_kategori_prediksi`) REFERENCES `kategori_sawit` (`id_kategori`) ON DELETE CASCADE;

--
-- Constraints for table `prediksi_hasil`
--
ALTER TABLE `prediksi_hasil`
  ADD CONSTRAINT `prediksi_hasil_ibfk_1` FOREIGN KEY (`id_training`) REFERENCES `hasil_training` (`id_training`) ON DELETE CASCADE,
  ADD CONSTRAINT `prediksi_hasil_ibfk_2` FOREIGN KEY (`id_gambar_test`) REFERENCES `data_split` (`id_split`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
