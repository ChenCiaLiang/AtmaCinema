-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2024 pada 17.17
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
-- Database: `2_d_bioskop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `durasi` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `ageRestriction` varchar(255) NOT NULL,
  `sinopsis` varchar(255) NOT NULL,
  `jumlahRating` float NOT NULL,
  `fotoFilm` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `films`
--

INSERT INTO `films` (`id`, `judul`, `status`, `durasi`, `genre`, `ageRestriction`, `sinopsis`, `jumlahRating`, `fotoFilm`, `created_at`, `updated_at`) VALUES
(5, 'Spiderman To the Spiderverse', 'Now Playing', '1 Hour 34 Minutes', 'Comedy, Romance, Action', 'PG-13', 'Miles Morales hadir kembali dalam babak baru saga Spider-Verse. Usai berjumpa lagi dengan Gwen Stacy, Spider-Man si tetangga yang ramah asal Brooklyn ini terlontar melintasi Multiverse yang membawanya pada\r\n', 8.775, '/storage/films/spiderman.jpg', NULL, NULL),
(6, 'Transformers Optimum Pride', 'Coming Soon', '2 Hour 04 Minutes', 'Romance, Pyschological, Action', '18+', 'Robot jatuh kebumi nyari ambatron yang akan menghancurkan jogjakarta', 0.1, '/storage/films/transformers.jpg', NULL, NULL),
(7, 'Elemental', 'Now Playing', '1 Hour 24 Minutes', 'Romance, Comedy, Drama', '10+', 'Air dengan Api ketemuan lalu jatuh cinta klepek klepek', 0.1, '/storage/films/elemental.jpg', NULL, NULL),
(8, 'The Boys', 'Coming Soon', '1 Hour 58 Minutes', 'Action, Psychology, Drama', '18+', 'kisah nyata kasus perampokan dan pembunuhan yang dikenal dengan istilah Samrye Nara Super yang terjadi pada dini hari tanggal 6 Februari 1999.', 0.1, '/storage/films/the_boys.jpg', NULL, NULL),
(10, 'Weathering With You', 'Now Playing', '2 Hour 5 Minutes', 'Comedy, Romance, Drama', '13+', 'Kisah anak pembawa hujan yang ketemu cowo pengangguran lalu bikin kota banjir selamanya', 0.1, '/storage/films/tenki.jpg', NULL, NULL),
(11, 'Your Name', 'Now Playing', '1 Hour 45 Minutes', 'Comedy, Romance, Drama', '13+', 'Kisah orang bertukar tubuh dengan cewe dari masa lalu, lalu dia jatuh cinta, nyelamatin kota, lalu saling ngomong \"Kimi No Namaewa?\"', 0.1, '/storage/films/yourname.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idTransaksi` bigint(20) UNSIGNED NOT NULL,
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `isReview` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `histories`
--

