-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Jun 2022 pada 05.08
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_karir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_user_a` int(11) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_user_a`, `username`, `password`) VALUES
(10, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_alumni`
--

CREATE TABLE `tbl_alumni` (
  `nim` varchar(10) NOT NULL,
  `nm_alumni` varchar(50) NOT NULL,
  `thn_angkatan` varchar(20) NOT NULL,
  `thn_kelulusan` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `noTelp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `jurusan` enum('S1 Ilmu Komputer','S1 Farmasi','S1 Gizi','S1 DKV','D3 RPL') NOT NULL,
  `keahlian` text NOT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `lk` int(1) NOT NULL,
  `pk` int(2) NOT NULL,
  `tpa` varchar(100) NOT NULL,
  `kba` varchar(100) NOT NULL,
  `ipk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_alumni`
--

INSERT INTO `tbl_alumni` (`nim`, `nm_alumni`, `thn_angkatan`, `thn_kelulusan`, `alamat`, `noTelp`, `email`, `jurusan`, `keahlian`, `foto`, `lk`, `pk`, `tpa`, `kba`, `ipk`) VALUES
('1234567891', 'Alumni A', '2000', '2004', 'Jakarta', '081234567891', 'alumni_a@gmail.com', 'S1 Ilmu Komputer', 'RPL', 'FB-IMG_22.jpg', 4, 1, '86-100', 'Sangat Baik', '3.00'),
('1234567892', 'Alumni B', '2001', '2005', 'Jakarta', '081234567892', 'alumni_b@gmail.com', 'S1 Ilmu Komputer', 'RPL', 'FB-IMG_23.jpg', 4, 2, '76-85', 'Baik', '3.01'),
('1234567893', 'Alumni C', '2002', '2006', 'Jakarta', '081234567893', 'alumni_c@gmail.com', 'S1 Ilmu Komputer', 'RPL', 'FB-IMG_24.jpg', 4, 1, '66-75', 'Cukup', '3.02'),
('1234567894', 'Alumni D', '2003', '2007', 'Jakarta', '081234567894', 'alumni_d@gmail.com', 'S1 Ilmu Komputer', 'RPL', 'FB-IMG_25.jpg', 4, 1, '76-85', 'Baik', '3.03'),
('19200012', 'tes alumni', '2020', '2025', 'tes alamat alumni', '081123321112', 'tes@mail', 'S1 DKV', 'tes keahlian', 'CodeIgniter.jpg', 5, 3, '86-100', 'Sangat Baik', '3.80'),
('1920706000', 'Dhika', '2021', '2024', 'jakarta', '085867001581', 'dhika@mail.com', 'S1 Ilmu Komputer', 'Komputer', 'Untitled-1.jpg', 3, 5, '86-100', 'Sangat Baik', '4.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berkas_alumni`
--

CREATE TABLE `tbl_berkas_alumni` (
  `id_berkas` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `nm_file` varchar(50) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_berkas_alumni`
--

INSERT INTO `tbl_berkas_alumni` (`id_berkas`, `nim`, `nm_file`, `keterangan`) VALUES
(1, '1234567891', 'Berkas.jpg', 'File scanan ijazah sebagai bukti saya alumni universitas bale kode');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_alumni`
--

CREATE TABLE `tbl_detail_alumni` (
  `id_det_alumni` int(11) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  `jurusan` int(11) DEFAULT NULL,
  `keahlian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_pelamar`
--

CREATE TABLE `tbl_detail_pelamar` (
  `id_det_pelamar` int(11) NOT NULL,
  `id_pelamar` int(11) DEFAULT NULL,
  `status_p` enum('belum_diperiksa','diterima','ditolak') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_pelamar`
--

INSERT INTO `tbl_detail_pelamar` (`id_det_pelamar`, `id_pelamar`, `status_p`) VALUES
(1, 1, 'belum_diperiksa'),
(2, 2, 'belum_diperiksa'),
(3, 3, 'belum_diperiksa'),
(4, 4, 'belum_diperiksa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id_event` int(11) NOT NULL,
  `id_perusahaan` int(11) DEFAULT NULL,
  `nm_event` varchar(255) DEFAULT NULL,
  `isi` text,
  `tgl_dibuat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `foto_cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_event`
--

INSERT INTO `tbl_event` (`id_event`, `id_perusahaan`, `nm_event`, `isi`, `tgl_dibuat`, `foto_cover`) VALUES
(1, 2, 'Event A', '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-18 12:35:16', 'programming-language-should-you-learn-6.png'),
(2, 3, 'Event B', '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-18 13:01:20', 'programming-language-should-you-learn-6.png'),
(3, 4, 'Event C', '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-18 13:02:35', 'programming-language-should-you-learn-6.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `idKriteria` int(11) NOT NULL,
  `nm_kriteria` varchar(100) DEFAULT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`idKriteria`, `nm_kriteria`, `bobot`) VALUES
(1, 'Lama Kuliah', 5),
(2, 'Pengalaman Kerja', 3),
(3, 'Tes Potensi Akademik', 4),
(4, 'Kemampuan Bahasa Inggris', 4),
(5, 'IPK', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login_a`
--

CREATE TABLE `tbl_login_a` (
  `id_log_a` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_login_a`
--

INSERT INTO `tbl_login_a` (`id_log_a`, `nim`, `password`) VALUES
(2, '1234567891', 'alumni'),
(3, '1234567892', 'alumni'),
(4, '1234567893', 'alumni'),
(5, '1234567894', 'alumni'),
(6, '1920706000', '123456'),
(7, '19200012', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lowongan`
--

CREATE TABLE `tbl_lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `id_perusahaan` int(11) DEFAULT NULL,
  `nm_lowongan` varchar(255) DEFAULT NULL,
  `jumlah_orang` int(5) DEFAULT NULL,
  `deskripsi_lowongan` text,
  `tgl_deadline` date NOT NULL DEFAULT '0000-00-00',
  `tgl_dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Dibuka','Ditutup') NOT NULL,
  `id_pendidikan` int(11) DEFAULT NULL,
  `id_posisi_jabatan` int(11) DEFAULT NULL,
  `jenis_pekerjaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lowongan`
--

INSERT INTO `tbl_lowongan` (`id_lowongan`, `id_perusahaan`, `nm_lowongan`, `jumlah_orang`, `deskripsi_lowongan`, `tgl_deadline`, `tgl_dibuat`, `status`, `id_pendidikan`, `id_posisi_jabatan`, `jenis_pekerjaan`) VALUES
(1, 2, 'Lowongan A', 2, '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-08-24', '2019-08-18 12:17:54', 'Dibuka', 2, 1, 'Full Time'),
(2, 3, 'Lowongan B', 2, '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-08-24', '2019-08-18 12:19:44', 'Dibuka', 2, 2, 'Full Time'),
(3, 4, 'Lowongan C', 2, '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-08-24', '2019-08-18 12:28:24', 'Dibuka', 2, 3, 'Full Time');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `idNilai` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `idKriteria` int(11) NOT NULL,
  `idSubKriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`idNilai`, `nim`, `idKriteria`, `idSubKriteria`) VALUES
(6, '1234567891', 1, 2),
(7, '1234567891', 2, 10),
(8, '1234567891', 3, 15),
(9, '1234567891', 4, 16),
(10, '1234567891', 5, 23),
(11, '1234567892', 1, 2),
(12, '1234567892', 2, 8),
(13, '1234567892', 3, 15),
(14, '1234567892', 4, 17),
(15, '1234567892', 5, 23),
(16, '1234567893', 1, 2),
(17, '1234567893', 2, 10),
(18, '1234567893', 3, 15),
(19, '1234567893', 4, 18),
(20, '1234567893', 5, 23),
(21, '1234567894', 1, 2),
(22, '1234567894', 2, 10),
(23, '1234567894', 3, 15),
(24, '1234567894', 4, 17),
(25, '1234567894', 5, 23),
(26, '1920706000', 1, 1),
(27, '1920706000', 2, 6),
(28, '1920706000', 3, 15),
(29, '1920706000', 4, 16),
(30, '1920706000', 5, 21),
(31, '19200012', 1, 4),
(32, '19200012', 2, 7),
(33, '19200012', 3, 15),
(34, '19200012', 4, 16),
(35, '19200012', 5, 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelamar`
--

CREATE TABLE `tbl_pelamar` (
  `id_pelamar` int(11) NOT NULL,
  `id_lowongan` int(11) DEFAULT NULL,
  `nim` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pelamar`
--

INSERT INTO `tbl_pelamar` (`id_pelamar`, `id_lowongan`, `nim`) VALUES
(1, 1, '1234567891'),
(2, 2, '1234567892'),
(3, 3, '1234567893'),
(4, 1, '19200012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pendidikan`
--

CREATE TABLE `tbl_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `jenjang` enum('Diploma','Sarjana/S1','Master/S2','Doctor/S3','Umum') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pendidikan`
--

INSERT INTO `tbl_pendidikan` (`id_pendidikan`, `jenjang`) VALUES
(1, 'Diploma'),
(2, 'Sarjana/S1'),
(3, 'Master/S2'),
(4, 'Doctor/S3'),
(5, 'Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `id_lowongan` int(11) DEFAULT NULL,
  `nm_pengumuman` varchar(150) DEFAULT NULL,
  `isi_pengumuman` text,
  `tgl_dibuat` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`id_pengumuman`, `id_lowongan`, `nm_pengumuman`, `isi_pengumuman`, `tgl_dibuat`) VALUES
(1, 1, 'Pengumuman A', '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-19 02:45:43'),
(2, 2, 'Pengumuman B', '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-19 02:47:35'),
(3, 3, 'Pengumuman C', '<p align="justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-08-19 02:48:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perusahaan`
--

CREATE TABLE `tbl_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nm_perusahaan` varchar(150) DEFAULT NULL,
  `alamat_perusahaan` text,
  `email_perusahaan` varchar(150) DEFAULT NULL,
  `noTelp_perusahaan` varchar(15) DEFAULT NULL,
  `jenis_perusahaan` varchar(50) DEFAULT NULL,
  `logo_perusahaan` varchar(255) DEFAULT NULL,
  `surat_izin` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_perusahaan`
--

INSERT INTO `tbl_perusahaan` (`id_perusahaan`, `nm_perusahaan`, `alamat_perusahaan`, `email_perusahaan`, `noTelp_perusahaan`, `jenis_perusahaan`, `logo_perusahaan`, `surat_izin`) VALUES
(2, 'Perusahaan A', 'Jakarta', 'perusahaan_a@gmail.com', '081234567891', 'Perusahaan Teknologi', 'r4yytfg4ylhvjnaaqgcl.jpg', 'Surat Izin Resmi dari Kementrian Perindustrian RI NO.1 Tahun 2019'),
(3, 'Perusahaan B', 'Jakarta', 'perusahaan_b@gmail.com', '081234567891', 'Perusahaan Teknologi', 'r4yytfg4ylhvjnaaqgcl1.jpg', 'Surat Izin Resmi dari Kementrian Perindustrian RI NO.2 Tahun 2019'),
(4, 'Perusahaan C', 'Jakarta', 'perusahaan_c@gmail.com', '081234567891', 'Perusahaan Teknologi', 'r4yytfg4ylhvjnaaqgcl2.jpg', 'Surat Izin Resmi dari Kementrian Perindustrian RI NO.3 Tahun 2019'),
(5, 'Perusahaan D', 'Jakarta', 'perusahaan_d@gmail.com', '081234567891', 'Perusahaan Teknologi', 'r4yytfg4ylhvjnaaqgcl3.jpg', 'Surat Izin Resmi dari Kementrian Perindustrian RI NO.4 Tahun 2019'),
(6, 'Perusahaan E', 'Jakarta', 'perusahaan_e@gmail.com', '081234567891', 'Perusahaan Teknologi', 'r4yytfg4ylhvjnaaqgcl4.jpg', 'Surat Izin Resmi dari Kementrian Perindustrian RI NO.5 Tahun 2019'),
(7, 'Perusahaan F', 'Jakarta', 'perusahaan_f@gmail.com', '081234567891', 'Perusahaan Teknologi', 'r4yytfg4ylhvjnaaqgcl5.jpg', 'Surat Izin Resmi dari Kementrian Perindustrian RI NO.6 Tahun 2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_posisi_jabatan`
--

CREATE TABLE `tbl_posisi_jabatan` (
  `id_posisi_jabatan` int(11) NOT NULL,
  `nm_posisi` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_posisi_jabatan`
--

INSERT INTO `tbl_posisi_jabatan` (`id_posisi_jabatan`, `nm_posisi`) VALUES
(1, 'Posisi 1'),
(2, 'Posisi 2'),
(3, 'Posisi 3'),
(4, 'Posisi 4'),
(5, 'Posisi 5'),
(6, 'Posisi 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_subkriteria`
--

CREATE TABLE `tbl_subkriteria` (
  `idSubKriteria` int(11) NOT NULL,
  `idKriteria` int(11) NOT NULL,
  `nmSubKriteria` varchar(120) NOT NULL,
  `nilaiBobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_subkriteria`
--

INSERT INTO `tbl_subkriteria` (`idSubKriteria`, `idKriteria`, `nmSubKriteria`, `nilaiBobot`) VALUES
(1, 1, 'Sangat Memuaskan', 5),
(2, 1, 'Memuaskan', 4),
(3, 1, 'Cukup', 3),
(4, 1, 'Kurang', 2),
(5, 1, 'Sangat Kurang', 1),
(6, 2, 'Sangat Baik', 5),
(7, 2, 'Baik', 4),
(8, 2, 'Cukup', 3),
(9, 2, 'Kurang', 2),
(10, 2, 'Sangat Kurang', 1),
(11, 3, '86 – 100', 5),
(12, 3, '76 – 85', 4),
(13, 3, '66 – 75', 3),
(14, 3, '51 – 65', 2),
(15, 3, '0 – 50', 1),
(16, 4, 'Sangat Baik', 5),
(17, 4, 'Baik', 4),
(18, 4, 'Cukup', 3),
(19, 4, 'Kurang', 2),
(20, 4, 'Sangat Kurang', 1),
(21, 5, 'IPK 4.00 – 3.50', 5),
(22, 5, 'IPK 3.26 – 3.49', 4),
(23, 5, 'IPK 3.00 – 3.25', 3),
(24, 5, 'IPK 2.76 – 2.99', 2),
(25, 5, 'IPK <= 2.75', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_verifikasi_a`
--

CREATE TABLE `tbl_verifikasi_a` (
  `id_verifikasi_a` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `status_v` enum('B','Y','T') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_verifikasi_a`
--

INSERT INTO `tbl_verifikasi_a` (`id_verifikasi_a`, `nim`, `status_v`) VALUES
(2, '1234567891', 'Y'),
(3, '1234567892', 'Y'),
(4, '1234567893', 'Y'),
(5, '1234567894', 'B'),
(6, '1920706000', 'Y'),
(7, '19200012', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_user_a`);

--
-- Indexes for table `tbl_alumni`
--
ALTER TABLE `tbl_alumni`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_berkas_alumni`
--
ALTER TABLE `tbl_berkas_alumni`
  ADD PRIMARY KEY (`id_berkas`),
  ADD KEY `FK_tbl_berkas_alumni_tbl_alumni` (`nim`);

--
-- Indexes for table `tbl_detail_pelamar`
--
ALTER TABLE `tbl_detail_pelamar`
  ADD PRIMARY KEY (`id_det_pelamar`),
  ADD KEY `FK_tbl_detail_pelamar_tbl_pelamar` (`id_pelamar`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `FK_tbl_event_tbl_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`idKriteria`);

--
-- Indexes for table `tbl_login_a`
--
ALTER TABLE `tbl_login_a`
  ADD PRIMARY KEY (`id_log_a`),
  ADD KEY `FK_tbl_login_a_tbl_alumni` (`nim`);

--
-- Indexes for table `tbl_lowongan`
--
ALTER TABLE `tbl_lowongan`
  ADD PRIMARY KEY (`id_lowongan`),
  ADD KEY `FK_tbl_lowongan_tbl_perusahaan` (`id_perusahaan`),
  ADD KEY `id_pendidikan` (`id_pendidikan`),
  ADD KEY `id_posisi_jabatan` (`id_posisi_jabatan`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`idNilai`),
  ADD KEY `nim` (`nim`,`idSubKriteria`),
  ADD KEY `idSubKriteria` (`idSubKriteria`),
  ADD KEY `idKriteria` (`idKriteria`);

--
-- Indexes for table `tbl_pelamar`
--
ALTER TABLE `tbl_pelamar`
  ADD PRIMARY KEY (`id_pelamar`),
  ADD KEY `FK_tbl_pelamar_tbl_lowongan` (`id_lowongan`),
  ADD KEY `FK_tbl_pelamar_tbl_alumni` (`nim`);

--
-- Indexes for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD KEY `FK_tbl_test_tbl_lowongan` (`id_lowongan`);

--
-- Indexes for table `tbl_perusahaan`
--
ALTER TABLE `tbl_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`),
  ADD UNIQUE KEY `email_perusahaan` (`email_perusahaan`);

--
-- Indexes for table `tbl_posisi_jabatan`
--
ALTER TABLE `tbl_posisi_jabatan`
  ADD PRIMARY KEY (`id_posisi_jabatan`);

--
-- Indexes for table `tbl_subkriteria`
--
ALTER TABLE `tbl_subkriteria`
  ADD PRIMARY KEY (`idSubKriteria`),
  ADD KEY `idSubKriteria` (`idSubKriteria`),
  ADD KEY `idKriteria` (`idKriteria`);

--
-- Indexes for table `tbl_verifikasi_a`
--
ALTER TABLE `tbl_verifikasi_a`
  ADD PRIMARY KEY (`id_verifikasi_a`),
  ADD KEY `FK_tbl_verifikasi_a_tbl_alumni` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_user_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_berkas_alumni`
--
ALTER TABLE `tbl_berkas_alumni`
  MODIFY `id_berkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_detail_pelamar`
--
ALTER TABLE `tbl_detail_pelamar`
  MODIFY `id_det_pelamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  MODIFY `idKriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_login_a`
--
ALTER TABLE `tbl_login_a`
  MODIFY `id_log_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_lowongan`
--
ALTER TABLE `tbl_lowongan`
  MODIFY `id_lowongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `idNilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_pelamar`
--
ALTER TABLE `tbl_pelamar`
  MODIFY `id_pelamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_perusahaan`
--
ALTER TABLE `tbl_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_posisi_jabatan`
--
ALTER TABLE `tbl_posisi_jabatan`
  MODIFY `id_posisi_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_subkriteria`
--
ALTER TABLE `tbl_subkriteria`
  MODIFY `idSubKriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_verifikasi_a`
--
ALTER TABLE `tbl_verifikasi_a`
  MODIFY `id_verifikasi_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_berkas_alumni`
--
ALTER TABLE `tbl_berkas_alumni`
  ADD CONSTRAINT `FK_tbl_berkas_alumni_tbl_alumni` FOREIGN KEY (`nim`) REFERENCES `tbl_alumni` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_detail_pelamar`
--
ALTER TABLE `tbl_detail_pelamar`
  ADD CONSTRAINT `FK_tbl_detail_pelamar_tbl_pelamar` FOREIGN KEY (`id_pelamar`) REFERENCES `tbl_pelamar` (`id_pelamar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD CONSTRAINT `FK_tbl_event_tbl_perusahaan` FOREIGN KEY (`id_perusahaan`) REFERENCES `tbl_perusahaan` (`id_perusahaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_login_a`
--
ALTER TABLE `tbl_login_a`
  ADD CONSTRAINT `FK_tbl_login_a_tbl_alumni` FOREIGN KEY (`nim`) REFERENCES `tbl_alumni` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_lowongan`
--
ALTER TABLE `tbl_lowongan`
  ADD CONSTRAINT `FK_tbl_lowongan_tbl_perusahaan` FOREIGN KEY (`id_perusahaan`) REFERENCES `tbl_perusahaan` (`id_perusahaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_lowongan_ibfk_1` FOREIGN KEY (`id_pendidikan`) REFERENCES `tbl_pendidikan` (`id_pendidikan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_lowongan_ibfk_2` FOREIGN KEY (`id_posisi_jabatan`) REFERENCES `tbl_posisi_jabatan` (`id_posisi_jabatan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_ibfk_1` FOREIGN KEY (`idSubKriteria`) REFERENCES `tbl_subkriteria` (`idSubKriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `tbl_alumni` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_3` FOREIGN KEY (`idKriteria`) REFERENCES `tbl_kriteria` (`idKriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_pelamar`
--
ALTER TABLE `tbl_pelamar`
  ADD CONSTRAINT `FK_tbl_pelamar_tbl_alumni` FOREIGN KEY (`nim`) REFERENCES `tbl_alumni` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pelamar_ibfk_1` FOREIGN KEY (`id_lowongan`) REFERENCES `tbl_lowongan` (`id_lowongan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD CONSTRAINT `tbl_pengumuman_ibfk_1` FOREIGN KEY (`id_lowongan`) REFERENCES `tbl_lowongan` (`id_lowongan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_subkriteria`
--
ALTER TABLE `tbl_subkriteria`
  ADD CONSTRAINT `tbl_subkriteria_ibfk_1` FOREIGN KEY (`idKriteria`) REFERENCES `tbl_kriteria` (`idKriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_verifikasi_a`
--
ALTER TABLE `tbl_verifikasi_a`
  ADD CONSTRAINT `FK_tbl_verifikasi_a_tbl_alumni` FOREIGN KEY (`nim`) REFERENCES `tbl_alumni` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
