-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2025 pada 15.19
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datatransaksi`
--

CREATE TABLE `datatransaksi` (
  `no` varchar(10) NOT NULL,
  `id_cust` varchar(11) NOT NULL,
  `nm_cust` varchar(50) NOT NULL,
  `id_barang` varchar(11) NOT NULL,
  `nm_barang` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datatransaksi`
--

INSERT INTO `datatransaksi` (`no`, `id_cust`, `nm_cust`, `id_barang`, `nm_barang`, `harga`, `jumlah`) VALUES
('TRZ001', 'C566', 'Irsyad', 'B889', 'Cutton Buds', 2000, 2),
('TRZ002', 'C678', 'Wicak', 'B672', 'Buku tulis', 5000, 2),
('TRZ004', 'C522', 'Duwi', 'B262', 'Pulpen', 3500, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datatransaksi`
--
ALTER TABLE `datatransaksi`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