INSERT INTO `histories` (`id`, `idTransaksi`, `idUser`, `status`, `isReview`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 'Completed', 1, NULL, NULL),
(3, 4, 2, 'Completed', 1, NULL, NULL),
(5, 6, 1, 'Completed', 1, NULL, NULL),
(6, 7, 1, 'Completed', 1, NULL, NULL),
(7, 8, 1, 'Uncompleted', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwals`
--

CREATE TABLE `jadwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jamTayang` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwals`
--

INSERT INTO `jadwals` (`id`, `jamTayang`, `created_at`, `updated_at`) VALUES
(1, '12:30:00', NULL, NULL),
(2, '14:30:00', NULL, NULL),
(3, '16:30:00', NULL, NULL),
(4, '18:45:00', NULL, NULL),
(5, '20:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwaltayangs`
--

CREATE TABLE `jadwaltayangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idStudio` bigint(20) UNSIGNED NOT NULL,
  `idJadwal` bigint(20) UNSIGNED NOT NULL,
  `idFilm` bigint(20) UNSIGNED NOT NULL,
  `tanggalTayang` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwaltayangs`
--

INSERT INTO `jadwaltayangs` (`id`, `idStudio`, `idJadwal`, `idFilm`, `tanggalTayang`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2024-12-14', NULL, NULL),
(2, 1, 2, 5, '2024-12-14', NULL, NULL),
(3, 1, 3, 5, '2024-12-14', NULL, NULL),
(4, 1, 4, 5, '2024-12-14', NULL, NULL),
(5, 1, 5, 5, '2024-12-14', NULL, NULL),
(10, 2, 1, 5, '2024-12-14', NULL, NULL),
(11, 2, 2, 5, '2024-12-14', NULL, NULL),
(12, 2, 3, 5, '2024-12-14', NULL, NULL),
(13, 2, 4, 5, '2024-12-14', NULL, NULL),
(14, 2, 5, 5, '2024-12-14', NULL, NULL),
(15, 1, 1, 5, '2024-12-15', NULL, NULL),
(16, 1, 2, 5, '2024-12-15', NULL, NULL),
(17, 1, 3, 5, '2024-12-15', NULL, NULL),
(18, 1, 4, 5, '2024-12-15', NULL, NULL),
(19, 1, 5, 5, '2024-12-15', NULL, NULL),
(20, 2, 1, 5, '2024-12-15', NULL, NULL),
(21, 2, 2, 5, '2024-12-15', NULL, NULL),
(22, 2, 3, 5, '2024-12-15', NULL, NULL),
(23, 2, 4, 5, '2024-12-15', NULL, NULL),
(24, 2, 5, 5, '2024-12-15', NULL, NULL),
(25, 1, 1, 5, '2024-12-16', NULL, NULL),
(26, 1, 2, 5, '2024-12-16', NULL, NULL),
(27, 1, 3, 5, '2024-12-16', NULL, NULL),
(28, 1, 4, 5, '2024-12-16', NULL, NULL),
(29, 1, 5, 5, '2024-12-16', NULL, NULL),
(30, 2, 1, 5, '2024-12-16', NULL, NULL),
(31, 2, 2, 5, '2024-12-16', NULL, NULL),
(32, 2, 3, 5, '2024-12-16', NULL, NULL),
(33, 2, 4, 5, '2024-12-16', NULL, NULL),
(34, 2, 5, 5, '2024-12-16', NULL, NULL),
(35, 1, 1, 5, '2024-12-17', NULL, NULL),
(36, 1, 2, 5, '2024-12-17', NULL, NULL),
(37, 1, 3, 5, '2024-12-17', NULL, NULL),
(38, 1, 4, 5, '2024-12-17', NULL, NULL),
(39, 1, 5, 5, '2024-12-17', NULL, NULL),
(40, 2, 1, 5, '2024-12-17', NULL, NULL),
(41, 2, 2, 5, '2024-12-17', NULL, NULL),
(42, 2, 3, 5, '2024-12-17', NULL, NULL),
(43, 2, 4, 5, '2024-12-17', NULL, NULL),
(44, 2, 5, 5, '2024-12-17', NULL, NULL),
(45, 1, 1, 5, '2024-12-18', NULL, NULL),
(46, 1, 2, 5, '2024-12-18', NULL, NULL),
(47, 1, 3, 5, '2024-12-18', NULL, NULL),
(48, 1, 4, 5, '2024-12-18', NULL, NULL),
(49, 1, 5, 5, '2024-12-18', NULL, NULL),
(50, 2, 1, 5, '2024-12-18', NULL, NULL),
(51, 2, 2, 5, '2024-12-18', NULL, NULL),
(52, 2, 3, 5, '2024-12-18', NULL, NULL),
(53, 2, 4, 5, '2024-12-18', NULL, NULL),
(54, 2, 5, 5, '2024-12-18', NULL, NULL),
(55, 1, 1, 6, '2024-12-14', NULL, NULL),
(56, 1, 2, 6, '2024-12-14', NULL, NULL),
(57, 1, 3, 6, '2024-12-14', NULL, NULL),
(58, 1, 4, 6, '2024-12-14', NULL, NULL),
(59, 1, 5, 6, '2024-12-14', NULL, NULL),
(60, 2, 1, 6, '2024-12-14', NULL, NULL),
(61, 2, 2, 6, '2024-12-14', NULL, NULL),
(62, 2, 3, 6, '2024-12-14', NULL, NULL),
(63, 2, 4, 6, '2024-12-14', NULL, NULL),
(64, 2, 5, 6, '2024-12-14', NULL, NULL),
(65, 1, 1, 6, '2024-12-15', NULL, NULL),
(66, 1, 2, 6, '2024-12-15', NULL, NULL),
(67, 1, 3, 6, '2024-12-15', NULL, NULL),
(68, 1, 4, 6, '2024-12-15', NULL, NULL),
(69, 1, 5, 6, '2024-12-15', NULL, NULL),
(70, 2, 1, 6, '2024-12-15', NULL, NULL),
(71, 2, 2, 6, '2024-12-15', NULL, NULL),
(72, 2, 3, 6, '2024-12-15', NULL, NULL),
(73, 2, 4, 6, '2024-12-15', NULL, NULL),
(74, 2, 5, 6, '2024-12-15', NULL, NULL),
(75, 1, 1, 6, '2024-12-16', NULL, NULL),
(76, 1, 2, 6, '2024-12-16', NULL, NULL),
(77, 1, 3, 6, '2024-12-16', NULL, NULL),
(78, 1, 4, 6, '2024-12-16', NULL, NULL),
(79, 1, 5, 6, '2024-12-16', NULL, NULL),
(80, 2, 1, 6, '2024-12-16', NULL, NULL),
(81, 2, 2, 6, '2024-12-16', NULL, NULL),
(82, 2, 3, 6, '2024-12-16', NULL, NULL),
(83, 2, 4, 6, '2024-12-16', NULL, NULL),
(84, 2, 5, 6, '2024-12-16', NULL, NULL),
(85, 1, 1, 6, '2024-12-17', NULL, NULL),
(86, 1, 2, 6, '2024-12-17', NULL, NULL),
(87, 1, 3, 6, '2024-12-17', NULL, NULL),
(88, 1, 4, 6, '2024-12-17', NULL, NULL),
(89, 1, 5, 6, '2024-12-17', NULL, NULL),
(90, 2, 1, 6, '2024-12-17', NULL, NULL),
(91, 2, 2, 6, '2024-12-17', NULL, NULL),
(92, 2, 3, 6, '2024-12-17', NULL, NULL),
(93, 2, 4, 6, '2024-12-17', NULL, NULL),
(94, 2, 5, 6, '2024-12-17', NULL, NULL),
(95, 1, 1, 6, '2024-12-18', NULL, NULL),
(96, 1, 2, 6, '2024-12-18', NULL, NULL),
(97, 1, 3, 6, '2024-12-18', NULL, NULL),
(98, 1, 4, 6, '2024-12-18', NULL, NULL),
(99, 1, 5, 6, '2024-12-18', NULL, NULL),
(100, 2, 1, 6, '2024-12-18', NULL, NULL),
(101, 2, 2, 6, '2024-12-18', NULL, NULL),
(102, 2, 3, 6, '2024-12-18', NULL, NULL),
(103, 2, 4, 6, '2024-12-18', NULL, NULL),
(104, 2, 5, 6, '2024-12-18', NULL, NULL),
(105, 1, 1, 7, '2024-12-14', NULL, NULL),
(106, 1, 2, 7, '2024-12-14', NULL, NULL),
(107, 1, 3, 7, '2024-12-14', NULL, NULL),
(108, 1, 4, 7, '2024-12-14', NULL, NULL),
(109, 1, 5, 7, '2024-12-14', NULL, NULL),
(110, 2, 1, 7, '2024-12-14', NULL, NULL),
(111, 2, 2, 7, '2024-12-14', NULL, NULL),
(112, 2, 3, 7, '2024-12-14', NULL, NULL),
(113, 2, 4, 7, '2024-12-14', NULL, NULL),
(114, 2, 5, 7, '2024-12-14', NULL, NULL),
(115, 1, 1, 7, '2024-12-15', NULL, NULL),
(116, 1, 2, 7, '2024-12-15', NULL, NULL),
(117, 1, 3, 7, '2024-12-15', NULL, NULL),
(118, 1, 4, 7, '2024-12-15', NULL, NULL),
(119, 1, 5, 7, '2024-12-15', NULL, NULL),
(120, 2, 1, 7, '2024-12-15', NULL, NULL),
(121, 2, 2, 7, '2024-12-15', NULL, NULL),
(122, 2, 3, 7, '2024-12-15', NULL, NULL),
(123, 2, 4, 7, '2024-12-15', NULL, NULL),
(124, 2, 5, 7, '2024-12-15', NULL, NULL),
(125, 1, 1, 7, '2024-12-16', NULL, NULL),
(126, 1, 2, 7, '2024-12-16', NULL, NULL),
(127, 1, 3, 7, '2024-12-16', NULL, NULL),
(128, 1, 4, 7, '2024-12-16', NULL, NULL),
(129, 1, 5, 7, '2024-12-16', NULL, NULL),
(130, 2, 1, 7, '2024-12-16', NULL, NULL),
(131, 2, 2, 7, '2024-12-16', NULL, NULL),
(132, 2, 3, 7, '2024-12-16', NULL, NULL),
(133, 2, 4, 7, '2024-12-16', NULL, NULL),
(134, 2, 5, 7, '2024-12-16', NULL, NULL),
(135, 1, 1, 7, '2024-12-17', NULL, NULL),
(136, 1, 2, 7, '2024-12-17', NULL, NULL),
(137, 1, 3, 7, '2024-12-17', NULL, NULL),
(138, 1, 4, 7, '2024-12-17', NULL, NULL),
(139, 1, 5, 7, '2024-12-17', NULL, NULL),
(140, 2, 1, 7, '2024-12-17', NULL, NULL),
(141, 2, 2, 7, '2024-12-17', NULL, NULL),
(142, 2, 3, 7, '2024-12-17', NULL, NULL),
(143, 2, 4, 7, '2024-12-17', NULL, NULL),
(144, 2, 5, 7, '2024-12-17', NULL, NULL),
(145, 1, 1, 7, '2024-12-18', NULL, NULL),
(146, 1, 2, 7, '2024-12-18', NULL, NULL),
(147, 1, 3, 7, '2024-12-18', NULL, NULL),
(148, 1, 4, 7, '2024-12-18', NULL, NULL),
(149, 1, 5, 7, '2024-12-18', NULL, NULL),
(150, 2, 1, 7, '2024-12-18', NULL, NULL),
(151, 2, 2, 7, '2024-12-18', NULL, NULL),
(152, 2, 3, 7, '2024-12-18', NULL, NULL),
(153, 2, 4, 7, '2024-12-18', NULL, NULL),
(154, 2, 5, 7, '2024-12-18', NULL, NULL),
(155, 1, 1, 8, '2024-12-14', NULL, NULL),
(156, 1, 2, 8, '2024-12-14', NULL, NULL),
(157, 1, 3, 8, '2024-12-14', NULL, NULL),
(158, 1, 4, 8, '2024-12-14', NULL, NULL),
(159, 1, 5, 8, '2024-12-14', NULL, NULL),
(160, 2, 1, 8, '2024-12-14', NULL, NULL),
(161, 2, 2, 8, '2024-12-14', NULL, NULL),
(162, 2, 3, 8, '2024-12-14', NULL, NULL),
(163, 2, 4, 8, '2024-12-14', NULL, NULL),
(164, 2, 5, 8, '2024-12-14', NULL, NULL),
(165, 1, 1, 8, '2024-12-15', NULL, NULL),
(166, 1, 2, 8, '2024-12-15', NULL, NULL),
(167, 1, 3, 8, '2024-12-15', NULL, NULL),
(168, 1, 4, 8, '2024-12-15', NULL, NULL),
(169, 1, 5, 8, '2024-12-15', NULL, NULL),
(170, 2, 1, 8, '2024-12-15', NULL, NULL),
(171, 2, 2, 8, '2024-12-15', NULL, NULL),
(172, 2, 3, 8, '2024-12-15', NULL, NULL),
(173, 2, 4, 8, '2024-12-15', NULL, NULL),
(174, 2, 5, 8, '2024-12-15', NULL, NULL),
(175, 1, 1, 8, '2024-12-16', NULL, NULL),
(176, 1, 2, 8, '2024-12-16', NULL, NULL),
(177, 1, 3, 8, '2024-12-16', NULL, NULL),
(178, 1, 4, 8, '2024-12-16', NULL, NULL),
(179, 1, 5, 8, '2024-12-16', NULL, NULL),
(180, 2, 1, 8, '2024-12-16', NULL, NULL),
(181, 2, 2, 8, '2024-12-16', NULL, NULL),
(182, 2, 3, 8, '2024-12-16', NULL, NULL),
(183, 2, 4, 8, '2024-12-16', NULL, NULL),
(184, 2, 5, 8, '2024-12-16', NULL, NULL),
(185, 1, 1, 8, '2024-12-17', NULL, NULL),
(186, 1, 2, 8, '2024-12-17', NULL, NULL),
(187, 1, 3, 8, '2024-12-17', NULL, NULL),
(188, 1, 4, 8, '2024-12-17', NULL, NULL),
(189, 1, 5, 8, '2024-12-17', NULL, NULL),
(190, 2, 1, 8, '2024-12-17', NULL, NULL),
(191, 2, 2, 8, '2024-12-17', NULL, NULL),
(192, 2, 3, 8, '2024-12-17', NULL, NULL),
(193, 2, 4, 8, '2024-12-17', NULL, NULL),
(194, 2, 5, 8, '2024-12-17', NULL, NULL),
(195, 1, 1, 8, '2024-12-18', NULL, NULL),
(196, 1, 2, 8, '2024-12-18', NULL, NULL),
(197, 1, 3, 8, '2024-12-18', NULL, NULL),
(198, 1, 4, 8, '2024-12-18', NULL, NULL),
(199, 1, 5, 8, '2024-12-18', NULL, NULL),
(200, 2, 1, 8, '2024-12-18', NULL, NULL),
(201, 2, 2, 8, '2024-12-18', NULL, NULL),
(202, 2, 3, 8, '2024-12-18', NULL, NULL),
(203, 2, 4, 8, '2024-12-18', NULL, NULL),
(204, 2, 5, 8, '2024-12-18', NULL, NULL),
(205, 1, 1, 10, '2024-12-14', NULL, NULL),
(206, 1, 2, 10, '2024-12-14', NULL, NULL),
(207, 1, 3, 10, '2024-12-14', NULL, NULL),
(208, 1, 4, 10, '2024-12-14', NULL, NULL),
(209, 1, 5, 10, '2024-12-14', NULL, NULL),
(210, 2, 1, 10, '2024-12-14', NULL, NULL),
(211, 2, 2, 10, '2024-12-14', NULL, NULL),
(212, 2, 3, 10, '2024-12-14', NULL, NULL),
(213, 2, 4, 10, '2024-12-14', NULL, NULL),
(214, 2, 5, 10, '2024-12-14', NULL, NULL),
(215, 1, 1, 10, '2024-12-15', NULL, NULL),
(216, 1, 2, 10, '2024-12-15', NULL, NULL),
(217, 1, 3, 10, '2024-12-15', NULL, NULL),
(218, 1, 4, 10, '2024-12-15', NULL, NULL),
(219, 1, 5, 10, '2024-12-15', NULL, NULL),
(220, 2, 1, 10, '2024-12-15', NULL, NULL),
(221, 2, 2, 10, '2024-12-15', NULL, NULL),
(222, 2, 3, 10, '2024-12-15', NULL, NULL),
(223, 2, 4, 10, '2024-12-15', NULL, NULL),
(224, 2, 5, 10, '2024-12-15', NULL, NULL),
(225, 1, 1, 10, '2024-12-16', NULL, NULL),
(226, 1, 2, 10, '2024-12-16', NULL, NULL),
(227, 1, 3, 10, '2024-12-16', NULL, NULL),
(228, 1, 4, 10, '2024-12-16', NULL, NULL),
(229, 1, 5, 10, '2024-12-16', NULL, NULL),
(245, 2, 1, 10, '2024-12-16', NULL, NULL),
(246, 2, 2, 10, '2024-12-16', NULL, NULL),
(247, 2, 3, 10, '2024-12-16', NULL, NULL),
(248, 2, 4, 10, '2024-12-16', NULL, NULL),
(249, 2, 5, 10, '2024-12-16', NULL, NULL),
(250, 1, 1, 10, '2024-12-17', NULL, NULL),
(251, 1, 2, 10, '2024-12-17', NULL, NULL),
(252, 1, 3, 10, '2024-12-17', NULL, NULL),
(253, 1, 4, 10, '2024-12-17', NULL, NULL),
(254, 1, 5, 10, '2024-12-17', NULL, NULL),
(255, 2, 1, 10, '2024-12-17', NULL, NULL),
(256, 2, 2, 10, '2024-12-17', NULL, NULL),
(257, 2, 3, 10, '2024-12-17', NULL, NULL),
(258, 2, 4, 10, '2024-12-17', NULL, NULL),
(259, 2, 5, 10, '2024-12-17', NULL, NULL),
(260, 1, 1, 10, '2024-12-18', NULL, NULL),
(261, 1, 2, 10, '2024-12-18', NULL, NULL),
(262, 1, 3, 10, '2024-12-18', NULL, NULL),
(263, 1, 4, 10, '2024-12-18', NULL, NULL),
(264, 1, 5, 10, '2024-12-18', NULL, NULL),
(265, 2, 1, 10, '2024-12-18', NULL, NULL),
(266, 2, 2, 10, '2024-12-18', NULL, NULL),
(267, 2, 3, 10, '2024-12-18', NULL, NULL),
(268, 2, 4, 10, '2024-12-18', NULL, NULL),
(269, 2, 5, 10, '2024-12-18', NULL, NULL),
(270, 1, 1, 11, '2024-12-14', NULL, NULL),
(271, 1, 2, 11, '2024-12-14', NULL, NULL),
(272, 1, 3, 11, '2024-12-14', NULL, NULL),
(273, 1, 4, 11, '2024-12-14', NULL, NULL),
(274, 1, 5, 11, '2024-12-14', NULL, NULL),
(275, 2, 1, 11, '2024-12-14', NULL, NULL),
(276, 2, 2, 11, '2024-12-14', NULL, NULL),
(277, 2, 3, 11, '2024-12-14', NULL, NULL),
(278, 2, 4, 11, '2024-12-14', NULL, NULL),
(279, 2, 5, 11, '2024-12-14', NULL, NULL),
(280, 1, 1, 11, '2024-12-15', NULL, NULL),
(281, 1, 2, 11, '2024-12-15', NULL, NULL),
(282, 1, 3, 11, '2024-12-15', NULL, NULL),
(283, 1, 4, 11, '2024-12-15', NULL, NULL),
(284, 1, 5, 11, '2024-12-15', NULL, NULL),
(285, 2, 1, 11, '2024-12-15', NULL, NULL),
(286, 2, 2, 11, '2024-12-15', NULL, NULL),
(287, 2, 3, 11, '2024-12-15', NULL, NULL),
(288, 2, 4, 11, '2024-12-15', NULL, NULL),
(289, 2, 5, 11, '2024-12-15', NULL, NULL),
(290, 1, 1, 11, '2024-12-16', NULL, NULL),
(291, 1, 2, 11, '2024-12-16', NULL, NULL),
(292, 1, 3, 11, '2024-12-16', NULL, NULL),
(293, 1, 4, 11, '2024-12-16', NULL, NULL),
(294, 1, 5, 11, '2024-12-16', NULL, NULL),
(295, 2, 1, 11, '2024-12-16', NULL, NULL),
(296, 2, 2, 11, '2024-12-16', NULL, NULL),
(297, 2, 3, 11, '2024-12-16', NULL, NULL),
(298, 2, 4, 11, '2024-12-16', NULL, NULL),
(299, 2, 5, 11, '2024-12-16', NULL, NULL),
(300, 1, 1, 11, '2024-12-17', NULL, NULL),
(301, 1, 2, 11, '2024-12-17', NULL, NULL),
(302, 1, 3, 11, '2024-12-17', NULL, NULL),
(303, 1, 4, 11, '2024-12-17', NULL, NULL),
(304, 1, 5, 11, '2024-12-17', NULL, NULL),
(305, 2, 1, 11, '2024-12-17', NULL, NULL),
(306, 2, 2, 11, '2024-12-17', NULL, NULL),
(307, 2, 3, 11, '2024-12-17', NULL, NULL),
(308, 2, 4, 11, '2024-12-17', NULL, NULL),
(309, 2, 5, 11, '2024-12-17', NULL, NULL),
(310, 1, 1, 11, '2024-12-18', NULL, NULL),
(311, 1, 2, 11, '2024-12-18', NULL, NULL),
(312, 1, 3, 11, '2024-12-18', NULL, NULL),
(313, 1, 4, 11, '2024-12-18', NULL, NULL),
(314, 1, 5, 11, '2024-12-18', NULL, NULL),
(315, 2, 1, 11, '2024-12-18', NULL, NULL),
(316, 2, 2, 11, '2024-12-18', NULL, NULL),
(317, 2, 3, 11, '2024-12-18', NULL, NULL),
(318, 2, 4, 11, '2024-12-18', NULL, NULL),
(319, 2, 5, 11, '2024-12-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idSpesialPromo` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `fotoMenu` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `idSpesialPromo`, `jenis`, `nama`, `harga`, `deskripsi`, `fotoMenu`, `created_at`, `updated_at`) VALUES
(1, 1, 'minuman', 'Caramel Choco', 14999.99, 'Choco Machiato dibaluti caramel.', '/storage/menu/minuman1.png', NULL, NULL),
(2, 1, 'makanan', 'Popcorn Meledak', 23999.99, 'Popcorn yang meledak di dalam mulut', '/storage/menu/makanan1.png', NULL, NULL),
(3, 2, 'minuman', 'Latte', 16999.99, 'Latte enak dari benzema', '/storage/menu/minuman2.png', NULL, NULL),
(4, 3, 'makanan', 'Popcorn Caramel', 15999.99, 'Popcorn rasa caramel', '/storage/menu/makanan2.png', NULL, NULL),
(5, 3, 'minuman', 'Choco', 17999.99, 'Choco dengan topping bubuk', '/storage/menu/minuman3.png', NULL, NULL),
(6, 5, 'minuman', 'Espresso', 22999.99, 'Espresto dari wakanda', '/storage/menu/minuman4.png', NULL, NULL),
(7, 5, 'makanan', 'Popcorn and Beans', 25999.99, 'Popcorn extra kacang-kacangan', '/storage/menu/makanan3.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_11_27_102540_create_films_table', 1),
(2, '2024_11_27_102552_create_studios_table', 1),
(3, '2024_11_27_102606_create_users_table', 1),
(4, '2024_11_27_102610_create_spesial__promos_table', 1),
(8, '2024_11_27_102624_create_menus_table', 1),
(12, '2024_11_28_122715_create_personal_access_tokens_table', 1),
(13, '2024_11_27_102616_create_jadwals_table', 2),
(14, '2024_11_27_102617_create_jadwal_tayangs_table', 2),
(16, '2024_11_27_102646_create_transaksis_table', 2),
(17, '2024_11_27_102618_create_pemesanan__tikets_table', 3),
(19, '2024_11_27_102639_create_reviews_table', 5),
(20, '2024_11_27_102638_create_histories_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanantikets`
--

CREATE TABLE `pemesanantikets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idJadwalTayang` bigint(20) UNSIGNED NOT NULL,
  `kursiDipesan` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanantikets`
--

INSERT INTO `pemesanantikets` (`id`, `idJadwalTayang`, `kursiDipesan`, `created_at`, `updated_at`) VALUES
(5, 1, '[\"G8\",\"H7\"]', NULL, NULL),
(6, 1, '[\"C5\"]', NULL, NULL),
(7, 1, '[\"C4\"]', NULL, NULL),
(8, 1, '[\"F7\",\"E7\"]', NULL, NULL),
(9, 1, '[\"E8\"]', NULL, NULL),
(10, 1, '[\"F6\",\"G5\"]', NULL, NULL),
(14, 32, '[\"E1\",\"F1\",\"H1\"]', NULL, NULL),
(18, 16, '[\"J8\",\"D6\",\"D5\"]', NULL, NULL),
(19, 16, '[\"D8\",\"G7\",\"J6\"]', NULL, NULL),
(21, 31, '[\"G5\",\"H4\"]', NULL, NULL),
(22, 4, '[\"C6\",\"D6\",\"E6\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal Access Token', '13afe4b44ea1ebb4d6a3462ab947057556e629e642f4b6e27dbaf6b3cf344aa6', '[\"*\"]', '2024-12-02 06:07:06', NULL, '2024-12-02 06:07:06', '2024-12-02 06:07:06'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', '0cb802fa77c2777b86f970f4fab2c375808e566e7470a09e758e35ffec5829de', '[\"*\"]', NULL, NULL, '2024-12-02 07:06:08', '2024-12-02 07:06:08'),
(3, 'App\\Models\\User', 1, 'Personal Access Token', '24c5684bf7c14fe707599efd92ce64c391abceca3258c988b3abbe39c0ea9a34', '[\"*\"]', NULL, NULL, '2024-12-02 07:08:02', '2024-12-02 07:08:02'),
(4, 'App\\Models\\User', 1, 'Personal Access Token', '202dd0a879097a467dcebb7c20a83bc8e9c76a7d6969773a2929fe4ec187ddec', '[\"*\"]', '2024-12-02 09:33:34', NULL, '2024-12-02 07:28:45', '2024-12-02 09:33:34'),
(5, 'App\\Models\\User', 1, 'Personal Access Token', '6a1607670aa083074374a121857dc8308e6981eeb72c81d4a0682f5db848765e', '[\"*\"]', NULL, NULL, '2024-12-02 07:59:59', '2024-12-02 07:59:59'),
(6, 'App\\Models\\User', 1, 'Personal Access Token', '26721ec5e07481012d3ae40fcca01838fc48e85d2f657facb0cd5f63ff07eddb', '[\"*\"]', NULL, NULL, '2024-12-02 08:02:54', '2024-12-02 08:02:54'),
(8, 'App\\Models\\User', 1, 'Personal Access Token', 'f0b27d864b3bc0927aafb0092fff290e54d281cf55e290d9bfa4ea2402c24c9a', '[\"*\"]', '2024-12-02 08:06:05', NULL, '2024-12-02 08:06:04', '2024-12-02 08:06:05'),
(9, 'App\\Models\\User', 1, 'Personal Access Token', 'ecf97d7be9a01b10c3fbf7840d99dd5ef09530510f4ebc0946e7e91a69977047', '[\"*\"]', NULL, NULL, '2024-12-02 08:07:19', '2024-12-02 08:07:19'),
(10, 'App\\Models\\User', 1, 'Personal Access Token', 'e2234fec14cf9f84e770ebca45059e61cade427b80d1fff81bb5075ae889b4c0', '[\"*\"]', NULL, NULL, '2024-12-02 08:07:48', '2024-12-02 08:07:48'),
(11, 'App\\Models\\User', 1, 'Personal Access Token', '61dd71f641ccaefc2c75f2bf2d18131ab9af6ba45b943cfb85df4dd858c2b6de', '[\"*\"]', NULL, NULL, '2024-12-02 08:09:30', '2024-12-02 08:09:30'),
(12, 'App\\Models\\User', 1, 'Personal Access Token', '2f18c987164ccbbdfc9d96221f2fe382c2e47e0e7974ea8f2a7d164d902fb0d0', '[\"*\"]', '2024-12-02 08:09:55', NULL, '2024-12-02 08:09:55', '2024-12-02 08:09:55'),
(13, 'App\\Models\\User', 1, 'Personal Access Token', '7323743496dd520565cab765f640079f6ee502b8ee3e31ebf6462436f47e7aeb', '[\"*\"]', '2024-12-02 08:12:26', NULL, '2024-12-02 08:12:26', '2024-12-02 08:12:26'),
(16, 'App\\Models\\User', 1, 'Personal Access Token', '26c1f90fac2391f6362740decad729f4eb9f251d585f444ec2a0f848e61b5a85', '[\"*\"]', '2024-12-02 08:24:52', NULL, '2024-12-02 08:24:52', '2024-12-02 08:24:52'),
(17, 'App\\Models\\User', 1, 'Personal Access Token', '14c45d60448aed8045e39e50823e908518db80c1a0cb3062ce069f5d0a9e8141', '[\"*\"]', '2024-12-02 08:26:05', NULL, '2024-12-02 08:26:05', '2024-12-02 08:26:05'),
(18, 'App\\Models\\User', 1, 'Personal Access Token', 'f146d1d9025f0ddb6d14a063f7688bff92c6b65a61f92d8f80b9a401fd7e4344', '[\"*\"]', '2024-12-02 08:28:05', NULL, '2024-12-02 08:28:05', '2024-12-02 08:28:05'),
(19, 'App\\Models\\User', 1, 'Personal Access Token', '5ed7dc6915d9fec8730175d64f314e2c45fbf2b30070447a9301064436e12566', '[\"*\"]', '2024-12-02 08:29:29', NULL, '2024-12-02 08:29:28', '2024-12-02 08:29:29'),
(20, 'App\\Models\\User', 1, 'Personal Access Token', '169ea5b521b022ca6acc7f1c6d963eb4ecb7cd7cd5ea40f77d1d1c4df8089bae', '[\"*\"]', '2024-12-02 08:47:54', NULL, '2024-12-02 08:47:53', '2024-12-02 08:47:54'),
(21, 'App\\Models\\User', 1, 'Personal Access Token', '6af4000675beaf1f8e3eea1ab64bd38af307389ce937c52e92a5f45e72dcac4b', '[\"*\"]', '2024-12-02 09:04:45', NULL, '2024-12-02 09:04:42', '2024-12-02 09:04:45'),
(22, 'App\\Models\\User', 1, 'Personal Access Token', '5c5b7b31eb5d93ca140afd751be480ebf153df58d84f530d869f386f539146c2', '[\"*\"]', '2024-12-02 09:41:53', NULL, '2024-12-02 09:05:40', '2024-12-02 09:41:53'),
(23, 'App\\Models\\User', 1, 'Personal Access Token', '70c34d41b0bd84c54d82f37f86045c883e9ca3aa67cf45d2c8840a4b1abf3673', '[\"*\"]', '2024-12-02 10:44:38', NULL, '2024-12-02 09:31:42', '2024-12-02 10:44:38'),
(24, 'App\\Models\\User', 1, 'Personal Access Token', '2df5144deef85478ac4621f275f60ac1f49ad6c2f8f375aa30fd04b0858bfee3', '[\"*\"]', '2024-12-02 10:29:10', NULL, '2024-12-02 10:25:57', '2024-12-02 10:29:10'),
(25, 'App\\Models\\User', 1, 'Personal Access Token', '5335b4784e9d01aef7f6cfef4b22f7de07548a9d2aac9ec1458f80313b00cf64', '[\"*\"]', '2024-12-02 10:32:45', NULL, '2024-12-02 10:29:43', '2024-12-02 10:32:45'),
(26, 'App\\Models\\User', 1, 'Personal Access Token', 'cfdf8baed1df79936f0ed826c1ca3cd10da664a6d85bd9582c44a7e2c9764964', '[\"*\"]', '2024-12-02 10:33:31', NULL, '2024-12-02 10:33:08', '2024-12-02 10:33:31'),
(27, 'App\\Models\\User', 1, 'Personal Access Token', 'dfffe9472b7d87f03397ebfed63f7247894582de037d362404af3a8ed62cedd9', '[\"*\"]', '2024-12-02 10:41:43', NULL, '2024-12-02 10:33:51', '2024-12-02 10:41:43'),
(28, 'App\\Models\\User', 1, 'Personal Access Token', '4df6cb257fbd67ef92467804d8ae04a4b8535b04215d696de7b0a9f0e542fca2', '[\"*\"]', '2024-12-02 10:42:54', NULL, '2024-12-02 10:42:42', '2024-12-02 10:42:54'),
(29, 'App\\Models\\User', 1, 'Personal Access Token', '99528c36d2f781f5b15f4c32551bb68e98a81caec8cbe65dd60d4cd8f3d3688a', '[\"*\"]', '2024-12-02 10:44:52', NULL, '2024-12-02 10:43:56', '2024-12-02 10:44:52'),
(30, 'App\\Models\\User', 1, 'Personal Access Token', '22d1a0241317d4cbce22537ef4ac8483e01559a55208374827651093b1c01994', '[\"*\"]', '2024-12-02 10:48:31', NULL, '2024-12-02 10:46:53', '2024-12-02 10:48:31'),
(31, 'App\\Models\\User', 1, 'Personal Access Token', '917b636b02996820a87776cfafd5736b49d6ab15846e77c9bff36b7dc3930e47', '[\"*\"]', '2024-12-02 10:51:38', NULL, '2024-12-02 10:49:32', '2024-12-02 10:51:38'),
(32, 'App\\Models\\User', 1, 'Personal Access Token', 'e1fb92338efd69b051dff4d72e969f92b7ec85ae7a8a92c863700256d968910e', '[\"*\"]', '2024-12-02 10:57:19', NULL, '2024-12-02 10:51:55', '2024-12-02 10:57:19'),
(33, 'App\\Models\\User', 1, 'Personal Access Token', 'e28aae290213a752520159ca7b31c7acfdc1d0153e406ec123cfc67fc651553e', '[\"*\"]', '2024-12-03 01:09:04', NULL, '2024-12-03 01:06:53', '2024-12-03 01:09:04'),
(34, 'App\\Models\\User', 1, 'Personal Access Token', '458b62a285e75e98e3c47eb133cf649367201c8ba35ee99d9dc1d9257c878cce', '[\"*\"]', '2024-12-03 01:17:25', NULL, '2024-12-03 01:12:22', '2024-12-03 01:17:25'),
(35, 'App\\Models\\User', 1, 'Personal Access Token', '35ae9cb3672da102d9bd924acc05a32f97fe872fc5c9bbfec940830041a20983', '[\"*\"]', '2024-12-03 20:21:16', NULL, '2024-12-03 20:20:34', '2024-12-03 20:21:16'),
(36, 'App\\Models\\User', 1, 'Personal Access Token', '32ec7c027e87d9ea20ba7f0ee7803d22b6b07735f510f9d71d8500cdc1094a76', '[\"*\"]', '2024-12-04 05:30:30', NULL, '2024-12-04 02:58:29', '2024-12-04 05:30:30'),
(37, 'App\\Models\\User', 1, 'Personal Access Token', '24d92a22df65ed65026f757e2a849196356678e56ba40e25a4447de9cf7e32fb', '[\"*\"]', '2024-12-04 20:24:25', NULL, '2024-12-04 03:09:36', '2024-12-04 20:24:25'),
(38, 'App\\Models\\User', 1, 'Personal Access Token', '3dd19ba385e20d6032bc7a204e1b0921eef9fa10bac98529064bd96104b7cbdf', '[\"*\"]', '2024-12-04 05:36:48', NULL, '2024-12-04 05:31:20', '2024-12-04 05:36:48'),
(39, 'App\\Models\\User', 1, 'Personal Access Token', '5d6bb315d34a9208b80dd94f4fa3d3d464c762a6209d2526a64452a2fd77808b', '[\"*\"]', '2024-12-04 18:44:37', NULL, '2024-12-04 18:44:36', '2024-12-04 18:44:37'),
(40, 'App\\Models\\User', 1, 'Personal Access Token', 'c9c37b114b61c1ff5f6ff5107912cbd719a6e09e8f251f810969337c1bb7debe', '[\"*\"]', '2024-12-04 20:15:23', NULL, '2024-12-04 18:44:37', '2024-12-04 20:15:23'),
(41, 'App\\Models\\User', 1, 'Personal Access Token', 'b53640dcf9e3314b5975af019299d7f997482cc068a19cecfbdcdc93ea79b95a', '[\"*\"]', '2024-12-04 21:50:50', NULL, '2024-12-04 20:18:20', '2024-12-04 21:50:50'),
(42, 'App\\Models\\User', 2, 'Personal Access Token', '3ae956faf833c0500ad75fd9c5efcd206f8729fb04d798365a46077d2eaf8fb0', '[\"*\"]', '2024-12-04 23:42:01', NULL, '2024-12-04 23:09:58', '2024-12-04 23:42:01'),
(43, 'App\\Models\\User', 2, 'Personal Access Token', 'a11c0b8be65d8bcd5cd01f005a29a645c847eb22b9982156bec85536e0cb172f', '[\"*\"]', '2024-12-05 00:28:00', NULL, '2024-12-05 00:22:20', '2024-12-05 00:28:00'),
(44, 'App\\Models\\User', 2, 'Personal Access Token', 'b61b78c76405fb52f403e68e2337bf3f4ef008bc880c308f14122827d639c9f2', '[\"*\"]', '2024-12-05 00:28:37', NULL, '2024-12-05 00:28:35', '2024-12-05 00:28:37'),
(45, 'App\\Models\\User', 2, 'Personal Access Token', '9cd05f127694c217e9515663a7ec4c0fda7bcc854cf4e36c6e5d5635d86d01c0', '[\"*\"]', '2024-12-05 00:34:11', NULL, '2024-12-05 00:29:25', '2024-12-05 00:34:11'),
(46, 'App\\Models\\User', 2, 'Personal Access Token', '819e9858e564821a97946ed18f9743e30ba318643df11cd87d785c0c283a258e', '[\"*\"]', '2024-12-05 00:43:01', NULL, '2024-12-05 00:34:37', '2024-12-05 00:43:01'),
(47, 'App\\Models\\User', 2, 'Personal Access Token', '0b95d63b01e6adcee6c374f8c07d85d5e0da91c61e5cc3b0c826a544bb979c7c', '[\"*\"]', '2024-12-05 00:43:55', NULL, '2024-12-05 00:43:17', '2024-12-05 00:43:55'),
(48, 'App\\Models\\User', 2, 'Personal Access Token', '951a323a7d638973f3d3df118164d1fd882d36c5f0121d5ef69b6e7175d5ae58', '[\"*\"]', '2024-12-05 00:45:39', NULL, '2024-12-05 00:44:17', '2024-12-05 00:45:39'),
(50, 'App\\Models\\User', 3, 'Personal Access Token', '53eb29b1025aaa5c2115f261f5f51e130f70900446642eaf6aeae1487da014a5', '[\"*\"]', '2024-12-05 01:15:20', NULL, '2024-12-05 01:12:33', '2024-12-05 01:15:20'),
(51, 'App\\Models\\User', 2, 'Personal Access Token', '076743c163668db89472b45e5e03acce09c993bc438d9e6e247dd54e4001e121', '[\"*\"]', '2024-12-11 00:15:08', NULL, '2024-12-10 23:55:53', '2024-12-11 00:15:08'),
(52, 'App\\Models\\User', 1, 'Personal Access Token', '0c079ef9269d6fb627304cf0ad44d0fef004f024b064700ab64409081fb94602', '[\"*\"]', '2024-12-11 00:39:28', NULL, '2024-12-11 00:35:11', '2024-12-11 00:39:28'),
(53, 'App\\Models\\User', 1, 'Personal Access Token', '734750dc4fc0753d14590c561b07a2627fdaa21eaa5cb6fe3c303b5ef48e454d', '[\"*\"]', '2024-12-11 02:06:10', NULL, '2024-12-11 00:40:51', '2024-12-11 02:06:10'),
(54, 'App\\Models\\User', 2, 'Personal Access Token', '7c4d30e1b501a085f165955ffc0c3640e0b1fcd8ec8a20b8edcd957f3bb20cce', '[\"*\"]', '2024-12-13 08:08:57', NULL, '2024-12-11 02:43:43', '2024-12-13 08:08:57'),
(55, 'App\\Models\\User', 2, 'Personal Access Token', '35fd5699634bb584555cea6db6a24920092a022cab907ff6a800d620dcac3a8b', '[\"*\"]', '2024-12-11 07:19:53', NULL, '2024-12-11 07:19:52', '2024-12-11 07:19:53'),
(56, 'App\\Models\\User', 2, 'Personal Access Token', '421a4d6875593177d07007c2e4d2f699f07479935e15c1ea6f02fba128d79b59', '[\"*\"]', '2024-12-11 07:36:43', NULL, '2024-12-11 07:23:48', '2024-12-11 07:36:43'),
(57, 'App\\Models\\User', 2, 'Personal Access Token', '59c402506b08b80ab6f8758fc6f845ca4eff6403f192b97708c1d13fce8bbfd6', '[\"*\"]', '2024-12-11 09:32:55', NULL, '2024-12-11 07:37:25', '2024-12-11 09:32:55'),
(58, 'App\\Models\\User', 2, 'Personal Access Token', 'd3843e467f76e0e54aac8d4a94d097bf668ad9b5ea9766c8aa1b9c1a2a168468', '[\"*\"]', '2024-12-11 21:56:28', NULL, '2024-12-11 21:56:26', '2024-12-11 21:56:28'),
(59, 'App\\Models\\User', 2, 'Personal Access Token', '13b60b72ccf3a898736204c6d6317311330f94d445864b2447d719ddcb0edd60', '[\"*\"]', '2024-12-12 00:23:27', NULL, '2024-12-11 21:56:27', '2024-12-12 00:23:27'),
(60, 'App\\Models\\User', 2, 'Personal Access Token', '92c7e6daecc16a9d2005435682ab56b80eb0f9400123b2157ddcf7c9ddf50f68', '[\"*\"]', '2024-12-12 03:32:57', NULL, '2024-12-12 00:28:48', '2024-12-12 03:32:57'),
(61, 'App\\Models\\User', 2, 'Personal Access Token', '1919d3f1c69a6057458a441a4f120eaadfb4bf1b54cbb177c77d07a509600929', '[\"*\"]', '2024-12-12 23:04:48', NULL, '2024-12-12 23:04:12', '2024-12-12 23:04:48'),
(66, 'App\\Models\\User', 2, 'Personal Access Token', '6833a9a0d3fff1ca65b4080fbd6dc5d91ffe658dddbfb3bad805ceec019f6898', '[\"*\"]', '2024-12-12 23:21:43', NULL, '2024-12-12 23:21:43', '2024-12-12 23:21:43'),
(85, 'App\\Models\\User', 6, 'Personal Access Token', '3efa02576c449cf770338bd1410ccb5f1d37bf678ba9e279354ee7a744a454ac', '[\"*\"]', '2024-12-13 02:41:50', NULL, '2024-12-13 02:34:28', '2024-12-13 02:41:50'),
(86, 'App\\Models\\User', 2, 'Personal Access Token', '09d0fdd1c5b3ddeda993bffc0fef425c1c352b4996eee36e0d83be0b3db8e17d', '[\"*\"]', '2024-12-13 02:44:18', NULL, '2024-12-13 02:43:27', '2024-12-13 02:44:18'),
(87, 'App\\Models\\User', 2, 'Personal Access Token', 'f3557644c6101782f09f9a6492da6a908ea4ded51bcdf9dd7f30fe7f968bde3c', '[\"*\"]', '2024-12-13 02:46:57', NULL, '2024-12-13 02:46:36', '2024-12-13 02:46:57'),
(88, 'App\\Models\\User', 2, 'Personal Access Token', 'dfe02206eec497f3693f2fac71a893c51616cc02e6f97aeef13a9159a64f3f2a', '[\"*\"]', '2024-12-13 02:48:23', NULL, '2024-12-13 02:47:58', '2024-12-13 02:48:23'),
(89, 'App\\Models\\User', 2, 'Personal Access Token', 'c0780b0843cff450c1dfb95917ff767b927e25deb4b1253b5cfd3aba09e3c6ea', '[\"*\"]', '2024-12-13 02:51:46', NULL, '2024-12-13 02:51:17', '2024-12-13 02:51:46'),
(93, 'App\\Models\\User', 2, 'Personal Access Token', '505075d63ba98310db48988fbcf5d13908b266850a0716f4be1caf3ada3f9aa2', '[\"*\"]', '2024-12-13 03:59:16', NULL, '2024-12-13 03:53:44', '2024-12-13 03:59:16'),
(94, 'App\\Models\\User', 2, 'Personal Access Token', 'abcd8065f8f5e1d0d1d032e67f6cbd199126e15d861ceee4c0f72597eaae5579', '[\"*\"]', '2024-12-13 04:31:22', NULL, '2024-12-13 04:04:38', '2024-12-13 04:31:22'),
(95, 'App\\Models\\User', 2, 'Personal Access Token', 'caf4700e2b256b4061b42de1159ab3271cd3d8202b0f4bbc370cbc39b7747fa6', '[\"*\"]', '2024-12-13 04:53:08', NULL, '2024-12-13 04:43:58', '2024-12-13 04:53:08'),
(96, 'App\\Models\\User', 2, 'Personal Access Token', '562c0896f4ab704ee536bd6938eef833a58af20a57ee14ee31ff928bf616272a', '[\"*\"]', '2024-12-13 05:01:16', NULL, '2024-12-13 04:54:00', '2024-12-13 05:01:16'),
(97, 'App\\Models\\User', 2, 'Personal Access Token', 'a402b26af739cdb1328ffbecbe53cecb959a6bba5195838588979a631e7f9874', '[\"*\"]', '2024-12-13 08:15:30', NULL, '2024-12-13 05:05:52', '2024-12-13 08:15:30'),
(98, 'App\\Models\\User', 1, 'Personal Access Token', '9825556c03ea160a62650d9395f7a7f2118ca321ddb4e9e620d69c0a208ab34c', '[\"*\"]', '2024-12-13 08:21:40', NULL, '2024-12-13 08:16:29', '2024-12-13 08:21:40'),
(99, 'App\\Models\\User', 1, 'Personal Access Token', 'a28300038a7a300a84b2038530b006df11e0f416ad52b0a8b56808cd24eec014', '[\"*\"]', '2024-12-13 09:13:02', NULL, '2024-12-13 08:29:44', '2024-12-13 09:13:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idFilm` bigint(20) UNSIGNED NOT NULL,
  `idHistory` bigint(20) UNSIGNED NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `idFilm`, `idHistory`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(6, 5, 2, 'Bagus Banget!', 9.1, NULL, NULL),
(7, 5, 3, 'Kasian sih miles, tapi bagus bangetttt', 8.7, NULL, NULL),
(8, 5, 5, 'wowowo', 7.8, NULL, NULL),
(9, 5, 6, 'anjayyy', 9.5, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesialpromos`
--

CREATE TABLE `spesialpromos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tanggalBerlaku` date NOT NULL,
  `harga` double NOT NULL,
  `ketentuan` varchar(255) NOT NULL,
  `fotoPromo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spesialpromos`
--

INSERT INTO `spesialpromos` (`id`, `judul`, `status`, `tanggalBerlaku`, `harga`, `ketentuan`, `fotoPromo`, `created_at`, `updated_at`) VALUES
(1, 'Bonus Harga Spesial!!!', 'spesial', '2024-12-21', 59999.99, 'Berat badan > 80 kg.Membawa tas merah', '/storage/spesialPromo/SpesialPromo1.png', NULL, NULL),
(2, 'Paket Solo', 'promo', '2024-12-14', 15999.99, 'Hanya sendiri.Menggunakan kalung dan gelang.Memperlihatkan foto ular', '/storage/spesialPromo/promo1.png', NULL, NULL),
(3, 'Hot Family On The Views!!!', 'spesial', '2024-12-23', 159999.99, 'buang sampah.ya', '/storage/spesialPromo/SpesialPromo2.png', NULL, NULL),
(4, 'Popcorn Balado', 'promo', '2024-12-28', 12999.99, 'Membawa orang tua.Tahan dengan kepedasan', '/storage/spesialPromo/promo2.png', NULL, NULL),
(5, 'Promo SIZE!!!', 'promo', '2024-12-31', 59999.99, 'Kuat makan.Backflip.Foto Kasir', '/storage/spesialPromo/promo3.png', NULL, NULL),
(6, 'Bawa Keluargamu!!!', 'spesial', '2026-02-19', 89999.99, 'Berkeluarga.Sudah menikah.Punya anak.Hidup mapan.Sudah gosok gigi', '/storage/spesialPromo/SpesialPromo3.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `studios`
--

CREATE TABLE `studios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `jumlahKursi` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `studios`
--

INSERT INTO `studios` (`id`, `jenis`, `jumlahKursi`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Standard', 100, 35000, NULL, NULL),
(2, 'Premium', 90, 50000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `idPemesananTiket` bigint(20) UNSIGNED NOT NULL,
  `metodePembayaran` varchar(255) NOT NULL,
  `totalHarga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `idUser`, `idPemesananTiket`, `metodePembayaran`, `totalHarga`, `created_at`, `updated_at`) VALUES
(3, 2, 18, 'OVO', 105000, NULL, NULL),
(4, 2, 19, 'ShopeePay', 105000, NULL, NULL),
(6, 1, 21, 'ShopeePay', 100000, NULL, NULL),
(7, 1, 21, 'ShopeePay', 100000, NULL, NULL),
(8, 1, 22, 'Gojek', 105000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `noTelepon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `tanggalLahir`, `email`, `noTelepon`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Ntahanasd', '$2y$12$oZegYla11MDXG7srkLysyep1.JLgx.NcEcOw4CC57LzxM1fxnZn0K', '1002-10-02', 'asu@gmail.com', '1212', 'profilepict/1734106348_dcda52ce-99c8-4f49-bad6-05a11dfaa6d07230025473303337669.jpg', NULL, NULL),
(2, 'Agus Febriantooooo', '$2y$12$jK8wSh4vFF2dwJk4YLHU9urQL3xoE2qoS4F1n/KZYiz0aAOPiVwjC', '2004-08-18', 'agus@gmail.com', '12345678', 'profilepict/profile.jpg', NULL, NULL),
(3, 'berbas', '$2y$12$YD20tfh6Rp9HT3Q.qXRXvuPGfqgv7AOH/ShzemOUNp/K3Srj3gs92', '2024-02-19', 'asdf@gmail.com', '821412412421412', 'profilePict/profile.jpg', NULL, NULL),
(4, 'Asek Gacor', '$2y$12$bFiHmerxthoLXfF959hk8e.hIMKbC13UHtgZ.pILsK1qzY2oWq4RW', '2004-12-12', 'anjay@gmail.com', '0888123131', 'profilepict/profile.jpg', NULL, NULL),
(5, 'anjay 1234', '$2y$12$lPReSmUflkgDqwaBreEFj.YwC.kFHAaUcxotKR7WCptALVrY4TsUS', '2003-12-01', 'wo@gmail.com', '01241251', 'profilepict/profile.jpg', NULL, NULL),
(7, '1 1', '$2y$12$HiAvuUxHJWEzvJkkjFM07e1XgMvURSzvWOCndNwYUhovL.csWU7sO', '2222-12-12', '1@gmail.com', '1', 'profilepict/profile.jpg', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_idtransaksi_foreign` (`idTransaksi`),
  ADD KEY `histories_iduser_foreign` (`idUser`);

--
-- Indeks untuk tabel `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwaltayangs`
--
ALTER TABLE `jadwaltayangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwaltayangs_idstudio_foreign` (`idStudio`),
  ADD KEY `jadwaltayangs_idjadwal_foreign` (`idJadwal`),
  ADD KEY `jadwaltayangs_idfilm_foreign` (`idFilm`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_idspesialpromo_foreign` (`idSpesialPromo`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanantikets`
--
ALTER TABLE `pemesanantikets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanantikets_idjadwaltayang_foreign` (`idJadwalTayang`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_idfilm_foreign` (`idFilm`),
  ADD KEY `reviews_idhistory_foreign` (`idHistory`);

--
-- Indeks untuk tabel `spesialpromos`
--
ALTER TABLE `spesialpromos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_iduser_foreign` (`idUser`),
  ADD KEY `transaksis_idpemesanantiket_foreign` (`idPemesananTiket`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwaltayangs`
--
ALTER TABLE `jadwaltayangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pemesanantikets`
--
ALTER TABLE `pemesanantikets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `spesialpromos`
--
ALTER TABLE `spesialpromos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `studios`
--
ALTER TABLE `studios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_idtransaksi_foreign` FOREIGN KEY (`idTransaksi`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `histories_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwaltayangs`
--
ALTER TABLE `jadwaltayangs`
  ADD CONSTRAINT `jadwaltayangs_idfilm_foreign` FOREIGN KEY (`idFilm`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwaltayangs_idjadwal_foreign` FOREIGN KEY (`idJadwal`) REFERENCES `jadwals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwaltayangs_idstudio_foreign` FOREIGN KEY (`idStudio`) REFERENCES `studios` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_idspesialpromo_foreign` FOREIGN KEY (`idSpesialPromo`) REFERENCES `spesialpromos` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanantikets`
--
ALTER TABLE `pemesanantikets`
  ADD CONSTRAINT `pemesanantikets_idjadwaltayang_foreign` FOREIGN KEY (`idJadwalTayang`) REFERENCES `jadwaltayangs` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_idfilm_foreign` FOREIGN KEY (`idFilm`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_idhistory_foreign` FOREIGN KEY (`idHistory`) REFERENCES `histories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_idpemesanantiket_foreign` FOREIGN KEY (`idPemesananTiket`) REFERENCES `pemesanantikets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksis_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
