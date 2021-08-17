-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Agu 2021 pada 13.41
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mydigi_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `domisili_admin` varchar(30) NOT NULL,
  `kontak_admin` varchar(15) NOT NULL,
  `status_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `domisili_admin`, `kontak_admin`, `status_admin`) VALUES
(1, 'setio', 'cilegon', '085211223344', 'staff'),
(2, 'rangga', 'riau', '081999112211', 'staff'),
(3, 'desya', 'bandung', '082219234511', 'admin'),
(4, 'wanafi', 'jakarta', '081234567891', 'admin'),
(5, 'kezia', 'tangerang', '085211337711', 'admin'),
(6, 'grace', 'bekasi', '085244221182', 'admin_joki'),
(7, 'nova', 'banjarmasin', '081231415161', 'admin_joki'),
(8, 'niko', 'yogyakarta', '081311228211', 'admin_editor'),
(9, 'nazaq', 'serang', '082399412211', 'admin_editor'),
(10, 'abrar', 'semarang', '085312418211', 'admin_hosting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa`
--

CREATE TABLE `jasa` (
  `id_jasa` int(11) NOT NULL,
  `nama_jasa` varchar(30) NOT NULL,
  `harga_jasa` varchar(20) NOT NULL,
  `jumlah_jasa` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jasa`
--

INSERT INTO `jasa` (`id_jasa`, `nama_jasa`, `harga_jasa`, `jumlah_jasa`) VALUES
(1, 'jasa_art', '50000', 15),
(2, 'joki_tugas', '9000', 20),
(3, 'joki_ujian', '80000', 15),
(4, 'joki_catatan', '5000', 50),
(5, 'joki_makalah', '35000', 15),
(6, 'joki_ppt', '3000', 50),
(7, 'editor_skripsi', '100000', 13),
(8, 'joki_singer', '30000', 13),
(9, 'joki_host', '40000', 13),
(10, 'edit_foto', '10000', 20),
(11, 'edit_video', '30000', 14),
(12, 'hosting', '50000', 5),
(13, 'buat_website', '100000', 5),
(14, 'joki_absen', '9000', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `id_produk` varchar(30) NOT NULL,
  `id_jasa` varchar(20) NOT NULL,
  `id_admin` varchar(20) NOT NULL,
  `customer` varchar(30) NOT NULL,
  `tgl_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id_order`, `id_produk`, `id_jasa`, `id_admin`, `customer`, `tgl_order`, `total_harga`) VALUES
(1, '1', '2', '2', 'naufal', '2021-08-17 06:16:54', '14000'),
(2, '4', '5', '1', 'widan', '2021-08-17 06:17:03', '55000'),
(3, '1', '7', '6', 'diko', '2021-08-17 06:17:31', '105000'),
(4, '1', '9', '7', 'wahyu', '2021-08-17 06:17:58', '45000'),
(5, '12', '1', '1', 'hanafi', '2021-08-17 06:18:07', '80000'),
(6, '10', '2', '1', 'vernand', '2021-08-17 06:18:21', '79000'),
(7, '2', '11', '1', 'prasetyo', '2021-08-17 06:18:32', '35000'),
(8, '1', '3', '1', 'eka', '2021-08-17 06:18:49', '85000'),
(9, '12', '2', '1', 'setio', '2021-08-17 06:19:13', '39000'),
(10, '11', '8', '1', 'aji', '2021-08-17 06:19:22', '170000'),
(11, '1', '7', '1', 'dony', '2021-08-17 06:20:05', '105000'),
(12, '13', '2', '1', 'pratama', '2021-08-17 06:20:58', '19000'),
(13, '5', '5', '1', 'rifqi', '2021-08-17 06:21:19', '45000'),
(14, '1', '2', '2', 'fauzi', '2021-08-17 06:21:30', '14000'),
(15, '6', '2', '2', 'bagas', '2021-08-17 06:22:15', '16000'),
(16, '13', '9', '2', 'nur', '2021-08-17 06:22:24', '50000'),
(17, '3', '11', '2', 'yanto', '2021-08-17 06:22:39', '35000'),
(18, '2', '13', '2', 'rafli', '2021-08-17 06:22:49', '125000'),
(19, '1', '2', '2', 'putri', '2021-08-17 06:23:53', '14000'),
(20, '4', '1', '2', 'akbar', '2021-08-17 06:26:13', '100000'),
(21, '3', '5', '2', 'ayu', '2021-08-17 06:26:33', '40000'),
(22, '7', '9', '2', 'andini', '2021-08-17 06:26:41', '50000'),
(23, '3', '2', '3', 'sofyan', '2021-08-17 06:27:06', '14000'),
(24, '3', '10', '3', 'dhea', '2021-08-17 06:27:15', '15000'),
(25, '1', '6', '3', 'vanka', '2021-08-17 06:27:36', '20000'),
(26, '8', '4', '3', 'nanda', '2021-08-17 06:27:49', '10000'),
(27, '11', '2', '3', 'surya', '2021-08-17 06:28:05', '149000'),
(28, '9', '3', '3', 'rozaq', '2021-08-17 06:28:14', '87000'),
(29, '3', '11', '3', 'sulthan', '2021-08-17 06:28:38', '35000'),
(30, '5', '13', '3', 'esa', '2021-08-17 06:28:51', '110000'),
(31, '6', '2', '3', 'maulana', '2021-08-17 06:29:05', '16000'),
(32, '13', '9', '3', 'thoriq', '2021-08-17 06:29:16', '50000'),
(33, '1', '1', '4', 'jamal', '2021-08-17 06:29:32', '55000'),
(34, '5', '12', '4', 'ikhsan', '2021-08-17 06:29:43', '60000'),
(35, '12', '2', '4', 'albertus', '2021-08-17 09:39:56', '39000'),
(36, '13', '6', '4', 'sera', '2021-08-17 09:40:05', '13000'),
(37, '1', '5', '4', 'sasmitha', '2021-08-17 09:40:26', '40000'),
(38, '2', '10', '4', 'ihsan', '2021-08-17 09:40:36', '35000'),
(39, '4', '2', '4', 'nara', '2021-08-17 09:41:11', '29000'),
(40, '8', '4', '4', 'andi', '2021-08-17 09:41:21', '10000'),
(41, '3', '3', '4', 'saputra', '2021-08-17 09:41:42', '85000'),
(42, '3', '8', '4', 'fikri', '2021-08-17 09:42:13', '35000'),
(43, '1', '2', '5', 'firdaus', '2021-08-17 09:42:29', '14000'),
(44, '5', '5', '5', 'angel', '2021-08-17 09:42:47', '45000'),
(45, '1', '5', '5', 'sesillia', '2021-08-17 09:43:04', '40000'),
(46, '6', '4', '5', 'dayan', '2021-08-17 09:43:16', '12000'),
(47, '2', '2', '5', 'hanif', '2021-08-17 09:43:34', '34000'),
(48, '1', '10', '5', 'zahra', '2021-08-17 09:44:14', '15000'),
(49, '2', '4', '5', 'anisa', '2021-08-17 09:44:33', '30000'),
(50, '3', '4', '5', 'albert', '2021-08-17 09:44:51', '10000'),
(51, '1', '1', '5', 'dumbledore', '2021-08-17 09:45:08', '55000'),
(52, '2', '4', '5', 'gandalf', '2021-08-17 09:48:28', '30000'),
(53, '2', '1', '6', 'roberto', '2021-08-17 09:49:57', '75000'),
(54, '1', '3', '6', 'carlos', '2021-08-17 09:50:38', '85000'),
(55, '2', '5', '6', 'al', '2021-08-17 09:51:17', '60000'),
(56, '1', '4', '6', 'ewa', '2021-08-17 09:51:31', '10000'),
(57, '3', '2', '6', 'aldi', '2021-08-17 09:53:57', '14000'),
(58, '2', '4', '6', 'riza', '2021-08-17 09:54:11', '30000'),
(59, '2', '2', '6', 'bayu', '2021-08-17 09:56:14', '34000'),
(60, '1', '2', '6', 'bani', '2021-08-17 09:56:29', '14000'),
(61, '8', '14', '6', 'michella', '2021-08-17 09:57:18', '14000'),
(62, '10', '14', '6', 'dobleh', '2021-08-17 09:58:09', '79000'),
(63, '5', '2', '7', 'hadid', '2021-08-17 09:58:30', '9000'),
(64, '2', '4', '7', 'faith', '2021-08-17 09:58:44', '30000'),
(65, '7', '4', '7', 'catryn', '2021-08-17 09:59:29', '20000'),
(66, '2', '4', '7', 'sarah', '2021-08-17 10:00:08', '30000'),
(67, '4', '6', '7', 'fajri', '2021-08-17 10:00:26', '29000'),
(68, '1', '6', '7', 'rizky', '2021-08-17 10:00:50', '20000'),
(69, '6', '6', '7', 'juwandito', '2021-08-17 10:01:16', '37000'),
(70, '8', '8', '7', 'rajendra', '2021-08-17 10:01:57', '35000'),
(71, '2', '6', '7', 'wrahatnolo', '2021-08-17 10:02:23', '37000'),
(72, '6', '9', '7', 'dadung', '2021-08-17 10:02:47', '47000'),
(73, '1', '7', '8', 'mikey', '2021-08-17 10:14:15', '105000'),
(74, '3', '10', '8', 'draken', '2021-08-17 10:14:40', '15000'),
(75, '2', '11', '8', 'bagus', '2021-08-17 10:23:07', '55000'),
(76, '1', '11', '8', 'masaji', '2021-08-17 10:23:40', '35000'),
(77, '2', '7', '8', 'fadhil', '2021-08-17 10:24:01', '125000'),
(78, '3', '7', '8', 'haekal', '2021-08-17 10:24:28', '105000'),
(79, '4', '11', '8', 'dimas', '2021-08-17 10:25:09', '50000'),
(80, '5', '10', '8', 'aria', '2021-08-17 10:25:31', '20000'),
(81, '6', '10', '8', 'purbaya', '2021-08-17 10:26:05', '17000'),
(82, '7', '10', '8', 'helda', '2021-08-17 10:26:38', '20000'),
(83, '8', '10', '9', 'rahmi', '2021-08-17 10:27:00', '15000'),
(84, '9', '10', '9', 'nazril', '2021-08-17 10:27:28', '17000'),
(85, '10', '11', '9', 'fahri', '2021-08-17 10:28:08', '100000'),
(86, '11', '11', '9', 'fauzan', '2021-08-17 10:28:42', '170000'),
(87, '12', '11', '9', 'hakim', '2021-08-17 10:29:03', '60000'),
(88, '13', '7', '9', 'aini', '2021-08-17 10:29:36', '110000'),
(89, '14', '7', '9', 'syifa', '2021-08-17 10:30:00', '105000'),
(90, '1', '7', '9', 'kayla', '2021-08-17 10:30:18', '105000'),
(91, '2', '12', '10', 'harun', '2021-08-17 10:30:45', '75000'),
(92, '3', '13', '10', 'wildan', '2021-08-17 10:30:59', '105000'),
(93, '3', '12', '10', 'nadip', '2021-08-17 10:31:24', '55000'),
(94, '4', '12', '10', 'amel', '2021-08-17 10:31:44', '70000'),
(95, '5', '13', '10', 'rafita', '2021-08-17 10:32:19', '110000'),
(96, '6', '12', '10', 'pita', '2021-08-17 10:32:47', '57000'),
(97, '7', '13', '10', 'fidel', '2021-08-17 10:33:22', '110000'),
(98, '8', '12', '10', 'bunga', '2021-08-17 10:33:44', '55000'),
(99, '8', '13', '10', 'arya', '2021-08-17 10:34:08', '105000'),
(100, '9', '13', '10', 'faris', '2021-08-17 10:34:28', '107000'),
(101, '5', '2', '6', 'rahmawan', '2021-08-16 14:42:27', '19000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `harga_satuan` varchar(20) NOT NULL,
  `jumlah_produk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_satuan`, `jumlah_produk`) VALUES
(1, 'yt_premium', '5000', 25),
(2, 'yt_premium_adm', '25000', 25),
(3, 'spotify_premium', '5000', 30),
(4, 'spotify_premium_adm', '20000', 20),
(5, 'apple_music', '10000', 15),
(6, 'viu', '7000', 20),
(7, 'vrv', '10000', 20),
(8, 'canva', '5000', 30),
(9, 'iflix', '7000', 15),
(10, 'discord_classic', '70000', 15),
(11, 'discord_nitro', '140000', 10),
(12, 'windows10_key', '30000', 20),
(13, 'tik_vpn', '10000', 30),
(14, 'namecheap_vpn', '5000', 20);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `jasa`
--
ALTER TABLE `jasa`
  ADD PRIMARY KEY (`id_jasa`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `jasa`
--
ALTER TABLE `jasa`
  MODIFY `id_jasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
