-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Apr 2015 pada 12.50
-- Versi Server: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `salman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `nomor_ktp` int(30) NOT NULL,
  `nomor_hp` int(15) NOT NULL,
  `tanggal_pendaftaran` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_aktif` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_anggota`),
  UNIQUE KEY `nomor_ktp` (`nomor_ktp`),
  UNIQUE KEY `nomor_hp` (`nomor_hp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`, `pekerjaan`, `nomor_ktp`, `nomor_hp`, `tanggal_pendaftaran`, `status_aktif`) VALUES
(1, 'afik', 'bdg', 'mhs', 123, 98, '2015-04-15 09:33:24', 1),
(3, 'das', 'fsds', 'ada', 324, 12312, '2015-04-15 10:22:58', 1),
(6, 'dsa', 'gfds', 'ds', 132, 2345, '2015-04-15 10:24:01', 1),
(7, 'dsfa', 'asdsa', 'jhgj', 0, 0, '2015-04-15 10:24:47', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(10) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `klasifikasi` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tahun` int(4) NOT NULL,
  `status_pinjam` tinyint(1) NOT NULL,
  `lokasi` int(3) NOT NULL,
  `ISBN` int(30) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `penerbit`, `klasifikasi`, `judul`, `penulis`, `tahun`, `status_pinjam`, `lokasi`, `ISBN`) VALUES
