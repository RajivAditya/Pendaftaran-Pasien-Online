-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 Jan 2018 pada 14.12
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kursus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_dokumen`
--

CREATE TABLE `dt_dokumen` (
  `kd_dok` varchar(4) NOT NULL,
  `nm_dok` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dt_dokumen`
--

INSERT INTO `dt_dokumen` (`kd_dok`, `nm_dok`) VALUES
('D001', 'Sertifikat'),
('D002', 'Piagam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_jenis`
--

CREATE TABLE `dt_jenis` (
  `kd_jenis` varchar(4) NOT NULL,
  `nm_jenis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dt_jenis`
--

INSERT INTO `dt_jenis` (`kd_jenis`, `nm_jenis`) VALUES
('J001', 'Pemula'),
('J002', 'Menengah'),
('J003', 'Ahli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_kursus`
--

CREATE TABLE `dt_kursus` (
  `kd_kursus` varchar(4) NOT NULL,
  `kd_jenis` varchar(4) NOT NULL,
  `nm_kursus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dt_kursus`
--

INSERT INTO `dt_kursus` (`kd_kursus`, `kd_jenis`, `nm_kursus`) VALUES
('K001', 'J001', 'Animasi'),
('K002', 'J001', 'Desain Ilustrasi'),
('K003', 'J001', 'Database Management Sistem');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_kursus_detail`
--

CREATE TABLE `dt_kursus_detail` (
  `kd_detail` int(11) NOT NULL,
  `kd_kursus` varchar(4) NOT NULL,
  `kd_unit` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dt_kursus_detail`
--

INSERT INTO `dt_kursus_detail` (`kd_detail`, `kd_kursus`, `kd_unit`) VALUES
(14, 'K003', 'A.767676.001.01'),
(15, 'K001', 'A.767676.001.01'),
(17, 'K001', 'A.767676.002.01'),
(22, 'K001', 'A.767676.001.01'),
(24, 'K002', 'I.898988.005.01'),
(25, 'K002', 'I.898988.006.01'),
(26, 'K003', 'A.767676.002.01'),
(28, 'K003', 'A.767676.001.01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_kursus_temp`
--

CREATE TABLE `dt_kursus_temp` (
  `kd_detail` int(11) NOT NULL,
  `kd_kursus` varchar(4) NOT NULL,
  `kd_unit` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_lokasi`
--

CREATE TABLE `dt_lokasi` (
  `kd_lokasi` varchar(4) NOT NULL,
  `nm_lokasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dt_lokasi`
--

INSERT INTO `dt_lokasi` (`kd_lokasi`, `nm_lokasi`) VALUES
('L001', 'Semarang'),
('L002', 'Solo'),
('L003', 'Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_pendukung`
--

CREATE TABLE `dt_pendukung` (
  `kd_dt` varchar(4) NOT NULL,
  `kd_dok` varchar(4) NOT NULL,
  `gbr_dok` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dt_unit`
--

CREATE TABLE `dt_unit` (
  `kd_unit` varchar(16) NOT NULL,
  `nm_unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dt_unit`
--

INSERT INTO `dt_unit` (`kd_unit`, `nm_unit`) VALUES
('A.767676.001.01', 'Membuat model digital hardsurface 3 dimensi'),
('A.767676.002.01', 'Membuat pencitraan sifat permukaan'),
('A.767676.003.01', 'Membuat pencitraan gambar digital (rendering)'),
('I.898988.005.01', 'Memahami menggunakan AI, PS, Corel'),
('I.898988.006.01', 'Membuat vector gambr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `formulir`
--

CREATE TABLE `formulir` (
  `no_form` varchar(4) NOT NULL,
  `no_id` varchar(25) NOT NULL,
  `nm_lngkp` varchar(30) NOT NULL,
  `organisasi` text NOT NULL,
  `pernah` varchar(10) DEFAULT NULL,
  `tempat_lhr` text,
  `tgl_lhr` date DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `alamat` text,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `pendidikan` varchar(10) DEFAULT NULL,
  `nm_pddk` text,
  `jurusan` text,
  `tempat_kursus` text,
  `kd_kursus` varchar(4) DEFAULT NULL,
  `pasfoto` text,
  `idfoto` text,
  `ijazahfoto` text,
  `username` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `formulir_temp`
--

CREATE TABLE `formulir_temp` (
  `no_id` varchar(25) NOT NULL,
  `nm_lngkp` varchar(30) NOT NULL,
  `organisasi` text NOT NULL,
  `pernah` varchar(10) NOT NULL,
  `tempat_lhr` text NOT NULL,
  `tgl_lhr` date NOT NULL,
  `jk` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `pendidikan` varchar(10) NOT NULL,
  `nm_pddk` text NOT NULL,
  `jurusan` text NOT NULL,
  `tempat_kursus` text NOT NULL,
  `kd_dt` varchar(10) NOT NULL,
  `pasfoto` text NOT NULL,
  `idfoto` text NOT NULL,
  `ijazahfoto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dt_jenis`
--
ALTER TABLE `dt_jenis`
  ADD PRIMARY KEY (`kd_jenis`);

--
-- Indexes for table `dt_kursus`
--
ALTER TABLE `dt_kursus`
  ADD PRIMARY KEY (`kd_kursus`),
  ADD KEY `kd_jenis` (`kd_jenis`);

--
-- Indexes for table `dt_kursus_detail`
--
ALTER TABLE `dt_kursus_detail`
  ADD PRIMARY KEY (`kd_detail`);

--
-- Indexes for table `dt_kursus_temp`
--
ALTER TABLE `dt_kursus_temp`
  ADD PRIMARY KEY (`kd_detail`);

--
-- Indexes for table `dt_lokasi`
--
ALTER TABLE `dt_lokasi`
  ADD PRIMARY KEY (`kd_lokasi`);

--
-- Indexes for table `dt_unit`
--
ALTER TABLE `dt_unit`
  ADD PRIMARY KEY (`kd_unit`);

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`no_form`);

--
-- Indexes for table `formulir_temp`
--
ALTER TABLE `formulir_temp`
  ADD PRIMARY KEY (`no_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_kursus_detail`
--
ALTER TABLE `dt_kursus_detail`
  MODIFY `kd_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dt_kursus_temp`
--
ALTER TABLE `dt_kursus_temp`
  MODIFY `kd_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
