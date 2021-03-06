-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 06 Jan 2017 pada 16.09
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaji`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE `departemen` (
  `kd_dept` int(10) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `departemen` varchar(20) NOT NULL,
  `jabatan` varchar(15) NOT NULL,
  `gaji_pokok` int(10) NOT NULL,
  `tunjangan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`kd_dept`, `nik`, `departemen`, `jabatan`, `gaji_pokok`, `tunjangan`) VALUES
(1, '20160001', 'Warehouse', 'Staff', 25000000, 2000000),
(2, '20160002', 'Warehouse', 'Supervisor', 10000000, 2000000),
(3, '20160004', 'Purchasing', 'Assist Manager', 5000000, 250000),
(4, '20150001', 'QA', 'Staff', 3000, 800);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gajian`
--

CREATE TABLE `gajian` (
  `kd_gaji` int(4) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `gaji_bulan` varchar(10) NOT NULL,
  `gaji_tahun` varchar(10) NOT NULL,
  `tgl_transfer` date NOT NULL,
  `absensi` int(2) NOT NULL,
  `sakit` int(2) DEFAULT NULL,
  `cuti` int(2) DEFAULT NULL,
  `no_rek` varchar(25) NOT NULL,
  `gaji` int(10) NOT NULL,
  `tunjangan` int(10) NOT NULL,
  `uang_makan` int(10) NOT NULL,
  `uang_transport` int(10) NOT NULL,
  `thr` int(10) DEFAULT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gajian`
--

INSERT INTO `gajian` (`kd_gaji`, `nik`, `gaji_bulan`, `gaji_tahun`, `tgl_transfer`, `absensi`, `sakit`, `cuti`, `no_rek`, `gaji`, `tunjangan`, `uang_makan`, `uang_transport`, `thr`, `total`) VALUES
(1, '20160001', 'Januari', '2016', '2016-01-29', 30, 0, 0, '1232423253513', 20000000, 2000000, 300000, 450000, 1000000, 23750000),
(2, '20150001', 'Desember', '2016', '2016-12-30', 20, 2, 1, '086717177', 3000, 800, 200000, 300000, 0, 503800);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `status` enum('tetap','kontrak','magang','outsource') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `alamat`, `no_hp`, `status`) VALUES
('20150001', 'Windi Triyani', 'Jl. Cipinang Pulo Maja RT04/010 No.24 Jatinegara Jakarta Timur', '085717381887', 'tetap'),
('20160001', 'Hakko Bio Richard', 'Kp. Wangkal Rt.03 Rw.03 Desa Kalijaya', '085694984803', 'tetap'),
('20160002', 'Jampang', 'Kp. Jampang', '085687659087', 'kontrak'),
('20160003', 'Anton Sugianto', 'Kp. Pilar Timur', '085677738883', 'kontrak'),
('20160004', 'Ujang Syamsudin', 'Kp. Sukatani - Cikarang - Bekasi', '09876758432', 'magang'),
('20160005', 'Rizki Firdaus', 'Kp. Pilar Barat - Cikarang - Bekasi', '085694123456', 'outsource');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `no_hp`, `level`, `gambar`) VALUES
(2, 'admin', 'admin', 'Windi Triyani', '085717381887', 'admin', 'gambar_admin/admin.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`kd_dept`);

--
-- Indexes for table `gajian`
--
ALTER TABLE `gajian`
  ADD PRIMARY KEY (`kd_gaji`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `kd_dept` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gajian`
--
ALTER TABLE `gajian`
  MODIFY `kd_gaji` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
