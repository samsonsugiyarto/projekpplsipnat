-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Okt 2019 pada 19.10
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipnat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` int(15) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `mengajar` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `hp` int(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `image` varchar(128) NOT NULL,
  `role_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `name`, `password`, `jk`, `mengajar`, `email`, `hp`, `is_active`, `image`, `role_id`) VALUES
(1997, 'Endang', '$2y$10$sIhxZ2Pe9CNyydtW8bscK.5NjkytG57cxWu7MnLWtkmTHmo8xcpKW', 'L', 'pemrogramman web', 'oskar@oskar.oskar', 9223, 1, 'default.jpg', 4),
(9087, 'Dhany Faizal', '$2y$10$pU04d4t6uEWmGH6AeDojk.WzGdxIayk8LOJfpP1/57OBKkawR34su', 'L', 'Jaringan Komputer', 'dhany@gmail.com', 98654, 1, 'default.jpg', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(5) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `jumlah_mhs` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `jumlah_mhs`) VALUES
(2, 'S1 Teknik Multimedia dan Jaringan', 100),
(3, 'S1 Sistem Informasi', 210),
(8, 'S1 Teknik Informatika', 95),
(10, 'D3 Komputerisasi Akuntansi', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(15) NOT NULL,
  `name` varchar(128) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `jurusan` varchar(40) NOT NULL,
  `email` varchar(128) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(15) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `name`, `jk`, `jurusan`, `email`, `hp`, `image`, `password`, `role_id`, `is_active`) VALUES