(1, 'diam', 'novel', 'laskar pelangi', 'anrea hirata', 30, 1, 6, 2147483647),
(2, 'nisl', 'novel', 'bintang mika', 'jacq', 59, 1, 9, 2147483647),
(3, 'tellus', 'novel', 'oregades', 'jacq', 69, 1, 2, 2147483647),
(4, 'posuere cubilia', 'novel', 'oregades', 'jacq', 20, 0, 9, 2147483647),
(5, 'libero', 'hukum', 'UUD45', 'jharrison4', 81, 1, 7, 2147483647),
(6, 'consequat morbi', 'ridiculus', 'risus semper porta', 'lhunter5', 87, 0, 8, 2147483647),
(7, 'nec euismod', 'nulla', 'neque', 'jnelson6', 64, 0, 3, 2147483647),
(8, 'id', 'quam', 'id justo', 'tbell7', 54, 0, 1, 2147483647),
(9, 'amet eros', 'turpis', 'rhoncus aliquam lacus', 'jlarson8', 16, 1, 7, 2147483647),
(10, 'luctus et', 'eu', 'in faucibus', 'eross9', 28, 1, 2, 2147483647),
(11, 'justo sollicitudin', 'tincidunt', 'pede ac diam', 'dhicksa', 58, 1, 6, 2147483647),
(12, 'donec posuere', 'in', 'amet consectetuer', 'jperkinsb', 79, 1, 4, 2147483647),
(13, 'semper', 'dolor', 'turpis a pede', 'bgrahamc', 93, 0, 10, 2147483647),
(14, 'nulla quisque', 'ultrices', 'eu orci', 'mrichardsd', 21, 0, 2, 2147483647),
(15, 'odio', 'elementum', 'sem mauris', 'kgilberte', 54, 1, 3, 2147483647),
(16, 'condimentum curabitur', 'sapien', 'maecenas', 'tlongf', 68, 0, 4, 2147483647),
(17, 'ac leo', 'nisl', 'luctus', 'rwatkinsg', 80, 1, 5, 2147483647),
(18, 'porttitor lacus', 'placerat', 'cubilia curae', 'kgrahamh', 42, 0, 6, 2147483647),
(19, 'ut at', 'curabitur', 'dis parturient', 'agrahami', 26, 1, 2, 2147483647),
(20, 'nulla ultrices', 'libero', 'duis bibendum morbi', 'bjenkinsj', 48, 1, 7, 2147483647),
(21, 'nascetur', 'ut', 'libero', 'coliverk', 34, 1, 3, 2147483647),
(22, 'tellus', 'id', 'suscipit a', 'jduncanl', 59, 0, 8, 2147483647),
(23, 'tincidunt', 'sollicitudin', 'ultrices enim lorem', 'abowmanm', 47, 1, 10, 2147483647),
(24, 'eget nunc', 'ultricies', 'potenti nullam', 'vsanchezn', 50, 0, 2, 2147483647),
(25, 'vestibulum proin', 'ac', 'sit amet consectetuer', 'pholmeso', 34, 0, 8, 2147483647),
(26, 'natoque penatibus', 'justo', 'rutrum neque', 'gdixonp', 85, 0, 8, 2147483647),
(27, 'morbi', 'ipsum', 'consequat ut nulla', 'bburnsq', 16, 0, 3, 2147483647),
(28, 'quam suspendisse', 'lacus', 'congue risus', 'whansonr', 33, 0, 1, 2147483647),
(29, 'vulputate', 'mattis', 'maecenas', 'bmillers', 46, 1, 3, 2147483647),
(30, 'nam', 'laoreet', 'at feugiat non', 'smorrist', 58, 1, 3, 2147483647),
(31, 'nulla integer', 'cras', 'eleifend', 'redwardsu', 49, 0, 1, 2147483647),
(32, 'duis', 'pretium', 'fermentum justo nec', 'btaylorv', 22, 0, 7, 2147483647),
(33, 'nec', 'nec', 'egestas', 'hhunterw', 64, 0, 9, 2147483647),
(34, 'pede malesuada', 'ut', 'egestas metus', 'lweaverx', 3, 0, 4, 2147483647),
(35, 'eleifend', 'quisque', 'semper est', 'jcarrolly', 2, 0, 7, 2147483647),
(36, 'et commodo', 'nec', 'sed sagittis nam', 'wburnsz', 42, 0, 3, 2147483647),
(37, 'sagittis', 'montes', 'in', 'pcunningham10', 75, 0, 3, 2147483647),
(38, 'sem', 'quam', 'nam', 'sharvey11', 94, 1, 2, 2147483647),
(39, 'interdum mauris', 'cum', 'posuere', 'ccollins12', 33, 1, 4, 2147483647),
(40, 'porttitor pede', 'risus', 'imperdiet sapien urna', 'lford13', 14, 0, 8, 2147483647),
(41, 'in', 'praesent', 'vel dapibus', 'rhamilton14', 1, 0, 5, 2147483647),
(42, 'vulputate elementum', 'vel', 'pede ullamcorper augue', 'kbishop15', 55, 0, 7, 2147483647),
(43, 'elementum', 'ut', 'risus semper', 'jspencer16', 33, 0, 3, 2147483647),
(44, 'cras mi', 'quam', 'sit', 'jwashington17', 88, 1, 7, 2147483647),
(45, 'congue elementum', 'vel', 'congue diam', 'lperkins18', 3, 0, 8, 2147483647),
(46, 'non', 'nibh', 'nonummy', 'bbryant19', 78, 1, 4, 2147483647),
(47, 'fringilla rhoncus', 'blandit', 'non velit', 'ssanchez1a', 55, 0, 10, 2147483647),
(48, 'at', 'in', 'ipsum integer', 'klarson1b', 30, 1, 3, 2147483647),
(49, 'magna', 'phasellus', 'aliquam', 'kross1c', 90, 0, 3, 2147483647),
(50, 'et eros', 'nam', 'sit amet', 'rgarrett1d', 34, 0, 5, 2147483647),
(51, 'potenti in', 'lacinia', 'at', 'dprice1e', 44, 1, 5, 2147483647),
(52, 'faucibus', 'erat', 'justo aliquam quis', 'kduncan1f', 91, 0, 1, 2147483647),
(53, 'eget', 'ultrices', 'lacus curabitur', 'rstewart1g', 28, 0, 5, 2147483647),
(54, 'ipsum', 'ac', 'ac', 'lmiller1h', 61, 0, 2, 2147483647),
(55, 'ut suscipit', 'amet', 'integer', 'rhansen1i', 66, 1, 5, 2147483647),
(56, 'tortor quis', 'ut', 'viverra eget congue', 'jramirez1j', 22, 1, 3, 2147483647),
(57, 'non mi', 'vitae', 'curae', 'ebanks1k', 12, 0, 7, 2147483647),
(58, 'risus praesent', 'aenean', 'praesent', 'nparker1l', 35, 1, 5, 2147483647),
(59, 'ac', 'at', 'ipsum praesent blandit', 'mthompson1m', 25, 0, 3, 2147483647),
(60, 'cras', 'turpis', 'vulputate ut ultrices', 'akennedy1n', 7, 1, 8, 2147483647),
(61, 'massa quis', 'in', 'quisque', 'mmedina1o', 26, 0, 7, 2147483647),
(62, 'augue', 'rutrum', 'integer pede justo', 'rmendoza1p', 98, 1, 2, 2147483647),
(63, 'leo', 'urna', 'habitasse platea', 'phernandez1q', 2, 1, 5, 2147483647),
(64, 'eleifend', 'lobortis', 'ut at dolor', 'jpayne1r', 60, 1, 9, 2147483647),
(65, 'in hac', 'cubilia', 'nulla', 'bwagner1s', 58, 0, 2, 2147483647),
(66, 'euismod', 'in', 'magnis dis', 'nturner1t', 46, 1, 6, 2147483647),
(67, 'vestibulum sit', 'est', 'luctus et', 'jtaylor1u', 21, 0, 9, 2147483647),
(68, 'ut rhoncus', 'nulla', 'amet', 'bbarnes1v', 56, 1, 8, 2147483647),
(69, 'dolor', 'ultrices', 'sit', 'jmoreno1w', 26, 0, 5, 2147483647),
(70, 'vivamus in', 'sollicitudin', 'eu felis fusce', 'lbennett1x', 43, 1, 4, 2147483647),
(71, 'donec posuere', 'eget', 'justo', 'acole1y', 40, 1, 4, 2147483647),
(72, 'orci luctus', 'et', 'sapien placerat ante', 'jwilson1z', 11, 1, 7, 2147483647),
(73, 'posuere', 'pellentesque', 'quis', 'cpeterson20', 22, 0, 3, 2147483647),
(74, 'duis', 'quis', 'lorem id ligula', 'slong21', 63, 0, 1, 2147483647),
(75, 'lacinia', 'phasellus', 'lacus at velit', 'jlarson22', 61, 0, 1, 2147483647),
(76, 'et ultrices', 'nibh', 'amet consectetuer adipiscing', 'cmoreno23', 93, 0, 2, 2147483647),
(77, 'consequat', 'est', 'sapien', 'adean24', 81, 1, 2, 2147483647),
(78, 'et magnis', 'nisl', 'pulvinar nulla pede', 'jjohnson25', 41, 1, 3, 2147483647),
(79, 'bibendum imperdiet', 'eu', 'ligula', 'fhunt26', 100, 1, 9, 2147483647),
(80, 'vivamus vestibulum', 'eu', 'at turpis donec', 'lspencer27', 78, 0, 4, 2147483647),
(81, 'mus vivamus', 'lobortis', 'hac', 'jwagner28', 24, 1, 7, 2147483647),
(82, 'est', 'duis', 'morbi', 'pharvey29', 40, 1, 9, 2147483647),
(83, 'interdum in', 'tincidunt', 'et eros', 'tcruz2a', 71, 0, 4, 2147483647),
(84, 'lorem id', 'habitasse', 'pretium', 'sjackson2b', 17, 1, 7, 2147483647),
(85, 'feugiat', 'id', 'dictumst', 'awatson2c', 80, 1, 4, 2147483647),
(86, 'porttitor lacus', 'et', 'accumsan odio curabitur', 'swallace2d', 35, 1, 5, 2147483647),
(87, 'diam', 'id', 'eget massa', 'gwhite2e', 46, 1, 8, 2147483647),
(88, 'tristique est', 'quis', 'augue vel accumsan', 'hcampbell2f', 9, 1, 1, 2147483647),
(89, 'odio', 'mi', 'phasellus sit', 'bharrison2g', 85, 1, 7, 2147483647),
(90, 'primis in', 'nulla', 'nisl ut', 'epierce2h', 95, 0, 4, 2147483647),
(91, 'iaculis', 'morbi', 'primis', 'dpowell2i', 70, 0, 6, 2147483647),
(92, 'nam ultrices', 'eros', 'nulla', 'rhicks2j', 84, 0, 9, 2147483647),
(93, 'dapibus augue', 'ac', 'vel lectus in', 'polson2k', 2, 1, 6, 2147483647),
(94, 'molestie', 'faucibus', 'vivamus', 'rfields2l', 13, 0, 6, 2147483647),
(95, 'augue', 'in', 'nascetur ridiculus', 'jhenry2m', 100, 1, 3, 2147483647),
(96, 'maecenas', 'nisi', 'mattis', 'rsnyder2n', 94, 0, 10, 2147483647),
(97, 'purus sit', 'vehicula', 'rhoncus mauris enim', 'tortiz2o', 24, 1, 5, 2147483647),
(98, 'nisi nam', 'dolor', 'parturient montes', 'whowell2p', 29, 0, 8, 2147483647),
(99, 'convallis tortor', 'accumsan', 'libero ut', 'vhanson2q', 50, 1, 5, 2147483647),
(100, 'cras in', 'luctus', 'sed', 'rhall2r', 8, 1, 2, 2147483647),
(101, 'cras', 'dictumst', 'mauris eget', 'plynch2s', 70, 1, 8, 2147483647),
(102, 'consequat in', 'praesent', 'suspendisse', 'rmyers2t', 35, 0, 10, 2147483647),
(103, 'in porttitor', 'mi', 'tortor eu pede', 'wboyd2u', 27, 1, 1, 2147483647),
(104, 'dui maecenas', 'amet', 'pede', 'dshaw2v', 53, 1, 4, 2147483647),
(105, 'risus praesent', 'pede', 'hac', 'vgonzalez2w', 56, 1, 7, 2147483647),
(106, 'blandit lacinia', 'libero', 'magna vestibulum', 'ghicks2x', 47, 0, 3, 2147483647),
(107, 'viverra eget', 'nulla', 'potenti in eleifend', 'ccole2y', 37, 0, 5, 2147483647),
(108, 'est phasellus', 'turpis', 'amet', 'mgriffin2z', 97, 0, 6, 2147483647),
(109, 'id', 'nam', 'tortor quis', 'tcarpenter30', 62, 1, 4, 2147483647),
(110, 'sollicitudin mi', 'rhoncus', 'ridiculus mus', 'arichardson31', 37, 1, 10, 2147483647),
(111, 'sapien arcu', 'lobortis', 'aliquam', 'jhayes32', 86, 0, 2, 2147483647),
(112, 'auctor', 'ut', 'ligula nec sem', 'tcampbell33', 90, 0, 8, 2147483647),
(113, 'sollicitudin vitae', 'maecenas', 'venenatis lacinia aenean', 'chall34', 78, 0, 7, 2147483647),
(114, 'ut at', 'morbi', 'leo', 'apeterson35', 74, 1, 1, 2147483647),
(115, 'massa volutpat', 'amet', 'interdum eu tincidunt', 'haustin36', 11, 0, 6, 2147483647),
(116, 'ut mauris', 'at', 'vel enim sit', 'estanley37', 68, 0, 7, 2147483647),
(117, 'orci nullam', 'orci', 'mattis odio', 'sgonzales38', 26, 0, 10, 2147483647),
(118, 'ultrices', 'sapien', 'nisi', 'jknight39', 39, 1, 2, 2147483647),
(119, 'vestibulum ante', 'nulla', 'tortor risus', 'mcunningham3a', 54, 1, 1, 2147483647),
(120, 'id', 'orci', 'morbi', 'mwelch3b', 41, 0, 7, 2147483647),
(121, 'bibendum imperdiet', 'ipsum', 'imperdiet', 'jreid3c', 57, 1, 2, 2147483647),
(122, 'in faucibus', 'vulputate', 'ac', 'jwalker3d', 60, 0, 9, 2147483647),
(123, 'est', 'aenean', 'aliquam non mauris', 'fcoleman3e', 94, 1, 9, 2147483647),
(124, 'luctus', 'tristique', 'ut', 'tburke3f', 5, 1, 6, 2147483647),
(125, 'nisl nunc', 'sed', 'eget', 'djames3g', 62, 0, 2, 2147483647),
(126, 'molestie nibh', 'at', 'in tempor', 'lmills3h', 91, 0, 6, 2147483647),
(127, 'ultrices enim', 'volutpat', 'venenatis', 'jmendoza3i', 23, 0, 6, 2147483647),
(128, 'vel', 'est', 'nulla elit ac', 'jsullivan3j', 24, 0, 6, 2147483647),
(129, 'tellus nulla', 'vulputate', 'nam', 'treed3k', 1, 1, 8, 2147483647),
(130, 'ligula', 'semper', 'vestibulum', 'drussell3l', 62, 1, 4, 2147483647),
(131, 'est', 'massa', 'vulputate justo', 'kstone3m', 36, 0, 2, 2147483647),
(132, 'amet', 'tristique', 'consectetuer', 'rtaylor3n', 45, 0, 6, 2147483647),
(133, 'erat quisque', 'orci', 'donec odio', 'dmartinez3o', 77, 1, 6, 2147483647),
(134, 'rhoncus dui', 'lectus', 'nulla', 'pcoleman3p', 93, 1, 6, 2147483647),
(135, 'a', 'odio', 'est congue', 'ppeters3q', 51, 1, 2, 2147483647),
(136, 'semper', 'faucibus', 'sed nisl', 'kyoung3r', 66, 1, 9, 2147483647),
(137, 'convallis', 'pellentesque', 'aenean fermentum', 'mfreeman3s', 74, 1, 8, 2147483647),
(138, 'convallis duis', 'accumsan', 'lacus', 'sbishop3t', 10, 0, 10, 2147483647),
(139, 'maecenas rhoncus', 'duis', 'gravida nisi', 'mray3u', 61, 0, 10, 2147483647),
(140, 'in blandit', 'molestie', 'nam', 'knichols3v', 32, 1, 10, 2147483647),
(141, 'dui', 'nec', 'velit', 'hdunn3w', 74, 0, 3, 2147483647),
(142, 'duis bibendum', 'mauris', 'auctor gravida sem', 'aaustin3x', 91, 0, 8, 2147483647),
(143, 'orci eget', 'morbi', 'adipiscing molestie hendrerit', 'hprice3y', 29, 1, 3, 2147483647),
(144, 'augue luctus', 'egestas', 'nulla pede ullamcorper', 'aperez3z', 85, 1, 8, 2147483647),
(145, 'vulputate', 'blandit', 'laoreet ut', 'rweaver40', 66, 0, 10, 2147483647),
(146, 'purus aliquet', 'odio', 'nulla', 'lmills41', 22, 1, 5, 2147483647),
(147, 'praesent', 'eleifend', 'porta volutpat', 'grussell42', 30, 0, 4, 2147483647),
(148, 'semper interdum', 'magna', 'orci luctus et', 'bmontgomery43', 21, 1, 8, 2147483647),
(149, 'luctus et', 'erat', 'nullam porttitor', 'cellis44', 14, 0, 7, 2147483647),
(150, 'odio in', 'pede', 'at turpis donec', 'cmorrison45', 26, 1, 1, 2147483647),
(151, 'ut erat', 'tincidunt', 'duis bibendum', 'amyers46', 89, 1, 6, 2147483647),
(152, 'tempus semper', 'ante', 'eget', 'mrice47', 13, 0, 8, 2147483647),
(153, 'justo pellentesque', 'nulla', 'amet sapien', 'dhowell48', 80, 1, 10, 2147483647),
(154, 'sit amet', 'vestibulum', 'curabitur at', 'fmoore49', 56, 1, 8, 2147483647),
(155, 'hac', 'faucibus', 'amet eros', 'rclark4a', 50, 0, 9, 2147483647),
(156, 'diam', 'convallis', 'sagittis', 'jcox4b', 47, 0, 10, 2147483647),
(157, 'phasellus', 'justo', 'morbi', 'khicks4c', 46, 0, 2, 2147483647),
(158, 'lectus', 'purus', 'lacus', 'jbishop4d', 61, 0, 6, 2147483647),
(159, 'neque', 'venenatis', 'odio in', 'abutler4e', 66, 1, 2, 2147483647),
(160, 'enim in', 'fusce', 'cursus', 'jwillis4f', 19, 1, 7, 2147483647),
(161, 'proin at', 'ante', 'amet turpis', 'llawson4g', 86, 0, 1, 2147483647),
(162, 'quis odio', 'vulputate', 'hendrerit at vulputate', 'twhite4h', 10, 1, 4, 2147483647),
(163, 'odio', 'odio', 'vestibulum', 'mprice4i', 94, 1, 8, 2147483647),
(164, 'aliquam', 'primis', 'sapien arcu', 'tjacobs4j', 90, 0, 2, 2147483647),
(165, 'praesent', 'ipsum', 'vel sem', 'mmurphy4k', 27, 1, 1, 2147483647),
(166, 'in hac', 'malesuada', 'semper rutrum', 'acruz4l', 88, 1, 10, 2147483647),
(167, 'commodo vulputate', 'curae', 'diam neque', 'crussell4m', 88, 1, 1, 2147483647),
(168, 'ut erat', 'aliquet', 'bibendum', 'mbennett4n', 48, 1, 1, 2147483647),
(169, 'sollicitudin vitae', 'mauris', 'nisi nam ultrices', 'candrews4o', 82, 0, 6, 2147483647),
(170, 'congue eget', 'turpis', 'erat curabitur', 'rharvey4p', 76, 1, 7, 2147483647),
(171, 'nisl', 'ante', 'enim leo', 'epayne4q', 30, 0, 2, 2147483647),
(172, 'sem sed', 'convallis', 'eleifend pede', 'jnichols4r', 69, 0, 7, 2147483647),
(173, 'faucibus orci', 'quisque', 'primis in', 'ecollins4s', 3, 1, 2, 2147483647),
(174, 'non velit', 'tellus', 'vivamus vestibulum', 'lmartin4t', 7, 1, 3, 2147483647),
(175, 'sapien quis', 'aenean', 'aliquam erat volutpat', 'crichards4u', 3, 1, 10, 2147483647),
(176, 'tristique', 'sapien', 'donec', 'slewis4v', 63, 1, 2, 2147483647),
(177, 'libero rutrum', 'urna', 'nulla suscipit ligula', 'dtorres4w', 39, 0, 1, 2147483647),
(178, 'lacus', 'erat', 'in', 'mwilliamson4x', 69, 0, 1, 2147483647),
(179, 'potenti', 'mauris', 'convallis nulla neque', 'krussell4y', 33, 0, 3, 2147483647),
(180, 'tincidunt eu', 'amet', 'posuere cubilia curae', 'wbarnes4z', 20, 0, 4, 2147483647),
(181, 'dapibus duis', 'vel', 'justo lacinia eget', 'swilliamson50', 88, 0, 6, 2147483647),
(182, 'risus dapibus', 'arcu', 'ultrices', 'mgordon51', 61, 1, 5, 2147483647),
(183, 'consequat metus', 'quam', 'mauris', 'rferguson52', 78, 1, 5, 2147483647),
(184, 'curae nulla', 'ridiculus', 'nisl', 'rpeterson53', 97, 0, 1, 2147483647),
(185, 'augue quam', 'cras', 'amet erat', 'sgordon54', 62, 1, 6, 2147483647),
(186, 'suspendisse accumsan', 'sociis', 'cras', 'agrant55', 16, 0, 4, 2147483647),
(187, 'velit nec', 'lacinia', 'nulla dapibus dolor', 'cmurray56', 15, 1, 1, 2147483647),
(188, 'velit', 'eu', 'a', 'rfox57', 90, 0, 8, 2147483647),
(189, 'ante vestibulum', 'consequat', 'quis', 'wfernandez58', 71, 1, 4, 2147483647),
(190, 'sapien iaculis', 'maecenas', 'pharetra magna vestibulum', 'jrobinson59', 20, 0, 5, 2147483647),
(191, 'nulla', 'cubilia', 'lacinia eget tincidunt', 'lroberts5a', 5, 0, 7, 2147483647),
(192, 'pellentesque', 'gravida', 'nisl nunc nisl', 'kelliott5b', 41, 0, 5, 2147483647),
(193, 'natoque', 'odio', 'augue vestibulum', 'rwashington5c', 22, 1, 3, 2147483647),
(194, 'convallis', 'justo', 'semper', 'bstone5d', 23, 0, 4, 2147483647),
(195, 'eget', 'libero', 'lectus', 'sbaker5e', 31, 0, 6, 2147483647),
(196, 'rhoncus', 'augue', 'dolor morbi vel', 'slittle5f', 19, 0, 9, 2147483647),
(197, 'augue aliquam', 'platea', 'blandit non interdum', 'smoreno5g', 23, 1, 7, 2147483647),
(198, 'donec posuere', 'in', 'sed', 'mcarroll5h', 25, 1, 10, 2147483647),
(199, 'vestibulum', 'maecenas', 'ultrices vel', 'rruiz5i', 61, 1, 8, 2147483647),
(200, 'lobortis', 'duis', 'quam a', 'dmorrison5j', 13, 1, 8, 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_anggota` int(10) NOT NULL,
  `id_buku` int(10) NOT NULL,
  `tanggal_peminjaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_anggota`,`id_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `id_pendaftar` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor_ktp` int(20) NOT NULL,
  `nomor_hp` int(15) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE IF NOT EXISTS `pengunjung` (
  `id_pengunjung` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal_kunjungan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pekerjaan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pengunjung`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id_pengunjung`, `nama`, `alamat`, `tanggal_kunjungan`, `pekerjaan`) VALUES
(1, 'a', 'a', '2015-04-15 09:17:45', 'a');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
