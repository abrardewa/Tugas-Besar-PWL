-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2021 at 02:13 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkmelati`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `nik` varchar(256) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `last` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `nama`, `nik`, `username`, `password`, `last`, `role_id`, `is_active`) VALUES
(8, 'admin', '4122142121', 'admin', '$2y$10$N4zDGGHntYIeg7O8wst4P.opSqWuv.hKPve6X3gJuroDrfmgo1M9G', '11-05-2021/ 05:04:am', 1, 1),
(9, 'kepalasekolah', '12312412214521', 'kepalasekolah', '$2y$10$t7ga/3XqNRL2bFpbHkl.FO0nMU12JQEx/b/8HbGOJXD/Mjb18SaO.', '11-05-2021/ 05:05:am', 3, 1),
(13, 'ardi gaya manalu', '123456789', 'ardi', '$2y$10$S0dPUkXICrBPmLF6usRe2.WP3/kssnxY7el.arPIpqdTtK9J25e5a', '16-05-2021/ 11:54:am', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `namaguru` varchar(200) NOT NULL,
  `jk` varchar(200) NOT NULL,
  `ttl` date NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `NIK` varchar(200) NOT NULL,
  `NIP` varchar(200) NOT NULL,
  `NUPTK` varchar(200) NOT NULL,
  `JPTK` varchar(200) NOT NULL,
  `NPSN` varchar(200) NOT NULL,
  `last` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `namaguru`, `jk`, `ttl`, `alamat`, `NIK`, `NIP`, `NUPTK`, `JPTK`, `NPSN`, `last`) VALUES
(9, 'salwa', 'Perempuan', '2021-05-03', 'Bandar Lampung', '2141412', '24112412', '124212', 'Administrasi', '12512341241212', '04-05-2021/ 05:10:am');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenistransaksi` varchar(128) NOT NULL,
  `banyak` int(128) NOT NULL,
  `satuan` int(128) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `jeniskas` varchar(128) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `last` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id`, `tanggal`, `jenistransaksi`, `banyak`, `satuan`, `kategori`, `jeniskas`, `jumlah`, `last`) VALUES
(9, '2021-05-11', 'Beli papan tulis', 4, 50000, 'Pembelian Barang', 'Kas Keluar', 200000, '14-05-2021/ 12:56:pm'),
(11, '2021-05-16', 'bayar gaji', 1, 500000, 'Gaji', 'Kas Keluar', 500000, '16-05-2021/ 11:48:am');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member'),
(3, 'kepsek');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `ttl` date NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `umur` int(11) NOT NULL,
  `akte` varchar(128) NOT NULL,
  `kk` varchar(128) NOT NULL,
  `nik` varchar(256) NOT NULL,
  `tinggi` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `jk` varchar(128) NOT NULL,
  `namaayah` varchar(128) NOT NULL,
  `namaibu` varchar(128) NOT NULL,
  `pendidikanayah` varchar(128) NOT NULL,
  `pendidikanibu` varchar(128) NOT NULL,
  `pekerjaanayah` varchar(128) NOT NULL,
  `pekerjaanibu` varchar(128) NOT NULL,
  `penghasilanayah` int(11) NOT NULL,
  `penghasilanibu` int(11) NOT NULL,
  `ttlayah` date NOT NULL,
  `ttlibu` date NOT NULL,
  `telpon` varchar(128) NOT NULL,
  `last` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `ttl`, `alamat`, `umur`, `akte`, `kk`, `nik`, `tinggi`, `berat`, `jk`, `namaayah`, `namaibu`, `pendidikanayah`, `pendidikanibu`, `pekerjaanayah`, `pekerjaanibu`, `penghasilanayah`, `penghasilanibu`, `ttlayah`, `ttlibu`, `telpon`, `last`) VALUES
(95, 'abrar dewa pratama', '2021-04-27', 'jl. nangka vi', 5, '21421124', '421412', '112127412', 123, 30, 'Laki-Laki', 'bapak', 'mamak', 's2', 's2', 'wiraswasta', 'wiraswasta', 10000000, 10000000, '2021-05-10', '2021-05-10', '08127428479', '16-05-2021/ 08:16:am'),
(99, 'ardi gaya manalu', '2021-05-10', 'jl. nangka v', 4, '21421124', '421412', '123456789', 120, 30, 'Laki-Laki', 'bapak', 'mamak', 's2', 's2', 'wiraswasta', 'wiraswasta', 10000000, 10000000, '2021-05-03', '2021-05-03', '08127428479', '16-05-2021/ 11:49:am');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `nik` varchar(256) NOT NULL,
  `bulan` varchar(128) NOT NULL,
  `nominal` int(11) NOT NULL,
  `tempo` varchar(256) NOT NULL,
  `tglbayar` date DEFAULT NULL,
  `status` varchar(128) NOT NULL,
  `last` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `nama`, `nik`, `bulan`, `nominal`, `tempo`, `tglbayar`, `status`, `last`) VALUES
(4, 'abrar dewa', '112127412', 'Mei', 1000000, '2021-05-20', '2021-05-11', 'Lunas', '12-05-2021/ 08:57:am'),
(6, 'abrar dewa', '112127412', 'Juni', 1000000, '2021-06-14', '0000-00-00', 'Hutang', '12-05-2021/ 09:50:am'),
(8, 'salwa', '1241212521', 'Januari', 1000000, '2021-05-04', '2021-05-04', 'Lunas', '14-05-2021/ 01:10:pm'),
(10, 'ardi gaya', '123456789', 'Januari', 1000000, '2021-01-14', '2021-01-14', 'Lunas', '16-05-2021/ 11:50:am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
