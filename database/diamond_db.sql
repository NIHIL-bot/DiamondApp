-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 12:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diamond_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `jenis_barang` varchar(50) DEFAULT NULL,
  `harga_beli` decimal(10,2) DEFAULT NULL,
  `harga_jual` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `harga_jual`) VALUES
('BRG001', 'Pulpen Standard', 'Alat Tulis', 1500.00, 2500.00),
('BRG003', 'Penghapus Karet', 'Alat Tulis', 800.00, 1500.00),
('BRG004', 'Buku Tulis 38 Lembar', 'Kertas', 2500.00, 4000.00),
('BRG005', 'Pensil HB', 'Pensil', 500.00, 1500.00),
('BRG006', 'Penggaris', 'Penghapus', 5000.00, 10000.00),
('BRG007', 'Tipe-X Joyko', 'Penghapus', 3000.00, 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `detail_nota`
--

CREATE TABLE `detail_nota` (
  `id_nota` varchar(20) DEFAULT NULL,
  `kd_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_nota`
--

INSERT INTO `detail_nota` (`id_nota`, `kd_barang`, `nama_barang`, `harga_jual`, `qty`, `total`) VALUES
('001', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('001', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('002', 'BRG005', 'Pensil HB', 1500, 2, 3000),
('002', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('003', 'BRG003', 'Penghapus Karet', 1500, 2, 3000),
('003', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('004', 'BRG003', 'Penghapus Karet', 1500, 3, 4500),
('004', 'BRG005', 'Pensil HB', 1500, 1, 1500),
('005', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 2, 8000),
('005', 'BRG003', 'Penghapus Karet', 1500, 3, 4500),
('006', 'BRG003', 'Penghapus Karet', 1500, 4, 6000),
('006', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 3, 12000),
('006', 'BRG005', 'Pensil HB', 1500, 2, 3000),
('007', 'BRG001', 'Pulpen Standard', 2500, 1, 2500),
('007', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 2, 8000),
('008', 'BRG003', 'Penghapus Karet', 1500, 3, 4500),
('008', 'BRG005', 'Pensil HB', 1500, 1, 1500),
('008', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 4, 16000),
('009', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 2, 8000),
('009', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('010', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 2, 8000),
('010', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 2, 8000),
('010', 'BRG005', 'Pensil HB', 1500, 1, 1500),
('010', 'BRG003', 'Penghapus Karet', 1500, 1, 1500),
('011', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('011', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 3, 12000),
('012', 'BRG006', 'Penggaris', 10000, 3, 30000),
('012', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('012', 'BRG001', 'Pulpen Standard', 2500, 7, 17500),
('013', 'BRG003', 'Penghapus Karet', 1500, 2, 3000),
('013', 'BRG005', 'Pensil HB', 1500, 1, 1500),
('013', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('014', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('014', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 3, 12000),
('NOTA015', 'BRG003', 'Penghapus Karet', 1500, 2, 3000),
('NOTA015', 'BRG005', 'Pensil HB', 1500, 1, 1500),
('NOTA015', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('NOTA016', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('NOTA016', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('NOTA016', 'BRG005', 'Pensil HB', 1500, 3, 4500),
('NOTA017', 'BRG005', 'Pensil HB', 1500, 2, 3000),
('NOTA017', 'BRG006', 'Penggaris', 10000, 1, 10000),
('NOTA018', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 2, 8000),
('NOTA018', 'BRG005', 'Pensil HB', 1500, 3, 4500),
('NOTA018', 'BRG003', 'Penghapus Karet', 1500, 1, 1500),
('NOTA019', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('NOTA020', 'BRG007', 'Tipe-X Joyko', 5000, 2, 10000),
('NOTA020', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('NOTA020', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 2, 8000),
('NOTA021', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('NOTA022', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('NOTA022', 'BRG005', 'Pensil HB', 1500, 2, 3000),
('NOTA023', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('NOTA023', 'BRG006', 'Penggaris', 10000, 3, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `kasirform`
--

CREATE TABLE `kasirform` (
  `id_kasir` varchar(10) NOT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `no_telpon` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasirform`
--

INSERT INTO `kasirform` (`id_kasir`, `nama_kasir`, `jenis_kelamin`, `username`, `password`, `no_telpon`, `alamat`) VALUES
('KASIR001', 'ADMIN', 'ADMIN', 'admin', 'admin123', '08123123', 'Jl. Semesta'),
('KASIR003', 'Feri Andriyanto', 'Laki-laki', 'feri', 'feri1234', '081212121212', 'Jl. Pahlawan'),
('KASIR004', 'Nastasya Adeline', 'Perempuan', NULL, NULL, '081265780162', 'Jl. BSD Raya');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_kasir` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `id_kasir`) VALUES
('adel', 'adel1234', 'KASIR004'),
('admin', 'admin123', 'KASIR001'),
('feri', 'feri1234', 'KASIR003');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(20) NOT NULL,
  `id_pelanggan` varchar(20) DEFAULT NULL,
  `tgl_nota` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_kasir` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_pelanggan`, `tgl_nota`, `total`, `id_kasir`) VALUES
('001', 'P04', '2025-05-11', 9000, NULL),
('002', 'P02', '2025-05-11', 7000, NULL),
('003', '02', '2025-05-12', 7000, NULL),
('004', '03', '2025-05-19', 6000, NULL),
('005', 'P02', '2025-05-20', 12500, NULL),
('006', 'P04', '2025-05-20', 21000, NULL),
('007', 'P04', '2025-05-20', 10500, NULL),
('008', '02', '2025-05-20', 22000, NULL),
('009', 'P04', '2025-05-20', 13000, NULL),
('010', 'P04', '2025-05-20', 19000, NULL),
('011', 'P04', '2025-05-20', 17000, NULL),
('012', 'P03', '2025-05-20', 51500, NULL),
('013', 'P03', '2025-05-22', 8500, NULL),
('014', 'P04', '2025-05-22', 17000, NULL),
('NOTA015', 'PLG002', '2025-05-24', 8500, NULL),
('NOTA016', 'PLG003', '2025-05-24', 13500, NULL),
('NOTA017', 'PLG001', '2025-05-24', 13000, 'KASIR003'),
('NOTA018', 'PLG003', '2025-05-24', 14000, 'KASIR003'),
('NOTA019', 'PLG002', '2025-05-24', 5000, 'KASIR003'),
('NOTA020', 'PLG005', '2025-05-24', 23000, 'KASIR003'),
('NOTA021', 'PLG005', '2025-05-24', 5000, 'KASIR003'),
('NOTA022', 'PLG005', '2025-05-24', 7000, 'KASIR003'),
('NOTA023', 'PLG005', '2025-05-24', 34000, 'KASIR003');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `no_wa` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `no_wa`, `alamat`) VALUES
('PLG001', 'Zero', 'Laki-laki', '08131111111', 'Jl. Haluan'),
('PLG002', 'Nihil', 'Laki-laki', '0813131313', 'Jl. Keributan'),
('PLG003', 'NalusBae', 'Laki-laki', '0811111111', 'Jl. Puting Beliung'),
('PLG004', 'Feri', 'Laki-laki', '081302312122', 'Jl. Merdeka'),
('PLG005', 'Marsha', 'Perempuan', '085364512451', 'Jl. Lingkar Luar Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `detail_nota`
--
ALTER TABLE `detail_nota`
  ADD KEY `id_nota` (`id_nota`);

--
-- Indexes for table `kasirform`
--
ALTER TABLE `kasirform`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_nota`
--
ALTER TABLE `detail_nota`
  ADD CONSTRAINT `detail_nota_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