(201501054, 'Rudi Priyanto', 'L', 'S1 Teknik Informatika', 'rudi@rudi.com', '081222178545', 'default.jpg', '$2y$10$GG4AkYC1NHrxdN4QnoHrX.APOj3IRNbSez5HIW9bADBKMxbtxH9ce', 5, 1),
(201601007, 'Foustino Asprila Gunantara', 'L', 'S1 Sistem Informasi', 'fousas@gmail.com', '085333322151', 'default.jpg', '$2y$10$Ksd37r.kiw/Z/DzSsz1cqeywmJ6apbHP.UN6JGRc5rjkOPFg7UJnS', 5, 1),
(201601020, 'Theofilus Geon Tjeme', 'L', 'S1 Sistem Informasi', 'geon123@gmail.com', '081231234451', '1562350746250.jpg', '$2y$10$zNE7.5mYkM8WKd1fK8MNTu9Mumdr9oKkJ7OXk4epg46Lc5iVlxNOm', 5, 1),
(201601021, 'Marcello Dani Hansen', 'L', 'S1 Sistem Informasi', 'hansen123@gmail.com', '085555123123', 'default.jpg', '$2y$10$LXpn36MpNrIt3TzHivmeI.BDIAoqWua2lj8.ttnvAAeU79xSnyRBu', 5, 0),
(201601039, 'Yulieus Adi Pranoto', 'L', 'S1 Sistem Informasi', 'yuliusadi19@gmail.com', '081218990103', 'default.jpg', '$2y$10$GuBddu9N1VN9obcsUibWHOFLaYKxMWLmL0UL8tPtQ5VdsBdr5Vih2', 5, 1),
(201601044, 'Ridho Ramadhan', 'L', 'S1 Sistem Informasi', 'ridho123@gmail.com', '081232267583', 'default.jpg', '$2y$10$hBXw3Yz4KIl6.ibg3rRcpujDbYSkmFvibtzolcXNa/MXYtJJl69tW', 5, 1),
(201601045, 'Lala Wati', 'P', 'S1 Teknik Multimedia dan Jaringan', 'lala123@gmail.com', '081232212345', '1559932732837.jpg', '$2y$10$gpqHUYNh6zg9W.suYUUyCeI6eD.abgB2DuePp9OnqFHmUh4xdMKW.', 5, 1),
(201601046, 'Merli Amelia Anggraeni', 'P', 'S1 Sistem Informasi', 'merli123@gmail.com', '081234523412', 'default.jpg', '$2y$10$juW1jYi2XAzcxXrOet757OMbWv.FUlWItstqvImn6gSqnN8P/mJgS', 5, 1),
(201601053, 'Nabilla Nur Fadillah', 'P', 'S1 Sistem Informasi', 'nabilla123@gmail.com', '0812345612', 'default.jpg', '$2y$10$hNsAuZpKhDDR1NN4Ok43auzgukEt9BA29FqE6zXJV9lrjmEvLLIyG', 5, 1),
(201601056, 'Budi Anduk', 'L', 'S1 Sistem Informasi', 'budi345@gmail.com', '081223165123', '1557317977923.jpg', '$2y$10$Lrw/lpFrnc.l5BrvvRQ9Ye9bCidIzY/1g1qaLjl.oqqzwOfx2i0EW', 5, 1),
(201701001, 'Hanit Jatmika', 'L', 'S1 Teknik Informatika', 'hanit123@gmail.com', '081212265444', 'default.jpg', '$2y$10$ql89G/U7K/f9kzJUBchQl.IWCqklxTWKJg3VGUyXb2AmcmFAMRTAW', 5, 0),
(201701030, 'Axel Haryanto', 'L', 'S1 Teknik Multimedia dan Jaringan', 'axel123@gmail.com', '081212156678', 'default.jpg', '$2y$10$F0E.BDL1Qd6DRe4BYyLTC.J9/mz97WpNiJk.5me2MVNP.mq6E9zVe', 5, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pimpinan`
--

CREATE TABLE `pimpinan` (
  `nidn` int(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `hp` int(20) NOT NULL,
  `is_active` int(1) NOT NULL,
  `image` varchar(50) NOT NULL,
  `role_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pimpinan`
--

INSERT INTO `pimpinan` (`nidn`, `name`, `password`, `jk`, `jabatan`, `email`, `hp`, `is_active`, `image`, `role_id`) VALUES
(1234, 'Romanus', '$2y$10$K0x3OlXyePafkAVwXml23.DeeRv3QYN6ij1hapvl3luBYVgj2j3pm', 'L', 'Ketua STIKOM', 'romanus@romanus.com', 812345, 1, 'default.jpg', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'Samson Sugiyarto', 'gitosamson123@gmail.com', 'DSC_2565a1.jpg', '$2y$10$y4bmK5JiJbIOYQ5ze0n4cei/QdNTnxIPcy8gsAc/9misiwt9W2keC', 1, 1, 1560654857),
(4, 'Dila Fadillah', 'dila123@gmail.com', 'DSC_2565a.jpg', '$2y$10$dJfXzvLbBJU/aoJhY0oIlOC3rHvbSkvIow5i2I.zmR8hXX//YxaHm', 2, 1, 1560655500),
(21, 'Samson Sugiyartoa', 'samsonsugiyarto123@gmail.com', 'default.jpg', '$2y$10$hopfz/tuCVi5hV17nqOA5OejSIogOSjxwjDR4uyWFCM7SQx4P7RnG', 2, 1, 1561087895);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(12, 1, 2),
(13, 2, 2),
(15, 1, 4),
(16, 1, 6),
(18, 1, 3),
(19, 1, 8),
(22, 1, 13),
(23, 5, 2),
(24, 5, 9),
(25, 5, 10),
(26, 4, 2),
(27, 4, 9),
(28, 4, 10),
(29, 1, 7),
(31, 2, 6),
(32, 2, 13),
(33, 3, 2),
(34, 3, 9),
(35, 3, 10),
(39, 2, 1),
(40, 1, 15),
(41, 1, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `urutan_menu` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `urutan_menu`) VALUES
(1, 'Admin', 3),
(2, 'User', 5),
(3, 'Menu', 2),
(6, 'Operation', 6),
(7, 'Super Admin', 1),
(9, 'Coblos', 4),
(10, '(user) Komentar', 8),
(13, 'Riwayat Senat', 9),
(15, 'Administrator', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'SuperAdmin'),
(2, 'Admin'),
(3, 'Pimpinan'),
(4, 'Dosen'),
(5, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 7, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(9, 6, 'Jurusan', 'operation', 'fas fa-fw fa-graduation-cap', 1),
(10, 6, 'Mahasiswa', 'operation/mahasiswa', 'fas fa-fw fa-child', 1),
(11, 6, 'Dosen', 'operation/dosen', 'fas fa-fw fa-male', 1),
(12, 6, 'Pimpinan', 'operation/pimpinan', 'fas fa-fw fa-user-secret', 1),
(13, 6, 'Kandidat', 'operation/kandidat', 'fas fa-fw fa-users', 1),
(14, 6, 'Komentar', 'operation/komentar', 'fas fa-fw fa-comment', 1),
(15, 9, 'Tentukan Pilihanmu!', 'coblos', 'fas fa-fw fa-check-square', 1),
(16, 10, 'Komentar', 'user/komentar', 'fas fa-fw fa-comment', 1),
(17, 13, 'Riwayat', 'operation/riwayat', 'fas fa-fw fa-history', 1),
(18, 15, 'Admin', 'administrator', 'fas fa-fw fa-user', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`) USING BTREE;

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`) USING BTREE;

--
-- Indexes for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
