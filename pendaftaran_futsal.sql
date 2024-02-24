-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2024 pada 06.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran_futsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(10) NOT NULL,
  `nama_tim` varchar(50) NOT NULL,
  `nama_turnamen` varchar(50) NOT NULL,
  `kapten` varchar(50) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `nama_tim`, `nama_turnamen`, `kapten`, `kontak`, `email`) VALUES
(1, 'Safin FC', 'UWP CUP', 'Ardi', '085721956600', 'ardi@gmail.com'),
(2, 'Pendekar United', 'MANCUP 9', 'Agung', '084257839002', 'agung@gmail.com'),
(3, 'Biangbola FC', 'MODA TAMA CUP 1', 'Budi', '085743895506', 'budi@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertandingan`
--

CREATE TABLE `pertandingan` (
  `id_pertandingan` int(10) NOT NULL,
  `id_turnamen` int(10) NOT NULL,
  `tim_tuan_rumah` varchar(20) NOT NULL,
  `tim_tamu` varchar(20) NOT NULL,
  `skor_tuan_rumah` int(20) NOT NULL,
  `skor_tamu` int(20) NOT NULL,
  `tanggal_pertandingan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pertandingan`
--

INSERT INTO `pertandingan` (`id_pertandingan`, `id_turnamen`, `tim_tuan_rumah`, `tim_tamu`, `skor_tuan_rumah`, `skor_tamu`, `tanggal_pertandingan`) VALUES
(1, 1, 'Safin FC', 'Biangbola FC', 2, 1, '2023-06-15 10:00:00'),
(2, 2, 'Pendekar United', 'Safin FC', 2, 2, '2023-04-20 12:00:00'),
(3, 3, 'Biangbola FC', 'Pendekar United', 3, 2, '2023-01-05 19:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tim`
--

CREATE TABLE `tim` (
  `id_tim` int(20) NOT NULL,
  `nama_tim` varchar(20) NOT NULL,
  `kota_asal` varchar(20) NOT NULL,
  `tahun_berdiri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tim`
--

INSERT INTO `tim` (`id_tim`, `nama_tim`, `kota_asal`, `tahun_berdiri`) VALUES
(1, 'Safin FC', 'bandung', '2017-02-06'),
(2, 'Pendekar United', 'cimahi', '2020-03-18'),
(3, 'Biangbola FC', 'jakarta', '2016-06-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `turnamen`
--

CREATE TABLE `turnamen` (
  `id_turnamen` int(10) NOT NULL,
  `nama_turnamen` varchar(30) NOT NULL,
  `tanggal_mulai` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `turnamen`
--

INSERT INTO `turnamen` (`id_turnamen`, `nama_turnamen`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 'UWP CUP', '2023-07-18 10:00:00', '2023-07-18 12:00:00'),
(2, 'MANCUP 9', '2023-05-10 13:00:00', '2023-05-10 15:00:00'),
(3, 'MODA TAMA CUP 1', '2023-03-01 08:00:00', '2023-03-01 10:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pertandingan`
--
ALTER TABLE `pertandingan`
  ADD PRIMARY KEY (`id_pertandingan`);

--
-- Indeks untuk tabel `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id_tim`);

--
-- Indeks untuk tabel `turnamen`
--
ALTER TABLE `turnamen`
  ADD PRIMARY KEY (`id_turnamen`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pertandingan`
--
ALTER TABLE `pertandingan`
  MODIFY `id_pertandingan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tim`
--
ALTER TABLE `tim`
  MODIFY `id_tim` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `turnamen`
--
ALTER TABLE `turnamen`
  MODIFY `id_turnamen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
