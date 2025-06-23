-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2025 at 02:13 PM
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
-- Database: `db_yolo_kopi`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int NOT NULL,
  `kategori` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb3_swedish_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb3_swedish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_swedish_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `kategori`, `foto`, `keterangan`) VALUES
(6, 'Green Bean', 'green_bean.jpg', 'Biji kopi pada tahap ini belum mengalami proses pemanggangan. Warna biji berkisar antara hijau pucat hingga kebiruan, dengan kadar air sekitar 10–12%. Dalam kondisi ini, biji kopi masih menyimpan komponen kimia seperti asam klorogenat, senyawa fenolik, dan gula kompleks dalam bentuk mentah. Biji kopi mentah tidak memiliki aroma khas kopi dan memiliki bau seperti tanaman hijau atau tanah basah. Tahap ini penting untuk menentukan potensi rasa, dan sering digunakan dalam cupping serta analisis kualitas. Untuk penyimpanan jangka panjang, suhu ruangan harus dijaga pada 20–24°C dengan kelembapan relatif di bawah 60% agar tidak memicu degradasi biologis dan fermentasi.'),
(7, 'Light Roast', 'light.jpg', 'Light roast dicapai pada suhu sekitar 195–205°C, tepat setelah terjadinya first crack (retakan pertama), yaitu reaksi fisik akibat pelepasan uap air dan karbon dioksida. Proses ini biasanya berlangsung selama 8–9 menit, tergantung metode roasting. Karakteristik kimiawi yang muncul mencakup dominasi asam klorogenat, asam sitrat, dan laktat, yang menghasilkan cita rasa cerah, fruity, floral, dan terkadang winey. Kadar keasaman berada pada titik tertinggi, dengan body yang ringan. Kandungan kafein relatif masih tinggi karena belum banyak terdegradasi oleh panas. Sangat cocok untuk metode seduh manual seperti pour over (V60, Kalita), Aeropress, atau Chemex yang mampu menonjolkan kompleksitas rasa dari single origin.'),
(8, 'Medium Roast', 'medium.jpg', 'Tingkat kematangan ini berada pada suhu 210–220°C, umumnya dicapai pada waktu roasting 10–12 menit, sebelum terjadi second crack. Pada tahap ini, beberapa asam mulai terurai, menghasilkan rasa yang lebih seimbang antara manis, pahit, dan asam. Gula mengalami karamelisasi sebagian (Maillard Reaction) yang menciptakan rasa karamel, kacang, dan sedikit cokelat. Kandungan asam klorogenat menurun signifikan, sementara senyawa melanoidin meningkat, berkontribusi terhadap body yang lebih tebal. Medium roast adalah standar umum untuk espresso, drip coffee, dan cocok pula untuk seduhan French press karena menciptakan keseimbangan yang dapat diterima luas oleh konsumen.'),
(9, 'Medium-Dark Roast', 'half.jpg', 'Roast ini dicapai pada suhu 220–225°C, di mana biji mulai mengeluarkan minyak di permukaannya karena degradasi selulosa dan lipid. Second crack kadang sudah terdengar, menandakan awal terjadinya karbonisasi ringan. Reaksi Maillard telah berkembang penuh, dan gula yang tersisa mengalami tahap karamelisasi akhir. Rasa yang dominan adalah cokelat hitam, kacang panggang, dan kadang muncul rasa earthy atau smoky. Keasaman sangat rendah, dengan body yang pekat dan mouthfeel lebih berat. Kandungan kafein sedikit menurun karena proses degradasi termal. Cocok untuk espresso klasik, kopi tubruk, dan kopi susu yang menginginkan karakter kuat.'),
(10, 'Dark Roast', 'dark.jpg', 'Tingkat ini merupakan fase akhir roasting dengan suhu antara 230–240°C, bahkan mendekati 245°C untuk French Roast. Second crack terdengar dengan jelas, dan biji tampak hitam mengilap akibat keluarnya minyak ke permukaan. Kandungan gula hampir seluruhnya terkarbonisasi, menghasilkan rasa pahit, gosong, serta aroma seperti arang dan asap. Asam organik terdegradasi seluruhnya, menyebabkan rendahnya keasaman, namun body tetap penuh. Meskipun rasa origin tidak lagi terdeteksi, dark roast populer karena memberikan sensasi “bold” yang disukai banyak konsumen kopi susu atau kopi siap saji. Karena suhu ekstrem, kandungan kafein pun sedikit lebih rendah dibanding light roast.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
