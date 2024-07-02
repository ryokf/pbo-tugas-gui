-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 27 Jun 2024 pada 01.42
-- Versi server: 5.7.39
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PBO_Latihan11`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(6) NOT NULL,
  `nm_brg` varchar(30) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `jual` double DEFAULT NULL,
  `stok` int(5) DEFAULT NULL,
  `stok_min` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `satuan`, `harga`, `jual`, `stok`, `stok_min`) VALUES
('A11', 'Ikan', 'KG', 10000, 15000, 10, 1),
('A12', 'Baju', 'BUAH', 200000, 240000, 12, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `djual`
--

CREATE TABLE `djual` (
  `no_jual` varchar(10) DEFAULT NULL,
  `kd_barang` char(6) DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `jml_jual` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `no_jual` varchar(10) NOT NULL,
  `kd_kons` char(6) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE `konsumen` (
  `kd_kons` varchar(6) NOT NULL,
  `nm_kons` varchar(30) DEFAULT NULL,
  `alm_kons` varchar(50) DEFAULT NULL,
  `kota_kons` varchar(20) DEFAULT NULL,
  `kd_pos` varchar(5) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `konsumen`
--

INSERT INTO `konsumen` (`kd_kons`, `nm_kons`, `alm_kons`, `kota_kons`, `kd_pos`, `phone`, `email`) VALUES
('01', 'Adi', 'Jambi', 'Muara Bungo', '123', '12345', 'adi@test.gmail.com'),
('02', 'Aldo', 'Jawa Tengah', 'Semarang', '234', '12345', 'aldo@test.gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `djual`
--
ALTER TABLE `djual`
  ADD KEY `no_jual` (`no_jual`);

--
-- Indeks untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`no_jual`);

--
-- Indeks untuk tabel `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kd_kons`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `djual`
--
ALTER TABLE `djual`
  ADD CONSTRAINT `djual_ibfk_1` FOREIGN KEY (`no_jual`) REFERENCES `jual` (`no_jual`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
