-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Apr 2025 pada 08.10
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
-- Database: `rhasyyid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `hjual` float NOT NULL,
  `hbeli` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama`, `jenis`, `hjual`, `hbeli`) VALUES
('KD99', 'pulpen', 'ATK', 1500, 2000);

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kel` varchar(11) NOT NULL,
  `notelp` int(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `jenis_kel`, `notelp`, `alamat`) VALUES
('P099', 'Rhasyyid', 'Laki-Laki', 821177733, 'Bekasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `datatransaksi`
--
ALTER TABLE `datatransaksi`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
