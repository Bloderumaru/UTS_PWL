-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Apr 2021 pada 09.59
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(1, 'HRD'),
(2, 'Keuangan'),
(4, 'Marketing'),
(3, 'Oprasional');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` enum('admin','manager','staff') NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `fullname`, `username`, `password`, `role`, `foto`) VALUES
(1, 'Rafi Zuhud', 'juud', '1c708f99fca2543800a54e3d6f00df8206dc56b3', 'admin', 'juud.jpg'),
(2, 'Muhammad Radja Putra', 'raju', 'f1df37d85bb68998c80503f846423537b471c4ee', 'manager', 'radja.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(5) NOT NULL,
  `agama` enum('islam','kristen protestan','kristen katholik','hindu','budha','khonghucu') NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `email`, `agama`, `iddivisi`, `foto`) VALUES
(1, '10011', 'Wangsit Hardianto', 'wangs', 'islam', 1, 'wangsit.jpg'),
(2, '10012', 'Sulthonik Ikhwan', 'sulth', 'islam', 4, 'sulthonik.jpg'),
(3, '10013', 'Ghozi Muhammad Rafif Assyuja', 'ghozi', 'islam', 2, 'ghozi.jpg'),
(4, '10014', 'Fachry Abidin', 'fahry', 'islam', 3, 'fachry.jpg'),
(5, '10015', 'Abdul Ghani Adyan', 'agha', 'islam', 2, 'agha.jpg'),
(6, '10016', 'Adrian Dimas Hapsoro', 'adria', 'islam', 4, 'adrian.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
