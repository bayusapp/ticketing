-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 12:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `laboran`
--

CREATE TABLE `laboran` (
  `id_laboran` int(11) NOT NULL,
  `nama_laboran` varchar(255) DEFAULT NULL,
  `no_telp` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laboran`
--

INSERT INTO `laboran` (`id_laboran`, `nama_laboran`, `no_telp`) VALUES
(1, 'Rixard George Dillak, S.T., M.M.', NULL),
(2, 'Nanda Harry Nurbudyana, S.T.', NULL),
(3, 'Muhammad Harun Arrasid, S.E.', NULL),
(4, 'Roni Riandi, S.E.', NULL),
(5, 'Bayu Setya Ajie Perdana Putra, S.Kom.', '628989817181'),
(6, 'Dhiomart Rendita Hadiyanto, A.Md.Par.', NULL),
(7, 'Nourman Aditya Agista, A.Md.T.', NULL),
(8, 'Euis Susilawaty, S.Kom.', NULL),
(9, 'Imas Lelyana', NULL),
(10, 'Leli Lismey, S.Par.', NULL),
(11, 'Luthfi Hafiyyan Nabila, S.Kom.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laboratorium`
--

CREATE TABLE `laboratorium` (
  `id_lab` int(11) NOT NULL,
  `nama_lab` varchar(255) DEFAULT NULL,
  `kode_lab` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laboratorium`
--

INSERT INTO `laboratorium` (`id_lab`, `nama_lab`, `kode_lab`) VALUES
(1, 'Operating System', 'A3'),
(2, 'Interactive Multimedia', 'A4'),
(3, 'Program Innovate Develop', 'A5');

-- --------------------------------------------------------

--
-- Table structure for table `lab_prodi`
--

CREATE TABLE `lab_prodi` (
  `id_lab_prodi` int(11) NOT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `id_lab` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_prodi`
--

INSERT INTO `lab_prodi` (`id_lab_prodi`, `id_prodi`, `id_lab`) VALUES
(1, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pic_laboran`
--

CREATE TABLE `pic_laboran` (
  `id_pic` int(11) NOT NULL,
  `id_lab_prodi` int(11) DEFAULT NULL,
  `id_laboran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pic_laboran`
--

INSERT INTO `pic_laboran` (`id_pic`, `id_lab_prodi`, `id_laboran`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(255) DEFAULT NULL,
  `jenjang` char(2) DEFAULT NULL,
  `singkatan_prodi` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `jenjang`, `singkatan_prodi`) VALUES
(1, 'Sistem Informasi', 'D3', 'SI'),
(2, 'Teknologi Komputer', 'D3', 'TK'),
(3, 'Sistem Informasi Akuntansi', 'D3', 'SIA'),
(4, 'Manajemen Pemasaran', 'D3', 'MP'),
(5, 'Teknologi Telekomunikasi', 'D3', 'TT'),
(6, 'Rekayasa Perangkat Lunak Aplikasi', 'D3', 'RPLA'),
(7, 'Perhotelan', 'D3', 'PH'),
(8, 'Teknologi Rekayasa Multimedia', 'S1', 'TRM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laboran`
--
ALTER TABLE `laboran`
  ADD PRIMARY KEY (`id_laboran`);

--
-- Indexes for table `laboratorium`
--
ALTER TABLE `laboratorium`
  ADD PRIMARY KEY (`id_lab`);

--
-- Indexes for table `lab_prodi`
--
ALTER TABLE `lab_prodi`
  ADD PRIMARY KEY (`id_lab_prodi`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_lab` (`id_lab`);

--
-- Indexes for table `pic_laboran`
--
ALTER TABLE `pic_laboran`
  ADD PRIMARY KEY (`id_pic`),
  ADD KEY `id_lab_prodi` (`id_lab_prodi`),
  ADD KEY `id_laboran` (`id_laboran`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laboran`
--
ALTER TABLE `laboran`
  MODIFY `id_laboran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `laboratorium`
--
ALTER TABLE `laboratorium`
  MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lab_prodi`
--
ALTER TABLE `lab_prodi`
  MODIFY `id_lab_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pic_laboran`
--
ALTER TABLE `pic_laboran`
  MODIFY `id_pic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lab_prodi`
--
ALTER TABLE `lab_prodi`
  ADD CONSTRAINT `lab_prodi_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`),
  ADD CONSTRAINT `lab_prodi_ibfk_2` FOREIGN KEY (`id_lab`) REFERENCES `laboratorium` (`id_lab`);

--
-- Constraints for table `pic_laboran`
--
ALTER TABLE `pic_laboran`
  ADD CONSTRAINT `pic_laboran_ibfk_1` FOREIGN KEY (`id_lab_prodi`) REFERENCES `lab_prodi` (`id_lab_prodi`),
  ADD CONSTRAINT `pic_laboran_ibfk_2` FOREIGN KEY (`id_laboran`) REFERENCES `laboran` (`id_laboran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
