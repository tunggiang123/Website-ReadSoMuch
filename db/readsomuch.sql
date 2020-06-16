-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2020 at 06:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readsomuch`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_chu_de`
--

CREATE TABLE `chi_tiet_chu_de` (
  `id_tai_lieu` int(11) NOT NULL,
  `id_chu_de` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chi_tiet_chu_de`
--

INSERT INTO `chi_tiet_chu_de` (`id_tai_lieu`, `id_chu_de`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `chu_de`
--

CREATE TABLE `chu_de` (
  `id_chu_de` int(11) NOT NULL,
  `ten_chu_de` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chu_de`
--

INSERT INTO `chu_de` (`id_chu_de`, `ten_chu_de`) VALUES
(1, 'Ôn tập tiếng anh vào lớp 10'),
(2, 'Tiếng Anh THCS'),
(3, 'Dạy và học tiếng anh'),
(4, 'Tiếng Anh');

-- --------------------------------------------------------

--
-- Table structure for table `loai_tai_lieu`
--

CREATE TABLE `loai_tai_lieu` (
  `id_loai_tai_lieu` int(11) NOT NULL,
  `ten_loai_tai_lieu` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_tai_lieu`
--

INSERT INTO `loai_tai_lieu` (`id_loai_tai_lieu`, `ten_loai_tai_lieu`) VALUES
(1, 'Ngoại ngữ'),
(2, 'Khoa học Tự nhiên');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id_nguoi_dung` int(11) NOT NULL,
  `ten_dang_nhap` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_nguoi_dung` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id_nguoi_dung`, `ten_dang_nhap`, `ten_nguoi_dung`, `mat_khau`) VALUES
(1, 'admin', 'admin 1', 'admin'),
(2, 'admin2', 'admin 2', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tai_lieu`
--

CREATE TABLE `tai_lieu` (
  `id_tai_lieu` int(11) NOT NULL,
  `id_loai_tai_lieu` int(11) NOT NULL,
  `tieu_de` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ma_dinh_dang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_nguoi_dung` int(11) NOT NULL,
  `so_luot_tai` int(11) NOT NULL DEFAULT 0,
  `so_luot_xem` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tai_lieu`
--

INSERT INTO `tai_lieu` (`id_tai_lieu`, `id_loai_tai_lieu`, `tieu_de`, `ma_dinh_dang`, `mo_ta`, `file`, `id_nguoi_dung`, `so_luot_tai`, `so_luot_xem`) VALUES
(1, 1, 'Ôn thi môn Tiếng Anh vào lớp 10', 'pdf', 'Ebook Hướng dẫn ôn tập và làm bài thi vào lớp 10 môn Tiếng Anh trình bày những kiến thức Tiếng Anh THCS bao gồm 2 phần chính là nội dung ôn tập vào lớp 10 môn Tiếng Anh và luyện tập giúp các em học sinh chủ động ôn tập, chuẩn bị tốt cho kì thi tuyển sinh sắp đến.', 'tailieu1', 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chu_de`
--
ALTER TABLE `chu_de`
  ADD PRIMARY KEY (`id_chu_de`);

--
-- Indexes for table `loai_tai_lieu`
--
ALTER TABLE `loai_tai_lieu`
  ADD PRIMARY KEY (`id_loai_tai_lieu`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id_nguoi_dung`);

--
-- Indexes for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  ADD PRIMARY KEY (`id_tai_lieu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chu_de`
--
ALTER TABLE `chu_de`
  MODIFY `id_chu_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loai_tai_lieu`
--
ALTER TABLE `loai_tai_lieu`
  MODIFY `id_loai_tai_lieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tai_lieu`
--
ALTER TABLE `tai_lieu`
  MODIFY `id_tai_lieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
